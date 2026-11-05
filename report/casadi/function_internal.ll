Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/function_internal?download=true
inline.NumInlined: 11181
inline.NumDeleted: 2147
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK6casadi16FunctionInternal7forwardEx:bb.a
.lr.ph.i.i.i:                                     ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit523, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.abe, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aaw, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit523 ] ; 3 uses
  %i.aaz = load ptr, ptr %.05.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.abb = icmp eq ptr %i.aaz, %i.aba
  br i1 %i.abb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.abc = load i64, ptr %i.aba, align 8, !tbaa !44
  %i.abd = add i64 %i.abc, 1
  call void @_ZdlPvm(ptr noundef %i.aaz, i64 noundef %i.abd) #39
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.abe = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i524 = icmp eq ptr %i.abe, %i.aay
  br i1 %.not.i.i.i524, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %30, align 8, !tbaa !48
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit523
  %i.abf = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.aaw, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit523 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.abf, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.gu

bb.gu:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.abg = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !51
  %i.abi = ptrtoint ptr %i.abh to i64
  %i.abj = ptrtoint ptr %i.abf to i64
  %i.abk = sub i64 %i.abi, %i.abj
  call void @_ZdlPvm(ptr noundef nonnull %i.abf, i64 noundef %i.abk) #39
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  %i.abl = load ptr, ptr %27, align 8, !tbaa !48  ; 3 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i525 = icmp eq ptr %i.abl, %i.abn
  br i1 %.not4.i.i.i525, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i533, label %.lr.ph.i.i.i526

.lr.ph.i.i.i526:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i529
  %.05.i.i.i527 = phi ptr [ %i.abt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i529 ], [ %i.abl, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.abo = load ptr, ptr %.05.i.i.i527, align 8, !tbaa !43 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %.05.i.i.i527, i64 16 ; 2 uses
  %i.abq = icmp eq ptr %i.abo, %i.abp
  br i1 %i.abq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i529, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i528

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i528: ; preds = %.lr.ph.i.i.i526
  %i.abr = load i64, ptr %i.abp, align 8, !tbaa !44
  %i.abs = add i64 %i.abr, 1
  call void @_ZdlPvm(ptr noundef %i.abo, i64 noundef %i.abs) #39
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i529

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i529: ; preds = %.lr.ph.i.i.i526, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i528
  %i.abt = getelementptr inbounds nuw i8, ptr %.05.i.i.i527, i64 32 ; 2 uses
  %.not.i.i.i530 = icmp eq ptr %i.abt, %i.abn
  br i1 %.not.i.i.i530, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i531, label %.lr.ph.i.i.i526, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i531: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i529
  %.pr.i532 = load ptr, ptr %27, align 8, !tbaa !48
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i533

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i533: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i531, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.abu = phi ptr [ %.pr.i532, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i531 ], [ %i.abl, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i534 = icmp eq ptr %i.abu, null
  br i1 %.not.i.i1.i534, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit536, label %bb.gv

bb.gv:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i533
  %i.abv = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !51
  %i.abx = ptrtoint ptr %i.abw to i64
  %i.aby = ptrtoint ptr %i.abu to i64
  %i.abz = sub i64 %i.abx, %i.aby
  call void @_ZdlPvm(ptr noundef nonnull %i.abu, i64 noundef %i.abz) #39
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit536

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit536: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i533, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  %i.aca = load ptr, ptr %25, align 8, !tbaa !43  ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.acc = icmp eq ptr %i.aca, %i.acb
  br i1 %i.acc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i537

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i537: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit536
  %i.acd = load i64, ptr %i.acb, align 8, !tbaa !44
  %i.ace = add i64 %i.acd, 1
  call void @_ZdlPvm(ptr noundef %i.aca, i64 noundef %i.ace) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit536, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i537
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #38
  br label %bb.ha

bb.gw:                                            ; preds = %._crit_edge.i.i516
  %i.acf = landingpad { ptr, i32 }
          cleanup
  %i.acg = load ptr, ptr %82, align 8, !tbaa !43  ; 2 uses
  %i.ach = icmp eq ptr %i.acg, %i.aan
  br i1 %i.ach, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540: ; preds = %bb.gw
  %i.aci = load i64, ptr %i.aan, align 8, !tbaa !44
  %i.acj = add i64 %i.aci, 1
  call void @_ZdlPvm(ptr noundef %i.acg, i64 noundef %i.acj) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542: ; preds = %bb.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #38
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i411, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542, %bb.go, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469, %bb.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448, %bb.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413, %bb.cz, %bb.el, %bb.ed, %bb.dv, %bb.dn, %bb.de, %bb.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379
  %.pn244.pn = phi { ptr, i32 } [ %.pn194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379 ], [ %.pn226.pn.pn.pn.pn.pn.pn606, %bb.fr ], [ %.pn226.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469 ], [ %.pn234.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513 ], [ %.pn224, %bb.de ], [ %.pn222, %bb.dn ], [ %.pn220, %bb.dv ], [ %.pn218, %bb.ed ], [ %.pn216, %bb.el ], [ %.pn209.pn.pn.pn.pn.pn594, %bb.ez ], [ %.pn209.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448 ], [ %.pn201.pn.pn.pn.pn.pn.pn582, %bb.cz ], [ %.pn201.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413 ], [ %.pn197.pn.pn, %bb.cs ], [ %.pn234.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511 ], [ %i.acf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542 ], [ %.pn234.pn.pn.pn.pn.pn.pn618, %bb.go ], [ %.pn201.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i411 ], [ %.pn209.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446 ], [ %.pn226.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467 ], [ %lpad.loopexit.split-lp1128, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %32) #38
  br label %bb.gx

bb.gx:                                            ; preds = %.loopexit.split-lp, %bb.by
  %.pn244.pn.pn = phi { ptr, i32 } [ %.pn244.pn, %.loopexit.split-lp ], [ %i.mo, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #38
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %.body354
  %.pn248.pn = phi { ptr, i32 } [ %.pn248, %.body354 ], [ %.pn244.pn.pn, %bb.gx ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %30) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %.body333, %.body, %bb.ay
  %.pn255 = phi { ptr, i32 } [ %i.ft, %bb.ay ], [ %.pn253, %.body ], [ %.pn251, %.body333 ], [ %.pn248.pn, %bb.gy ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  %i.ack = load ptr, ptr %25, align 8, !tbaa !43  ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.acm = icmp eq ptr %i.ack, %i.acl
  br i1 %i.acm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543: ; preds = %bb.gz
  %i.acn = load i64, ptr %i.acl, align 8, !tbaa !44
  %i.aco = add i64 %i.acn, 1
  call void @_ZdlPvm(ptr noundef %i.ack, i64 noundef %i.aco) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545: ; preds = %bb.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317
  %.pn255.pn = phi { ptr, i32 } [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317 ], [ %.pn255, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543 ], [ %.pn255, %bb.gz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #38
  br label %bb.hb

bb.ha:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302
  %i.acp = load ptr, ptr %23, align 8, !tbaa !43  ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.acr = icmp eq ptr %i.acp, %i.acq
  br i1 %i.acr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546: ; preds = %bb.ha
  %i.acs = load i64, ptr %i.acq, align 8, !tbaa !44
  %i.act = add i64 %i.acs, 1
  call void @_ZdlPvm(ptr noundef %i.acp, i64 noundef %i.act) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548: ; preds = %bb.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br label %bb.hc

bb.hb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314
  %.pn255.pn.pn = phi { ptr, i32 } [ %.pn255.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545 ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ] ; 2 uses
  %i.acu = load ptr, ptr %23, align 8, !tbaa !43  ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.acw = icmp eq ptr %i.acu, %i.acv
  br i1 %i.acw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i549

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i549: ; preds = %bb.hb
  %i.acx = load i64, ptr %i.acv, align 8, !tbaa !44
  %i.acy = add i64 %i.acx, 1
  call void @_ZdlPvm(ptr noundef %i.acu, i64 noundef %i.acy) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551: ; preds = %bb.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i549, %bb.av
  %.pn255.pn.pn.pn = phi { ptr, i32 } [ %i.fi, %bb.av ], [ %.pn255.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i549 ], [ %.pn255.pn.pn, %bb.hb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #38
  br label %bb.hd

bb.hc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548, %bb.al
  ret void

bb.hd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551, %bb.am
  %.pn255.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn255.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551 ], [ %i.dj, %bb.am ], [ %.pn182.pn.pn.pn.pn.pn.pn570, %bb.aj ], [ %.pn182.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299 ], [ %.pn.pn.pn.pn.pn.pn.pn558, %bb.q ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276 ], [ %.pn182.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297 ]
  resume { ptr, i32 } %.pn255.pn.pn.pn.pn

bb.he:                                            ; preds = %bb.gh, %bb.fk, %bb.et, %bb.cn, %bb.ac, %bb.j
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6casadi16FunctionInternal14has_derivativeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1312) %0) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 824
  %1 = load i8, ptr %i.a, align 8, !tbaa !209, !range !175, !noundef !176
  %2 = trunc nuw i8 %1 to i1
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 825
  %4 = load i8, ptr %3, align 1, !range !175
  %5 = trunc nuw i8 %4 to i1
  %or.cond = select i1 %2, i1 true, i1 %5
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 826
  %7 = load i8, ptr %6, align 2, !range !175
  %8 = trunc nuw i8 %7 to i1
  %or.cond5 = select i1 %or.cond, i1 true, i1 %8
  br i1 %or.cond5, label %13, label %9

9:                                                ; preds = %bb.a
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 827
  %11 = load i8, ptr %10, align 1, !tbaa !212, !range !175, !noundef !176
  %12 = trunc nuw i8 %11 to i1
  br label %13

13:                                               ; preds = %9, %bb.a
  %14 = phi i1 [ true, %bb.a ], [ %12, %9 ]
  ret i1 %14
}

declare void @_ZNK6casadi8Function7forwardEx(ptr dead_on_unwind writable sret(%"class.casadi::Function") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi16FunctionInternal12forward_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEx(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  call void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.341, i64 noundef 3)
          to label %.noexc unwind label %bb.i     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !39, !alias.scope !1300
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %.thread, label %bb.b

.thread:                                          ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.h, ptr %i.l, align 8, !tbaa !45, !alias.scope !1300
  store ptr %i.e, ptr %i.b, align 8, !tbaa !43
  store i64 0, ptr %i.k, align 8, !tbaa !45
  store i8 0, ptr %i.e, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.b:                                             ; preds = %.noexc
  store ptr %i.d, ptr %4, align 8, !tbaa !43, !alias.scope !1300
  %i.m = load i64, ptr %i.e, align 8, !tbaa !44
  store i64 %i.m, ptr %i.c, align 8, !tbaa !44, !alias.scope !1300
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !45 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.pre.i, ptr %i.o, align 8, !tbaa !45, !alias.scope !1300
  store ptr %i.e, ptr %i.b, align 8, !tbaa !43
  store i64 0, ptr %i.n, align 8, !tbaa !45
  store i8 0, ptr %i.e, align 8, !tbaa !44
  %i.p = icmp eq i64 %.pre.i, 4611686018427387903
  br i1 %i.p, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.790) #37
          to label %.noexc9 unwind label %bb.j

.noexc9:                                          ; preds = %bb.c
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.thread, %bb.b
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.189, i64 noundef 1)
          to label %.noexc10 unwind label %bb.j   ; 6 uses

.noexc10:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !39, !alias.scope !1301
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !43   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

bb.d:                                             ; preds = %.noexc10
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !45   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %.noexc10
  store ptr %i.s, ptr %3, align 8, !tbaa !43, !alias.scope !1301
  %i.z = load i64, ptr %i.t, align 8, !tbaa !44
  store i64 %i.z, ptr %i.r, align 8, !tbaa !44, !alias.scope !1301
  %.phi.trans.insert.i7 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i8 = load i64, ptr %.phi.trans.insert.i7, align 8, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.d
  %i.aa = phi i64 [ %i.w, %bb.d ], [ %.pre.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !45, !alias.scope !1301
  store ptr %i.t, ptr %i.q, align 8, !tbaa !43
  store i64 0, ptr %i.ab, align 8, !tbaa !45
  store i8 0, ptr %i.t, align 8, !tbaa !44
  call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !45, !noalias !1302 ; 2 uses
  %i.af = sub i64 4611686018427387903, %i.aa
  %i.ag = icmp ult i64 %i.af, %i.ae
  br i1 %i.ag, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.790) #37
          to label %.noexc14 unwind label %bb.k

.noexc14:                                         ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8, !tbaa !43, !noalias !1302
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ah, i64 noundef %i.ae)
          to label %.noexc15 unwind label %bb.k   ; 6 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !39, !alias.scope !1302
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !43 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

bb.g:                                             ; preds = %.noexc15
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !45 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %.noexc15
  store ptr %i.ak, ptr %0, align 8, !tbaa !43, !alias.scope !1302
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !44
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !44, !alias.scope !1302
  %.phi.trans.insert.i12 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.pre.i13 = load i64, ptr %.phi.trans.insert.i12, align 8, !tbaa !45
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.g
  %i.as = phi i64 [ %i.ao, %bb.g ], [ %.pre.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.as, ptr %i.au, align 8, !tbaa !45, !alias.scope !1302
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !43
  store i64 0, ptr %i.at, align 8, !tbaa !45
  store i8 0, ptr %i.al, align 8, !tbaa !44
  %i.av = load ptr, ptr %3, align 8, !tbaa !43    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.r
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.h
  %i.ax = load i64, ptr %i.r, align 8, !tbaa !44
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.az = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.c
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = load i64, ptr %i.c, align 8, !tbaa !44
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %i.bd = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !44
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  ret void

bb.i:                                             ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.c
  %i.bj = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZNK6casadi16FunctionInternal7reverseEx:bb.a
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #37
          to label %bb.ff unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.k:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

bb.l:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

bb.m:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

bb.n:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

bb.o:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.j, %bb.i
  %.080 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.n = load i64, ptr %i.l, align 8, !tbaa !44
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn = phi { ptr, i32 } [ %i.i, %bb.o ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.p ] ; 2 uses
  %.181 = phi i1 [ true, %bb.o ], [ %.080, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.080, %bb.p ] ; 2 uses
  %i.p = load ptr, ptr %8, align 8, !tbaa !43     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = load i64, ptr %i.q, align 8, !tbaa !44
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.h, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.282 = phi i1 [ true, %bb.n ], [ %.181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224 ], [ %.181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  %i.u = load ptr, ptr %9, align 8, !tbaa !43     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
  %i.x = load i64, ptr %i.v, align 8, !tbaa !44
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.g, %bb.m ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ] ; 2 uses
  %.383 = phi i1 [ true, %bb.m ], [ %.282, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227 ], [ %.282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ] ; 2 uses
  %i.z = load ptr, ptr %10, align 8, !tbaa !43    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.f, %bb.l ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229 ] ; 2 uses
  %.484 = phi i1 [ true, %bb.l ], [ %.383, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230 ], [ %.383, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  %i.ae = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !44
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233, %bb.k
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.e, %bb.k ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232 ] ; 4 uses
  %.585 = phi i1 [ true, %bb.k ], [ %.484, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233 ], [ %.484, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232 ] ; 2 uses
  %i.aj = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !44
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236
  %i.ao = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.thread: ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.thread
  %i.av = load i64, ptr %i.at, align 8, !tbaa !44
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #39
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %i.ax = load i64, ptr %i.ap, align 8, !tbaa !44
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ay) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br i1 %.585, label %bb.q, label %bb.fe

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br i1 %.585, label %bb.q, label %bb.fe

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239.thread
  %.pn.pn.pn.pn.pn.pn.pn486.ph = phi { ptr, i32 } [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241.thread ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241
  %.pn.pn.pn.pn.pn.pn.pn486 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ %.pn.pn.pn.pn.pn.pn.pn486.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.c) #38
  br label %bb.fe

bb.r:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 825 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !210, !range !175, !noundef !176
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.am, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 824
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !209, !range !175, !noundef !176
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 826
  %i.bg = load i8, ptr %i.bf, align 2, !range !175
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = select i1 %i.be, i1 true, i1 %i.bh
  br i1 %i.bi, label %bb.aj, label %_ZNK6casadi16FunctionInternal14has_derivativeEv.exit

_ZNK6casadi16FunctionInternal14has_derivativeEv.exit: ; preds = %bb.s
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 827
  %72 = load i8, ptr %71, align 1, !tbaa !212, !range !175, !noundef !176
  %73 = trunc nuw i8 %72 to i1
  br i1 %73, label %bb.aj, label %bb.t

bb.t:                                             ; preds = %_ZNK6casadi16FunctionInternal14has_derivativeEv.exit
  %i.bj = tail call ptr @__cxa_allocate_exception(i64 40) #38 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.355, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.u unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.thread

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.v unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.thread

bb.v:                                             ; preds = %bb.u
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.8)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull @.str.340, ptr noundef nonnull align 8 dereferenceable(32) %i.bk)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull @.str.339, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false), !alias.scope !1334
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %bb.z unwind label %bb.af

bb.z:                                             ; preds = %bb.y
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.aa unwind label %bb.ag

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.ab unwind label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #37
          to label %bb.ff unwind label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.thread: ; preds = %bb.t
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split946

bb.ac:                                            ; preds = %bb.v
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

bb.ad:                                            ; preds = %bb.w
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

bb.ae:                                            ; preds = %bb.x
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

bb.af:                                            ; preds = %bb.y
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

bb.ag:                                            ; preds = %bb.z
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

bb.ah:                                            ; preds = %bb.ab, %bb.aa
  %.072 = phi i1 [ false, %bb.ab ], [ true, %bb.aa ] ; 2 uses
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %13, align 8, !tbaa !43   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %bb.ah
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !44
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242, %bb.ag
  %.pn160 = phi { ptr, i32 } [ %i.bq, %bb.ag ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ], [ %i.br, %bb.ah ] ; 2 uses
  %.173 = phi i1 [ true, %bb.ag ], [ %.072, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ], [ %.072, %bb.ah ] ; 2 uses
  %i.bx = load ptr, ptr %18, align 8, !tbaa !43   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !44
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %bb.af
  %.pn160.pn = phi { ptr, i32 } [ %i.bp, %bb.af ], [ %.pn160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %.pn160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ] ; 2 uses
  %.274 = phi i1 [ true, %bb.af ], [ %.173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %.173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  %i.cc = load ptr, ptr %19, align 8, !tbaa !43   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !44
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248, %bb.ae
  %.pn160.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.ae ], [ %.pn160.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248 ], [ %.pn160.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ] ; 2 uses
  %.375 = phi i1 [ true, %bb.ae ], [ %.274, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248 ], [ %.274, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ] ; 2 uses
  %i.ch = load ptr, ptr %20, align 8, !tbaa !43   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !44
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251, %bb.ad
  %.pn160.pn.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.ad ], [ %.pn160.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %.pn160.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ] ; 2 uses
  %.476 = phi i1 [ true, %bb.ad ], [ %.375, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %.375, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  %i.cm = load ptr, ptr %14, align 8, !tbaa !43   ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !44
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254, %bb.ac
  %.pn160.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.ac ], [ %.pn160.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254 ], [ %.pn160.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ] ; 4 uses
  %.577 = phi i1 [ true, %bb.ac ], [ %.476, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254 ], [ %.476, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ] ; 2 uses
  %i.cr = load ptr, ptr %15, align 8, !tbaa !43   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !44
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257
  %i.cw = load ptr, ptr %16, align 8, !tbaa !43   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.thread: ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %16, align 8, !tbaa !43   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %.sink.split946, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.thread
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !44
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #39
  br label %.sink.split946

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259
  %i.df = load i64, ptr %i.cx, align 8, !tbaa !44
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.dg) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br i1 %.577, label %bb.ai, label %bb.fe

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br i1 %.577, label %bb.ai, label %bb.fe

.sink.split946:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260.thread
  %.pn160.pn.pn.pn.pn.pn.pn498.ph = phi { ptr, i32 } [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260.thread ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.thread ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split946, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262
  %.pn160.pn.pn.pn.pn.pn.pn498 = phi { ptr, i32 } [ %.pn160.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260 ], [ %.pn160.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ], [ %.pn160.pn.pn.pn.pn.pn.pn498.ph, %.sink.split946 ]
  call void @__cxa_free_exception(ptr %i.bj) #38
  br label %bb.fe

bb.aj:                                            ; preds = %bb.s, %_ZNK6casadi16FunctionInternal14has_derivativeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38
  call void @_ZNK6casadi16FunctionInternal4wrapEv(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Function") align 8 %22, ptr noundef nonnull align 8 dereferenceable(1312) %1)
  invoke void @_ZNK6casadi8Function7reverseEx(ptr dead_on_unwind writable sret(%"class.casadi::Function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %2)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  br label %bb.fd

bb.al:                                            ; preds = %bb.aj
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  br label %bb.fe

bb.am:                                            ; preds = %bb.r
  tail call void @_ZN6casadi8FunctionC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_ZN6casadi16FunctionInternal12reverse_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEx(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(32) %i.di, i64 noundef %2)
          to label %._crit_edge.i.i unwind label %bb.au

._crit_edge.i.i:                                  ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  %i.dj = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.dj, ptr %24, align 8, !tbaa !39
  %i.dk = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 0, ptr %i.dk, align 8, !tbaa !45
  store i8 0, ptr %i.dj, align 8, !tbaa !44
  %i.dl = invoke noundef zeroext i1 @_ZNK6casadi16FunctionInternal7incacheERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_8FunctionES8_(ptr noundef nonnull align 8 dereferenceable(1312) %1, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.an unwind label %bb.av

bb.an:                                            ; preds = %._crit_edge.i.i
  %i.dm = load ptr, ptr %24, align 8, !tbaa !43   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.dj
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263: ; preds = %bb.an
  %i.do = load i64, ptr %i.dj, align 8, !tbaa !44
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  br i1 %i.dl, label %bb.fb, label %._crit_edge.i.i266

._crit_edge.i.i266:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #38
  %i.dq = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.dq, ptr %26, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.dq, ptr noundef nonnull align 1 dereferenceable(3) @.str.356, i64 3, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 3, ptr %i.dr, align 8, !tbaa !45
  %i.ds = getelementptr inbounds nuw i8, ptr %26, i64 19
  store i8 0, ptr %i.ds, align 1, !tbaa !44
  invoke void @_ZNK6casadi16FunctionInternal11diff_prefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(1312) %1, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.ao unwind label %bb.aw

bb.ao:                                            ; preds = %._crit_edge.i.i266
  %i.dt = load ptr, ptr %26, align 8, !tbaa !43   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.dq
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %bb.ao
  %i.dv = load i64, ptr %i.dq, align 8, !tbaa !44
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 8 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !203
  %.not = icmp eq i64 %i.dy, 0
  br i1 %.not, label %.preheader575, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ea = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %27, i64 16
  br label %bb.ap

.preheader575:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 7 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !204
  %.not657 = icmp eq i64 %i.ed, 0
  br i1 %.not657, label %._crit_edge, label %.lr.ph637

.lr.ph637:                                        ; preds = %.preheader575
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ef = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 11 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %27, i64 16
  br label %bb.ay

bb.ap:                                            ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.065635 = phi i64 [ 0, %.lr.ph ], [ %i.fc, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 2 uses
  %i.ej = load ptr, ptr %i.dz, align 8, !tbaa !48
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %.065635 ; 3 uses
  %i.el = load ptr, ptr %i.ea, align 8, !tbaa !49 ; 8 uses
  %i.em = load ptr, ptr %i.eb, align 8, !tbaa !51
  %.not.i = icmp eq ptr %i.el, %i.em
  br i1 %.not.i, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 3 uses
  store ptr %i.en, ptr %i.el, align 8, !tbaa !39
  %i.eo = load ptr, ptr %i.ek, align 8, !tbaa !43 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !45 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 %i.eq, ptr %i.a, align 8, !tbaa !41
  %i.er = icmp ugt i64 %i.eq, 15
  br i1 %i.er, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.aq
  %i.es = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.el, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc273 unwind label %bb.ax ; 2 uses

.noexc273:                                        ; preds = %.noexc.i.i
  store ptr %i.es, ptr %i.el, align 8, !tbaa !43
  %i.et = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.et, ptr %i.en, align 8, !tbaa !44
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc273, %bb.aq
  %i.eu = phi ptr [ %i.es, %.noexc273 ], [ %i.en, %bb.aq ] ; 2 uses
  switch i64 %i.eq, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i.i
  %i.ev = load i8, ptr %i.eo, align 1, !tbaa !44
  store i8 %i.ev, ptr %i.eu, align 1, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.as:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eu, ptr align 1 %i.eo, i64 %i.eq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.as, %bb.ar, %._crit_edge.i.i.i
  %i.ew = load i64, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !45
  %i.ey = load ptr, ptr %i.el, align 8, !tbaa !43
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ew
  store i8 0, ptr %i.ez, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.fa = load ptr, ptr %i.ea, align 8, !tbaa !49
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  store ptr %i.fb, ptr %i.ea, align 8, !tbaa !49
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.at:                                            ; preds = %bb.ap
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr %i.el, ptr noundef nonnull align 8 dereferenceable(32) %i.ek)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.ax

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.at
  %i.fc = add nuw nsw i64 %.065635, 1             ; 2 uses
  %i.fd = load i64, ptr %i.dx, align 8, !tbaa !203
  %i.fe = icmp ult i64 %i.fc, %i.fd
  br i1 %i.fe, label %bb.ap, label %.preheader575, !llvm.loop !1307

bb.au:                                            ; preds = %bb.am
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit479

bb.av:                                            ; preds = %._crit_edge.i.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  %i.fh = load ptr, ptr %24, align 8, !tbaa !43   ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.dj
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275: ; preds = %bb.av
  %i.fj = load i64, ptr %i.dj, align 8, !tbaa !44
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  br label %bb.fc

bb.aw:                                            ; preds = %._crit_edge.i.i266
  %i.fl = landingpad { ptr, i32 }
          cleanup
  %i.fm = load ptr, ptr %26, align 8, !tbaa !43   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.dq
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278

end_hunk_1
begin_hunk_2_@_ZNK6casadi16FunctionInternal7eval_mxERKSt6vectorINS_2MXESaIS2_EERS4_bb:bb.a
  br i1 %.6, label %bb.t, label %bb.ad

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.thread
  %.pn.pn.pn.pn.pn.pn.pn.pn61.ph = phi { ptr, i32 } [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %.pn.pn.pn.pn.pn.pn.pn.pn61 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn61.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.i) #38
  br label %bb.ad

bb.u:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  call void @_ZNK6casadi16FunctionInternal4wrapEv(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Function") align 8 %15, ptr noundef nonnull align 8 dereferenceable(1312) %0)
  invoke void @_ZNK6casadi8Function4callERKSt6vectorINS_2MXESaIS2_EERS4_bb(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %bb.ad

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  call void @_ZNK6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEE16shared_from_thisINS_8FunctionEEEKT_v(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Function") align 8 %17, ptr noundef nonnull align 8 dereferenceable(1312) %0)
  invoke void @_ZN6casadi4Call6createERKNS_8FunctionERKSt6vectorINS_2MXESaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.130") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.bn = load ptr, ptr %2, align 8, !tbaa !287   ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !288 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !289
  %i.bs = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bt = load <2 x ptr>, ptr %16, align 16, !tbaa !303
  store <2 x ptr> %i.bt, ptr %2, align 8, !tbaa !303
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 16, !tbaa !289
  store ptr %i.bv, ptr %i.bq, align 8, !tbaa !289
  %.not4.i.i.i.i.i = icmp eq ptr %i.bn, %i.bp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.y, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i ], [ %i.bn, %bb.y ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i) #38
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, %i.bp
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.y
  %.not.i.i1.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = ptrtoint ptr %i.bn to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bz) #39
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit:    ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.z
  %i.ca = load ptr, ptr %16, align 16, !tbaa !287 ; 3 uses
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !288 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i ], [ %i.ca, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #38
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cc, %i.cb
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %16, align 16, !tbaa !287
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit
  %i.cd = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ca, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i
  %i.ce = load ptr, ptr %i.bu, align 16, !tbaa !289
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ch) #39
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, %bb.aa
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, %bb.v
  ret void

bb.ac:                                            ; preds = %bb.x
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.t, %bb.ac, %bb.w
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn61, %bb.t ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.bm, %bb.w ], [ %i.ci, %bb.ac ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.ae:                                            ; preds = %bb.l
  unreachable
}

declare void @_ZNK6casadi8Function4callERKSt6vectorINS_2MXESaIS2_EERS4_bb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN6casadi4Call6createERKNS_8FunctionERKSt6vectorINS_2MXESaIS5_EE(ptr dead_on_unwind writable sret(%"class.std::vector.130") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi16FunctionInternal8jacobianEv(ptr dead_on_unwind noalias writable sret(%"class.casadi::Function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1312) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::vector", align 8      ; 5 uses
  %11 = alloca %"class.casadi::Function", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::vector", align 8      ; 18 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %16 = alloca %"class.std::vector", align 8      ; 21 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %20 = alloca %"class.std::map", align 8         ; 9 uses
  %21 = alloca %"class.casadi::GenericType", align 8 ; 7 uses
  %22 = alloca %"class.casadi::Function", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %32 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %33 = alloca %"class.std::vector", align 8      ; 5 uses
  %34 = alloca %"class.casadi::Function", align 8 ; 7 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %44 = alloca %"class.std::vector", align 8      ; 5 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %49 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %54 = alloca %"class.std::vector", align 8      ; 5 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(1312) %1)
  br i1 %i.e, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 824
  %56 = load i8, ptr %i.f, align 8, !tbaa !209, !range !175, !noundef !176
  %57 = trunc nuw i8 %56 to i1
  %58 = getelementptr inbounds nuw i8, ptr %1, i64 825
  %59 = load i8, ptr %58, align 1, !range !175
  %60 = trunc nuw i8 %59 to i1
  %or.cond.i = select i1 %57, i1 true, i1 %60
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 826
  %62 = load i8, ptr %61, align 2, !range !175
  %63 = trunc nuw i8 %62 to i1
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %63
  br i1 %or.cond5.i, label %bb.s, label %_ZNK6casadi16FunctionInternal14has_derivativeEv.exit

_ZNK6casadi16FunctionInternal14has_derivativeEv.exit: ; preds = %bb.b
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 827
  %65 = load i8, ptr %64, align 1, !tbaa !212, !range !175, !noundef !176
  %66 = trunc nuw i8 %65 to i1
  br i1 %66, label %bb.s, label %bb.c

bb.c:                                             ; preds = %_ZNK6casadi16FunctionInternal14has_derivativeEv.exit
  %i.g = tail call ptr @__cxa_allocate_exception(i64 40) #38 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.375, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.8)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.340, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.339, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !alias.scope !1430
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #37
          to label %bb.el unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.thread: ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.l:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

bb.m:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.n:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.o:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

bb.p:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.q:                                             ; preds = %bb.k, %bb.j
  %.040 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !43     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.s = load i64, ptr %i.q, align 8, !tbaa !44
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p
  %.pn = phi { ptr, i32 } [ %i.n, %bb.p ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.o, %bb.q ] ; 2 uses
  %.141 = phi i1 [ true, %bb.p ], [ %.040, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.040, %bb.q ] ; 2 uses
  %i.u = load ptr, ptr %7, align 8, !tbaa !43     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = load i64, ptr %i.v, align 8, !tbaa !44
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.m, %bb.o ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.242 = phi i1 [ true, %bb.o ], [ %.141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161 ], [ %.141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  %i.z = load ptr, ptr %8, align 8, !tbaa !43     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.l, %bb.n ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ] ; 2 uses
  %.343 = phi i1 [ true, %bb.n ], [ %.242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %.242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ] ; 2 uses
  %i.ae = load ptr, ptr %9, align 8, !tbaa !43    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !44
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.k, %bb.m ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ] ; 2 uses
  %.444 = phi i1 [ true, %bb.m ], [ %.343, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %.343, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  %i.aj = load ptr, ptr %3, align 8, !tbaa !43    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !44
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170, %bb.l
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.j, %bb.l ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ] ; 4 uses
  %.545 = phi i1 [ true, %bb.l ], [ %.444, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170 ], [ %.444, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ] ; 2 uses
  %i.ao = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !44
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  %i.at = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.thread: ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.thread
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !44
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #39
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %i.bc = load i64, ptr %i.au, align 8, !tbaa !44
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.bd) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br i1 %.545, label %bb.r, label %bb.ek

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br i1 %.545, label %bb.r, label %bb.ek

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176.thread
  %.pn.pn.pn.pn.pn.pn.pn383.ph = phi { ptr, i32 } [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.thread ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178
  %.pn.pn.pn.pn.pn.pn.pn383 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ], [ %.pn.pn.pn.pn.pn.pn.pn383.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.g) #38
  br label %bb.ek

bb.s:                                             ; preds = %bb.b, %_ZNK6casadi16FunctionInternal14has_derivativeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  call void @_ZNK6casadi16FunctionInternal4wrapEv(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Function") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1312) %1)
  invoke void @_ZNK6casadi8Function8jacobianEv(ptr dead_on_unwind writable sret(%"class.casadi::Function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  br label %bb.ej

bb.u:                                             ; preds = %bb.s
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  br label %bb.ek

bb.v:                                             ; preds = %bb.a
  tail call void @_ZN6casadi8FunctionC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !43, !noalias !1431
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !45, !noalias !1431 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.bj, ptr %12, align 8, !tbaa !39, !alias.scope !1432
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i64 0, ptr %i.bk, align 8, !tbaa !45, !alias.scope !1432
  store i8 0, ptr %i.bj, align 8, !tbaa !44, !alias.scope !1432
  %i.bl = add i64 %i.bi, 4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.bl)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !45, !alias.scope !1432
  %i.bn = and i64 %i.bm, -4
  %i.bo = icmp eq i64 %i.bn, 4611686018427387900
  br i1 %i.bo, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.w
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.146, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.x ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !45, !alias.scope !1432
  %i.br = sub i64 4611686018427387903, %i.bq
  %i.bs = icmp ult i64 %i.br, %i.bi
  br i1 %i.bs, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.790) #37
          to label %.cont.i.i unwind label %bb.x

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.bg, i64 noundef %i.bi)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.v
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %12, align 8, !tbaa !43, !alias.scope !1432 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bj
  br i1 %i.bw, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.bx, ptr %13, align 8, !tbaa !39
  %i.by = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.by, align 8, !tbaa !45
  store i8 0, ptr %i.bx, align 8, !tbaa !44
  %i.bz = invoke noundef zeroext i1 @_ZNK6casadi16FunctionInternal7incacheERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_8FunctionES8_(ptr noundef nonnull align 8 dereferenceable(1312) %1, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ca = load ptr, ptr %13, align 8, !tbaa !43   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bx
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.y
  %i.cc = load i64, ptr %i.bx, align 8, !tbaa !44
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br i1 %i.bz, label %bb.eh, label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 5 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !203
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %.preheader452, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 16
  br label %bb.ab

.preheader452:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !204
  %.not510 = icmp eq i64 %i.ck, 0
  br i1 %.not510, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit.thread, label %.lr.ph504

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit.thread: ; preds = %.preheader452
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %16, i64 16
  br label %._crit_edge509

.lr.ph504:                                        ; preds = %.preheader452
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 11 uses
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %14, i64 16
  br label %bb.al

bb.aa:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = load ptr, ptr %13, align 8, !tbaa !43   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bx
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %bb.aa
  %i.cu = load i64, ptr %i.bx, align 8, !tbaa !44
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br label %bb.ei

bb.ab:                                            ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.039502 = phi i64 [ 0, %.lr.ph ], [ %i.dp, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 2 uses
  %i.cw = load ptr, ptr %i.cg, align 8, !tbaa !48
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %.039502 ; 3 uses
  %i.cy = load ptr, ptr %i.ch, align 8, !tbaa !49 ; 8 uses
  %i.cz = load ptr, ptr %i.ci, align 8, !tbaa !51
  %.not.i = icmp eq ptr %i.cy, %i.cz
  br i1 %.not.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 3 uses
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !39
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !43 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !45 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 %i.dd, ptr %i.a, align 8, !tbaa !41
  %i.de = icmp ugt i64 %i.dd, 15
  br i1 %i.de, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.ac
  %i.df = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc185 unwind label %bb.ag ; 2 uses

.noexc185:                                        ; preds = %.noexc.i.i
  store ptr %i.df, ptr %i.cy, align 8, !tbaa !43
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.dg, ptr %i.da, align 8, !tbaa !44
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc185, %bb.ac
  %i.dh = phi ptr [ %i.df, %.noexc185 ], [ %i.da, %bb.ac ] ; 2 uses
  switch i64 %i.dd, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i
  %i.di = load i8, ptr %i.db, align 1, !tbaa !44
  store i8 %i.di, ptr %i.dh, align 1, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.ae:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %i.db, i64 %i.dd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i
  %i.dj = load i64, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !45
  %i.dl = load ptr, ptr %i.cy, align 8, !tbaa !43
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dj
  store i8 0, ptr %i.dm, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.dn = load ptr, ptr %i.ch, align 8, !tbaa !49
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
end_hunk_2
begin_hunk_3_@_ZNK6casadi16FunctionInternal12call_forwardERKSt6vectorINS_2MXESaIS2_EES6_RKS1_IS4_SaIS4_EERS8_bb:bb.a
bb.af:                                            ; preds = %bb.w
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

bb.ag:                                            ; preds = %bb.x
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

bb.ah:                                            ; preds = %bb.y
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402

bb.ai:                                            ; preds = %bb.z
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399

bb.aj:                                            ; preds = %bb.aa
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396

bb.ak:                                            ; preds = %bb.ac, %bb.ab
  %.0231 = phi i1 [ false, %bb.ac ], [ true, %bb.ab ] ; 2 uses
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %17, align 8, !tbaa !43   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394: ; preds = %bb.ak
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !44
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394, %bb.aj
  %.1232 = phi i1 [ true, %bb.aj ], [ %.0231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394 ], [ %.0231, %bb.ak ] ; 2 uses
  %.pn355 = phi { ptr, i32 } [ %i.bj, %bb.aj ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394 ], [ %i.bk, %bb.ak ] ; 2 uses
  %i.bq = load ptr, ptr %22, align 8, !tbaa !43   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !44
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397, %bb.ai
  %.2233 = phi i1 [ true, %bb.ai ], [ %.1232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397 ], [ %.1232, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396 ] ; 2 uses
  %.pn355.pn = phi { ptr, i32 } [ %i.bi, %bb.ai ], [ %.pn355, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397 ], [ %.pn355, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  %i.bv = load ptr, ptr %23, align 8, !tbaa !43   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !44
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400, %bb.ah
  %.3234 = phi i1 [ true, %bb.ah ], [ %.2233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400 ], [ %.2233, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399 ] ; 2 uses
  %.pn355.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.ah ], [ %.pn355.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400 ], [ %.pn355.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399 ] ; 2 uses
  %i.ca = load ptr, ptr %24, align 8, !tbaa !43   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !44
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403, %bb.ag
  %.4235 = phi i1 [ true, %bb.ag ], [ %.3234, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403 ], [ %.3234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402 ] ; 2 uses
  %.pn355.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.ag ], [ %.pn355.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403 ], [ %.pn355.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402 ] ; 2 uses
  %i.cf = load ptr, ptr %25, align 8, !tbaa !43   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !44
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406, %bb.af
  %.5236 = phi i1 [ true, %bb.af ], [ %.4235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406 ], [ %.4235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405 ] ; 2 uses
  %.pn355.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.af ], [ %.pn355.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406 ], [ %.pn355.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405 ] ; 2 uses
  %i.ck = load ptr, ptr %26, align 8, !tbaa !43   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !44
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409, %bb.ae
  %.6237 = phi i1 [ true, %bb.ae ], [ %.5236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409 ], [ %.5236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408 ] ; 2 uses
  %.pn355.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.ae ], [ %.pn355.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409 ], [ %.pn355.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  %i.cp = load ptr, ptr %18, align 8, !tbaa !43   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !44
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412, %bb.ad
  %.7238 = phi i1 [ true, %bb.ad ], [ %.6237, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412 ], [ %.6237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411 ] ; 2 uses
  %.pn355.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.ad ], [ %.pn355.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412 ], [ %.pn355.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411 ] ; 4 uses
  %i.cu = load ptr, ptr %19, align 8, !tbaa !43   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !44
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415
  %i.cz = load ptr, ptr %20, align 8, !tbaa !43   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417.thread: ; preds = %bb.t
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %20, align 8, !tbaa !43   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %.sink.split1457.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417.thread
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !44
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #39
  br label %.sink.split1457.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417
  %i.di = load i64, ptr %i.da, align 8, !tbaa !44
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dj) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br i1 %.7238, label %bb.al, label %bb.ia

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br i1 %.7238, label %bb.al, label %bb.ia

.sink.split1457.a:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418.thread
  %.pn355.pn.pn.pn.pn.pn.pn.pn.pn761.ph = phi { ptr, i32 } [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418.thread ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420.thread ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br label %bb.al

bb.al:                                            ; preds = %.sink.split1457.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420
  %.pn355.pn.pn.pn.pn.pn.pn.pn.pn761 = phi { ptr, i32 } [ %.pn355.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418 ], [ %.pn355.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420 ], [ %.pn355.pn.pn.pn.pn.pn.pn.pn.pn761.ph, %.sink.split1457.a ]
  call void @__cxa_free_exception(ptr %i.ay) #38
  br label %bb.ia

bb.am:                                            ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %103 = load i8, ptr %i.dk, align 8, !tbaa !209, !range !175, !noundef !176
  %104 = trunc nuw i8 %103 to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 825
  %105 = load i8, ptr %i.dl, align 1, !range !175
  %106 = trunc nuw i8 %105 to i1
  %or.cond.i = select i1 %104, i1 true, i1 %106
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 826
  %108 = load i8, ptr %107, align 2, !range !175
  %109 = trunc nuw i8 %108 to i1
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %109
  br i1 %or.cond5.i, label %bb.bd, label %_ZNK6casadi16FunctionInternal14has_derivativeEv.exit

_ZNK6casadi16FunctionInternal14has_derivativeEv.exit: ; preds = %bb.am
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 827
  %111 = load i8, ptr %110, align 1, !tbaa !212, !range !175, !noundef !176
  %112 = trunc nuw i8 %111 to i1
  br i1 %112, label %bb.bd, label %bb.an

bb.an:                                            ; preds = %_ZNK6casadi16FunctionInternal14has_derivativeEv.exit
  %i.dm = tail call ptr @__cxa_allocate_exception(i64 40) #38 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.583, ptr noundef nonnull align 1 dereferenceable(1) %32)
          to label %bb.ao unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441.thread

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.ap unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438.thread

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.8)
          to label %bb.aq unwind label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #38
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull @.str.340, ptr noundef nonnull align 8 dereferenceable(32) %i.dn)
          to label %bb.ar unwind label %bb.ax

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull @.str.339, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %bb.as unwind label %bb.ay

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false), !alias.scope !1937
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.at unwind label %bb.az

bb.at:                                            ; preds = %bb.as
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %bb.au unwind label %bb.ba

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.av unwind label %bb.bb

bb.av:                                            ; preds = %bb.au
  invoke void @__cxa_throw(ptr nonnull %i.dm, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #37
          to label %bb.ib unwind label %bb.bb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441.thread: ; preds = %bb.an
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split1458.a

bb.aw:                                            ; preds = %bb.ap
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435

bb.ax:                                            ; preds = %bb.aq
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432

bb.ay:                                            ; preds = %bb.ar
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429

bb.az:                                            ; preds = %bb.as
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426

bb.ba:                                            ; preds = %bb.at
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423

bb.bb:                                            ; preds = %bb.av, %bb.au
  %.0241 = phi i1 [ false, %bb.av ], [ true, %bb.au ] ; 2 uses
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %28, align 8, !tbaa !43   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421: ; preds = %bb.bb
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !44
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421, %bb.ba
  %.1242 = phi i1 [ true, %bb.ba ], [ %.0241, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421 ], [ %.0241, %bb.bb ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.dt, %bb.ba ], [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421 ], [ %i.du, %bb.bb ] ; 2 uses
  %i.ea = load ptr, ptr %33, align 8, !tbaa !43   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !44
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424, %bb.az
  %.2243 = phi i1 [ true, %bb.az ], [ %.1242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424 ], [ %.1242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423 ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.az ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %36) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #38
  %i.ef = load ptr, ptr %34, align 8, !tbaa !43   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !44
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427, %bb.ay
  %.3244 = phi i1 [ true, %bb.ay ], [ %.2243, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427 ], [ %.2243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426 ] ; 2 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dr, %bb.ay ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426 ] ; 2 uses
  %i.ek = load ptr, ptr %35, align 8, !tbaa !43   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429
  %i.en = load i64, ptr %i.el, align 8, !tbaa !44
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430, %bb.ax
  %.4245 = phi i1 [ true, %bb.ax ], [ %.3244, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430 ], [ %.3244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429 ] ; 2 uses
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.ax ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #38
  %i.ep = load ptr, ptr %29, align 8, !tbaa !43   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !44
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433, %bb.aw
  %.5246 = phi i1 [ true, %bb.aw ], [ %.4245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433 ], [ %.4245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432 ] ; 2 uses
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dp, %bb.aw ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432 ] ; 4 uses
  %i.eu = load ptr, ptr %30, align 8, !tbaa !43   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !44
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436
  %i.ez = load ptr, ptr %31, align 8, !tbaa !43   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438.thread: ; preds = %bb.ao
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %31, align 8, !tbaa !43   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %.sink.split1458.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438.thread
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !44
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #39
  br label %.sink.split1458.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438
  %i.fi = load i64, ptr %i.fa, align 8, !tbaa !44
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fj) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  br i1 %.5246, label %bb.bc, label %bb.ia

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  br i1 %.5246, label %bb.bc, label %bb.ia

.sink.split1458.a:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439.thread
  %.pn.pn.pn.pn.pn.pn.pn773.ph = phi { ptr, i32 } [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439.thread ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441.thread ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  br label %bb.bc

bb.bc:                                            ; preds = %.sink.split1458.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441
  %.pn.pn.pn.pn.pn.pn.pn773 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441 ], [ %.pn.pn.pn.pn.pn.pn.pn773.ph, %.sink.split1458.a ]
  call void @__cxa_free_exception(ptr %i.dm) #38
  br label %bb.ia

bb.bd:                                            ; preds = %bb.am, %_ZNK6casadi16FunctionInternal14has_derivativeEv.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !307 ; 2 uses
  %i.fm = load ptr, ptr %3, align 8, !tbaa !308   ; 2 uses
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 3 uses
  %i.fq = sdiv exact i64 %i.fp, 24                ; 11 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !307 ; 3 uses
  %i.ft = load ptr, ptr %4, align 8, !tbaa !308   ; 2 uses
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = sdiv exact i64 %i.fw, 24                ; 3 uses
  %i.fy = icmp ugt i64 %i.fq, %i.fx
  br i1 %i.fy, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fz = sub nuw nsw i64 %i.fq, %i.fx
  tail call void @_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.fz)
  br label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit

bb.bf:                                            ; preds = %bb.bd
  %i.ga = icmp ult i64 %i.fq, %i.fx
  br i1 %i.ga, label %bb.bg, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit

bb.bg:                                            ; preds = %bb.bf
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fp ; 3 uses
  %.not.i.i = icmp eq ptr %i.fs, %i.gb
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bg, %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.gm, %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.gb, %bb.bg ] ; 5 uses
  %i.gc = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !287 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !288 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.gc, %i.ge
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.gc, %.lr.ph.i.i.i.i ] ; 2 uses
  tail call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i.i) #38
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gf, %i.ge
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !287
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.gg = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.gc, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !289
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.gg to i64
  %i.gl = sub i64 %i.gj, %i.gk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gl) #39
  br label %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.bh, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gm, %i.fs
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.gb, ptr %i.fr, align 8, !tbaa !307
  br label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit: ; preds = %bb.be, %bb.bf, %bb.bg, %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.gn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.gn, label %bb.hy, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 1, ptr %i.a, align 8, !tbaa !129
  %i.go = load ptr, ptr %3, align 8, !tbaa !309   ; 2 uses
  %i.gp = load ptr, ptr %i.fk, align 8, !tbaa !309 ; 2 uses
  %.not972 = icmp eq ptr %i.go, %i.gp
  br i1 %.not972, label %.critedge375, label %.critedge

bb.bj:                                            ; preds = %.critedge
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0742.0973, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.gq, %i.gp
  br i1 %.not, label %.critedge375, label %.critedge

.critedge:                                        ; preds = %bb.bi, %bb.bj
  %.sroa.0742.0973 = phi ptr [ %i.gq, %bb.bj ], [ %i.go, %bb.bi ] ; 2 uses
  %i.gr = call noundef zeroext i1 @_ZNK6casadi16FunctionInternal12matching_argINS_2MXEEEbRKSt6vectorIT_SaIS4_EERx(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0742.0973, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.gr, label %bb.bj, label %bb.bk

bb.bk:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #38
  %i.gs = load i64, ptr %i.a, align 8, !tbaa !129
  call void @_ZNK6casadi16FunctionInternal13replace_fseedINS_2MXEEESt6vectorIS3_IT_SaIS4_EESaIS6_EERKS8_x(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.171") align 8 %37, ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.gs)
  invoke void @_ZNK6casadi16FunctionInternal12call_forwardERKSt6vectorINS_2MXESaIS2_EES6_RKS1_IS4_SaIS4_EERS8_bb(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false, i1 noundef zeroext %6)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.gt = load ptr, ptr %37, align 8, !tbaa !308  ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !307 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gt, %i.gv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bl, %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hg, %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i ], [ %i.gt, %bb.bl ] ; 5 uses
  %i.gw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !287 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !288 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.gw, %i.gy
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gw, %.lr.ph.i.i.i ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i) #38
  %i.gz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gz, %i.gy
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !287
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ha = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.gw, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !289
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hf) #39
  br label %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.bm, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hg, %i.gv
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %37, align 8, !tbaa !308
  br label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.bl
  %i.hh = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.gt, %bb.bl ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hh, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.hi = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !310
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hh to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hm) #39
  br label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #38
  br label %.loopexit883

bb.bo:                                            ; preds = %bb.bk
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %37) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #38
  br label %bb.hz

.critedge375:                                     ; preds = %bb.bj, %bb.bi
  %i.ho = load ptr, ptr %0, align 8, !tbaa !53
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 888
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = call noundef zeroext i1 %i.hq(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %i.fq)
  br i1 %i.hr, label %bb.bp, label %bb.ee

bb.bp:                                            ; preds = %.critedge375
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #38
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.hs = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !303
  %i.hu = load ptr, ptr %2, align 8, !tbaa !303
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !303
  %i.hx = load ptr, ptr %38, align 8, !tbaa !303  ; 2 uses
  %i.hy = ptrtoint ptr %i.ht to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = getelementptr inbounds i8, ptr %i.hx, i64 %i.ia
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr %i.ib, ptr %i.hu, ptr %i.hw)
          to label %bb.bq unwind label %bb.bv

bb.bq:                                            ; preds = %bb.bp
end_hunk_3
begin_hunk_4_@_ZNK6casadi16FunctionInternal12call_forwardERKSt6vectorINS_2MXESaIS2_EES6_RKS1_IS4_SaIS4_EERS8_bb:bb.a
  %i.pu = load i64, ptr %i.ps, align 8, !tbaa !44
  %i.pv = add i64 %i.pu, 1
  call void @_ZdlPvm(ptr noundef %i.pr, i64 noundef %i.pv) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i527, %bb.dp
  %.4265 = phi i1 [ true, %bb.dp ], [ %.3264, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i527 ], [ %.3264, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526 ] ; 2 uses
  %.pn328.pn.pn.pn = phi { ptr, i32 } [ %i.ox, %bb.dp ], [ %.pn328.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i527 ], [ %.pn328.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #38
  %i.pw = load ptr, ptr %53, align 8, !tbaa !43   ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.py = icmp eq ptr %i.pw, %i.px
  br i1 %i.py, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529
  %i.pz = load i64, ptr %i.px, align 8, !tbaa !44
  %i.qa = add i64 %i.pz, 1
  call void @_ZdlPvm(ptr noundef %i.pw, i64 noundef %i.qa) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530, %bb.do
  %.5266 = phi i1 [ true, %bb.do ], [ %.4265, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530 ], [ %.4265, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529 ] ; 2 uses
  %.pn328.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ow, %bb.do ], [ %.pn328.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530 ], [ %.pn328.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529 ] ; 4 uses
  %i.qb = load ptr, ptr %54, align 8, !tbaa !43   ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  %i.qd = icmp eq ptr %i.qb, %i.qc
  br i1 %i.qd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i533

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i533: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532
  %i.qe = load i64, ptr %i.qc, align 8, !tbaa !44
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qb, i64 noundef %i.qf) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i533
  %i.qg = load ptr, ptr %55, align 8, !tbaa !43   ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %i.qi = icmp eq ptr %i.qg, %i.qh
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535.thread: ; preds = %bb.df
  %i.qj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qk = load ptr, ptr %55, align 8, !tbaa !43   ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %i.qm = icmp eq ptr %i.qk, %i.ql
  br i1 %i.qm, label %.sink.split1459.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535.thread
  %i.qn = load i64, ptr %i.ql, align 8, !tbaa !44
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.qk, i64 noundef %i.qo) #39
  br label %.sink.split1459.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535
  %i.qp = load i64, ptr %i.qh, align 8, !tbaa !44
  %i.qq = add i64 %i.qp, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qq) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #38
  br i1 %.5266, label %bb.du, label %bb.dx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #38
  br i1 %.5266, label %bb.du, label %bb.dx

.sink.split1459.a:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536.thread
  %.pn328.pn.pn.pn.pn.pn.pn785.ph = phi { ptr, i32 } [ %i.qj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536.thread ], [ %i.ov, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538.thread ], [ %i.qj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #38
  br label %bb.du

bb.du:                                            ; preds = %.sink.split1459.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538
  %.pn328.pn.pn.pn.pn.pn.pn785 = phi { ptr, i32 } [ %.pn328.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536 ], [ %.pn328.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538 ], [ %.pn328.pn.pn.pn.pn.pn.pn785.ph, %.sink.split1459.a ]
  call void @__cxa_free_exception(ptr %i.ot) #38
  br label %bb.dx

._crit_edge1007:                                  ; preds = %_ZN6casadi2MXaSERKS0_.exit544
  %i.qr = add nuw i64 %.02691008, 1               ; 2 uses
  %i.qs = load i64, ptr %i.if, align 8, !tbaa !204
  %i.qt = icmp ult i64 %i.qr, %i.qs
  br i1 %i.qt, label %bb.db, label %._crit_edge1010, !llvm.loop !1920

.lr.ph1006:                                       ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit517, %_ZN6casadi2MXaSERKS0_.exit544
  %.02601005 = phi i64 [ %i.rl, %_ZN6casadi2MXaSERKS0_.exit544 ], [ 0, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit517 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #38
  %i.qu = load ptr, ptr %41, align 16, !tbaa !287
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %.02601005
  %i.qw = load ptr, ptr %i.le, align 8, !tbaa !147
  %i.qx = load ptr, ptr %i.ld, align 8, !tbaa !146 ; 2 uses
  %i.qy = ptrtoint ptr %i.qw to i64
  %i.qz = ptrtoint ptr %i.qx to i64
  %i.ra = sub i64 %i.qy, %i.qz
  %i.rb = ashr exact i64 %i.ra, 3                 ; 2 uses
  %.not.i.i.i.i539 = icmp ult i64 %.02691008, %i.rb
  br i1 %.not.i.i.i.i539, label %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph1006
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %.02691008, i64 noundef %i.rb) #37
          to label %.noexc540 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc540:                                        ; preds = %bb.dv
  unreachable

_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i: ; preds = %.lr.ph1006
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %.02691008
  %i.rd = invoke { i64, i64 } @_ZNK6casadi8Sparsity4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.rc)
          to label %_ZNK6casadi16FunctionInternal8size_outEx.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNK6casadi16FunctionInternal8size_outEx.exit:    ; preds = %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i
  %i.re = extractvalue { i64, i64 } %i.rd, 0
  %i.rf = extractvalue { i64, i64 } %i.rd, 1
  invoke void @_ZN6casadi2MX7reshapeERKS0_xx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %62, ptr noundef nonnull align 8 dereferenceable(8) %i.qv, i64 noundef %i.re, i64 noundef %i.rf)
          to label %_ZN6casadi7reshapeERKNS_2MXESt4pairIxxE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6casadi7reshapeERKNS_2MXESt4pairIxxE.exit:     ; preds = %_ZNK6casadi16FunctionInternal8size_outEx.exit
  %i.rg = load ptr, ptr %4, align 8, !tbaa !308
  %i.rh = getelementptr inbounds nuw [24 x i8], ptr %i.rg, i64 %.02601005
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !287
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %.02691008
  %i.rk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.rj, ptr noundef nonnull align 8 dereferenceable(8) %62)
          to label %_ZN6casadi2MXaSERKS0_.exit544 unwind label %bb.dw ; 0 uses

_ZN6casadi2MXaSERKS0_.exit544:                    ; preds = %_ZN6casadi7reshapeERKNS_2MXESt4pairIxxE.exit
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %62) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #38
  %i.rl = add nuw i64 %.02601005, 1               ; 2 uses
  %exitcond1137.not = icmp eq i64 %i.rl, %i.fq
  br i1 %exitcond1137.not, label %._crit_edge1007, label %.lr.ph1006, !llvm.loop !1921

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK6casadi16FunctionInternal8size_outEx.exit, %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i, %bb.dv
  %lpad.loopexit.split-lp1546 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.dw:                                            ; preds = %_ZN6casadi7reshapeERKNS_2MXESt4pairIxxE.exit
  %i.rm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %62) #38
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dw
  %.pn336 = phi { ptr, i32 } [ %i.rm, %bb.dw ], [ %lpad.loopexit.split-lp1546, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #38
  br label %bb.dx

bb.dx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536, %bb.dn, %.loopexit.split-lp, %bb.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538, %bb.cv, %bb.cr
  %.pn339.pn.pn = phi { ptr, i32 } [ %.pn339.pn, %bb.cr ], [ %i.lv, %bb.cv ], [ %.pn336, %.loopexit.split-lp ], [ %.pn328.pn.pn.pn.pn.pn.pn785, %bb.du ], [ %.pn328.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538 ], [ %i.ou, %bb.dn ], [ %.pn328.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536 ]
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %47) #38
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.ck
  %.pn339.pn.pn.pn = phi { ptr, i32 } [ %.pn339.pn.pn, %bb.dx ], [ %i.kb, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #38
  br label %bb.dz

bb.dz:                                            ; preds = %.loopexit.split-lp850, %bb.ci, %bb.dy
  %.pn346.pn.pn = phi { ptr, i32 } [ %.pn339.pn.pn.pn, %bb.dy ], [ %.pn346, %.loopexit.split-lp850 ], [ %.pn344, %bb.ci ]
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %43) #38
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.ca
  %.pn346.pn.pn.pn = phi { ptr, i32 } [ %.pn346.pn.pn, %bb.dz ], [ %i.il, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #38
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %41) #38
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.bz
  %.pn346.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn346.pn.pn.pn, %bb.ea ], [ %i.ik, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #38
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %39) #38
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.by
  %.pn346.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn346.pn.pn.pn.pn, %bb.eb ], [ %.pn326, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #38
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.bv
  %.pn346.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn346.pn.pn.pn.pn.pn, %bb.ec ], [ %i.ih, %bb.bv ]
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %38) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #38
  br label %bb.hz

bb.ee:                                            ; preds = %.critedge375
  %i.rn = load i8, ptr %i.dk, align 8, !tbaa !209, !range !175, !noundef !176
  %i.ro = trunc nuw i8 %i.rn to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 827
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !212, !range !175
  %.pre1142 = trunc nuw i8 %.pre to i1            ; 2 uses
  br i1 %i.ro, label %bb.ew, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  br i1 %.pre1142, label %.thread, label %bb.eg

.thread:                                          ; preds = %bb.ef
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !130
  br label %.loopexit890

bb.eg:                                            ; preds = %bb.ef
  %i.rr = call ptr @__cxa_allocate_exception(i64 40) #38 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull @.str.586, ptr noundef nonnull align 1 dereferenceable(1) %67)
          to label %bb.eh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565.thread

bb.eh:                                            ; preds = %bb.eg
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %65, ptr noundef nonnull align 8 dereferenceable(32) %66)
          to label %bb.ei unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562.thread

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %64, ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull @.str.8)
          to label %bb.ej unwind label %bb.ep

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull @.str.207, ptr noundef nonnull align 1 dereferenceable(1) %71)
          to label %bb.ek unwind label %bb.eq

bb.ek:                                            ; preds = %bb.ej
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %69, ptr noundef nonnull @.str.304, ptr noundef nonnull align 8 dereferenceable(32) %70)
          to label %bb.el unwind label %bb.er

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %72, i8 0, i64 24, i1 false), !alias.scope !1942
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %68, ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull align 8 dereferenceable(24) %72)
          to label %bb.em unwind label %bb.es

bb.em:                                            ; preds = %bb.el
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %63, ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull align 8 dereferenceable(32) %68)
          to label %bb.en unwind label %bb.et

bb.en:                                            ; preds = %bb.em
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.rr, ptr noundef nonnull align 8 dereferenceable(32) %63)
          to label %bb.eo unwind label %bb.eu

bb.eo:                                            ; preds = %bb.en
  invoke void @__cxa_throw(ptr nonnull %i.rr, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #37
          to label %bb.ib unwind label %bb.eu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565.thread: ; preds = %bb.eg
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split1460

bb.ep:                                            ; preds = %bb.ei
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit559

bb.eq:                                            ; preds = %bb.ej
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556

bb.er:                                            ; preds = %bb.ek
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553

bb.es:                                            ; preds = %bb.el
  %i.rw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

bb.et:                                            ; preds = %bb.em
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547

bb.eu:                                            ; preds = %bb.eo, %bb.en
  %.0250 = phi i1 [ false, %bb.eo ], [ true, %bb.en ] ; 2 uses
  %i.ry = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rz = load ptr, ptr %63, align 8, !tbaa !43   ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.sb = icmp eq ptr %i.rz, %i.sa
  br i1 %i.sb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545: ; preds = %bb.eu
  %i.sc = load i64, ptr %i.sa, align 8, !tbaa !44
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.rz, i64 noundef %i.sd) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547: ; preds = %bb.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545, %bb.et
  %.1251 = phi i1 [ true, %bb.et ], [ %.0250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545 ], [ %.0250, %bb.eu ] ; 2 uses
  %.pn285 = phi { ptr, i32 } [ %i.rx, %bb.et ], [ %i.ry, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545 ], [ %i.ry, %bb.eu ] ; 2 uses
  %i.se = load ptr, ptr %68, align 8, !tbaa !43   ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.sg = icmp eq ptr %i.se, %i.sf
  br i1 %i.sg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547
  %i.sh = load i64, ptr %i.sf, align 8, !tbaa !44
  %i.si = add i64 %i.sh, 1
  call void @_ZdlPvm(ptr noundef %i.se, i64 noundef %i.si) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548, %bb.es
  %.2252 = phi i1 [ true, %bb.es ], [ %.1251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548 ], [ %.1251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547 ] ; 2 uses
  %.pn285.pn = phi { ptr, i32 } [ %i.rw, %bb.es ], [ %.pn285, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548 ], [ %.pn285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %72) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #38
  %i.sj = load ptr, ptr %69, align 8, !tbaa !43   ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %i.sl = icmp eq ptr %i.sj, %i.sk
  br i1 %i.sl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550
  %i.sm = load i64, ptr %i.sk, align 8, !tbaa !44
  %i.sn = add i64 %i.sm, 1
  call void @_ZdlPvm(ptr noundef %i.sj, i64 noundef %i.sn) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551, %bb.er
  %.3253 = phi i1 [ true, %bb.er ], [ %.2252, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551 ], [ %.2252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550 ] ; 2 uses
  %.pn285.pn.pn = phi { ptr, i32 } [ %i.rv, %bb.er ], [ %.pn285.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551 ], [ %.pn285.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550 ] ; 2 uses
  %i.so = load ptr, ptr %70, align 8, !tbaa !43   ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.sq = icmp eq ptr %i.so, %i.sp
  br i1 %i.sq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553
  %i.sr = load i64, ptr %i.sp, align 8, !tbaa !44
  %i.ss = add i64 %i.sr, 1
  call void @_ZdlPvm(ptr noundef %i.so, i64 noundef %i.ss) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554, %bb.eq
  %.4254 = phi i1 [ true, %bb.eq ], [ %.3253, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554 ], [ %.3253, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553 ] ; 2 uses
  %.pn285.pn.pn.pn = phi { ptr, i32 } [ %i.ru, %bb.eq ], [ %.pn285.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554 ], [ %.pn285.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #38
  %i.st = load ptr, ptr %64, align 8, !tbaa !43   ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 2 uses
  %i.sv = icmp eq ptr %i.st, %i.su
  br i1 %i.sv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit559, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i557

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i557: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556
  %i.sw = load i64, ptr %i.su, align 8, !tbaa !44
  %i.sx = add i64 %i.sw, 1
  call void @_ZdlPvm(ptr noundef %i.st, i64 noundef %i.sx) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit559

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit559: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i557, %bb.ep
  %.5255 = phi i1 [ true, %bb.ep ], [ %.4254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i557 ], [ %.4254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556 ] ; 2 uses
  %.pn285.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rt, %bb.ep ], [ %.pn285.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i557 ], [ %.pn285.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556 ] ; 4 uses
  %i.sy = load ptr, ptr %65, align 8, !tbaa !43   ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 2 uses
  %i.ta = icmp eq ptr %i.sy, %i.sz
  br i1 %i.ta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i560

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i560: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit559
  %i.tb = load i64, ptr %i.sz, align 8, !tbaa !44
  %i.tc = add i64 %i.tb, 1
  call void @_ZdlPvm(ptr noundef %i.sy, i64 noundef %i.tc) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit559, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i560
  %i.td = load ptr, ptr %66, align 8, !tbaa !43   ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %i.tf = icmp eq ptr %i.td, %i.te
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562.thread: ; preds = %bb.eh
  %i.tg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.th = load ptr, ptr %66, align 8, !tbaa !43   ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %i.tj = icmp eq ptr %i.th, %i.ti
  br i1 %i.tj, label %.sink.split1460, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562.thread
  %i.tk = load i64, ptr %i.ti, align 8, !tbaa !44
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.th, i64 noundef %i.tl) #39
  br label %.sink.split1460

end_hunk_4
begin_hunk_5_@_ZNK6casadi16FunctionInternal12call_reverseERKSt6vectorINS_2MXESaIS2_EES6_RKS1_IS4_SaIS4_EERS8_bb:bb.a
bb.af:                                            ; preds = %bb.w
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435

bb.ag:                                            ; preds = %bb.x
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432

bb.ah:                                            ; preds = %bb.y
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429

bb.ai:                                            ; preds = %bb.z
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426

bb.aj:                                            ; preds = %bb.aa
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423

bb.ak:                                            ; preds = %bb.ac, %bb.ab
  %.0253 = phi i1 [ false, %bb.ac ], [ true, %bb.ab ] ; 2 uses
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %19, align 8, !tbaa !43   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421: ; preds = %bb.ak
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !44
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421, %bb.aj
  %.1254 = phi i1 [ true, %bb.aj ], [ %.0253, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421 ], [ %.0253, %bb.ak ] ; 2 uses
  %.pn382 = phi { ptr, i32 } [ %i.bj, %bb.aj ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421 ], [ %i.bk, %bb.ak ] ; 2 uses
  %i.bq = load ptr, ptr %24, align 8, !tbaa !43   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !44
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424, %bb.ai
  %.2255 = phi i1 [ true, %bb.ai ], [ %.1254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424 ], [ %.1254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423 ] ; 2 uses
  %.pn382.pn = phi { ptr, i32 } [ %i.bi, %bb.ai ], [ %.pn382, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424 ], [ %.pn382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  %i.bv = load ptr, ptr %25, align 8, !tbaa !43   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !44
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427, %bb.ah
  %.3256 = phi i1 [ true, %bb.ah ], [ %.2255, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427 ], [ %.2255, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426 ] ; 2 uses
  %.pn382.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.ah ], [ %.pn382.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427 ], [ %.pn382.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426 ] ; 2 uses
  %i.ca = load ptr, ptr %26, align 8, !tbaa !43   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !44
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430, %bb.ag
  %.4257 = phi i1 [ true, %bb.ag ], [ %.3256, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430 ], [ %.3256, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429 ] ; 2 uses
  %.pn382.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.ag ], [ %.pn382.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430 ], [ %.pn382.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429 ] ; 2 uses
  %i.cf = load ptr, ptr %27, align 8, !tbaa !43   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !44
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433, %bb.af
  %.5258 = phi i1 [ true, %bb.af ], [ %.4257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433 ], [ %.4257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432 ] ; 2 uses
  %.pn382.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.af ], [ %.pn382.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433 ], [ %.pn382.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432 ] ; 2 uses
  %i.ck = load ptr, ptr %28, align 8, !tbaa !43   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !44
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436, %bb.ae
  %.6259 = phi i1 [ true, %bb.ae ], [ %.5258, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436 ], [ %.5258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435 ] ; 2 uses
  %.pn382.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.ae ], [ %.pn382.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436 ], [ %.pn382.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  %i.cp = load ptr, ptr %20, align 8, !tbaa !43   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !44
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439, %bb.ad
  %.7260 = phi i1 [ true, %bb.ad ], [ %.6259, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439 ], [ %.6259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438 ] ; 2 uses
  %.pn382.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.ad ], [ %.pn382.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439 ], [ %.pn382.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438 ] ; 4 uses
  %i.cu = load ptr, ptr %21, align 8, !tbaa !43   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !44
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442
  %i.cz = load ptr, ptr %22, align 8, !tbaa !43   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444.thread: ; preds = %bb.t
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %22, align 8, !tbaa !43   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %.sink.split1572, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444.thread
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !44
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #39
  br label %.sink.split1572

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444
  %i.di = load i64, ptr %i.da, align 8, !tbaa !44
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dj) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br i1 %.7260, label %bb.al, label %bb.il

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br i1 %.7260, label %bb.al, label %bb.il

.sink.split1572:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445.thread
  %.pn382.pn.pn.pn.pn.pn.pn.pn.pn825.ph = phi { ptr, i32 } [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445.thread ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447.thread ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br label %bb.al

bb.al:                                            ; preds = %.sink.split1572, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447
  %.pn382.pn.pn.pn.pn.pn.pn.pn.pn825 = phi { ptr, i32 } [ %.pn382.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445 ], [ %.pn382.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447 ], [ %.pn382.pn.pn.pn.pn.pn.pn.pn.pn825.ph, %.sink.split1572 ]
  call void @__cxa_free_exception(ptr %i.ay) #38
  br label %bb.il

bb.am:                                            ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 824
  %107 = load i8, ptr %i.dk, align 8, !tbaa !209, !range !175, !noundef !176
  %108 = trunc nuw i8 %107 to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 825 ; 2 uses
  %109 = load i8, ptr %i.dl, align 1, !range !175
  %110 = trunc nuw i8 %109 to i1
  %or.cond.i = select i1 %108, i1 true, i1 %110
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 826
  %112 = load i8, ptr %111, align 2, !range !175
  %113 = trunc nuw i8 %112 to i1
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %113
  br i1 %or.cond5.i, label %bb.bd, label %_ZNK6casadi16FunctionInternal14has_derivativeEv.exit

_ZNK6casadi16FunctionInternal14has_derivativeEv.exit: ; preds = %bb.am
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 827
  %115 = load i8, ptr %114, align 1, !tbaa !212, !range !175, !noundef !176
  %116 = trunc nuw i8 %115 to i1
  br i1 %116, label %bb.bd, label %bb.an

bb.an:                                            ; preds = %_ZNK6casadi16FunctionInternal14has_derivativeEv.exit
  %i.dm = tail call ptr @__cxa_allocate_exception(i64 40) #38 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.593, ptr noundef nonnull align 1 dereferenceable(1) %34)
          to label %bb.ao unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468.thread

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %bb.ap unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465.thread

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.8)
          to label %bb.aq unwind label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #38
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %37, ptr noundef nonnull @.str.340, ptr noundef nonnull align 8 dereferenceable(32) %i.dn)
          to label %bb.ar unwind label %bb.ax

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull @.str.339, ptr noundef nonnull align 8 dereferenceable(32) %37)
          to label %bb.as unwind label %bb.ay

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false), !alias.scope !1981
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.at unwind label %bb.az

bb.at:                                            ; preds = %bb.as
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %bb.au unwind label %bb.ba

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.av unwind label %bb.bb

bb.av:                                            ; preds = %bb.au
  invoke void @__cxa_throw(ptr nonnull %i.dm, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #37
          to label %bb.im unwind label %bb.bb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468.thread: ; preds = %bb.an
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split1573

bb.aw:                                            ; preds = %bb.ap
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462

bb.ax:                                            ; preds = %bb.aq
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459

bb.ay:                                            ; preds = %bb.ar
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456

bb.az:                                            ; preds = %bb.as
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453

bb.ba:                                            ; preds = %bb.at
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450

bb.bb:                                            ; preds = %bb.av, %bb.au
  %.0263 = phi i1 [ false, %bb.av ], [ true, %bb.au ] ; 2 uses
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %30, align 8, !tbaa !43   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448: ; preds = %bb.bb
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !44
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448, %bb.ba
  %.1264 = phi i1 [ true, %bb.ba ], [ %.0263, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448 ], [ %.0263, %bb.bb ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.dt, %bb.ba ], [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448 ], [ %i.du, %bb.bb ] ; 2 uses
  %i.ea = load ptr, ptr %35, align 8, !tbaa !43   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !44
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451, %bb.az
  %.2265 = phi i1 [ true, %bb.az ], [ %.1264, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451 ], [ %.1264, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450 ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.az ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %38) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #38
  %i.ef = load ptr, ptr %36, align 8, !tbaa !43   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !44
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454, %bb.ay
  %.3266 = phi i1 [ true, %bb.ay ], [ %.2265, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454 ], [ %.2265, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453 ] ; 2 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dr, %bb.ay ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453 ] ; 2 uses
  %i.ek = load ptr, ptr %37, align 8, !tbaa !43   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456
  %i.en = load i64, ptr %i.el, align 8, !tbaa !44
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457, %bb.ax
  %.4267 = phi i1 [ true, %bb.ax ], [ %.3266, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457 ], [ %.3266, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456 ] ; 2 uses
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.ax ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38
  %i.ep = load ptr, ptr %31, align 8, !tbaa !43   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !44
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460, %bb.aw
  %.5268 = phi i1 [ true, %bb.aw ], [ %.4267, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460 ], [ %.4267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459 ] ; 2 uses
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dp, %bb.aw ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459 ] ; 4 uses
  %i.eu = load ptr, ptr %32, align 8, !tbaa !43   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !44
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463
  %i.ez = load ptr, ptr %33, align 8, !tbaa !43   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465.thread: ; preds = %bb.ao
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %33, align 8, !tbaa !43   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %.sink.split1573, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465.thread
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !44
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #39
  br label %.sink.split1573

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465
  %i.fi = load i64, ptr %i.fa, align 8, !tbaa !44
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fj) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  br i1 %.5268, label %bb.bc, label %bb.il

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  br i1 %.5268, label %bb.bc, label %bb.il

.sink.split1573:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466.thread
  %.pn.pn.pn.pn.pn.pn.pn837.ph = phi { ptr, i32 } [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466.thread ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468.thread ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  br label %bb.bc

bb.bc:                                            ; preds = %.sink.split1573, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468
  %.pn.pn.pn.pn.pn.pn.pn837 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468 ], [ %.pn.pn.pn.pn.pn.pn.pn837.ph, %.sink.split1573 ]
  call void @__cxa_free_exception(ptr %i.dm) #38
  br label %bb.il

bb.bd:                                            ; preds = %bb.am, %_ZNK6casadi16FunctionInternal14has_derivativeEv.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !307 ; 2 uses
  %i.fm = load ptr, ptr %3, align 8, !tbaa !308   ; 2 uses
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 3 uses
  %i.fq = sdiv exact i64 %i.fp, 24                ; 11 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !307 ; 3 uses
  %i.ft = load ptr, ptr %4, align 8, !tbaa !308   ; 2 uses
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = sdiv exact i64 %i.fw, 24                ; 3 uses
  %i.fy = icmp ugt i64 %i.fq, %i.fx
  br i1 %i.fy, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fz = sub nuw nsw i64 %i.fq, %i.fx
  tail call void @_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.fz)
  br label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit

bb.bf:                                            ; preds = %bb.bd
  %i.ga = icmp ult i64 %i.fq, %i.fx
  br i1 %i.ga, label %bb.bg, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit

bb.bg:                                            ; preds = %bb.bf
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fp ; 3 uses
  %.not.i.i = icmp eq ptr %i.fs, %i.gb
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bg, %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.gm, %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.gb, %bb.bg ] ; 5 uses
  %i.gc = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !287 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !288 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.gc, %i.ge
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.gc, %.lr.ph.i.i.i.i ] ; 2 uses
  tail call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i.i) #38
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gf, %i.ge
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !287
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.gg = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.gc, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !289
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.gg to i64
  %i.gl = sub i64 %i.gj, %i.gk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gl) #39
  br label %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.bh, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gm, %i.fs
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.gb, ptr %i.fr, align 8, !tbaa !307
  br label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit: ; preds = %bb.be, %bb.bf, %bb.bg, %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.gn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.gn, label %bb.ij, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 1, ptr %i.a, align 8, !tbaa !129
  %i.go = load ptr, ptr %3, align 8, !tbaa !309   ; 2 uses
  %i.gp = load ptr, ptr %i.fk, align 8, !tbaa !309 ; 2 uses
  %.not1058 = icmp eq ptr %i.go, %i.gp
  br i1 %.not1058, label %.critedge402, label %.critedge

bb.bj:                                            ; preds = %.critedge
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0808.01059, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.gq, %i.gp
  br i1 %.not, label %.critedge402, label %.critedge

.critedge:                                        ; preds = %bb.bi, %bb.bj
  %.sroa.0808.01059 = phi ptr [ %i.gq, %bb.bj ], [ %i.go, %bb.bi ] ; 2 uses
  %i.gr = call noundef zeroext i1 @_ZNK6casadi16FunctionInternal12matching_resINS_2MXEEEbRKSt6vectorIT_SaIS4_EERx(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0808.01059, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.gr, label %bb.bj, label %bb.bk

bb.bk:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #38
  %i.gs = load i64, ptr %i.a, align 8, !tbaa !129
  call void @_ZNK6casadi16FunctionInternal13replace_aseedINS_2MXEEESt6vectorIS3_IT_SaIS4_EESaIS6_EERKS8_x(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.171") align 8 %39, ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.gs)
  invoke void @_ZNK6casadi16FunctionInternal12call_reverseERKSt6vectorINS_2MXESaIS2_EES6_RKS1_IS4_SaIS4_EERS8_bb(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false, i1 noundef zeroext %6)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.gt = load ptr, ptr %39, align 8, !tbaa !308  ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !307 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gt, %i.gv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bl, %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hg, %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i ], [ %i.gt, %bb.bl ] ; 5 uses
  %i.gw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !287 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !288 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.gw, %i.gy
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gw, %.lr.ph.i.i.i ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i) #38
  %i.gz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gz, %i.gy
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !287
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ha = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.gw, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !289
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hf) #39
  br label %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.bm, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hg, %i.gv
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %39, align 8, !tbaa !308
  br label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.bl
  %i.hh = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.gt, %bb.bl ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hh, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.hi = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !310
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hh to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hm) #39
  br label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #38
  br label %.loopexit958

bb.bo:                                            ; preds = %bb.bk
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %39) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #38
  br label %bb.ik

.critedge402:                                     ; preds = %bb.bj, %bb.bi
  %i.ho = load ptr, ptr %0, align 8, !tbaa !53
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 896
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = call noundef zeroext i1 %i.hq(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %i.fq)
  br i1 %i.hr, label %bb.bp, label %bb.em

bb.bp:                                            ; preds = %.critedge402
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #38
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %40, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.hs = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !303
  %i.hu = load ptr, ptr %2, align 8, !tbaa !303
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !303
  %i.hx = load ptr, ptr %40, align 8, !tbaa !303  ; 2 uses
  %i.hy = ptrtoint ptr %i.ht to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = getelementptr inbounds i8, ptr %i.hx, i64 %i.ia
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %40, ptr %i.ib, ptr %i.hu, ptr %i.hw)
          to label %bb.bq unwind label %bb.bv

bb.bq:                                            ; preds = %bb.bp
end_hunk_5
