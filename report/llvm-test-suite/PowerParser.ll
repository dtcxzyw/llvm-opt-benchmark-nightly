Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/PowerParser?download=true
inline.NumInlined: 5334
inline.NumDeleted: 1210
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2PP11PowerParser12list_vars_ssENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_RNS1_18basic_stringstreamIcS4_S5_EE:bb.a

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.sink.split, %.invoke, %.lr.ph446
  %i.ov = add nuw nsw i32 %.027445, 1             ; 2 uses
  %exitcond466.not = icmp eq i32 %i.ov, %i.ci
  br i1 %exitcond466.not, label %._crit_edge, label %.lr.ph446, !llvm.loop !881

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE9push_backERKS7_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit.i, %bb.bs
  %i.ow = load ptr, ptr %17, align 8, !tbaa !179  ; 3 uses
  %i.ox = load ptr, ptr %i.ee, align 8, !tbaa !180 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ow, %i.ox
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE9push_backERKS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.pd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ow, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE9push_backERKS7_.exit ] ; 3 uses
  %i.oy = load ptr, ptr %.05.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.pa = icmp eq ptr %i.oy, %i.oz
  br i1 %i.pa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.pb = load i64, ptr %i.oz, align 8, !tbaa !55
  %i.pc = add i64 %i.pb, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pc) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.pd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i159 = icmp eq ptr %i.pd, %i.ox
  br i1 %.not.i.i.i159, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 8, !tbaa !179
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE9push_backERKS7_.exit
  %i.pe = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ow, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE9push_backERKS7_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.pe, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.pf = load ptr, ptr %i.ef, align 8, !tbaa !181
  %i.pg = ptrtoint ptr %i.pf to i64
  %i.ph = ptrtoint ptr %i.pe to i64
  %i.pi = sub i64 %i.pg, %i.ph
  call void @_ZdlPvm(ptr noundef nonnull %i.pe, i64 noundef %i.pi) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  %i.pj = load ptr, ptr %16, align 8, !tbaa !53   ; 2 uses
  %i.pk = icmp eq ptr %i.pj, %i.eb
  br i1 %i.pk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.pl = load i64, ptr %i.eb, align 8, !tbaa !55
  %i.pm = add i64 %i.pl, 1
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  %i.pn = load ptr, ptr %13, align 8, !tbaa !53   ; 2 uses
  %i.po = icmp eq ptr %i.pn, %i.ct
  br i1 %i.po, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  %i.pp = load i64, ptr %i.ct, align 8, !tbaa !55
  %i.pq = add i64 %i.pp, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, 1 ; 2 uses
  %exitcond471.not = icmp eq i64 %indvars.iv.next468, %wide.trip.count470
  br i1 %exitcond471.not, label %._crit_edge451.loopexit, label %bb.ad, !llvm.loop !882

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.bs
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body137

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body137

.body137:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.br, %.body272, %bb.by
  %.pn55 = phi { ptr, i32 } [ %i.no, %bb.by ], [ %i.mp, %.body272 ], [ %i.mp, %bb.br ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  %i.pr = load ptr, ptr %16, align 8, !tbaa !53   ; 2 uses
  %i.ps = icmp eq ptr %i.pr, %i.eb
  br i1 %i.ps, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %.body137
  %i.pt = load i64, ptr %i.eb, align 8, !tbaa !55
  %i.pu = add i64 %i.pt, 1
  call void @_ZdlPvm(ptr noundef %i.pr, i64 noundef %i.pu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %.body137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166, %bb.bt
  %.pn55.pn = phi { ptr, i32 } [ %i.mz, %bb.bt ], [ %.pn55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166 ], [ %.pn55, %.body137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %.body, %bb.ao
  %.pn58.pn.pn = phi { ptr, i32 } [ %.pn58.pn, %.body ], [ %.pn55.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ], [ %i.ix, %bb.ao ] ; 2 uses
  %i.pv = load ptr, ptr %13, align 8, !tbaa !53   ; 2 uses
  %i.pw = icmp eq ptr %i.pv, %i.ct
  br i1 %i.pw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %bb.ci
  %i.px = load i64, ptr %i.ct, align 8, !tbaa !55
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.py) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169, %bb.an
  %.pn58.pn.pn.pn = phi { ptr, i32 } [ %i.iw, %bb.an ], [ %.pn58.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %.pn58.pn.pn, %bb.ci ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.pz = load ptr, ptr %12, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i172 = icmp eq ptr %i.pz, null
  br i1 %.not.i.i.i172, label %_ZNSt6vectorIiSaIiEED2Ev.exit173, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  %i.qa = load ptr, ptr %i.cr, align 8, !tbaa !40
  %i.qb = ptrtoint ptr %i.qa to i64
  %i.qc = ptrtoint ptr %i.pz to i64
  %i.qd = sub i64 %i.qb, %i.qc
  call void @_ZdlPvm(ptr noundef nonnull %i.pz, i64 noundef %i.qd) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit173

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %i.qe = phi ptr [ %.pre476, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.pre476, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %.pre475, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ] ; 2 uses
  %i.qf = icmp eq ptr %i.qe, %i.cm
  br i1 %i.qf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.qg = load i64, ptr %i.cm, align 8, !tbaa !55
  %i.qh = add i64 %i.qg, 1
  call void @_ZdlPvm(ptr noundef %i.qe, i64 noundef %i.qh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.qi = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0288.0453) #34 ; 2 uses
  %.not = icmp eq ptr %i.qi, %i.cl
  br i1 %.not, label %._crit_edge456, label %bb.n, !llvm.loop !883

_ZNSt6vectorIiSaIiEED2Ev.exit173:                 ; preds = %.loopexit299, %.loopexit.split-lp300, %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  %.pn58.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn58.pn.pn.pn, %bb.cj ], [ %.pn58.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ], [ %lpad.loopexit301, %.loopexit299 ], [ %lpad.loopexit.split-lp302, %.loopexit.split-lp300 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.qj = load ptr, ptr %11, align 8, !tbaa !53   ; 2 uses
  %i.qk = icmp eq ptr %i.qj, %i.cp
  br i1 %i.qk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit173
  %i.ql = load i64, ptr %i.cp, align 8, !tbaa !55
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177, %bb.ac
  %.pn58.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hg, %bb.ac ], [ %.pn58.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177 ], [ %.pn58.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit173 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.qn = load ptr, ptr %10, align 8, !tbaa !53   ; 2 uses
  %i.qo = icmp eq ptr %i.qn, %i.cm
  br i1 %i.qo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %i.qp = load i64, ptr %i.cm, align 8, !tbaa !55
  %i.qq = add i64 %i.qp, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180, %bb.v
  %.pn58.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fo, %bb.v ], [ %.pn58.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180 ], [ %.pn58.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.db

._crit_edge456:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %.b = load i1, ptr @_ZN2PPL10index_baseE, align 4
  %not..b = xor i1 %.b, true
  %i.qr = zext i1 %not..b to i32
  invoke void @_ZN2PP12Parser_utilsC1Ei(ptr noundef nonnull align 1 dereferenceable(1) %18, i32 noundef %i.qr)
          to label %bb.ck unwind label %bb.cz

bb.ck:                                            ; preds = %._crit_edge456
  %i.qs = load ptr, ptr %i.bu, align 8, !tbaa !265 ; 3 uses
  %i.qt = load ptr, ptr %5, align 8, !tbaa !266   ; 3 uses
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = sub i64 %i.qu, %i.qv                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %.not.i.i.i.i183 = icmp eq ptr %i.qs, %i.qt
  br i1 %.not.i.i.i.i183, label %.noexc187, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.qx = icmp ugt i64 %i.qw, 9223372036854775800
  br i1 %i.qx, label %.noexc.i.i185, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i, !prof !275

.noexc.i.i185:                                    ; preds = %bb.cl
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc186 unwind label %bb.cz

.noexc186:                                        ; preds = %.noexc.i.i185
  unreachable

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.cl
  %i.qy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qw) #31
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge unwind label %bb.cz

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i
  %.pre477 = load ptr, ptr %5, align 8, !tbaa !276
  %.pre478 = load ptr, ptr %i.bu, align 8, !tbaa !276
  br label %.noexc187

.noexc187:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge, %bb.ck
  %i.qz = phi ptr [ %i.qs, %bb.ck ], [ %.pre478, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge ]
  %i.ra = phi ptr [ %i.qt, %bb.ck ], [ %.pre477, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge ]
  %i.rb = phi ptr [ null, %bb.ck ], [ %i.qy, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge ] ; 4 uses
  store ptr %i.rb, ptr %19, align 8, !tbaa !266
  %i.rc = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  store ptr %i.rb, ptr %i.rc, align 8, !tbaa !265
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.qw
  %i.re = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  store ptr %i.rd, ptr %i.re, align 8, !tbaa !274
  %i.rf = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.ra, ptr %i.qz, ptr noundef %i.rb)
          to label %bb.co unwind label %bb.cm

bb.cm:                                            ; preds = %.noexc187
  %i.rg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rh = load ptr, ptr %19, align 8, !tbaa !266  ; 3 uses
  %.not.i.i.i184 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i.i184, label %.body188, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ri = load ptr, ptr %i.re, align 8, !tbaa !274
  %i.rj = ptrtoint ptr %i.ri to i64
  %i.rk = ptrtoint ptr %i.rh to i64
  %i.rl = sub i64 %i.rj, %i.rk
  call void @_ZdlPvm(ptr noundef nonnull %i.rh, i64 noundef %i.rl) #32
  br label %.body188

bb.co:                                            ; preds = %.noexc187
  store ptr %i.rf, ptr %i.rc, align 8, !tbaa !265
  invoke void @_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull %19, i32 noundef %i.cb, i32 noundef 3, i32 noundef 3, i32 noundef 85, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.cp unwind label %bb.da

bb.cp:                                            ; preds = %bb.co
  %i.rm = load ptr, ptr %19, align 8, !tbaa !266  ; 3 uses
  %i.rn = load ptr, ptr %i.rc, align 8, !tbaa !265 ; 2 uses
  %.not4.i.i.i190 = icmp eq ptr %i.rm, %i.rn
  br i1 %.not4.i.i.i190, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i191

.lr.ph.i.i.i191:                                  ; preds = %bb.cp, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i
  %.05.i.i.i192 = phi ptr [ %i.sd, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i ], [ %i.rm, %bb.cp ] ; 5 uses
  %i.ro = load ptr, ptr %.05.i.i.i192, align 8, !tbaa !179 ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.05.i.i.i192, i64 8
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !180 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.ro, %i.rq
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i191, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.rw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.ro, %.lr.ph.i.i.i191 ] ; 3 uses
  %i.rr = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.rt = icmp eq ptr %i.rr, %i.rs
  br i1 %i.rt, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ru = load i64, ptr %i.rs, align 8, !tbaa !55
  %i.rv = add i64 %i.ru, 1
  call void @_ZdlPvm(ptr noundef %i.rr, i64 noundef %i.rv) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.rw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.rw, %i.rq
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i192, align 8, !tbaa !179
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i191
  %i.rx = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.ro, %.lr.ph.i.i.i191 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.rx, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.ry = getelementptr inbounds nuw i8, ptr %.05.i.i.i192, i64 16
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !181
  %i.sa = ptrtoint ptr %i.rz to i64
  %i.sb = ptrtoint ptr %i.rx to i64
  %i.sc = sub i64 %i.sa, %i.sb
  call void @_ZdlPvm(ptr noundef nonnull %i.rx, i64 noundef %i.sc) #32
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i: ; preds = %bb.cq, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.sd = getelementptr inbounds nuw i8, ptr %.05.i.i.i192, i64 24 ; 2 uses
  %.not.i.i.i193 = icmp eq ptr %i.sd, %i.rn
  br i1 %.not.i.i.i193, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i191, !llvm.loop !18

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i
  %.pr.i194 = load ptr, ptr %19, align 8, !tbaa !266
  br label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, %bb.cp
  %i.se = phi ptr [ %.pr.i194, %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i ], [ %i.rm, %bb.cp ] ; 3 uses
  %.not.i.i1.i195 = icmp eq ptr %i.se, null
  br i1 %.not.i.i1.i195, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit, label %bb.cr

bb.cr:                                            ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i
  %i.sf = load ptr, ptr %i.re, align 8, !tbaa !274
  %i.sg = ptrtoint ptr %i.sf to i64
  %i.sh = ptrtoint ptr %i.se to i64
  %i.si = sub i64 %i.sg, %i.sh
  call void @_ZdlPvm(ptr noundef nonnull %i.se, i64 noundef %i.si) #32
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i, %bb.cr
  %i.sj = load ptr, ptr %2, align 8, !tbaa !53
  %i.sk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !54
  %i.sm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.sj, i64 noundef %i.sl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit198 unwind label %bb.cz ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit198: ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !143
  %i.so = getelementptr i8, ptr %i.sn, i64 -24
  %i.sp = load i64, ptr %i.so, align 8
  %i.sq = getelementptr inbounds i8, ptr %i.sm, i64 %i.sp
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 240
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !163 ; 6 uses
  %.not.i.i.i274 = icmp eq ptr %i.ss, null
  br i1 %.not.i.i.i274, label %bb.cs, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i275

bb.cs:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit198
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc278 unwind label %bb.cz

.noexc278:                                        ; preds = %bb.cs
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i275: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit198
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 56
  %i.su = load i8, ptr %i.st, align 8, !tbaa !168
  %.not.i1.i.i276 = icmp eq i8 %i.su, 0
  br i1 %.not.i1.i.i276, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i275
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 67
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !55
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.cu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i275
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ss)
          to label %.noexc279 unwind label %bb.cz

.noexc279:                                        ; preds = %bb.cu
  %i.sx = load ptr, ptr %i.ss, align 8, !tbaa !143
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 48
  %i.sz = load ptr, ptr %i.sy, align 8
  %i.ta = invoke noundef signext i8 %i.sz(ptr noundef nonnull align 8 dereferenceable(570) %i.ss, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.cz, !inline_history !2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc279, %bb.ct
  %.0.i.i.i277 = phi i8 [ %i.sw, %bb.ct ], [ %i.ta, %.noexc279 ]
  %i.tb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.sm, i8 noundef signext %.0.i.i.i277)
          to label %.noexc281 unwind label %bb.cz

.noexc281:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.tc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tb)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.cz ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc281
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %i.td = load ptr, ptr %6, align 8, !tbaa !179   ; 3 uses
  %i.te = load ptr, ptr %i.an, align 8, !tbaa !180 ; 2 uses
  %.not4.i.i.i200 = icmp eq ptr %i.td, %i.te
  br i1 %.not4.i.i.i200, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i208, label %.lr.ph.i.i.i201

.lr.ph.i.i.i201:                                  ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i204
  %.05.i.i.i202 = phi ptr [ %i.tk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i204 ], [ %i.td, %_ZNSolsEPFRSoS_E.exit ] ; 3 uses
  %i.tf = load ptr, ptr %.05.i.i.i202, align 8, !tbaa !53 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.05.i.i.i202, i64 16 ; 2 uses
  %i.th = icmp eq ptr %i.tf, %i.tg
  br i1 %i.th, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i203: ; preds = %.lr.ph.i.i.i201
  %i.ti = load i64, ptr %i.tg, align 8, !tbaa !55
  %i.tj = add i64 %i.ti, 1
  call void @_ZdlPvm(ptr noundef %i.tf, i64 noundef %i.tj) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i204

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i204: ; preds = %.lr.ph.i.i.i201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i203
  %i.tk = getelementptr inbounds nuw i8, ptr %.05.i.i.i202, i64 32 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2PP11PowerParser16check_dup_scalarEiRb:bb.a
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 240
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !163 ; 5 uses
  %.not.i.i.i455 = icmp eq ptr %i.aan, null
  br i1 %.not.i.i.i455, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i456

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i456: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 56
  %i.aap = load i8, ptr %i.aao, align 8, !tbaa !168
  %.not.i1.i.i457 = icmp eq i8 %i.aap, 0
  br i1 %.not.i1.i.i457, label %bb.dl, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i458.invoke.sink.split

bb.dl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i456
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aan)
          to label %.noexc461.invoke unwind label %bb.dh

.noexc461.invoke:                                 ; preds = %bb.dl, %bb.dg
  %.sink904 = phi ptr [ %i.zm, %bb.dg ], [ %i.aan, %bb.dl ] ; 2 uses
  %i.aaq = load ptr, ptr %.sink904, align 8, !tbaa !143
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 48
  %i.aas = load ptr, ptr %i.aar, align 8
  %i.aat = invoke noundef signext i8 %i.aas(ptr noundef nonnull align 8 dereferenceable(570) %.sink904, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i458.invoke unwind label %bb.dh, !inline_history !2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i458.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i456, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i434
  %.sink906 = phi ptr [ %i.zm, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i434 ], [ %i.aan, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i456 ]
  %i.aau = getelementptr inbounds nuw i8, ptr %.sink906, i64 67
  %i.aav = load i8, ptr %i.aau, align 1, !tbaa !55
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i458.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i458.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i458.invoke.sink.split, %.noexc461.invoke
  %i.aaw = phi i8 [ %i.aat, %.noexc461.invoke ], [ %i.aav, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i458.invoke.sink.split ]
  %i.aax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %i.aaw)
          to label %.noexc463.invoke unwind label %bb.dh

.noexc463.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i458.invoke
  %i.aay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aax)
          to label %_ZNSolsEPFRSoS_E.exit304 unwind label %bb.dh ; 0 uses

_ZNSolsEPFRSoS_E.exit304:                         ; preds = %.noexc463.invoke
  %i.aaz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.121, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit314 unwind label %bb.dh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit314: ; preds = %_ZNSolsEPFRSoS_E.exit304
  %i.aba = load ptr, ptr @_ZSt4cout, align 8, !tbaa !143
  %i.abb = getelementptr i8, ptr %i.aba, i64 -24
  %i.abc = load i64, ptr %i.abb, align 8
  %i.abd = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.abc
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 240
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !163 ; 6 uses
  %.not.i.i.i466 = icmp eq ptr %i.abf, null
  br i1 %.not.i.i.i466, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i467

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i467: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit314
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 56
  %i.abh = load i8, ptr %i.abg, align 8, !tbaa !168
  %.not.i1.i.i468 = icmp eq i8 %i.abh, 0
  br i1 %.not.i1.i.i468, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i467
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abf, i64 67
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !55
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i469

bb.dn:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i467
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.abf)
          to label %.noexc472 unwind label %bb.dh

.noexc472:                                        ; preds = %bb.dn
  %i.abk = load ptr, ptr %i.abf, align 8, !tbaa !143
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 48
  %i.abm = load ptr, ptr %i.abl, align 8
  %i.abn = invoke noundef signext i8 %i.abm(ptr noundef nonnull align 8 dereferenceable(570) %i.abf, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i469 unwind label %bb.dh, !inline_history !2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i469: ; preds = %.noexc472, %bb.dm
  %.0.i.i.i470 = phi i8 [ %i.abj, %bb.dm ], [ %i.abn, %.noexc472 ]
  %i.abo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i470)
          to label %.noexc474 unwind label %bb.dh

.noexc474:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i469
  %i.abp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.abo)
          to label %_ZNSolsEPFRSoS_E.exit316 unwind label %bb.dh ; 0 uses

_ZNSolsEPFRSoS_E.exit316:                         ; preds = %.noexc474
  %i.abq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.122, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318 unwind label %bb.dh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318: ; preds = %_ZNSolsEPFRSoS_E.exit316
  %i.abr = load ptr, ptr @_ZSt4cout, align 8, !tbaa !143
  %i.abs = getelementptr i8, ptr %i.abr, i64 -24
  %i.abt = load i64, ptr %i.abs, align 8
  %i.abu = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.abt
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 240
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !163 ; 6 uses
  %.not.i.i.i477 = icmp eq ptr %i.abw, null
  br i1 %.not.i.i.i477, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i478

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i478: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 56
  %i.aby = load i8, ptr %i.abx, align 8, !tbaa !168
  %.not.i1.i.i479 = icmp eq i8 %i.aby, 0
  br i1 %.not.i1.i.i479, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i478
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abw, i64 67
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !55
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i480

bb.dp:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i478
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.abw)
          to label %.noexc483 unwind label %bb.dh

.noexc483:                                        ; preds = %bb.dp
  %i.acb = load ptr, ptr %i.abw, align 8, !tbaa !143
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 48
  %i.acd = load ptr, ptr %i.acc, align 8
  %i.ace = invoke noundef signext i8 %i.acd(ptr noundef nonnull align 8 dereferenceable(570) %i.abw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i480 unwind label %bb.dh, !inline_history !2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i480: ; preds = %.noexc483, %bb.do
  %.0.i.i.i481 = phi i8 [ %i.aca, %bb.do ], [ %i.ace, %.noexc483 ]
  %i.acf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i481)
          to label %.noexc485 unwind label %bb.dh

.noexc485:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i480
  %i.acg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.acf)
          to label %_ZNSolsEPFRSoS_E.exit320 unwind label %bb.dh ; 3 uses

_ZNSolsEPFRSoS_E.exit320:                         ; preds = %.noexc485
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !143
  %i.aci = getelementptr i8, ptr %i.ach, i64 -24
  %i.acj = load i64, ptr %i.aci, align 8
  %i.ack = getelementptr inbounds i8, ptr %i.acg, i64 %i.acj
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 240
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !163 ; 6 uses
  %.not.i.i.i488 = icmp eq ptr %i.acm, null
  br i1 %.not.i.i.i488, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i489

.invoke:                                          ; preds = %bb.da, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302, %_ZNSolsEPFRSoS_E.exit320, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit314, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.cont unwind label %bb.dh

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i489: ; preds = %_ZNSolsEPFRSoS_E.exit320
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 56
  %i.aco = load i8, ptr %i.acn, align 8, !tbaa !168
  %.not.i1.i.i490 = icmp eq i8 %i.aco, 0
  br i1 %.not.i1.i.i490, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i489
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acm, i64 67
  %i.acq = load i8, ptr %i.acp, align 1, !tbaa !55
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i491

bb.dr:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i489
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.acm)
          to label %.noexc494 unwind label %bb.dh

.noexc494:                                        ; preds = %bb.dr
  %i.acr = load ptr, ptr %i.acm, align 8, !tbaa !143
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 48
  %i.act = load ptr, ptr %i.acs, align 8
  %i.acu = invoke noundef signext i8 %i.act(ptr noundef nonnull align 8 dereferenceable(570) %i.acm, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i491 unwind label %bb.dh, !inline_history !2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i491: ; preds = %.noexc494, %bb.dq
  %.0.i.i.i492 = phi i8 [ %i.acq, %bb.dq ], [ %i.acu, %.noexc494 ]
  %i.acv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.acg, i8 noundef signext %.0.i.i.i492)
          to label %.noexc496 unwind label %bb.dh

.noexc496:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i491
  %i.acw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.acv)
          to label %_ZNSolsEPFRSoS_E.exit322 unwind label %bb.dh ; 0 uses

_ZNSolsEPFRSoS_E.exit322:                         ; preds = %.noexc496
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %23)
          to label %bb.ds unwind label %bb.eh

bb.ds:                                            ; preds = %_ZNSolsEPFRSoS_E.exit322
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  %.b = load i1, ptr @_ZN2PPL10index_baseE, align 4
  %not..b = xor i1 %.b, true
  %i.acx = zext i1 %not..b to i32
  invoke void @_ZN2PP12Parser_utilsC1Ei(ptr noundef nonnull align 1 dereferenceable(1) %24, i32 noundef %i.acx)
          to label %bb.dt unwind label %bb.ei

bb.dt:                                            ; preds = %bb.ds
  %i.acy = load ptr, ptr %i.by, align 8, !tbaa !265 ; 3 uses
  %i.acz = load ptr, ptr %3, align 8, !tbaa !266  ; 3 uses
  %i.ada = ptrtoint ptr %i.acy to i64
  %i.adb = ptrtoint ptr %i.acz to i64
  %i.adc = sub i64 %i.ada, %i.adb                 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %.not.i.i.i.i323 = icmp eq ptr %i.acy, %i.acz
  br i1 %.not.i.i.i.i323, label %.noexc327, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.add = icmp ugt i64 %i.adc, 9223372036854775800
  br i1 %i.add, label %.noexc.i.i325, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i, !prof !275

.noexc.i.i325:                                    ; preds = %bb.du
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc326 unwind label %bb.ei

.noexc326:                                        ; preds = %.noexc.i.i325
  unreachable

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.du
  %i.ade = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adc) #31
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc327_crit_edge unwind label %bb.ei

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc327_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i
  %.pre677 = load ptr, ptr %3, align 8, !tbaa !276
  %.pre678 = load ptr, ptr %i.by, align 8, !tbaa !276
  br label %.noexc327

.noexc327:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc327_crit_edge, %bb.dt
  %i.adf = phi ptr [ %i.acy, %bb.dt ], [ %.pre678, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc327_crit_edge ]
  %i.adg = phi ptr [ %i.acz, %bb.dt ], [ %.pre677, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc327_crit_edge ]
  %i.adh = phi ptr [ null, %bb.dt ], [ %i.ade, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc327_crit_edge ] ; 4 uses
  store ptr %i.adh, ptr %25, align 8, !tbaa !266
  %i.adi = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  store ptr %i.adh, ptr %i.adi, align 8, !tbaa !265
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adh, i64 %i.adc
  %i.adk = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %i.adj, ptr %i.adk, align 8, !tbaa !274
  %i.adl = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.adg, ptr %i.adf, ptr noundef %i.adh)
          to label %bb.dx unwind label %bb.dv

bb.dv:                                            ; preds = %.noexc327
  %i.adm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adn = load ptr, ptr %25, align 8, !tbaa !266 ; 3 uses
  %.not.i.i.i324 = icmp eq ptr %i.adn, null
  br i1 %.not.i.i.i324, label %.body328, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ado = load ptr, ptr %i.adk, align 8, !tbaa !274
  %i.adp = ptrtoint ptr %i.ado to i64
  %i.adq = ptrtoint ptr %i.adn to i64
  %i.adr = sub i64 %i.adp, %i.adq
  call void @_ZdlPvm(ptr noundef nonnull %i.adn, i64 noundef %i.adr) #32
  br label %.body328

bb.dx:                                            ; preds = %.noexc327
  store ptr %i.adl, ptr %i.adi, align 8, !tbaa !265
  invoke void @_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE(ptr noundef nonnull align 1 dereferenceable(1) %24, ptr noundef nonnull %25, i32 noundef %i.cf, i32 noundef 4, i32 noundef 3, i32 noundef 80, ptr noundef nonnull align 8 dereferenceable(128) %23)
          to label %bb.dy unwind label %bb.ej

bb.dy:                                            ; preds = %bb.dx
  %i.ads = load ptr, ptr %25, align 8, !tbaa !266 ; 3 uses
  %i.adt = load ptr, ptr %i.adi, align 8, !tbaa !265 ; 2 uses
  %.not4.i.i.i330 = icmp eq ptr %i.ads, %i.adt
  br i1 %.not4.i.i.i330, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i331

.lr.ph.i.i.i331:                                  ; preds = %bb.dy, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i
  %.05.i.i.i332 = phi ptr [ %i.aej, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i ], [ %i.ads, %bb.dy ] ; 5 uses
  %i.adu = load ptr, ptr %.05.i.i.i332, align 8, !tbaa !179 ; 3 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %.05.i.i.i332, i64 8
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !180 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.adu, %i.adw
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i331, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.aec, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.adu, %.lr.ph.i.i.i331 ] ; 3 uses
  %i.adx = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.adz = icmp eq ptr %i.adx, %i.ady
  br i1 %i.adz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.aea = load i64, ptr %i.ady, align 8, !tbaa !55
  %i.aeb = add i64 %i.aea, 1
  call void @_ZdlPvm(ptr noundef %i.adx, i64 noundef %i.aeb) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.aec = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aec, %i.adw
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i332, align 8, !tbaa !179
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i331
  %i.aed = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.adu, %.lr.ph.i.i.i331 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.aed, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.aee = getelementptr inbounds nuw i8, ptr %.05.i.i.i332, i64 16
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !181
  %i.aeg = ptrtoint ptr %i.aef to i64
  %i.aeh = ptrtoint ptr %i.aed to i64
  %i.aei = sub i64 %i.aeg, %i.aeh
  call void @_ZdlPvm(ptr noundef nonnull %i.aed, i64 noundef %i.aei) #32
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i: ; preds = %bb.dz, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.aej = getelementptr inbounds nuw i8, ptr %.05.i.i.i332, i64 24 ; 2 uses
  %.not.i.i.i333 = icmp eq ptr %i.aej, %i.adt
  br i1 %.not.i.i.i333, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i331, !llvm.loop !18

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i
  %.pr.i334 = load ptr, ptr %25, align 8, !tbaa !266
  br label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, %bb.dy
  %i.aek = phi ptr [ %.pr.i334, %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i ], [ %i.ads, %bb.dy ] ; 3 uses
  %.not.i.i1.i335 = icmp eq ptr %i.aek, null
  br i1 %.not.i.i1.i335, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit, label %bb.ea

bb.ea:                                            ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i
  %i.ael = load ptr, ptr %i.adk, align 8, !tbaa !274
  %i.aem = ptrtoint ptr %i.ael to i64
  %i.aen = ptrtoint ptr %i.aek to i64
  %i.aeo = sub i64 %i.aem, %i.aen
  call void @_ZdlPvm(ptr noundef nonnull %i.aek, i64 noundef %i.aeo) #32
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i, %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  %i.aep = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 7 uses
  store ptr %i.aep, ptr %26, align 8, !tbaa !137, !alias.scope !1175
  %i.aeq = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  store i64 0, ptr %i.aeq, align 8, !tbaa !54, !alias.scope !1175
  store i8 0, ptr %i.aep, align 8, !tbaa !55, !alias.scope !1175
  %i.aer = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !145, !noalias !1175 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.aes, null
  %i.aet = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.aeu = load ptr, ptr %i.aet, align 8, !noalias !1175 ; 2 uses
  %i.aev = icmp ugt ptr %i.aes, %i.aeu
  %.08.i.i.i = select i1 %i.aev, ptr %i.aes, ptr %i.aeu ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i337 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i337, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit
  %i.aew = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !146, !noalias !1175 ; 2 uses
  %i.aey = ptrtoint ptr %.08.i.i.i to i64
  %i.aez = ptrtoint ptr %i.aex to i64
  %i.afa = sub i64 %i.aey, %i.aez
  %i.afb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef 0, i64 noundef 0, ptr noundef %i.aex, i64 noundef %i.afa)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ec ; 0 uses

bb.ec:                                            ; preds = %bb.ed, %bb.eb
  %i.afc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afd = load ptr, ptr %26, align 8, !tbaa !53, !alias.scope !1175 ; 2 uses
  %i.afe = icmp eq ptr %i.afd, %i.aep
  br i1 %i.afe, label %.body338, label %.body338.sink.split

bb.ed:                                            ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit
  %i.aff = getelementptr inbounds nuw i8, ptr %23, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %i.aff)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ec

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ed, %bb.eb
  %i.afg = load ptr, ptr %26, align 8, !tbaa !53
  %i.afh = load i64, ptr %i.aeq, align 8, !tbaa !54
  %i.afi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.afg, i64 noundef %i.afh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ek ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !143
  %i.afk = getelementptr i8, ptr %i.afj, i64 -24
  %i.afl = load i64, ptr %i.afk, align 8
  %i.afm = getelementptr inbounds i8, ptr %i.afi, i64 %i.afl
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 240
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !163 ; 6 uses
  %.not.i.i.i499 = icmp eq ptr %i.afo, null
  br i1 %.not.i.i.i499, label %bb.ee, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i500

bb.ee:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc504 unwind label %bb.ek

.noexc504:                                        ; preds = %bb.ee
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i500: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 56
  %i.afq = load i8, ptr %i.afp, align 8, !tbaa !168
  %.not.i1.i.i501 = icmp eq i8 %i.afq, 0
  br i1 %.not.i1.i.i501, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i500
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afo, i64 67
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !55
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i502

bb.eg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i500
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.afo)
end_hunk_1
begin_hunk_2_@_ZN2PP11PowerParser13list_funcs_ssENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_RNS1_18basic_stringstreamIcS4_S5_EE:bb.a

.invoke:                                          ; preds = %bb.al, %bb.bc, %bb.ay
  %i.jp = phi ptr [ %i.ij, %bb.ay ], [ %i.iz, %bb.bc ], [ %i.gn, %bb.al ]
  %i.jq = phi ptr [ %13, %bb.ay ], [ %14, %bb.bc ], [ %10, %bb.al ]
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.jp, ptr noundef nonnull align 8 dereferenceable(32) %i.jq)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.ap

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %.lr.ph
  %i.jr = add nuw nsw i32 %.015265, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.jr, %i.cu
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1566

bb.bg:                                            ; preds = %._crit_edge
  %i.js = load ptr, ptr %14, align 8, !tbaa !53   ; 2 uses
  %i.jt = icmp eq ptr %i.js, %i.dd
  br i1 %i.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.bg
  %i.ju = load i64, ptr %i.dd, align 8, !tbaa !55
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.jv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.jw = load ptr, ptr %13, align 8, !tbaa !53   ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.db
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.jy = load i64, ptr %i.db, align 8, !tbaa !55
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  store ptr %i.do, ptr %12, align 8, !tbaa !143
  %i.ka = load i64, ptr %i.dq, align 8
  %i.kb = getelementptr inbounds i8, ptr %12, i64 %i.ka
  store ptr %i.dp, ptr %i.kb, align 8, !tbaa !143
  store ptr %i.dr, ptr %i.da, align 8, !tbaa !143
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ds, align 8, !tbaa !143
  %i.kc = load ptr, ptr %i.dn, align 8, !tbaa !53 ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.dt
  br i1 %i.kd, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.ke = load i64, ptr %i.dt, align 8, !tbaa !55
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #32
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ds, align 8, !tbaa !143
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.du) #29
  store ptr %i.dv, ptr %12, align 8, !tbaa !143
  %i.kg = load i64, ptr %i.dx, align 8
  %i.kh = getelementptr inbounds i8, ptr %12, i64 %i.kg
  store ptr %i.dw, ptr %i.kh, align 8, !tbaa !143
  store i64 0, ptr %i.dy, align 8, !tbaa !144
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.dz) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.ki = load ptr, ptr %11, align 8, !tbaa !179  ; 3 uses
  %i.kj = load ptr, ptr %i.dg, align 8, !tbaa !180 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ki, %i.kj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.kp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ki, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 3 uses
  %i.kk = load ptr, ptr %.05.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.kn = load i64, ptr %i.kl, align 8, !tbaa !55
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.ko) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.kp, %i.kj
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !179
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.kq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ki, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.kq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.kr = load ptr, ptr %i.dh, align 8, !tbaa !181
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = ptrtoint ptr %i.kq to i64
  %i.ku = sub i64 %i.ks, %i.kt
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef %i.ku) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.kv = load ptr, ptr %10, align 8, !tbaa !53   ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.cy
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.kx = load i64, ptr %i.cy, align 8, !tbaa !55
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.ky) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.kz = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0220.0267) #34 ; 2 uses
  %.not = icmp eq ptr %i.kz, %i.cx
  br i1 %.not, label %._crit_edge270, label %bb.q, !llvm.loop !1567

bb.bi:                                            ; preds = %._crit_edge
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bj:                                            ; preds = %bb.ap, %.body, %bb.bi
  %.pn42.pn = phi { ptr, i32 } [ %i.la, %bb.bi ], [ %i.hd, %bb.ap ], [ %.pn40, %.body ] ; 2 uses
  %i.lb = load ptr, ptr %14, align 8, !tbaa !53   ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.dd
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.bj
  %i.ld = load i64, ptr %i.dd, align 8, !tbaa !55
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.le) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %bb.ak
  %.pn42.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.ak ], [ %.pn42.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %.pn42.pn, %bb.bj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.lf = load ptr, ptr %13, align 8, !tbaa !53   ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.db
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.lh = load i64, ptr %i.db, align 8, !tbaa !55
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %bb.aj
  %.pn42.pn.pn.pn = phi { ptr, i32 } [ %i.gl, %bb.aj ], [ %.pn42.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %.pn42.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %bb.ai
  %.pn42.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %i.gk, %bb.ai ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %12) #29
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.ah
  %.pn42.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn.pn, %bb.bk ], [ %i.gj, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.lj = load ptr, ptr %10, align 8, !tbaa !53   ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.cy
  br i1 %i.lk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.bl
  %i.ll = load i64, ptr %i.cy, align 8, !tbaa !55
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.lm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153, %bb.ag
  %.pn42.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gi, %bb.ag ], [ %.pn42.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ], [ %.pn42.pn.pn.pn.pn.pn, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.cd

._crit_edge270:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %.b = load i1, ptr @_ZN2PPL10index_baseE, align 4
  %not..b = xor i1 %.b, true
  %i.ln = zext i1 %not..b to i32
  invoke void @_ZN2PP12Parser_utilsC1Ei(ptr noundef nonnull align 1 dereferenceable(1) %16, i32 noundef %i.ln)
          to label %bb.bm unwind label %bb.cb

bb.bm:                                            ; preds = %._crit_edge270
  %i.lo = load ptr, ptr %i.cg, align 8, !tbaa !265 ; 3 uses
  %i.lp = load ptr, ptr %4, align 8, !tbaa !266   ; 3 uses
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = sub i64 %i.lq, %i.lr                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.lo, %i.lp
  br i1 %.not.i.i.i.i, label %.noexc159, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lt = icmp ugt i64 %i.ls, 9223372036854775800
  br i1 %i.lt, label %.noexc.i.i157, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i, !prof !275

.noexc.i.i157:                                    ; preds = %bb.bn
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc158 unwind label %bb.cb

.noexc158:                                        ; preds = %.noexc.i.i157
  unreachable

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.bn
  %i.lu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ls) #31
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc159_crit_edge unwind label %bb.cb

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc159_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i
  %.pre276 = load ptr, ptr %4, align 8, !tbaa !276
  %.pre277 = load ptr, ptr %i.cg, align 8, !tbaa !276
  br label %.noexc159

.noexc159:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc159_crit_edge, %bb.bm
  %i.lv = phi ptr [ %i.lo, %bb.bm ], [ %.pre277, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc159_crit_edge ]
  %i.lw = phi ptr [ %i.lp, %bb.bm ], [ %.pre276, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc159_crit_edge ]
  %i.lx = phi ptr [ null, %bb.bm ], [ %i.lu, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc159_crit_edge ] ; 4 uses
  store ptr %i.lx, ptr %17, align 8, !tbaa !266
  %i.ly = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store ptr %i.lx, ptr %i.ly, align 8, !tbaa !265
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.ls
  %i.ma = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.lz, ptr %i.ma, align 8, !tbaa !274
  %i.mb = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.lw, ptr %i.lv, ptr noundef %i.lx)
          to label %bb.bq unwind label %bb.bo

bb.bo:                                            ; preds = %.noexc159
  %i.mc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.md = load ptr, ptr %17, align 8, !tbaa !266  ; 3 uses
  %.not.i.i.i156 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i156, label %.body160, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.me = load ptr, ptr %i.ma, align 8, !tbaa !274
  %i.mf = ptrtoint ptr %i.me to i64
  %i.mg = ptrtoint ptr %i.md to i64
  %i.mh = sub i64 %i.mf, %i.mg
  call void @_ZdlPvm(ptr noundef nonnull %i.md, i64 noundef %i.mh) #32
  br label %.body160

bb.bq:                                            ; preds = %.noexc159
  store ptr %i.mb, ptr %i.ly, align 8, !tbaa !265
  invoke void @_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull %17, i32 noundef %i.cn, i32 noundef 3, i32 noundef 4, i32 noundef 85, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.br unwind label %bb.cc

bb.br:                                            ; preds = %bb.bq
  %i.mi = load ptr, ptr %17, align 8, !tbaa !266  ; 3 uses
  %i.mj = load ptr, ptr %i.ly, align 8, !tbaa !265 ; 2 uses
  %.not4.i.i.i162 = icmp eq ptr %i.mi, %i.mj
  br i1 %.not4.i.i.i162, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i163

.lr.ph.i.i.i163:                                  ; preds = %bb.br, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i
  %.05.i.i.i164 = phi ptr [ %i.mz, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i ], [ %i.mi, %bb.br ] ; 5 uses
  %i.mk = load ptr, ptr %.05.i.i.i164, align 8, !tbaa !179 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.05.i.i.i164, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !180 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.mk, %i.mm
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i163, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ms, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.mk, %.lr.ph.i.i.i163 ] ; 3 uses
  %i.mn = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.mp = icmp eq ptr %i.mn, %i.mo
  br i1 %i.mp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.mq = load i64, ptr %i.mo, align 8, !tbaa !55
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mr) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.ms = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ms, %i.mm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i164, align 8, !tbaa !179
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i163
  %i.mt = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.mk, %.lr.ph.i.i.i163 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.mt, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.mu = getelementptr inbounds nuw i8, ptr %.05.i.i.i164, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !181
  %i.mw = ptrtoint ptr %i.mv to i64
  %i.mx = ptrtoint ptr %i.mt to i64
  %i.my = sub i64 %i.mw, %i.mx
  call void @_ZdlPvm(ptr noundef nonnull %i.mt, i64 noundef %i.my) #32
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i: ; preds = %bb.bs, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %.05.i.i.i164, i64 24 ; 2 uses
  %.not.i.i.i165 = icmp eq ptr %i.mz, %i.mj
  br i1 %.not.i.i.i165, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i163, !llvm.loop !18

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i
  %.pr.i166 = load ptr, ptr %17, align 8, !tbaa !266
  br label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, %bb.br
  %i.na = phi ptr [ %.pr.i166, %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i ], [ %i.mi, %bb.br ] ; 3 uses
  %.not.i.i1.i167 = icmp eq ptr %i.na, null
  br i1 %.not.i.i1.i167, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i
  %i.nb = load ptr, ptr %i.ma, align 8, !tbaa !274
  %i.nc = ptrtoint ptr %i.nb to i64
  %i.nd = ptrtoint ptr %i.na to i64
  %i.ne = sub i64 %i.nc, %i.nd
  call void @_ZdlPvm(ptr noundef nonnull %i.na, i64 noundef %i.ne) #32
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i, %bb.bt
  %i.nf = load ptr, ptr %2, align 8, !tbaa !53
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !54
  %i.ni = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.nf, i64 noundef %i.nh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.cb ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !143
  %i.nk = getelementptr i8, ptr %i.nj, i64 -24
  %i.nl = load i64, ptr %i.nk, align 8
  %i.nm = getelementptr inbounds i8, ptr %i.ni, i64 %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 240
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !163 ; 6 uses
  %.not.i.i.i206 = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i206, label %bb.bu, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i207

bb.bu:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc210 unwind label %bb.cb

.noexc210:                                        ; preds = %bb.bu
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i207: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 56
  %i.nq = load i8, ptr %i.np, align 8, !tbaa !168
  %.not.i1.i.i208 = icmp eq i8 %i.nq, 0
  br i1 %.not.i1.i.i208, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i207
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 67
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !55
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.bw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i207
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.no)
          to label %.noexc211 unwind label %bb.cb

.noexc211:                                        ; preds = %bb.bw
  %i.nt = load ptr, ptr %i.no, align 8, !tbaa !143
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 48
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = invoke noundef signext i8 %i.nv(ptr noundef nonnull align 8 dereferenceable(570) %i.no, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.cb, !inline_history !2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc211, %bb.bv
  %.0.i.i.i209 = phi i8 [ %i.ns, %bb.bv ], [ %i.nw, %.noexc211 ]
  %i.nx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ni, i8 noundef signext %.0.i.i.i209)
          to label %.noexc213 unwind label %bb.cb

.noexc213:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ny = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nx)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.cb ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc213
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  %i.nz = load ptr, ptr %5, align 8, !tbaa !179   ; 3 uses
  %i.oa = load ptr, ptr %i.al, align 8, !tbaa !180 ; 2 uses
  %.not4.i.i.i171 = icmp eq ptr %i.nz, %i.oa
  br i1 %.not4.i.i.i171, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i179, label %.lr.ph.i.i.i172

.lr.ph.i.i.i172:                                  ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i175
  %.05.i.i.i173 = phi ptr [ %i.og, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i175 ], [ %i.nz, %_ZNSolsEPFRSoS_E.exit ] ; 3 uses
  %i.ob = load ptr, ptr %.05.i.i.i173, align 8, !tbaa !53 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.05.i.i.i173, i64 16 ; 2 uses
  %i.od = icmp eq ptr %i.ob, %i.oc
  br i1 %i.od, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i174: ; preds = %.lr.ph.i.i.i172
  %i.oe = load i64, ptr %i.oc, align 8, !tbaa !55
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.ob, i64 noundef %i.of) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i175

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i175: ; preds = %.lr.ph.i.i.i172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i174
  %i.og = getelementptr inbounds nuw i8, ptr %.05.i.i.i173, i64 32 ; 2 uses
end_hunk_2
