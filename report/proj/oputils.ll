Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/oputils?download=true
inline.NumInlined: 796
inline.NumDeleted: 335
begin_hunk_0_@_ZN5osgeo4proj9operation26createPropertiesForInverseEPKNS1_19CoordinateOperationEbb:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131: ; preds = %bb.ab
  %i.eb = load i64, ptr %i.bg, align 8, !tbaa !31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i132: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i134
  %i.ec = phi i64 [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i134 ]
  %i.ed = icmp ugt i64 %i.dp, %i.ec
  br i1 %i.ed, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit136

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i132
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.do, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc135 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc135:                                        ; preds = %bb.ac
  %.pre.i.i133 = load ptr, ptr %8, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit136: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i132, %.noexc135
  %i.ee = phi ptr [ %.pre.i.i133, %.noexc135 ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i132 ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.do
  store i8 %i.dm, ptr %i.ef, align 1, !tbaa !31
  store i64 %i.dp, ptr %i.bh, align 8, !tbaa !46
  %i.eg = load ptr, ptr %8, align 8, !tbaa !45
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dp
  store i8 0, ptr %i.eh, align 1, !tbaa !31
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit130, %bb.q, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.169 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit136 ], [ %i.cf, %bb.q ], [ false, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit130 ]
  %.1 = phi i64 [ %.067333, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit136 ], [ %.067333, %bb.q ], [ %i.dk, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ], [ %.067333, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit130 ]
  %i.ei = add i64 %.1, 1                          ; 2 uses
  %i.ej = load i64, ptr %i.i, align 8, !tbaa !46  ; 2 uses
  %i.ek = icmp ult i64 %i.ei, %i.ej
  br i1 %i.ek, label %bb.n, label %._crit_edge, !llvm.loop !110

bb.ae:                                            ; preds = %._crit_edge
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !58 ; 7 uses
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !59
  %.not.i.i = icmp eq ptr %i.em, %i.eo
  br i1 %.not.i.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 3 uses
  store ptr %i.ep, ptr %i.em, align 8, !tbaa !43
  %i.eq = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.bg
  br i1 %i.er, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137

bb.ag:                                            ; preds = %bb.af
  %i.es = icmp ult i64 %.pre358, 16
  call void @llvm.assume(i1 %i.es)
  %i.et = add nuw nsw i64 %.pre358, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ep, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.et, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137: ; preds = %bb.af
  store ptr %i.eq, ptr %i.em, align 8, !tbaa !45
  %i.eu = load i64, ptr %i.bg, align 8, !tbaa !31
  store i64 %i.eu, ptr %i.ep, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137, %bb.ag
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i64 %.pre358, ptr %i.ev, align 8, !tbaa !46
  store ptr %i.bg, ptr %8, align 8, !tbaa !45
  store i64 0, ptr %i.bh, align 8, !tbaa !46
  store i8 0, ptr %i.bg, align 8, !tbaa !31
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  store ptr %i.ew, ptr %i.el, align 8, !tbaa !58
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

bb.ah:                                            ; preds = %bb.ae
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.em, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %bb.ah, %._crit_edge
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !58 ; 2 uses
  %i.ez = load ptr, ptr %7, align 8, !tbaa !60    ; 2 uses
  %.not93334 = icmp eq ptr %i.ey, %i.ez
  br i1 %.not93334, label %._crit_edge337, label %.lr.ph336

.lr.ph336:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ey to i64
  %i.fc = sub i64 %i.fb, %i.fa
  %i.fd = ashr exact i64 %i.fc, 5
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  br label %bb.aj

._crit_edge337:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit161, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.fi = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.bg
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge337
  %i.fk = load i64, ptr %i.bg, align 8, !tbaa !31
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge337, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.fm = load ptr, ptr %7, align 8, !tbaa !60    ; 3 uses
  %i.fn = load ptr, ptr %i.ex, align 8, !tbaa !58 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fm, %i.fn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ft, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.fo = load ptr, ptr %.05.i.i.i, align 8, !tbaa !45 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !31
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ft, %i.fn
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !59
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.fu to i64
  %i.fz = sub i64 %i.fx, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef %i.fz) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ca

bb.aj:                                            ; preds = %.lr.ph336, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit161
  %.066335 = phi i64 [ %i.fd, %.lr.ph336 ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit161 ]
  %i.ga = add i64 %.066335, -1                    ; 3 uses
  %i.gb = load i64, ptr %i.as, align 8, !tbaa !46 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gd = add i64 %i.gb, -4611686018427387901
  %i.ge = icmp ult i64 %i.gd, 3
  br i1 %i.ge, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.ak
  %i.gf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.16, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.ac, %bb.aa, %bb.x, %.noexc.i.i, %bb.p, %.invoke, %bb.ah
  %lpad.loopexit.split-lp557 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.aj
  %i.gg = load ptr, ptr %7, align 8, !tbaa !60
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.gg, i64 %i.ga ; 7 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 3 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !46 ; 9 uses
  %i.gk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj9operation10INVERSE_OFB5cxx11E, i64 8), align 8, !tbaa !46 ; 9 uses
  %i.gl = icmp ult i64 %i.gj, %i.gk
  br i1 %i.gl, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit143.thread, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit143

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.gm = load ptr, ptr %i.gh, align 8, !tbaa !45
  %i.gn = load ptr, ptr @_ZN5osgeo4proj9operation10INVERSE_OFB5cxx11E, align 8, !tbaa !45
  %bcmp.i141 = call i32 @bcmp(ptr %i.gm, ptr %i.gn, i64 %i.gk)
  %i.go = icmp eq i32 %bcmp.i141, 0
  br i1 %i.go, label %bb.al, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit143.thread

bb.al:                                            ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit143
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.gp = load i64, ptr %i.gi, align 8, !tbaa !46, !noalias !130 ; 3 uses
  %i.gq = icmp ugt i64 %i.gk, %i.gp
  br i1 %i.gq, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.am:                                            ; preds = %bb.al
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i64 noundef %i.gk, i64 noundef %i.gp) #27
          to label %.noexc145 unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc145:                                        ; preds = %bb.am
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.al
  store ptr %i.fe, ptr %9, align 8, !tbaa !43, !alias.scope !130
  %i.gr = load ptr, ptr %i.gh, align 8, !tbaa !45, !noalias !130
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gk ; 2 uses
  %i.gt = sub nuw i64 %i.gp, %i.gk                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !130
  store i64 %i.gt, ptr %i.c, align 8, !tbaa !18, !noalias !130
  %i.gu = icmp ugt i64 %i.gt, 15
  br i1 %i.gu, label %.noexc10.i.i, label %._crit_edge.i.i.i144

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.gv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc146 unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc146:                                        ; preds = %.noexc10.i.i
  store ptr %i.gv, ptr %9, align 8, !tbaa !45, !alias.scope !130
  %i.gw = load i64, ptr %i.c, align 8, !tbaa !18, !noalias !130
  store i64 %i.gw, ptr %i.fe, align 8, !tbaa !31, !alias.scope !130
  br label %._crit_edge.i.i.i144

._crit_edge.i.i.i144:                             ; preds = %.noexc146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.gx = phi ptr [ %i.gv, %.noexc146 ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.gt, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %bb.ap
  ]

bb.an:                                            ; preds = %._crit_edge.i.i.i144
  %i.gy = load i8, ptr %i.gs, align 1, !tbaa !31
  store i8 %i.gy, ptr %i.gx, align 1, !tbaa !31
  br label %bb.ap

bb.ao:                                            ; preds = %._crit_edge.i.i.i144
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gx, ptr align 1 %i.gs, i64 %i.gt, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %._crit_edge.i.i.i144
  %i.gz = load i64, ptr %i.c, align 8, !tbaa !18, !noalias !130 ; 2 uses
  store i64 %i.gz, ptr %i.ff, align 8, !tbaa !46, !alias.scope !130
  %i.ha = load ptr, ptr %9, align 8, !tbaa !45, !alias.scope !130
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gz
  store i8 0, ptr %i.hb, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !130
  %i.hc = load i64, ptr %i.ff, align 8, !tbaa !46 ; 2 uses
  %i.hd = load i64, ptr %i.as, align 8, !tbaa !46
  %i.he = sub i64 4611686018427387903, %i.hd
  %i.hf = icmp ult i64 %i.he, %i.hc
  br i1 %i.hf, label %bb.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #27
          to label %.noexc147 unwind label %.loopexit.split-lp290.loopexit.split-lp.loopexit.split-lp

.noexc147:                                        ; preds = %bb.aq
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.ap
  %i.hg = load ptr, ptr %9, align 8, !tbaa !45
  %i.hh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.hg, i64 noundef %i.hc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp290.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.hi = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.fe
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.hk = load i64, ptr %i.fe, align 8, !tbaa !31
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit161

.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc10.i.i, %bb.am
  %lpad.loopexit.split-lp533 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

.loopexit.split-lp290.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.aq
  %lpad.loopexit.split-lp536 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hm = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.fe
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %.loopexit.split-lp290.loopexit.split-lp.loopexit.split-lp
  %i.ho = load i64, ptr %i.fe, align 8, !tbaa !31
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %.loopexit.split-lp290.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  %.pn96 = phi { ptr, i32 } [ %lpad.loopexit.split-lp536, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152 ], [ %lpad.loopexit.split-lp533, %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp536, %.loopexit.split-lp290.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.loopexit.split-lp.loopexit.split-lp

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit143.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit143
  %i.hq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj9operation25AXIS_ORDER_CHANGE_2D_NAMEB5cxx11E, i64 8), align 8, !tbaa !46
  %i.hr = icmp eq i64 %i.gj, %i.hq
  br i1 %i.hr, label %bb.ar, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread277

bb.ar:                                            ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit143.thread
  %i.hs = icmp eq i64 %i.gj, 0
  br i1 %i.hs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.ar
  %i.ht = load ptr, ptr @_ZN5osgeo4proj9operation25AXIS_ORDER_CHANGE_2D_NAMEB5cxx11E, align 8, !tbaa !45
  %i.hu = load ptr, ptr %i.gh, align 8, !tbaa !45
  %bcmp.i155 = call i32 @bcmp(ptr %i.hu, ptr %i.ht, i64 %i.gj)
  %i.hv = icmp eq i32 %bcmp.i155, 0
  br i1 %i.hv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread277

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread277: ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit143.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.hw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj9operation25AXIS_ORDER_CHANGE_3D_NAMEB5cxx11E, i64 8), align 8, !tbaa !46
  %i.hx = icmp eq i64 %i.gj, %i.hw
  br i1 %i.hx, label %bb.as, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit157.thread278

bb.as:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread277
  %i.hy = icmp eq i64 %i.gj, 0
  br i1 %i.hy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit157

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit157: ; preds = %bb.as
  %i.hz = load ptr, ptr @_ZN5osgeo4proj9operation25AXIS_ORDER_CHANGE_3D_NAMEB5cxx11E, align 8, !tbaa !45
  %i.ia = load ptr, ptr %i.gh, align 8, !tbaa !45
  %bcmp.i156 = call i32 @bcmp(ptr %i.ia, ptr %i.hz, i64 %i.gj)
  %i.ib = icmp eq i32 %bcmp.i156, 0
  br i1 %i.ib, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit157.thread278

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.as, %bb.ar, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit157, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ic = load i64, ptr %i.as, align 8, !tbaa !46
  %i.id = sub i64 4611686018427387903, %i.ic
  %i.ie = icmp ult i64 %i.id, %i.gj
  br i1 %i.ie, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i158

.invoke:                                          ; preds = %bb.ak, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #27
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i158: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.if = load ptr, ptr %i.gh, align 8, !tbaa !45
  %i.ig = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.if, i64 noundef %i.gj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit161 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit157.thread278: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread277, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit157
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.ih = load ptr, ptr @_ZN5osgeo4proj9operation10INVERSE_OFB5cxx11E, align 8, !tbaa !45, !noalias !131
  %i.ii = load ptr, ptr %i.gh, align 8, !tbaa !45, !noalias !131
  %i.ij = load i64, ptr %i.gi, align 8, !tbaa !46, !noalias !131 ; 3 uses
  store ptr %i.fg, ptr %10, align 8, !tbaa !43, !alias.scope !132
  store i64 0, ptr %i.fh, align 8, !tbaa !46, !alias.scope !132
  store i8 0, ptr %i.fg, align 8, !tbaa !31, !alias.scope !132
  %i.ik = add i64 %i.ij, %i.gk
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ik)
          to label %bb.at unwind label %.loopexit.split-lp295.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit157.thread278
  %i.il = load i64, ptr %i.fh, align 8, !tbaa !46, !alias.scope !132
  %i.im = sub i64 4611686018427387903, %i.il
  %i.in = icmp ult i64 %i.im, %i.gk
  br i1 %i.in, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.at
  %i.io = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.ih, i64 noundef %i.gk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit.split-lp295.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ip = load i64, ptr %i.fh, align 8, !tbaa !46, !alias.scope !132
  %i.iq = sub i64 4611686018427387903, %i.ip
  %i.ir = icmp ult i64 %i.iq, %i.ij
  br i1 %i.ir, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #27
          to label %.cont.i.i unwind label %.loopexit.split-lp295.loopexit.split-lp.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.is = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.ii, i64 noundef %i.ij)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %.loopexit.split-lp295.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp295.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit157.thread278, %.invoke.i.i
  %lpad.loopexit.split-lp539 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.it = load ptr, ptr %10, align 8, !tbaa !45, !alias.scope !132 ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.fg
  br i1 %i.iu, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.iv = load i64, ptr %i.fh, align 8, !tbaa !46 ; 2 uses
  %i.iw = load i64, ptr %i.as, align 8, !tbaa !46
  %i.ix = sub i64 4611686018427387903, %i.iw
  %i.iy = icmp ult i64 %i.ix, %i.iv
  br i1 %i.iy, label %bb.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i162

bb.au:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #27
          to label %.noexc163 unwind label %.loopexit.split-lp300.loopexit.split-lp.loopexit.split-lp

.noexc163:                                        ; preds = %bb.au
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i162: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.iz = load ptr, ptr %10, align 8, !tbaa !45
  %i.ja = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.iz, i64 noundef %i.iv)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit165 unwind label %.loopexit.split-lp300.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i162
  %i.jb = load ptr, ptr %10, align 8, !tbaa !45   ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.fg
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit165
  %i.jd = load i64, ptr %i.fg, align 8, !tbaa !31
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit161

.loopexit.split-lp300.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i162, %bb.au
  %lpad.loopexit.split-lp542 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jf = load ptr, ptr %10, align 8, !tbaa !45   ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.fg
  br i1 %i.jg, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.loopexit.split-lp300.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp295.loopexit.split-lp.loopexit.split-lp
  %.sink = phi ptr [ %i.it, %.loopexit.split-lp295.loopexit.split-lp.loopexit.split-lp ], [ %i.jf, %.loopexit.split-lp300.loopexit.split-lp.loopexit.split-lp ]
  %.pn94.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp539, %.loopexit.split-lp295.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp542, %.loopexit.split-lp300.loopexit.split-lp.loopexit.split-lp ]
  %i.jh = load i64, ptr %i.fg, align 8, !tbaa !31
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ji) #28
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.loopexit.split-lp300.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp295.loopexit.split-lp.loopexit.split-lp
  %.pn94 = phi { ptr, i32 } [ %lpad.loopexit.split-lp539, %.loopexit.split-lp295.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp542, %.loopexit.split-lp300.loopexit.split-lp.loopexit.split-lp ], [ %.pn94.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %.not93 = icmp eq i64 %i.ga, 0
  br i1 %.not93, label %._crit_edge337, label %bb.aj, !llvm.loop !117

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %.body
  %.pn99 = phi { ptr, i32 } [ %.pn94, %.body ], [ %.pn96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ], [ %lpad.loopexit.split-lp557, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.jj = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.bg
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.jl = load i64, ptr %i.bg, align 8, !tbaa !31
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.dk

bb.av:                                            ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread, %bb.k, %bb.j
  %i.jn = load ptr, ptr %4, align 8, !tbaa !49
  %i.jo = icmp ne ptr %i.jn, null
  %i.jp = load ptr, ptr %5, align 8
  %i.jq = icmp ne ptr %i.jp, null
  %or.cond = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond, label %bb.aw, label %.critedge.thread

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZN5osgeo4proj9operation11buildOpNameB5cxx11EPKcRKSt10shared_ptrINS0_3crs3CRSEES9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull %.070, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.ax unwind label %bb.bp

bb.ax:                                            ; preds = %bb.aw
  %i.jr = load i64, ptr %i.i, align 8, !tbaa !46  ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !46 ; 2 uses
  %i.ju = icmp eq i64 %i.jr, %i.jt
  br i1 %i.ju, label %bb.ay, label %._crit_edge359

._crit_edge359:                                   ; preds = %bb.ax
  %.pre360 = load ptr, ptr %11, align 8, !tbaa !45
  br label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.jv = icmp eq i64 %i.jr, 0
  %.pre361 = load ptr, ptr %11, align 8, !tbaa !45 ; 3 uses
  br i1 %i.jv, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jw = load ptr, ptr %i.f, align 8, !tbaa !45
  %bcmp.i.i = call i32 @bcmp(ptr %i.jw, ptr %.pre361, i64 %i.jr)
  %i.jx = icmp ne i32 %bcmp.i.i, 0
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge359, %bb.ay, %bb.az
  %i.jy = phi ptr [ %.pre361, %bb.ay ], [ %.pre361, %bb.az ], [ %.pre360, %._crit_edge359 ] ; 2 uses
  %.ph = phi i1 [ false, %bb.ay ], [ %i.jx, %bb.az ], [ true, %._crit_edge359 ]
  %i.jz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ka = icmp eq ptr %i.jy, %i.jz
  br i1 %i.ka, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176: ; preds = %bb.ba
  %i.kb = icmp ult i64 %i.jt, 16
  call void @llvm.assume(i1 %i.kb)
  br label %.critedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.ba
  %i.kc = load i64, ptr %i.jz, align 8, !tbaa !31
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kd) #28
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br i1 %.ph, label %.critedge.thread, label %bb.ca

.critedge.thread:                                 ; preds = %bb.av, %.critedge
  %i.ke = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull @.str.16, i64 noundef 0, i64 noundef 3) #25
  %.not90 = icmp eq i64 %i.ke, -1
  br i1 %.not90, label %bb.bs, label %bb.bb

bb.bb:                                            ; preds = %.critedge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 39, ptr %i.b, align 1, !tbaa !31, !noalias !133
  %i.kf = load ptr, ptr @_ZN5osgeo4proj9operation10INVERSE_OFB5cxx11E, align 8, !tbaa !45, !noalias !133
  %i.kg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj9operation10INVERSE_OFB5cxx11E, i64 8), align 8, !tbaa !46, !noalias !133 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.kh, ptr %14, align 8, !tbaa !43, !alias.scope !134
  %i.ki = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 0, ptr %i.ki, align 8, !tbaa !46, !alias.scope !134
  store i8 0, ptr %i.kh, align 8, !tbaa !31, !alias.scope !134
  %i.kj = add i64 %i.kg, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.kj)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !46, !alias.scope !134
  %i.kl = sub i64 4611686018427387903, %i.kk
  %i.km = icmp ult i64 %i.kl, %i.kg
  br i1 %i.km, label %.invoke.i.i184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i181: ; preds = %bb.bc
  %i.kn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.kf, i64 noundef %i.kg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i182 unwind label %bb.bd ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i182: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i181
  %i.ko = load i64, ptr %i.ki, align 8, !tbaa !46, !alias.scope !134
  %i.kp = icmp eq i64 %i.ko, 4611686018427387903
  br i1 %i.kp, label %.invoke.i.i184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i183

.invoke.i.i184:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i182, %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #27
          to label %.cont.i.i185 unwind label %bb.bd

.cont.i.i185:                                     ; preds = %.invoke.i.i184
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i182
  %i.kq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.be unwind label %bb.bd     ; 0 uses

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i183, %.invoke.i.i184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i181, %bb.bb
  %i.kr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ks = load ptr, ptr %14, align 8, !tbaa !45, !alias.scope !134 ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.kh
  br i1 %i.kt, label %.body186, label %.body186.sink.split

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.ku = load i64, ptr %i.i, align 8, !tbaa !46, !noalias !135 ; 2 uses
  %i.kv = load i64, ptr %i.ki, align 8, !tbaa !46, !noalias !135
  %i.kw = sub i64 4611686018427387903, %i.kv
  %i.kx = icmp ult i64 %i.kw, %i.ku
  br i1 %i.kx, label %bb.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i188

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #27
          to label %.noexc190 unwind label %bb.bq

.noexc190:                                        ; preds = %bb.bf
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i188: ; preds = %bb.be
  %i.ky = load ptr, ptr %i.f, align 8, !tbaa !45, !noalias !135
  %i.kz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.ky, i64 noundef %i.ku)
          to label %.noexc191 unwind label %bb.bq ; 6 uses

.noexc191:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i188
  %i.la = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.la, ptr %13, align 8, !tbaa !43, !alias.scope !135
  %i.lb = load ptr, ptr %i.kz, align 8, !tbaa !45 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 16 ; 5 uses
  %i.ld = icmp eq ptr %i.lb, %i.lc
  br i1 %i.ld, label %bb.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

bb.bg:                                            ; preds = %.noexc191
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !46 ; 3 uses
  %i.lg = icmp ult i64 %i.lf, 16
  call void @llvm.assume(i1 %i.lg)
  %i.lh = add nuw nsw i64 %i.lf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.la, ptr noundef nonnull align 8 dereferenceable(1) %i.lc, i64 %i.lh, i1 false)
  br label %bb.bh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %.noexc191
  store ptr %i.lb, ptr %13, align 8, !tbaa !45, !alias.scope !135
  %i.li = load i64, ptr %i.lc, align 8, !tbaa !31
  store i64 %i.li, ptr %i.la, align 8, !tbaa !31, !alias.scope !135
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !46
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189, %bb.bg
  %i.lj = phi i64 [ %i.lf, %bb.bg ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189 ]
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.ll = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %i.lj, ptr %i.ll, align 8, !tbaa !46, !alias.scope !135
  store ptr %i.lc, ptr %i.kz, align 8, !tbaa !45
  store i64 0, ptr %i.lk, align 8, !tbaa !46
  store i8 0, ptr %i.lc, align 8, !tbaa !31
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !46, !noalias !136
  %i.ln = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.lm, i64 noundef 0, i64 noundef 1, i8 noundef signext 39)
          to label %.noexc195 unwind label %bb.br ; 6 uses

.noexc195:                                        ; preds = %bb.bh
  %i.lo = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  store ptr %i.lo, ptr %12, align 8, !tbaa !43, !alias.scope !136
  %i.lp = load ptr, ptr %i.ln, align 8, !tbaa !45 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 16 ; 5 uses
  %i.lr = icmp eq ptr %i.lp, %i.lq
  br i1 %i.lr, label %bb.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

bb.bi:                                            ; preds = %.noexc195
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !46 ; 3 uses
  %i.lu = icmp ult i64 %i.lt, 16
  call void @llvm.assume(i1 %i.lu)
  %i.lv = add nuw nsw i64 %i.lt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lo, ptr noundef nonnull align 8 dereferenceable(1) %i.lq, i64 %i.lv, i1 false)
  br label %bb.bj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %.noexc195
  store ptr %i.lp, ptr %12, align 8, !tbaa !45, !alias.scope !136
  %i.lw = load i64, ptr %i.lq, align 8, !tbaa !31
  store i64 %i.lw, ptr %i.lo, align 8, !tbaa !31, !alias.scope !136
  %.phi.trans.insert.i193 = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %.pre.i194 = load i64, ptr %.phi.trans.insert.i193, align 8, !tbaa !46
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192, %bb.bi
  %i.lx = phi i64 [ %i.lt, %bb.bi ], [ %.pre.i194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192 ]
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  store i64 %i.lx, ptr %i.lz, align 8, !tbaa !46, !alias.scope !136
  store ptr %i.lq, ptr %i.ln, align 8, !tbaa !45
  store i64 0, ptr %i.ly, align 8, !tbaa !46
  store i8 0, ptr %i.lq, align 8, !tbaa !31
  %i.ma = load ptr, ptr %6, align 8, !tbaa !45    ; 6 uses
  %i.mb = icmp eq ptr %i.ma, %i.ar
  %i.mc = load ptr, ptr %12, align 8, !tbaa !45   ; 5 uses
  %i.md = icmp eq ptr %i.mc, %i.lo                ; 2 uses
  br i1 %i.mb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.bj
  br i1 %i.md, label %bb.bk, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.bj
  br i1 %i.md, label %bb.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.me = load i64, ptr %i.lz, align 8, !tbaa !46 ; 3 uses
  %i.mf = icmp ult i64 %i.me, 16
  call void @llvm.assume(i1 %i.mf)
  switch i64 %i.me, label %bb.bm [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.mg = load i8, ptr %i.mc, align 1, !tbaa !31
  store i8 %i.mg, ptr %i.ma, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ma, ptr align 1 %i.mc, i64 %i.me, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.mh = load i64, ptr %i.lz, align 8, !tbaa !46 ; 2 uses
  store i64 %i.mh, ptr %i.as, align 8, !tbaa !46
  %i.mi = load ptr, ptr %6, align 8, !tbaa !45
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.mh
  store i8 0, ptr %i.mj, align 1, !tbaa !31
  %.pre.i197 = load ptr, ptr %12, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.mc, ptr %6, align 8, !tbaa !45
  %i.mk = load <2 x i64>, ptr %i.lz, align 8, !tbaa !31
  store <2 x i64> %i.mk, ptr %i.as, align 8, !tbaa !31
  br label %bb.bo

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ml = load i64, ptr %i.ar, align 8, !tbaa !31
  store ptr %i.mc, ptr %6, align 8, !tbaa !45
  %i.mm = load <2 x i64>, ptr %i.lz, align 8, !tbaa !31
  store <2 x i64> %i.mm, ptr %i.as, align 8, !tbaa !31
  %.not.i196 = icmp eq ptr %i.ma, null
  br i1 %.not.i196, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ma, ptr %12, align 8, !tbaa !45
  store i64 %i.ml, ptr %i.lo, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.lo, ptr %12, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bn, %bb.bo
  %i.mn = phi ptr [ %i.ma, %bb.bn ], [ %i.lo, %bb.bo ], [ %.pre.i197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.lz, align 8, !tbaa !46
  store i8 0, ptr %i.mn, align 1, !tbaa !31
  %i.mo = load ptr, ptr %12, align 8, !tbaa !45   ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.lo
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.mq = load i64, ptr %i.lo, align 8, !tbaa !31
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.mr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198
  %i.ms = load ptr, ptr %13, align 8, !tbaa !45   ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.la
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  %i.mu = load i64, ptr %i.la, align 8, !tbaa !31
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201
  %i.mw = load ptr, ptr %14, align 8, !tbaa !45   ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.kh
  br i1 %i.mx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %i.my = load i64, ptr %i.kh, align 8, !tbaa !31
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.mz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.ca

bb.bp:                                            ; preds = %bb.aw
  %i.na = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.dk

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i188, %bb.bf
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

bb.br:                                            ; preds = %bb.bh
  %i.nc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nd = load ptr, ptr %13, align 8, !tbaa !45   ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.la
  br i1 %i.ne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %bb.br
  %i.nf = load i64, ptr %i.la, align 8, !tbaa !31
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.ng) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207, %bb.bq
  %.pn = phi { ptr, i32 } [ %i.nb, %bb.bq ], [ %i.nc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207 ], [ %i.nc, %bb.br ] ; 2 uses
  %i.nh = load ptr, ptr %14, align 8, !tbaa !45   ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.kh
  br i1 %i.ni, label %.body186, label %.body186.sink.split

.body186.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %bb.bd
  %.sink529 = phi ptr [ %i.ks, %bb.bd ], [ %i.nh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.kr, %bb.bd ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ]
  %i.nj = load i64, ptr %i.kh, align 8, !tbaa !31
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %.sink529, i64 noundef %i.nk) #28
  br label %.body186

.body186:                                         ; preds = %.body186.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %bb.bd
  %.pn.pn = phi { ptr, i32 } [ %i.kr, %bb.bd ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ], [ %.pn.pn.ph, %.body186.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.dk

bb.bs:                                            ; preds = %.critedge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.nl = load ptr, ptr @_ZN5osgeo4proj9operation10INVERSE_OFB5cxx11E, align 8, !tbaa !45, !noalias !137
  %i.nm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj9operation10INVERSE_OFB5cxx11E, i64 8), align 8, !tbaa !46, !noalias !137 ; 3 uses
  %i.nn = load ptr, ptr %i.f, align 8, !tbaa !45, !noalias !137
  %i.no = load i64, ptr %i.i, align 8, !tbaa !46, !noalias !137 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 10 uses
  store ptr %i.np, ptr %15, align 8, !tbaa !43, !alias.scope !138
  %i.nq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 8 uses
  store i64 0, ptr %i.nq, align 8, !tbaa !46, !alias.scope !138
  store i8 0, ptr %i.np, align 8, !tbaa !31, !alias.scope !138
  %i.nr = add i64 %i.no, %i.nm
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.nr)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs
end_hunk_0
begin_hunk_1_@_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef double @_ZN5osgeo4proj9operation11getAccuracyERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN5osgeo4proj9operation19CoordinateOperationE, ptr nonnull @_ZTIN5osgeo4proj9operation10ConversionE, i64 -1) #25
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge, label %.thread

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj9operation19CoordinateOperation29coordinateOperationAccuraciesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !165  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !165
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !168
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj8metadata18PositionalAccuracy5valueB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #26
  %i.l = invoke noundef double @_ZN5osgeo4proj8internal13c_locale_stodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.thread unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.n = extractvalue { ptr, i32 } %i.m, 1
  %i.o = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #25
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.q = extractvalue { ptr, i32 } %i.m, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #25 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %.thread

bb.f:                                             ; preds = %.critedge
  %i.s = load ptr, ptr %0, align 8, !tbaa !71     ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.v = icmp eq ptr %i.u, getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5osgeo4proj9operation21ConcatenatedOperationE, i64 16)
  br i1 %i.v, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.w = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj9operation21ConcatenatedOperation10operationsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.s)
  %i.x = tail call noundef double @_ZN5osgeo4proj9operation11getAccuracyERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.w)
  br label %.thread

bb.i:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.m

.thread:                                          ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.h, %bb.b
  %.0 = phi double [ 0.000000e+00, %bb.b ], [ %i.l, %bb.c ], [ -1.000000e+00, %bb.e ], [ %i.x, %bb.h ], [ -1.000000e+00, %bb.f ], [ -1.000000e+00, %bb.g ]
  ret double %.0
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj9operation19CoordinateOperation29coordinateOperationAccuraciesEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare noundef double @_ZN5osgeo4proj8internal13c_locale_stodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj8metadata18PositionalAccuracy5valueB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #11

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define hidden noundef double @_ZN5osgeo4proj9operation11getAccuracyERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaIS9_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.49", align 8 ; 7 uses
  %2 = alloca %"class.std::shared_ptr.49", align 8 ; 7 uses
  %3 = alloca %"class.std::shared_ptr.49", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171
  %i.c = load ptr, ptr %0, align 8, !tbaa !172    ; 2 uses
  %.not113.not = icmp eq ptr %i.b, %i.c
  br i1 %.not113.not, label %.thread97, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ar
  %i.g = phi ptr [ %i.c, %.lr.ph ], [ %i.et, %bb.ar ]
  %.036116 = phi i64 [ 0, %.lr.ph ], [ %i.er, %bb.ar ] ; 19 uses
  %.040115 = phi double [ -1.000000e+00, %.lr.ph ], [ %.545108, %bb.ar ] ; 2 uses
  %.0114 = phi double [ -1.000000e+00, %.lr.ph ], [ %.481107, %bb.ar ] ; 2 uses
  %i.h = fcmp ult double %.0114, 0.000000e+00
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.036116
  %i.j = call noundef double @_ZN5osgeo4proj9operation11getAccuracyERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = phi double [ %i.j, %bb.c ], [ %.0114, %bb.b ] ; 5 uses
  %i.l = fcmp olt double %i.k, 0.000000e+00
  br i1 %i.l, label %.thread97, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = fcmp olt double %.040115, 0.000000e+00
  %spec.store.select = select i1 %i.m, double 0.000000e+00, double %.040115 ; 15 uses
  %i.n = fcmp ogt double %i.k, 0.000000e+00
  br i1 %i.n, label %bb.f, label %.thread102

bb.f:                                             ; preds = %bb.e
  %i.o = add nuw i64 %.036116, 1                  ; 5 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !171
  %i.q = load ptr, ptr %0, align 8, !tbaa !172    ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 4
  %i.v = icmp ult i64 %i.o, %i.u
  br i1 %i.v, label %bb.g, label %.thread102

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.o
  %i.x = call noundef double @_ZN5osgeo4proj9operation11getAccuracyERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.w) ; 15 uses
  %i.y = fcmp ogt double %i.x, 0.000000e+00
  br i1 %i.y, label %bb.h, label %.thread102

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.z = load ptr, ptr %0, align 8, !tbaa !172
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.036116
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !71
  call void @_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.49") align 8 %1, ptr noundef nonnull align 8 dereferenceable(72) %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ac = load ptr, ptr %0, align 8, !tbaa !172
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.036116
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !71
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9targetCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.49") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.ae)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.af = load ptr, ptr %0, align 8, !tbaa !172
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.o
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !71
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9targetCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.49") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.ah)
          to label %bb.j unwind label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %1, align 8, !tbaa !49    ; 2 uses
  %.not110 = icmp eq ptr %i.ai, null
  br i1 %.not110, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %.not111 = icmp eq ptr %i.aj, null
  br i1 %.not111, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %.not112 = icmp eq ptr %i.ak, null
  br i1 %.not112, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = fcmp olt double %i.k, %i.x
  %.sroa.speculated77 = select i1 %i.al, double %i.x, double %i.k ; 2 uses
  %i.am = fcmp ugt double %.sroa.speculated77, 1.000000e-01
  br i1 %i.am, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) #26 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !46 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 6
  br i1 %i.aq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.n
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !45 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 1
  %i.at = xor i32 %i.as, 1397904453
  %i.au = getelementptr i8, ptr %i.ar, i64 4
  %i.av = load i16, ptr %i.au, align 1
  %i.aw = zext i16 %i.av to i32
  %i.ax = xor i32 %i.aw, 14648
  %i.ay = or i32 %i.at, %i.ax
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82: ; preds = %bb.n
  %i.bc = icmp ult i64 %i.ap, 4
  br i1 %i.bc, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82
  %4 = load ptr, ptr %i.an, align 8, !tbaa !45
  %i.bd = load i32, ptr %4, align 1
  %i.be = icmp ne i32 %i.bd, 1179800645
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ai) #26 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !46
  %i.bk = icmp ult i64 %i.bj, 7
  br i1 %i.bk, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit57

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit57: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !45 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 1
  %i.bn = xor i32 %i.bm, 1397904453
  %i.bo = getelementptr i8, ptr %i.bl, i64 3
  %i.bp = load i32, ptr %i.bo, align 1
  %i.bq = xor i32 %i.bp, 758724691
  %i.br = or i32 %i.bn, %i.bq
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.o, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread

bb.o:                                             ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit57
  %i.bv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ak) #26 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !46
  %i.by = icmp ult i64 %i.bx, 7
  br i1 %i.by, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit60

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit60: ; preds = %bb.o
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !45 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 1
  %i.cb = xor i32 %i.ca, 1397904453
  %i.cc = getelementptr i8, ptr %i.bz, i64 3
  %i.cd = load i32, ptr %i.cc, align 1
  %i.ce = xor i32 %i.cd, 758724691
  %i.cf = or i32 %i.cb, %i.ce
  %i.cg = icmp ne i32 %i.cf, 0
  %i.ch = zext i1 %i.cg to i32
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.p, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread

bb.p:                                             ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit60
  %i.cj = load ptr, ptr %0, align 8, !tbaa !172
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.036116
  %i.cl = invoke fastcc noundef zeroext i1 @"_ZZN5osgeo4proj9operation11getAccuracyERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaIS9_EEENK3$_0clERKS9_"(ptr noundef nonnull align 8 dereferenceable(16) %i.ck)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  br i1 %i.cl, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = load ptr, ptr %0, align 8, !tbaa !172
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.o
  %i.co = invoke fastcc noundef zeroext i1 @"_ZZN5osgeo4proj9operation11getAccuracyERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaIS9_EEENK3$_0clERKS9_"(ptr noundef nonnull align 8 dereferenceable(16) %i.cn)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  br i1 %i.co, label %bb.w, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread

bb.t:                                             ; preds = %bb.h
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.u:                                             ; preds = %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.v:                                             ; preds = %bb.p, %bb.r
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  br label %bb.ap

bb.w:                                             ; preds = %bb.q, %bb.s
  %i.cs = fadd double %spec.store.select, %.sroa.speculated77
  br label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread: ; preds = %bb.o, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82, %bb.w, %bb.s, %bb.j, %bb.k, %bb.l, %bb.m, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit57, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit60
  %.280 = phi double [ %i.x, %bb.m ], [ %i.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.x, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit60 ], [ %i.x, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit57 ], [ %i.x, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit ], [ %i.x, %bb.l ], [ %i.x, %bb.k ], [ %i.x, %bb.j ], [ %i.x, %bb.s ], [ %i.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82 ], [ -1.000000e+00, %bb.w ], [ %i.x, %bb.o ] ; 2 uses
  %.343 = phi double [ %spec.store.select, %bb.m ], [ %spec.store.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %spec.store.select, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit60 ], [ %spec.store.select, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit57 ], [ %spec.store.select, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit ], [ %spec.store.select, %bb.l ], [ %spec.store.select, %bb.k ], [ %spec.store.select, %bb.j ], [ %spec.store.select, %bb.s ], [ %spec.store.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82 ], [ %i.cs, %bb.w ], [ %spec.store.select, %bb.o ] ; 2 uses
  %.339 = phi i64 [ %.036116, %bb.m ], [ %.036116, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.036116, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit60 ], [ %.036116, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit57 ], [ %.036116, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit ], [ %.036116, %bb.l ], [ %.036116, %bb.k ], [ %.036116, %bb.j ], [ %.036116, %bb.s ], [ %.036116, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82 ], [ %i.o, %bb.w ], [ %.036116, %bb.o ] ; 2 uses
  %i.ct = phi i1 [ true, %bb.m ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ true, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit60 ], [ true, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit57 ], [ true, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.s ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82 ], [ false, %bb.w ], [ true, %bb.o ]
  %i.cu = load ptr, ptr %i.d, align 8, !tbaa !29  ; 8 uses
  %.not.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %i.cx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.cv, align 8, !tbaa !37
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !38
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !40
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #25, !inline_history !2
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !40
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #25, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i = phi i32 [ %i.cy, %bb.aa ], [ %i.di, %bb.ab ]
  %i.dj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dj, label %bb.ac, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.dk = load ptr, ptr %i.e, align 8, !tbaa !29  ; 8 uses
  %.not.i.i62 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i62, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.dl, align 8, !tbaa !37
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4, !tbaa !38
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !40
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #25, !inline_history !2
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !40
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #25, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66

bb.af:                                            ; preds = %bb.ad
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i63 = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i63, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64

bb.ah:                                            ; preds = %bb.af
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i65 = phi i32 [ %i.do, %bb.ag ], [ %i.dy, %bb.ah ]
  %i.dz = icmp eq i32 %.0.i.i.i.i65, 1
  br i1 %i.dz, label %bb.ai, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66, !prof !41

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ea = load ptr, ptr %i.f, align 8, !tbaa !29  ; 8 uses
  %.not.i.i67 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i67, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.ak, label %bb.al

end_hunk_1
