Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/unicode?download=true
inline.NumInlined: 8690
inline.NumDeleted: 3216
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN2cv3dnn19unicode_regex_splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE:bb.a
_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i147.i.i: ; preds = %bb.bu, %.noexc151.i.i
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %.not.i17.i.i.i148.i.i = icmp eq ptr %.sroa.034.4.i, null
  br i1 %.not.i17.i.i.i148.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i147.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4.i, i64 noundef %i.og) #30, !noalias !787
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i: ; preds = %bb.bv, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i147.i.i
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %i.om
  br label %bb.bw

.loopexit401.i.i:                                 ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i144.i.i
  %lpad.loopexit403.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp402.i.i:                        ; preds = %bb.bt
  %lpad.loopexit.split-lp404.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bw:                                            ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i, %bb.br, %bb.bp
  %.sroa.034.6.i = phi ptr [ %.sroa.034.4.i, %bb.bp ], [ %i.oo, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i ], [ %.sroa.034.4.i, %bb.br ]
  %.sroa.25.6.i = phi ptr [ %.sroa.25.4.i, %bb.bp ], [ %i.or, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i ], [ %i.od, %bb.br ]
  %.sroa.51.6.i = phi ptr [ %.sroa.51.4.i, %bb.bp ], [ %i.os, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i ], [ %.sroa.51.4.i, %bb.br ]
  %i.ot = add i64 %i.oc, %.078446.i.i
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.bx:                                            ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"
  %i.ou = add nuw i64 %.078446.i.i, 1             ; 2 uses
  %i.ov = icmp ult i64 %i.ou, %i.ly
  br i1 %i.ov, label %bb.by, label %.lr.ph441.preheader.i.i

bb.by:                                            ; preds = %bb.bx
  %i.ow = load ptr, ptr %9, align 8, !tbaa !77, !noalias !787
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.ou
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !80, !noalias !787
  %i.oz = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !787
  %i.pa = icmp eq i8 %i.oz, 0
  br i1 %i.pa, label %bb.bz, label %bb.cb, !prof !82

bb.bz:                                            ; preds = %bb.by
  %i.pb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  %.not.i248.i.i = icmp eq i32 %i.pb, 0
  br i1 %.not.i248.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !787
  %i.pc = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %i.pd = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !787
  %i.pe = icmp eq i8 %i.pd, 0
  br i1 %i.pe, label %bb.cc, label %.noexc155.i.i, !prof !82

bb.cc:                                            ; preds = %bb.cb
  %i.pf = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  %.not3.i247.i.i = icmp eq i32 %i.pf, 0
  br i1 %.not3.i247.i.i, label %.noexc155.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.ce unwind label %bb.cf, !noalias !787

bb.ce:                                            ; preds = %bb.cd
  %i.pg = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %.noexc155.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.ph = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %.body.i.i

.noexc155.i.i:                                    ; preds = %bb.ce, %bb.cc, %bb.cb
  %i.pi = zext i32 %i.oy to i64                   ; 2 uses
  %i.pj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !787
  %i.pk = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !787 ; 2 uses
  %i.pl = ptrtoint ptr %i.pj to i64
  %i.pm = ptrtoint ptr %i.pk to i64
  %i.pn = sub i64 %i.pl, %i.pm
  %i.po = ashr exact i64 %i.pn, 1
  %i.pp = icmp ugt i64 %i.po, %i.pi
  %i.pq = getelementptr inbounds nuw [2 x i8], ptr %i.pk, i64 %i.pi
  %spec.select.i245.i.i = select i1 %i.pp, ptr %i.pq, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i246.i.i = load i16, ptr %spec.select.i245.i.i, align 2, !tbaa !72, !noalias !787
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit156.i.i"

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit156.i.i": ; preds = %.noexc155.i.i, %bb.bo, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit136.thread.i.i", %bb.bg, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"
  %i.pr = phi i64 [ 1, %.noexc155.i.i ], [ 0, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i" ], [ 0, %bb.bg ], [ 0, %bb.bo ], [ 0, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit136.thread.i.i" ] ; 9 uses
  %storemerge.i.i = phi i16 [ %.sroa.0.0.copyload.i246.i.i, %.noexc155.i.i ], [ %.sroa.0.0.copyload.i.i.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i" ], [ %.sroa.0.0.copyload.i.i.i, %bb.bg ], [ %.sroa.0.0.copyload.i.i.i, %bb.bo ], [ %.sroa.0.0.copyload.i.i.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit136.thread.i.i" ] ; 4 uses
  %i.ps = and i16 %storemerge.i.i, 4
  %.not.i.i = icmp eq i16 %i.ps, 0
  br i1 %.not.i.i, label %bb.cs, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit156.i.i"
  %i.pt = add nuw i64 %i.pr, %.078446.i.i         ; 2 uses
  %i.pu = add nuw i64 %.078446.i.i, 1
  %i.pv = add i64 %i.pu, %i.pr
  %.not.i157.i.i = icmp uge i64 %i.pv, %.081453.i.i
  %.not.i157.i.i.fr = freeze i1 %.not.i157.i.i
  br i1 %.not.i157.i.i.fr, label %.lr.ph.i.i.preheader, label %.lr.ph.preheader.i.i.split.us

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i
  %i.pw = add nuw nsw i64 %i.pr, 1
  %i.px = add i64 %i.pw, %.078446.i.i
  %umax2559 = call i64 @llvm.umax.i64(i64 %i.px, i64 %i.ly) ; 2 uses
  %i.py = add i64 %i.pt, 1                        ; 2 uses
  %i.pz = icmp ult i64 %i.py, %i.ly
  br i1 %i.pz, label %.lr.ph4453, label %._crit_edge.i.i

.lr.ph.preheader.i.i.split.us:                    ; preds = %.lr.ph.preheader.i.i
  %i.qa = add i64 %i.pt, 1
  br label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i"
  %i.qb = add i64 %i.qd, 1                        ; 2 uses
  %i.qc = icmp ult i64 %i.qb, %i.ly
  br i1 %i.qc, label %.lr.ph4453, label %._crit_edge.i.i, !llvm.loop !745

.lr.ph4453:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.qd = phi i64 [ %i.qb, %.lr.ph.i.i ], [ %i.py, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.qe = load ptr, ptr %9, align 8, !tbaa !77, !noalias !787
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.qd
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !80, !noalias !787
  %i.qh = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !787
  %i.qi = icmp eq i8 %i.qh, 0
  br i1 %i.qi, label %bb.cg, label %bb.ci, !prof !82

bb.cg:                                            ; preds = %.lr.ph4453
  %i.qj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  %.not.i255.i.i = icmp eq i32 %i.qj, 0
  br i1 %.not.i255.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !787
  %i.qk = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %.lr.ph4453
  %i.ql = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !787
  %i.qm = icmp eq i8 %i.ql, 0
  br i1 %i.qm, label %bb.cj, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i", !prof !82

bb.cj:                                            ; preds = %bb.ci
  %i.qn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  %.not3.i254.i.i = icmp eq i32 %i.qn, 0
  br i1 %.not3.i254.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i", label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.cl unwind label %bb.cm, !noalias !787

bb.cl:                                            ; preds = %bb.ck
  %i.qo = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i"

bb.cm:                                            ; preds = %bb.ck
  %i.qp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %.body.i.i

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i": ; preds = %bb.cl, %bb.cj, %bb.ci
  %i.qq = zext i32 %i.qg to i64                   ; 2 uses
  %i.qr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !787
  %i.qs = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !787 ; 2 uses
  %i.qt = ptrtoint ptr %i.qr to i64
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = sub i64 %i.qt, %i.qu
  %i.qw = ashr exact i64 %i.qv, 1
  %i.qx = icmp ugt i64 %i.qw, %i.qq
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %i.qs, i64 %i.qq
  %spec.select.i252.i.i = select i1 %i.qx, ptr %i.qy, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i253.i.i = load i16, ptr %spec.select.i252.i.i, align 2, !tbaa !72, !noalias !787
  %i.qz = and i16 %.sroa.0.0.copyload.i253.i.i, 4
  %i.ra = icmp eq i16 %i.qz, 0
  br i1 %i.ra, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i.._crit_edge.i.i.loopexit_crit_edge", label %.lr.ph.i.i, !llvm.loop !745

.loopexit406.i.i:                                 ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i193.i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i178.i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i163.i.i
  %lpad.loopexit408.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp407.i.i:                        ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp409.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i.._crit_edge.i.i.loopexit_crit_edge": ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i"
  br label %._crit_edge.i.i, !llvm.loop !745

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i.._crit_edge.i.i.loopexit_crit_edge", %.lr.ph.preheader.i.i.split.us
  %.us-phi1747 = phi i64 [ %i.qa, %.lr.ph.preheader.i.i.split.us ], [ %umax2559, %.lr.ph.i.i.preheader ], [ %i.qd, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i.._crit_edge.i.i.loopexit_crit_edge" ], [ %umax2559, %.lr.ph.i.i ] ; 6 uses
  %i.rb = sub i64 %.us-phi1747, %.0346444.i.i     ; 2 uses
  %.not.i161.i.i = icmp eq i64 %.us-phi1747, %.0346444.i.i
  br i1 %.not.i161.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i", label %bb.cn

bb.cn:                                            ; preds = %._crit_edge.i.i
  %.not.i.i162.i.i = icmp eq ptr %.sroa.25.4.i, %.sroa.51.4.i
  br i1 %.not.i.i162.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i64 %i.rb, ptr %.sroa.25.4.i, align 8, !tbaa !66, !noalias !787
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.25.4.i, i64 8
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.cp:                                            ; preds = %bb.cn
  %i.rd = ptrtoint ptr %.sroa.25.4.i to i64
  %i.re = ptrtoint ptr %.sroa.034.4.i to i64
  %i.rf = sub i64 %i.rd, %i.re                    ; 6 uses
  %i.rg = icmp eq i64 %i.rf, 9223372036854775800
  br i1 %i.rg, label %.invoke.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i163.i.i

.invoke.i.i:                                      ; preds = %bb.dp, %bb.dc, %bb.cp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
          to label %.cont.i.i unwind label %.loopexit.split-lp407.i.i, !noalias !787

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i163.i.i: ; preds = %bb.cp
  %i.rh = ashr exact i64 %i.rf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i164.i.i = call i64 @llvm.umax.i64(i64 %i.rh, i64 1)
  %i.ri = add nsw i64 %.sroa.speculated.i.i.i.i164.i.i, %i.rh ; 2 uses
  %i.rj = icmp ult i64 %i.ri, %i.rh
  %i.rk = call i64 @llvm.umin.i64(i64 %i.ri, i64 1152921504606846975)
  %i.rl = select i1 %i.rj, i64 1152921504606846975, i64 %i.rk ; 3 uses
  %.not.i.i.i.i165.i.i = icmp ne i64 %i.rl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i165.i.i)
  %i.rm = shl nuw nsw i64 %i.rl, 3
  %i.rn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rm) #31
          to label %.noexc170.i.i unwind label %.loopexit406.i.i, !noalias !787 ; 4 uses

.noexc170.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i163.i.i
  %i.ro = getelementptr inbounds i8, ptr %i.rn, i64 %i.rf ; 2 uses
  store i64 %i.rb, ptr %i.ro, align 8, !tbaa !66, !noalias !787
  %i.rp = icmp sgt i64 %i.rf, 0
  br i1 %i.rp, label %bb.cq, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i166.i.i

bb.cq:                                            ; preds = %.noexc170.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rn, ptr align 8 %.sroa.034.4.i, i64 %i.rf, i1 false), !noalias !787
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i166.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i166.i.i: ; preds = %bb.cq, %.noexc170.i.i
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %.not.i17.i.i.i167.i.i = icmp eq ptr %.sroa.034.4.i, null
  br i1 %.not.i17.i.i.i167.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i166.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4.i, i64 noundef %i.rf) #30, !noalias !787
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i: ; preds = %bb.cr, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i166.i.i
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.rn, i64 %i.rl
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.cs:                                            ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit156.i.i"
  %i.rs = and i16 %storemerge.i.i, 2
  %.not100.i.i = icmp eq i16 %i.rs, 0
  br i1 %.not100.i.i, label %bb.df, label %.lr.ph432.preheader.i.i

.lr.ph432.preheader.i.i:                          ; preds = %bb.cs
  %i.rt = add nuw i64 %i.pr, %.078446.i.i         ; 2 uses
  %i.ru = add nuw i64 %.078446.i.i, 1
  %i.rv = add i64 %i.ru, %i.pr
  %.not.i172.i.i = icmp uge i64 %i.rv, %.081453.i.i
  %.not.i172.i.i.fr = freeze i1 %.not.i172.i.i
  br i1 %.not.i172.i.i.fr, label %.lr.ph432.i.i.preheader, label %.lr.ph432.preheader.i.i.split.us

.lr.ph432.i.i.preheader:                          ; preds = %.lr.ph432.preheader.i.i
  %i.rw = add nuw nsw i64 %i.pr, 1
  %i.rx = add i64 %i.rw, %.078446.i.i
  %umax2560 = call i64 @llvm.umax.i64(i64 %i.rx, i64 %i.ly) ; 2 uses
  %i.ry = add i64 %i.rt, 1                        ; 2 uses
  %i.rz = icmp ult i64 %i.ry, %i.ly
  br i1 %i.rz, label %.lr.ph4456, label %._crit_edge433.i.i

.lr.ph432.preheader.i.i.split.us:                 ; preds = %.lr.ph432.preheader.i.i
  %i.sa = add i64 %i.rt, 1
  br label %._crit_edge433.i.i

.lr.ph432.i.i:                                    ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i"
  %i.sb = add i64 %i.sd, 1                        ; 2 uses
  %i.sc = icmp ult i64 %i.sb, %i.ly
  br i1 %i.sc, label %.lr.ph4456, label %._crit_edge433.i.i, !llvm.loop !746

.lr.ph4456:                                       ; preds = %.lr.ph432.i.i.preheader, %.lr.ph432.i.i
  %i.sd = phi i64 [ %i.sb, %.lr.ph432.i.i ], [ %i.ry, %.lr.ph432.i.i.preheader ] ; 3 uses
  %i.se = load ptr, ptr %9, align 8, !tbaa !77, !noalias !787
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.sd
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !80, !noalias !787
  %i.sh = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !787
  %i.si = icmp eq i8 %i.sh, 0
  br i1 %i.si, label %bb.ct, label %bb.cv, !prof !82

bb.ct:                                            ; preds = %.lr.ph4456
  %i.sj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  %.not.i262.i.i = icmp eq i32 %i.sj, 0
  br i1 %.not.i262.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !787
  %i.sk = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %.lr.ph4456
  %i.sl = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !787
  %i.sm = icmp eq i8 %i.sl, 0
  br i1 %i.sm, label %bb.cw, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i", !prof !82

bb.cw:                                            ; preds = %bb.cv
  %i.sn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  %.not3.i261.i.i = icmp eq i32 %i.sn, 0
  br i1 %.not3.i261.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i", label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.cy unwind label %bb.cz, !noalias !787

bb.cy:                                            ; preds = %bb.cx
  %i.so = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i"

bb.cz:                                            ; preds = %bb.cx
  %i.sp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %.body.i.i

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i": ; preds = %bb.cy, %bb.cw, %bb.cv
  %i.sq = zext i32 %i.sg to i64                   ; 2 uses
  %i.sr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !787
  %i.ss = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !787 ; 2 uses
  %i.st = ptrtoint ptr %i.sr to i64
  %i.su = ptrtoint ptr %i.ss to i64
  %i.sv = sub i64 %i.st, %i.su
  %i.sw = ashr exact i64 %i.sv, 1
  %i.sx = icmp ugt i64 %i.sw, %i.sq
  %i.sy = getelementptr inbounds nuw [2 x i8], ptr %i.ss, i64 %i.sq
  %spec.select.i259.i.i = select i1 %i.sx, ptr %i.sy, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i260.i.i = load i16, ptr %spec.select.i259.i.i, align 2, !tbaa !72, !noalias !787
  %i.sz = and i16 %.sroa.0.0.copyload.i260.i.i, 2
  %i.ta = icmp eq i16 %i.sz, 0
  br i1 %i.ta, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i.._crit_edge433.i.i.loopexit_crit_edge", label %.lr.ph432.i.i, !llvm.loop !746

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i.._crit_edge433.i.i.loopexit_crit_edge": ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i"
  br label %._crit_edge433.i.i, !llvm.loop !746

._crit_edge433.i.i:                               ; preds = %.lr.ph432.i.i, %.lr.ph432.i.i.preheader, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i.._crit_edge433.i.i.loopexit_crit_edge", %.lr.ph432.preheader.i.i.split.us
  %.us-phi1748 = phi i64 [ %i.sa, %.lr.ph432.preheader.i.i.split.us ], [ %umax2560, %.lr.ph432.i.i.preheader ], [ %i.sd, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i.._crit_edge433.i.i.loopexit_crit_edge" ], [ %umax2560, %.lr.ph432.i.i ] ; 6 uses
  %i.tb = sub i64 %.us-phi1748, %.0346444.i.i     ; 2 uses
  %.not.i176.i.i = icmp eq i64 %.us-phi1748, %.0346444.i.i
  br i1 %.not.i176.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i", label %bb.da

bb.da:                                            ; preds = %._crit_edge433.i.i
  %.not.i.i177.i.i = icmp eq ptr %.sroa.25.4.i, %.sroa.51.4.i
  br i1 %.not.i.i177.i.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  store i64 %i.tb, ptr %.sroa.25.4.i, align 8, !tbaa !66, !noalias !787
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.25.4.i, i64 8
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.dc:                                            ; preds = %bb.da
  %i.td = ptrtoint ptr %.sroa.25.4.i to i64
  %i.te = ptrtoint ptr %.sroa.034.4.i to i64
  %i.tf = sub i64 %i.td, %i.te                    ; 6 uses
  %i.tg = icmp eq i64 %i.tf, 9223372036854775800
  br i1 %i.tg, label %.invoke.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i178.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i178.i.i: ; preds = %bb.dc
  %i.th = ashr exact i64 %i.tf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i179.i.i = call i64 @llvm.umax.i64(i64 %i.th, i64 1)
  %i.ti = add nsw i64 %.sroa.speculated.i.i.i.i179.i.i, %i.th ; 2 uses
  %i.tj = icmp ult i64 %i.ti, %i.th
  %i.tk = call i64 @llvm.umin.i64(i64 %i.ti, i64 1152921504606846975)
  %i.tl = select i1 %i.tj, i64 1152921504606846975, i64 %i.tk ; 3 uses
  %.not.i.i.i.i180.i.i = icmp ne i64 %i.tl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i180.i.i)
  %i.tm = shl nuw nsw i64 %i.tl, 3
  %i.tn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tm) #31
          to label %.noexc185.i.i unwind label %.loopexit406.i.i, !noalias !787 ; 4 uses

.noexc185.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i178.i.i
  %i.to = getelementptr inbounds i8, ptr %i.tn, i64 %i.tf ; 2 uses
  store i64 %i.tb, ptr %i.to, align 8, !tbaa !66, !noalias !787
  %i.tp = icmp sgt i64 %i.tf, 0
  br i1 %i.tp, label %bb.dd, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i181.i.i

bb.dd:                                            ; preds = %.noexc185.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tn, ptr align 8 %.sroa.034.4.i, i64 %i.tf, i1 false), !noalias !787
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i181.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i181.i.i: ; preds = %bb.dd, %.noexc185.i.i
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %.not.i17.i.i.i182.i.i = icmp eq ptr %.sroa.034.4.i, null
  br i1 %.not.i17.i.i.i182.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i181.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4.i, i64 noundef %i.tf) #30, !noalias !787
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i: ; preds = %bb.de, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i181.i.i
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.tn, i64 %i.tl
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.df:                                            ; preds = %bb.cs
  %i.ts = and i16 %storemerge.i.i, 256
  %.not101.i.i = icmp ne i16 %i.ts, 0
  %.not102.i.i = icmp eq i16 %storemerge.i.i, 0
  %or.cond395.i.i = or i1 %.not102.i.i, %.not101.i.i
  br i1 %or.cond395.i.i, label %.lr.ph441.preheader.i.i, label %.lr.ph437.preheader.i.i

.lr.ph437.preheader.i.i:                          ; preds = %bb.df
  %i.tt = add nuw i64 %i.pr, %.078446.i.i         ; 2 uses
  %i.tu = add nuw i64 %.078446.i.i, 1
  %i.tv = add i64 %i.tu, %i.pr
  %.not.i187.i.i = icmp uge i64 %i.tv, %.081453.i.i
  %.not.i187.i.i.fr = freeze i1 %.not.i187.i.i
  br i1 %.not.i187.i.i.fr, label %.lr.ph437.i.i.preheader, label %.lr.ph437.preheader.i.i.split.us

.lr.ph437.i.i.preheader:                          ; preds = %.lr.ph437.preheader.i.i
  %i.tw = add nuw nsw i64 %i.pr, 1
  %i.tx = add i64 %i.tw, %.078446.i.i
  %umax2561 = call i64 @llvm.umax.i64(i64 %i.tx, i64 %i.ly) ; 2 uses
  %i.ty = add i64 %i.tt, 1                        ; 2 uses
  %i.tz = icmp ult i64 %i.ty, %i.ly
  br i1 %i.tz, label %.lr.ph4459, label %.critedge.i.i

.lr.ph437.preheader.i.i.split.us:                 ; preds = %.lr.ph437.preheader.i.i
  %i.ua = add i64 %i.tt, 1
  br label %.critedge.i.i

.lr.ph437.i.i:                                    ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i"
  %i.ub = add i64 %i.ud, 1                        ; 2 uses
  %i.uc = icmp ult i64 %i.ub, %i.ly
  br i1 %i.uc, label %.lr.ph4459, label %.critedge.i.i, !llvm.loop !747

.lr.ph4459:                                       ; preds = %.lr.ph437.i.i.preheader, %.lr.ph437.i.i
  %i.ud = phi i64 [ %i.ub, %.lr.ph437.i.i ], [ %i.ty, %.lr.ph437.i.i.preheader ] ; 3 uses
  %i.ue = load ptr, ptr %9, align 8, !tbaa !77, !noalias !787
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.ud
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !80, !noalias !787
  %i.uh = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !787
  %i.ui = icmp eq i8 %i.uh, 0
  br i1 %i.ui, label %bb.dg, label %bb.di, !prof !82

bb.dg:                                            ; preds = %.lr.ph4459
  %i.uj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  %.not.i269.i.i = icmp eq i32 %i.uj, 0
  br i1 %.not.i269.i.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !787
  %i.uk = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %.lr.ph4459
  %i.ul = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !787
  %i.um = icmp eq i8 %i.ul, 0
  br i1 %i.um, label %bb.dj, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i", !prof !82

bb.dj:                                            ; preds = %bb.di
  %i.un = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  %.not3.i268.i.i = icmp eq i32 %i.un, 0
  br i1 %.not3.i268.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i", label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.dl unwind label %bb.dm, !noalias !787

bb.dl:                                            ; preds = %bb.dk
  %i.uo = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i"

bb.dm:                                            ; preds = %bb.dk
  %i.up = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %.body.i.i

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i": ; preds = %bb.dl, %bb.dj, %bb.di
  %i.uq = zext i32 %i.ug to i64                   ; 2 uses
  %i.ur = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !787
  %i.us = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !787 ; 2 uses
  %i.ut = ptrtoint ptr %i.ur to i64
  %i.uu = ptrtoint ptr %i.us to i64
  %i.uv = sub i64 %i.ut, %i.uu
  %i.uw = ashr exact i64 %i.uv, 1
  %i.ux = icmp ugt i64 %i.uw, %i.uq
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %i.us, i64 %i.uq
  %spec.select.i266.i.i = select i1 %i.ux, ptr %i.uy, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i267.i.i = load i16, ptr %spec.select.i266.i.i, align 2, !tbaa !72, !noalias !787 ; 2 uses
  %i.uz = and i16 %.sroa.0.0.copyload.i267.i.i, 262
  %i.va = icmp ne i16 %i.uz, 0
  %.not104.i.i = icmp eq i16 %.sroa.0.0.copyload.i267.i.i, 0
  %or.cond396.i.i = or i1 %.not104.i.i, %i.va
  br i1 %or.cond396.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i..critedge.i.i.loopexit_crit_edge", label %.lr.ph437.i.i, !llvm.loop !747

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i..critedge.i.i.loopexit_crit_edge": ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i"
  br label %.critedge.i.i, !llvm.loop !747

.critedge.i.i:                                    ; preds = %.lr.ph437.i.i, %.lr.ph437.i.i.preheader, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i..critedge.i.i.loopexit_crit_edge", %.lr.ph437.preheader.i.i.split.us
  %.us-phi1749 = phi i64 [ %i.ua, %.lr.ph437.preheader.i.i.split.us ], [ %umax2561, %.lr.ph437.i.i.preheader ], [ %i.ud, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i..critedge.i.i.loopexit_crit_edge" ], [ %umax2561, %.lr.ph437.i.i ] ; 6 uses
  %i.vb = sub i64 %.us-phi1749, %.0346444.i.i     ; 2 uses
  %.not.i191.i.i = icmp eq i64 %.us-phi1749, %.0346444.i.i
  br i1 %.not.i191.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i", label %bb.dn

bb.dn:                                            ; preds = %.critedge.i.i
  %.not.i.i192.i.i = icmp eq ptr %.sroa.25.4.i, %.sroa.51.4.i
  br i1 %.not.i.i192.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i64 %i.vb, ptr %.sroa.25.4.i, align 8, !tbaa !66, !noalias !787
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.25.4.i, i64 8
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.dp:                                            ; preds = %bb.dn
  %i.vd = ptrtoint ptr %.sroa.25.4.i to i64
  %i.ve = ptrtoint ptr %.sroa.034.4.i to i64
  %i.vf = sub i64 %i.vd, %i.ve                    ; 6 uses
  %i.vg = icmp eq i64 %i.vf, 9223372036854775800
  br i1 %i.vg, label %.invoke.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i193.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i193.i.i: ; preds = %bb.dp
  %i.vh = ashr exact i64 %i.vf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i194.i.i = call i64 @llvm.umax.i64(i64 %i.vh, i64 1)
  %i.vi = add nsw i64 %.sroa.speculated.i.i.i.i194.i.i, %i.vh ; 2 uses
  %i.vj = icmp ult i64 %i.vi, %i.vh
  %i.vk = call i64 @llvm.umin.i64(i64 %i.vi, i64 1152921504606846975)
  %i.vl = select i1 %i.vj, i64 1152921504606846975, i64 %i.vk ; 3 uses
  %.not.i.i.i.i195.i.i = icmp ne i64 %i.vl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i195.i.i)
  %i.vm = shl nuw nsw i64 %i.vl, 3
  %i.vn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vm) #31
          to label %.noexc200.i.i unwind label %.loopexit406.i.i, !noalias !787 ; 4 uses

.noexc200.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i193.i.i
  %i.vo = getelementptr inbounds i8, ptr %i.vn, i64 %i.vf ; 2 uses
  store i64 %i.vb, ptr %i.vo, align 8, !tbaa !66, !noalias !787
  %i.vp = icmp sgt i64 %i.vf, 0
  br i1 %i.vp, label %bb.dq, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i196.i.i

bb.dq:                                            ; preds = %.noexc200.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.vn, ptr align 8 %.sroa.034.4.i, i64 %i.vf, i1 false), !noalias !787
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i196.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i196.i.i: ; preds = %bb.dq, %.noexc200.i.i
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %.not.i17.i.i.i197.i.i = icmp eq ptr %.sroa.034.4.i, null
  br i1 %.not.i17.i.i.i197.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i196.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4.i, i64 noundef %i.vf) #30, !noalias !787
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i: ; preds = %bb.dr, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i196.i.i
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.vn, i64 %i.vl
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

.lr.ph441.preheader.i.i:                          ; preds = %bb.df, %bb.bx
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.078446.i.i, i64 %i.ly) ; 3 uses
  %i.vs = sub nuw i64 %umax.i.i, %.078446.i.i     ; 4 uses
  %exitcond.not.i.i4462 = icmp eq i64 %i.vs, 0
  br i1 %exitcond.not.i.i4462, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread.i.i", label %.lr.ph4464

.lr.ph441.i.i:                                    ; preds = %bb.dz
  %exitcond.not.i.i = icmp eq i64 %i.wq, %i.vs
  br i1 %exitcond.not.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread.i.i", label %.lr.ph4464, !llvm.loop !748

.lr.ph4464:                                       ; preds = %.lr.ph441.preheader.i.i, %.lr.ph441.i.i
  %.0440.i.i4463 = phi i64 [ %i.wq, %.lr.ph441.i.i ], [ 0, %.lr.ph441.preheader.i.i ] ; 5 uses
  %i.vt = add nuw i64 %.0440.i.i4463, %.078446.i.i ; 6 uses
  %i.vu = load ptr, ptr %9, align 8, !tbaa !77, !noalias !787
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.vu, i64 %i.vt
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !80, !noalias !787
  %i.vx = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !787
  %i.vy = icmp eq i8 %i.vx, 0
  br i1 %i.vy, label %bb.ds, label %bb.du, !prof !82

bb.ds:                                            ; preds = %.lr.ph4464
  %i.vz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  %.not.i276.i.i = icmp eq i32 %i.vz, 0
  br i1 %.not.i276.i.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !787
  %i.wa = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds, %.lr.ph4464
  %i.wb = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !787
  %i.wc = icmp eq i8 %i.wb, 0
  br i1 %i.wc, label %bb.dv, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.i.i", !prof !82

bb.dv:                                            ; preds = %bb.du
  %i.wd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  %.not3.i275.i.i = icmp eq i32 %i.wd, 0
  br i1 %.not3.i275.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.i.i", label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.dx unwind label %bb.dy, !noalias !787

bb.dx:                                            ; preds = %bb.dw
  %i.we = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.i.i"

bb.dy:                                            ; preds = %bb.dw
  %i.wf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %.body.i.i

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.i.i": ; preds = %bb.dx, %bb.dv, %bb.du
  %i.wg = zext i32 %i.vw to i64                   ; 2 uses
  %i.wh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !787
  %i.wi = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !787 ; 2 uses
  %i.wj = ptrtoint ptr %i.wh to i64
  %i.wk = ptrtoint ptr %i.wi to i64
  %i.wl = sub i64 %i.wj, %i.wk
  %i.wm = ashr exact i64 %i.wl, 1
  %i.wn = icmp ugt i64 %i.wm, %i.wg
  %i.wo = getelementptr inbounds nuw [2 x i8], ptr %i.wi, i64 %i.wg
  %spec.select.i273.i.i = select i1 %i.wn, ptr %i.wo, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i274.i.i = load i16, ptr %spec.select.i273.i.i, align 2, !tbaa !72, !noalias !787
  %i.wp = and i16 %.sroa.0.0.copyload.i274.i.i, 256
  %.not105.i.i = icmp eq i16 %i.wp, 0
  br i1 %.not105.i.i, label %.thread385.i.i, label %bb.dz

bb.dz:                                            ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.i.i"
  %i.wq = add i64 %.0440.i.i4463, 1               ; 4 uses
  %i.wr = add i64 %i.wq, %.078446.i.i             ; 2 uses
  %.not.i202.i.i = icmp ugt i64 %.081453.i.i, %i.wr
  br i1 %.not.i202.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.i.i", label %.lr.ph441.i.i, !llvm.loop !748

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.i.i": ; preds = %bb.dz
  %i.ws = icmp eq i64 %i.wq, 0
  br i1 %i.ws, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread542.i.i", label %.thread389.i.i

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread.i.i": ; preds = %.lr.ph441.i.i, %.lr.ph441.preheader.i.i
  %i.wt = icmp ugt i64 %i.vs, 1
  br i1 %i.wt, label %.thread389.i.i, label %bb.eg

.thread385.i.i:                                   ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.i.i"
  %i.wu = icmp ugt i64 %.0440.i.i4463, 1
  br i1 %i.wu, label %.thread386.i.i, label %bb.eg

.thread386.i.i:                                   ; preds = %.thread385.i.i
  %i.wv = icmp ult i64 %i.vt, %i.ly
  br i1 %i.wv, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit207.i.i", label %.thread389.i.i

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit207.i.i": ; preds = %.thread386.i.i
  %i.ww = load ptr, ptr %9, align 8, !tbaa !77, !noalias !787
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %i.vt
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !80, !noalias !787
  %.not106.i.i = icmp eq i32 %i.wy, -1
  br i1 %.not106.i.i, label %.thread389.i.i, label %bb.ea

bb.ea:                                            ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit207.i.i"
  %i.wz = add i64 %.078446.i.i, -1
  %i.xa = add i64 %i.wz, %.0440.i.i4463           ; 6 uses
  %i.xb = sub i64 %i.xa, %.0346444.i.i            ; 2 uses
  %.not.i208.i.i = icmp eq i64 %i.xa, %.0346444.i.i
  br i1 %.not.i208.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i", label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.not.i.i209.i.i = icmp eq ptr %.sroa.25.4.i, %.sroa.51.4.i
  br i1 %.not.i.i209.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  store i64 %i.xb, ptr %.sroa.25.4.i, align 8, !tbaa !66, !noalias !787
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.25.4.i, i64 8
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.ed:                                            ; preds = %bb.eb
  %i.xd = ptrtoint ptr %.sroa.25.4.i to i64
  %i.xe = ptrtoint ptr %.sroa.034.4.i to i64
  %i.xf = sub i64 %i.xd, %i.xe                    ; 6 uses
  %i.xg = icmp eq i64 %i.xf, 9223372036854775800
  br i1 %i.xg, label %.invoke564.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i210.i.i

.invoke564.i.i:                                   ; preds = %bb.eo, %bb.ej, %bb.ed
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
          to label %.cont565.i.i unwind label %.loopexit.split-lp412.i.i, !noalias !787

.cont565.i.i:                                     ; preds = %.invoke564.i.i
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i210.i.i: ; preds = %bb.ed
  %i.xh = ashr exact i64 %i.xf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i211.i.i = call i64 @llvm.umax.i64(i64 %i.xh, i64 1)
  %i.xi = add nsw i64 %.sroa.speculated.i.i.i.i211.i.i, %i.xh ; 2 uses
  %i.xj = icmp ult i64 %i.xi, %i.xh
  %i.xk = call i64 @llvm.umin.i64(i64 %i.xi, i64 1152921504606846975)
  %i.xl = select i1 %i.xj, i64 1152921504606846975, i64 %i.xk ; 3 uses
  %.not.i.i.i.i212.i.i = icmp ne i64 %i.xl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i212.i.i)
  %i.xm = shl nuw nsw i64 %i.xl, 3
  %i.xn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xm) #31
          to label %.noexc217.i.i unwind label %.loopexit411.i.i, !noalias !787 ; 4 uses

end_hunk_0
begin_hunk_1_@_ZN2cv3dnn19unicode_regex_splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE:bb.a
  %i.yl = add i64 %.078446.i.i, 1                 ; 6 uses
  %i.ym = sub i64 %i.yl, %.0346444.i.i            ; 2 uses
  %.not.i230.i.i = icmp eq i64 %i.yl, %.0346444.i.i
  br i1 %.not.i230.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i", label %bb.em

bb.em:                                            ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread542.i.i"
  %.not.i.i231.i.i = icmp eq ptr %.sroa.25.4.i, %.sroa.51.4.i
  br i1 %.not.i.i231.i.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  store i64 %i.ym, ptr %.sroa.25.4.i, align 8, !tbaa !66, !noalias !787
  %i.yn = getelementptr inbounds nuw i8, ptr %.sroa.25.4.i, i64 8
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.eo:                                            ; preds = %bb.em
  %i.yo = ptrtoint ptr %.sroa.25.4.i to i64
  %i.yp = ptrtoint ptr %.sroa.034.4.i to i64
  %i.yq = sub i64 %i.yo, %i.yp                    ; 6 uses
  %i.yr = icmp eq i64 %i.yq, 9223372036854775800
  br i1 %i.yr, label %.invoke564.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i.i: ; preds = %bb.eo
  %i.ys = ashr exact i64 %i.yq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i233.i.i = call i64 @llvm.umax.i64(i64 %i.ys, i64 1)
  %i.yt = add nsw i64 %.sroa.speculated.i.i.i.i233.i.i, %i.ys ; 2 uses
  %i.yu = icmp ult i64 %i.yt, %i.ys
  %i.yv = call i64 @llvm.umin.i64(i64 %i.yt, i64 1152921504606846975)
  %i.yw = select i1 %i.yu, i64 1152921504606846975, i64 %i.yv ; 3 uses
  %.not.i.i.i.i234.i.i = icmp ne i64 %i.yw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i234.i.i)
  %i.yx = shl nuw nsw i64 %i.yw, 3
  %i.yy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yx) #31
          to label %.noexc239.i.i unwind label %.loopexit411.i.i, !noalias !787 ; 4 uses

.noexc239.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i.i
  %i.yz = getelementptr inbounds i8, ptr %i.yy, i64 %i.yq ; 2 uses
  store i64 %i.ym, ptr %i.yz, align 8, !tbaa !66, !noalias !787
  %i.za = icmp sgt i64 %i.yq, 0
  br i1 %i.za, label %bb.ep, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i

bb.ep:                                            ; preds = %.noexc239.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yy, ptr align 8 %.sroa.034.4.i, i64 %i.yq, i1 false), !noalias !787
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i: ; preds = %bb.ep, %.noexc239.i.i
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %.not.i17.i.i.i236.i.i = icmp eq ptr %.sroa.034.4.i, null
  br i1 %.not.i17.i.i.i236.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4.i, i64 noundef %i.yq) #30, !noalias !787
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i: ; preds = %bb.eq, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %i.yy, i64 %i.yw
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i": ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i, %bb.en, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread542.i.i", %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i, %bb.ei, %.thread389.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i, %bb.ec, %bb.ea, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i, %bb.do, %.critedge.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i, %bb.db, %._crit_edge433.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i, %bb.co, %._crit_edge.i.i, %bb.bw, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i"
  %.sroa.034.7.i = phi ptr [ %.sroa.034.4.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread542.i.i" ], [ %i.yy, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %.sroa.034.4.i, %bb.en ], [ %.sroa.034.4.i, %.thread389.i.i ], [ %i.yg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %.sroa.034.4.i, %bb.ei ], [ %.sroa.034.4.i, %bb.ea ], [ %i.xn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %.sroa.034.4.i, %bb.ec ], [ %.sroa.034.4.i, %.critedge.i.i ], [ %i.vn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %.sroa.034.4.i, %bb.do ], [ %.sroa.034.4.i, %._crit_edge433.i.i ], [ %i.tn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %.sroa.034.4.i, %bb.db ], [ %.sroa.034.4.i, %._crit_edge.i.i ], [ %i.rn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %.sroa.034.4.i, %bb.co ], [ %.sroa.034.6.i, %bb.bw ], [ %.sroa.034.5.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %.sroa.25.7.i = phi ptr [ %.sroa.25.4.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread542.i.i" ], [ %i.zb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %i.yn, %bb.en ], [ %.sroa.25.4.i, %.thread389.i.i ], [ %i.yj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %i.xv, %bb.ei ], [ %.sroa.25.4.i, %bb.ea ], [ %i.xq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %i.xc, %bb.ec ], [ %.sroa.25.4.i, %.critedge.i.i ], [ %i.vq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %i.vc, %bb.do ], [ %.sroa.25.4.i, %._crit_edge433.i.i ], [ %i.tq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %i.tc, %bb.db ], [ %.sroa.25.4.i, %._crit_edge.i.i ], [ %i.rq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %i.rc, %bb.co ], [ %.sroa.25.6.i, %bb.bw ], [ %.sroa.25.5.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %.sroa.51.7.i = phi ptr [ %.sroa.51.4.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread542.i.i" ], [ %i.zc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %.sroa.51.4.i, %bb.en ], [ %.sroa.51.4.i, %.thread389.i.i ], [ %i.yk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %.sroa.51.4.i, %bb.ei ], [ %.sroa.51.4.i, %bb.ea ], [ %i.xr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %.sroa.51.4.i, %bb.ec ], [ %.sroa.51.4.i, %.critedge.i.i ], [ %i.vr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %.sroa.51.4.i, %bb.do ], [ %.sroa.51.4.i, %._crit_edge433.i.i ], [ %i.tr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %.sroa.51.4.i, %bb.db ], [ %.sroa.51.4.i, %._crit_edge.i.i ], [ %i.rr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %.sroa.51.4.i, %bb.co ], [ %.sroa.51.6.i, %bb.bw ], [ %.sroa.51.5.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %.5350.i.i = phi i64 [ %.0346444.i.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread542.i.i" ], [ %i.yl, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %i.yl, %bb.en ], [ %.0346444.i.i, %.thread389.i.i ], [ %i.xt, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %i.xt, %bb.ei ], [ %.0346444.i.i, %bb.ea ], [ %i.xa, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %i.xa, %bb.ec ], [ %.0346444.i.i, %.critedge.i.i ], [ %.us-phi1749, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %.us-phi1749, %bb.do ], [ %.0346444.i.i, %._crit_edge433.i.i ], [ %.us-phi1748, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %.us-phi1748, %bb.db ], [ %.0346444.i.i, %._crit_edge.i.i ], [ %.us-phi1747, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %.us-phi1747, %bb.co ], [ %i.ob, %bb.bw ], [ %i.nb, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ]
  %.10.i.i = phi i64 [ %.0346444.i.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread542.i.i" ], [ %i.yl, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %i.yl, %bb.en ], [ %.0346444.i.i, %.thread389.i.i ], [ %i.xt, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %i.xt, %bb.ei ], [ %.0346444.i.i, %bb.ea ], [ %i.xa, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %i.xa, %bb.ec ], [ %.0346444.i.i, %.critedge.i.i ], [ %.us-phi1749, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %.us-phi1749, %bb.do ], [ %.0346444.i.i, %._crit_edge433.i.i ], [ %.us-phi1748, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %.us-phi1748, %bb.db ], [ %.0346444.i.i, %._crit_edge.i.i ], [ %.us-phi1747, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %.us-phi1747, %bb.co ], [ %i.ot, %bb.bw ], [ %i.nt, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %i.zd = icmp ult i64 %.10.i.i, %i.ly
  br i1 %i.zd, label %.lr.ph449.i.i, label %._crit_edge450.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp412.i.i, %.loopexit411.i.i, %bb.dy, %bb.dm, %bb.cz, %.loopexit.split-lp407.i.i, %.loopexit406.i.i, %bb.cm, %bb.cf, %.loopexit.split-lp402.i.i, %.loopexit401.i.i, %.loopexit.split-lp.i.i, %.loopexit.i.i, %bb.bf
  %.sroa.51.4221.i = phi ptr [ %.sroa.51.4.i, %bb.bf ], [ %.sroa.25.4.i, %.loopexit.split-lp.i.i ], [ %.sroa.25.4.i, %.loopexit.split-lp402.i.i ], [ %.sroa.51.4.i, %bb.dy ], [ %.sroa.51.4.i, %bb.cf ], [ %.sroa.51.4.i, %bb.dm ], [ %.sroa.51.4.i, %bb.cm ], [ %.sroa.51.4.i, %bb.cz ], [ %.sroa.25.4.i, %.loopexit.split-lp407.i.i ], [ %.sroa.25.4.i, %.loopexit.i.i ], [ %.sroa.25.4.i, %.loopexit401.i.i ], [ %.sroa.25.4.i, %.loopexit406.i.i ], [ %.sroa.25.4.i, %.loopexit411.i.i ], [ %.sroa.25.4.i, %.loopexit.split-lp412.i.i ] ; 2 uses
  %.pn112.pn.i.i = phi { ptr, i32 } [ %i.mm, %bb.bf ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %lpad.loopexit.split-lp404.i.i, %.loopexit.split-lp402.i.i ], [ %i.wf, %bb.dy ], [ %i.ph, %bb.cf ], [ %i.up, %bb.dm ], [ %i.qp, %bb.cm ], [ %i.sp, %bb.cz ], [ %lpad.loopexit.split-lp409.i.i, %.loopexit.split-lp407.i.i ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit403.i.i, %.loopexit401.i.i ], [ %lpad.loopexit408.i.i, %.loopexit406.i.i ], [ %lpad.loopexit413.i.i, %.loopexit411.i.i ], [ %lpad.loopexit.split-lp414.i.i, %.loopexit.split-lp412.i.i ] ; 2 uses
  %i.ze = load ptr, ptr %9, align 8, !tbaa !77, !noalias !787 ; 3 uses
  %.not.i.i.i241.i.i = icmp eq ptr %i.ze, null
  br i1 %.not.i.i.i241.i.i, label %bb.es, label %bb.er

bb.er:                                            ; preds = %.body.i.i
  %i.zf = load ptr, ptr %i.iw, align 8, !tbaa !79, !noalias !787
  %i.zg = ptrtoint ptr %i.zf to i64
  %i.zh = ptrtoint ptr %i.ze to i64
  %i.zi = sub i64 %i.zg, %i.zh
  call void @_ZdlPvm(ptr noundef nonnull %i.ze, i64 noundef %i.zi) #30, !noalias !787
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %.body.i.i, %bb.ax
  %.sroa.034.8.i = phi ptr [ %.sroa.034.4.i, %.body.i.i ], [ %.sroa.034.4.i, %bb.er ], [ %.sroa.034.0.i, %bb.ax ] ; 3 uses
  %.sroa.51.8.i = phi ptr [ %.sroa.51.4221.i, %.body.i.i ], [ %.sroa.51.4221.i, %bb.er ], [ %.sroa.51.0.i, %bb.ax ]
  %.pn112.pn.pn.i.i = phi { ptr, i32 } [ %.pn112.pn.i.i, %.body.i.i ], [ %.pn112.pn.i.i, %bb.er ], [ %i.lw, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !787
  %.not.i.i.i243.i.i = icmp eq ptr %.sroa.034.8.i, null
  br i1 %.not.i.i.i243.i.i, label %.body246, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.zj = ptrtoint ptr %.sroa.51.8.i to i64
  %i.zk = ptrtoint ptr %.sroa.034.8.i to i64
  %i.zl = sub i64 %i.zj, %i.zk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.8.i, i64 noundef %i.zl) #30, !noalias !787
  br label %.body246

bb.eu:                                            ; preds = %bb.aw, %._crit_edge456.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !787
  br label %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit

.loopexit745:                                     ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i.i
  %lpad.loopexit747 = landingpad { ptr, i32 }
          cleanup
  br label %.body246

.loopexit.split-lp746:                            ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp748 = landingpad { ptr, i32 }
          cleanup
  br label %.body246

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i: ; preds = %bb.at
  %bcmp.i14.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(115) %.val, ptr noundef nonnull dereferenceable(115) @.str.20, i64 115), !noalias !786
  %i.zm = icmp eq i32 %bcmp.i14.i, 0
  br i1 %i.zm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread.i, label %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i: ; preds = %bb.at
  %bcmp.i16.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(144) %.val, ptr noundef nonnull dereferenceable(144) @.str.21, i64 144), !noalias !786
  %i.zn = icmp eq i32 %bcmp.i16.i, 0
  br i1 %i.zn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread.i, label %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i
  %i.zo = ptrtoint ptr %.sroa.24.01769 to i64
  %i.zp = ptrtoint ptr %.sroa.0597.01768 to i64
  %i.zq = sub i64 %i.zo, %i.zp                    ; 3 uses
  %i.zr = icmp ugt i64 %i.zq, 9223372036854775800
  br i1 %i.zr, label %.noexc.i59.i, label %bb.ev

.noexc.i59.i:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #29
          to label %.noexc60.i.a unwind label %.loopexit.split-lp741, !noalias !786

.noexc60.i.a:                                     ; preds = %.noexc.i59.i
  unreachable

bb.ev:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread.i
  %.not662.i.i = icmp eq ptr %.sroa.24.01769, %.sroa.0597.01768 ; 2 uses
  br i1 %.not662.i.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i18.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i18.i: ; preds = %bb.ev
  %i.zs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zq) #31
          to label %.noexc61.i.a unwind label %.loopexit740, !noalias !786 ; 2 uses

.noexc61.i.a:                                     ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i18.i
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.zq
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i

_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i:        ; preds = %.noexc61.i.a, %bb.ev
  %.sroa.0.0.i = phi ptr [ null, %bb.ev ], [ %i.zs, %.noexc61.i.a ] ; 5 uses
  %.sroa.61.0.i = phi ptr [ null, %bb.ev ], [ %i.zt, %.noexc61.i.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !788
  invoke void @_ZN2cv3dnn22unicode_cpts_from_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %8, ptr noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %bb.ew unwind label %bb.ey, !noalias !788

bb.ew:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i
  br i1 %.not662.i.i, label %._crit_edge589.i.i, label %.lr.ph588.i.i

._crit_edge589.i.i:                               ; preds = %._crit_edge.i21.i, %bb.ew
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %bb.ew ], [ %.sroa.0.3.i, %._crit_edge.i21.i ]
  %.sroa.29.1.i = phi ptr [ %.sroa.0.0.i, %bb.ew ], [ %.sroa.29.3.i, %._crit_edge.i21.i ]
  %.sroa.61.1.i = phi ptr [ %.sroa.61.0.i, %bb.ew ], [ %.sroa.61.3.i, %._crit_edge.i21.i ]
  %i.zu = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788 ; 3 uses
  %.not.i.i.i.i22.i = icmp eq ptr %i.zu, null
  br i1 %.not.i.i.i.i22.i, label %bb.kh, label %bb.ex

bb.ex:                                            ; preds = %._crit_edge589.i.i
  %i.zv = load ptr, ptr %i.iv, align 8, !tbaa !79, !noalias !788
  %i.zw = ptrtoint ptr %i.zv to i64
  %i.zx = ptrtoint ptr %i.zu to i64
  %i.zy = sub i64 %i.zw, %i.zx
  call void @_ZdlPvm(ptr noundef nonnull %i.zu, i64 noundef %i.zy) #30, !noalias !788
  br label %bb.kh

bb.ey:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i
  %i.zz = landingpad { ptr, i32 }
          cleanup
  br label %bb.kf

.lr.ph588.i.i:                                    ; preds = %bb.ew, %._crit_edge.i21.i
  %.sroa.0.2.i = phi ptr [ %.sroa.0.3.i, %._crit_edge.i21.i ], [ %.sroa.0.0.i, %bb.ew ] ; 2 uses
  %.sroa.29.2.i = phi ptr [ %.sroa.29.3.i, %._crit_edge.i21.i ], [ %.sroa.0.0.i, %bb.ew ] ; 2 uses
  %.sroa.61.2.i = phi ptr [ %.sroa.61.3.i, %._crit_edge.i21.i ], [ %.sroa.61.0.i, %bb.ew ] ; 2 uses
  %.0111586.i.i = phi i64 [ %i.aab, %._crit_edge.i21.i ], [ 0, %bb.ew ] ; 11 uses
  %.sroa.0407.0585.i.i = phi ptr [ %i.aad, %._crit_edge.i21.i ], [ %.sroa.0597.01768, %bb.ew ] ; 2 uses
  %i.aaa = load i64, ptr %.sroa.0407.0585.i.i, align 8, !tbaa !66, !noalias !788
  %i.aab = add i64 %i.aaa, %.0111586.i.i          ; 23 uses
  %i.aac = icmp ult i64 %.0111586.i.i, %i.aab
  br i1 %i.aac, label %.lr.ph583.i.i, label %._crit_edge.i21.i

._crit_edge.i21.i:                                ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i", %.lr.ph588.i.i
  %.sroa.0.3.i = phi ptr [ %.sroa.0.2.i, %.lr.ph588.i.i ], [ %.sroa.0.11.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ] ; 2 uses
  %.sroa.29.3.i = phi ptr [ %.sroa.29.2.i, %.lr.ph588.i.i ], [ %.sroa.29.10.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ] ; 2 uses
  %.sroa.61.3.i = phi ptr [ %.sroa.61.2.i, %.lr.ph588.i.i ], [ %.sroa.61.11.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ] ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.sroa.0407.0585.i.i, i64 8 ; 2 uses
  %.not512.i.i = icmp eq ptr %i.aad, %.sroa.24.01769
  br i1 %.not512.i.i, label %._crit_edge589.i.i, label %.lr.ph588.i.i

.lr.ph583.i.i:                                    ; preds = %.lr.ph588.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"
  %.sroa.0.4.i = phi ptr [ %.sroa.0.11.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ], [ %.sroa.0.2.i, %.lr.ph588.i.i ] ; 66 uses
  %.sroa.29.4.i = phi ptr [ %.sroa.29.10.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ], [ %.sroa.29.2.i, %.lr.ph588.i.i ] ; 52 uses
  %.sroa.61.4.i = phi ptr [ %.sroa.61.11.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ], [ %.sroa.61.2.i, %.lr.ph588.i.i ] ; 32 uses
  %.0107582.i.i = phi i64 [ %.11.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ], [ %.0111586.i.i, %.lr.ph588.i.i ] ; 26 uses
  %.0454581.i.i = phi i64 [ %.7460.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ], [ %.0111586.i.i, %.lr.ph588.i.i ] ; 30 uses
  %.not.i.i23.i = icmp ule i64 %.0111586.i.i, %.0107582.i.i ; 3 uses
  br i1 %.not.i.i23.i, label %bb.ez, label %.thread496.i.i

bb.ez:                                            ; preds = %.lr.ph583.i.i
  %i.aae = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.aae, i64 %.0107582.i.i
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !80, !noalias !788 ; 6 uses
  %i.aah = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !788
  %i.aai = icmp eq i8 %i.aah, 0
  br i1 %i.aai, label %bb.fa, label %bb.fc, !prof !82

bb.fa:                                            ; preds = %bb.ez
  %i.aaj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  %.not.i331.i.i = icmp eq i32 %i.aaj, 0
  br i1 %.not.i331.i.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !788
  %i.aak = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %bb.ez
  %i.aal = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !788
  %i.aam = icmp eq i8 %i.aal, 0
  br i1 %i.aam, label %bb.fd, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i", !prof !82

bb.fd:                                            ; preds = %bb.fc
  %i.aan = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  %.not3.i.i58.i = icmp eq i32 %i.aan, 0
  br i1 %.not3.i.i58.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i", label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.ff unwind label %bb.fg, !noalias !788

bb.ff:                                            ; preds = %bb.fe
  %i.aao = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"

bb.fg:                                            ; preds = %bb.fe
  %i.aap = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %.body.i24.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i": ; preds = %bb.ff, %bb.fd, %bb.fc
  %i.aaq = zext i32 %i.aag to i64                 ; 2 uses
  %i.aar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !788
  %i.aas = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !788 ; 2 uses
  %i.aat = ptrtoint ptr %i.aar to i64
  %i.aau = ptrtoint ptr %i.aas to i64
  %i.aav = sub i64 %i.aat, %i.aau
  %i.aaw = ashr exact i64 %i.aav, 1
  %i.aax = icmp ugt i64 %i.aaw, %i.aaq
  %i.aay = getelementptr inbounds nuw [2 x i8], ptr %i.aas, i64 %i.aaq
  %spec.select.i330.i.i = select i1 %i.aax, ptr %i.aay, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i.i46.i = load i16, ptr %spec.select.i330.i.i, align 2, !tbaa !72, !noalias !788 ; 6 uses
  switch i32 %i.aag, label %.thread477.i.i [
    i32 39, label %bb.fh
    i32 13, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"
    i32 10, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"
  ]

bb.fh:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"
  %i.aaz = add nuw i64 %.0107582.i.i, 1           ; 2 uses
  %i.aba = icmp ult i64 %i.aaz, %i.aab
  br i1 %i.aba, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i", label %.thread477.i.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i": ; preds = %bb.fh
  %i.abb = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788 ; 2 uses
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %i.aaz
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !80, !noalias !788 ; 4 uses
  %i.abe = load ptr, ptr @_ZN2cv3dnn21unicode_map_lowercaseE, align 8, !tbaa !98, !noalias !788 ; 5 uses
  %i.abf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv3dnn21unicode_map_lowercaseE, i64 8), align 8, !tbaa !99, !noalias !788 ; 4 uses
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %i.abf ; 2 uses
  %i.abh = icmp sgt i64 %i.abf, 0                 ; 2 uses
  br i1 %i.abh, label %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, label %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i"

_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i: ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i", %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ], [ %i.abf, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i" ] ; 2 uses
  %.0114.i.i.i.i.i = phi ptr [ %.112.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ], [ %i.abe, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i" ] ; 2 uses
  %i.abi = lshr i64 %.05.i.i.i.i.i, 1             ; 3 uses
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %.0114.i.i.i.i.i, i64 %i.abi ; 2 uses
  %.val.i.i.i.i.i = load i32, ptr %i.abj, align 4, !tbaa !121, !noalias !788
  %i.abk = icmp ult i32 %.val.i.i.i.i.i, %i.abd   ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  %i.abm = xor i64 %i.abi, -1
  %i.abn = add nsw i64 %.05.i.i.i.i.i, %i.abm
  %.112.i.i.i.i.i = select i1 %i.abk, ptr %i.abl, ptr %.0114.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i = select i1 %i.abk, i64 %i.abn, i64 %i.abi ; 2 uses
  %i.abo = icmp sgt i64 %.1.i.i.i.i.i, 0
  br i1 %i.abo, label %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, label %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i", !llvm.loop !2

"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i": ; preds = %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i"
  %.011.lcssa.i.i.i.i.i = phi ptr [ %i.abe, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i" ], [ %.112.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ] ; 3 uses
  %.not.i175.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i, %i.abg
  br i1 %.not.i175.i.i, label %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i, label %bb.fi

bb.fi:                                            ; preds = %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i"
  %i.abp = load i32, ptr %.011.lcssa.i.i.i.i.i, align 4, !tbaa !121, !noalias !788
  %i.abq = icmp eq i32 %i.abp, %i.abd
  br i1 %i.abq, label %.then.i.i, label %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i

.then.i.i:                                        ; preds = %bb.fi
  %i.abr = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i, i64 4
  %.0.pre.i.then.val.i.i = load i32, ptr %i.abr, align 4, !tbaa !80, !noalias !788
  br label %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i

_ZN2cv3dnn15unicode_tolowerEj.exit.i.i:           ; preds = %.then.i.i, %bb.fi, %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i"
  %.0.i.i.i = phi i32 [ %i.abd, %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i" ], [ %.0.pre.i.then.val.i.i, %.then.i.i ], [ %i.abd, %bb.fi ] ; 3 uses
  %i.abs = add nuw i64 %.0107582.i.i, 2           ; 5 uses
  switch i32 %.0.i.i.i, label %bb.fq [
    i32 116, label %bb.fj
    i32 115, label %bb.fj
    i32 109, label %bb.fj
    i32 100, label %bb.fj
  ]

bb.fj:                                            ; preds = %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i, %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i, %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i, %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i
  %i.abt = sub i64 %i.abs, %.0454581.i.i          ; 3 uses
  %.not.i176.i48.i = icmp eq i64 %i.abs, %.0454581.i.i
  br i1 %.not.i176.i48.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i", label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %.not.i.i.i49.i = icmp eq ptr %.sroa.29.4.i, %.sroa.61.4.i
  br i1 %.not.i.i.i49.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  store i64 %i.abt, ptr %.sroa.29.4.i, align 8, !tbaa !66, !noalias !788
  %i.abu = getelementptr inbounds nuw i8, ptr %.sroa.29.4.i, i64 8
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i"

bb.fm:                                            ; preds = %bb.fk
  %i.abv = ptrtoint ptr %.sroa.29.4.i to i64
  %i.abw = ptrtoint ptr %.sroa.0.4.i to i64
  %i.abx = sub i64 %i.abv, %i.abw                 ; 6 uses
  %i.aby = icmp eq i64 %i.abx, 9223372036854775800
  br i1 %i.aby, label %bb.fn, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i50.i

bb.fn:                                            ; preds = %bb.fm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
          to label %.noexc177.i.i unwind label %.loopexit.split-lp516.i.i, !noalias !788

.noexc177.i.i:                                    ; preds = %bb.fn
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i50.i: ; preds = %bb.fm
  %i.abz = ashr exact i64 %i.abx, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i51.i = call i64 @llvm.umax.i64(i64 %i.abz, i64 1)
  %i.aca = add nsw i64 %.sroa.speculated.i.i.i.i.i51.i, %i.abz ; 2 uses
  %i.acb = icmp ult i64 %i.aca, %i.abz
  %i.acc = call i64 @llvm.umin.i64(i64 %i.aca, i64 1152921504606846975)
  %i.acd = select i1 %i.acb, i64 1152921504606846975, i64 %i.acc ; 3 uses
  %.not.i.i.i.i.i52.i = icmp ne i64 %i.acd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i52.i)
  %i.ace = shl nuw nsw i64 %i.acd, 3
  %i.acf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ace) #31
          to label %.noexc178.i.i unwind label %.loopexit515.i.i, !noalias !788 ; 4 uses

.noexc178.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i50.i
  %i.acg = getelementptr inbounds i8, ptr %i.acf, i64 %i.abx ; 2 uses
  store i64 %i.abt, ptr %i.acg, align 8, !tbaa !66, !noalias !788
  %i.ach = icmp sgt i64 %i.abx, 0
  br i1 %i.ach, label %bb.fo, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i53.i

bb.fo:                                            ; preds = %.noexc178.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.acf, ptr align 8 %.sroa.0.4.i, i64 %i.abx, i1 false), !noalias !788
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i53.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i53.i: ; preds = %bb.fo, %.noexc178.i.i
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  %.not.i17.i.i.i.i54.i = icmp eq ptr %.sroa.0.4.i, null
  br i1 %.not.i17.i.i.i.i54.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i55.i, label %bb.fp

bb.fp:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i53.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4.i, i64 noundef %i.abx) #30, !noalias !788
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i55.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i55.i: ; preds = %bb.fp, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i53.i
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.acf, i64 %i.acd
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i": ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i55.i, %bb.fl, %bb.fj
  %.sroa.0.5.i = phi ptr [ %.sroa.0.4.i, %bb.fj ], [ %i.acf, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i55.i ], [ %.sroa.0.4.i, %bb.fl ]
  %.sroa.29.5.i = phi ptr [ %.sroa.29.4.i, %bb.fj ], [ %i.aci, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i55.i ], [ %i.abu, %bb.fl ]
  %.sroa.61.5.i = phi ptr [ %.sroa.61.4.i, %bb.fj ], [ %i.acj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i55.i ], [ %.sroa.61.4.i, %bb.fl ]
  %i.ack = add i64 %i.abt, %.0107582.i.i
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i", !llvm.loop !751

.loopexit525.i.i:                                 ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i217.i.i
  %lpad.loopexit527.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i24.i

.loopexit.split-lp526.i.i:                        ; preds = %bb.gu
  %lpad.loopexit.split-lp528.i.i = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZN2cv3dnn19unicode_regex_splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE:bb.a
  %.112.i.i.i193.i.i = select i1 %i.acq, ptr %i.acr, ptr %.0114.i.i.i189.i.i ; 2 uses
  %.1.i.i.i194.i.i = select i1 %i.acq, i64 %i.act, i64 %i.aco ; 2 uses
  %i.acu = icmp sgt i64 %.1.i.i.i194.i.i, 0
  br i1 %i.acu, label %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i, label %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i", !llvm.loop !2

"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i": ; preds = %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i"
  %.011.lcssa.i.i.i182.i.i = phi ptr [ %i.abe, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i" ], [ %.112.i.i.i193.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i ] ; 3 uses
  %.not.i183.i.i = icmp eq ptr %.011.lcssa.i.i.i182.i.i, %i.abg
  br i1 %.not.i183.i.i, label %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i, label %bb.fr

bb.fr:                                            ; preds = %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i"
  %i.acv = load i32, ptr %.011.lcssa.i.i.i182.i.i, align 4, !tbaa !121, !noalias !788
  %i.acw = icmp eq i32 %i.acv, %i.acn
  br i1 %i.acw, label %.then411.i.i, label %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i

.then411.i.i:                                     ; preds = %bb.fr
  %i.acx = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i182.i.i, i64 4
  %.0.pre.i185.then.val.i.i = load i32, ptr %i.acx, align 4, !tbaa !80, !noalias !788
  br label %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i

_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i:        ; preds = %.then411.i.i, %bb.fr, %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i"
  %.0.i186.i.i = phi i32 [ %i.acn, %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i" ], [ %.0.pre.i185.then.val.i.i, %.then411.i.i ], [ %i.acn, %bb.fr ] ; 2 uses
  %i.acy = icmp eq i32 %.0.i186.i.i, 101
  %i.acz = and i32 %.0.i.i.i, -5
  %or.cond8513.i.i = icmp eq i32 %i.acz, 114
  %or.cond.i56.i = and i1 %or.cond8513.i.i, %i.acy
  br i1 %or.cond.i56.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i
  %i.ada = icmp eq i32 %.0.i.i.i, 108
  %i.adb = icmp eq i32 %.0.i186.i.i, 108
  %or.cond12.i57.i = and i1 %i.ada, %i.adb
  br i1 %or.cond12.i57.i, label %bb.ft, label %.thread477.i.i

bb.ft:                                            ; preds = %bb.fs, %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i
  %i.adc = add nuw i64 %.0107582.i.i, 3           ; 3 uses
  %i.add = sub i64 %i.adc, %.0454581.i.i          ; 3 uses
  %.not.i196.i.i = icmp eq i64 %i.adc, %.0454581.i.i
  br i1 %.not.i196.i.i, label %bb.ga, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %.not.i.i197.i.i = icmp eq ptr %.sroa.29.4.i, %.sroa.61.4.i
  br i1 %.not.i.i197.i.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  store i64 %i.add, ptr %.sroa.29.4.i, align 8, !tbaa !66, !noalias !788
  %i.ade = getelementptr inbounds nuw i8, ptr %.sroa.29.4.i, i64 8
  br label %bb.ga

bb.fw:                                            ; preds = %bb.fu
  %i.adf = ptrtoint ptr %.sroa.29.4.i to i64
  %i.adg = ptrtoint ptr %.sroa.0.4.i to i64
  %i.adh = sub i64 %i.adf, %i.adg                 ; 6 uses
  %i.adi = icmp eq i64 %i.adh, 9223372036854775800
  br i1 %i.adi, label %bb.fx, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i198.i.i

bb.fx:                                            ; preds = %bb.fw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
          to label %.noexc204.i.i unwind label %.loopexit.split-lp521.i.i, !noalias !788

.noexc204.i.i:                                    ; preds = %bb.fx
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i198.i.i: ; preds = %bb.fw
  %i.adj = ashr exact i64 %i.adh, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i199.i.i = call i64 @llvm.umax.i64(i64 %i.adj, i64 1)
  %i.adk = add nsw i64 %.sroa.speculated.i.i.i.i199.i.i, %i.adj ; 2 uses
  %i.adl = icmp ult i64 %i.adk, %i.adj
  %i.adm = call i64 @llvm.umin.i64(i64 %i.adk, i64 1152921504606846975)
  %i.adn = select i1 %i.adl, i64 1152921504606846975, i64 %i.adm ; 3 uses
  %.not.i.i.i.i200.i.i = icmp ne i64 %i.adn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i200.i.i)
  %i.ado = shl nuw nsw i64 %i.adn, 3
  %i.adp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ado) #31
          to label %.noexc205.i.i unwind label %.loopexit520.i.i, !noalias !788 ; 4 uses

.noexc205.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i198.i.i
  %i.adq = getelementptr inbounds i8, ptr %i.adp, i64 %i.adh ; 2 uses
  store i64 %i.add, ptr %i.adq, align 8, !tbaa !66, !noalias !788
  %i.adr = icmp sgt i64 %i.adh, 0
  br i1 %i.adr, label %bb.fy, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i

bb.fy:                                            ; preds = %.noexc205.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.adp, ptr align 8 %.sroa.0.4.i, i64 %i.adh, i1 false), !noalias !788
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i: ; preds = %bb.fy, %.noexc205.i.i
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  %.not.i17.i.i.i202.i.i = icmp eq ptr %.sroa.0.4.i, null
  br i1 %.not.i17.i.i.i202.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i, label %bb.fz

bb.fz:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4.i, i64 noundef %i.adh) #30, !noalias !788
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i: ; preds = %bb.fz, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.adp, i64 %i.adn
  br label %bb.ga

.loopexit520.i.i:                                 ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i198.i.i
  %lpad.loopexit522.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i24.i

.loopexit.split-lp521.i.i:                        ; preds = %bb.fx
  %lpad.loopexit.split-lp523.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i24.i

bb.ga:                                            ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i, %bb.fv, %bb.ft
  %.sroa.0.6.i = phi ptr [ %.sroa.0.4.i, %bb.ft ], [ %i.adp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i ], [ %.sroa.0.4.i, %bb.fv ]
  %.sroa.29.6.i = phi ptr [ %.sroa.29.4.i, %bb.ft ], [ %i.ads, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i ], [ %i.ade, %bb.fv ]
  %.sroa.61.6.i = phi ptr [ %.sroa.61.4.i, %bb.ft ], [ %i.adt, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i ], [ %.sroa.61.4.i, %bb.fv ]
  %i.adu = add i64 %i.add, %.0107582.i.i
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

.thread477.i.i:                                   ; preds = %bb.fs, %bb.fq, %bb.fh, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"
  %i.adv = and i16 %.sroa.0.0.copyload.i.i46.i, 2
  %.not.i47.i = icmp eq i16 %i.adv, 0
  br i1 %.not.i47.i, label %bb.gb, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"

bb.gb:                                            ; preds = %.thread477.i.i
  %i.adw = and i16 %.sroa.0.0.copyload.i.i46.i, 4
  %.not130.i.i = icmp eq i16 %i.adw, 0
  br i1 %.not130.i.i, label %.thread496.i.i, label %..critedge_crit_edge.i.i

..critedge_crit_edge.i.i:                         ; preds = %bb.gb
  %.pre599.i.i = add nuw i64 %.0107582.i.i, 1
  br label %.critedge.i45.i

.thread496.i.i:                                   ; preds = %bb.gb, %.lr.ph583.i.i
  %i.adx = phi i32 [ %i.aag, %bb.gb ], [ -1, %.lr.ph583.i.i ] ; 2 uses
  %.sroa.0.0.i462479495499.i.i = phi i16 [ %.sroa.0.0.copyload.i.i46.i, %bb.gb ], [ 0, %.lr.ph583.i.i ] ; 2 uses
  %i.ady = add nuw i64 %.0107582.i.i, 1           ; 4 uses
  %.not.i207.i.i = icmp ule i64 %.0111586.i.i, %i.ady
  %i.adz = icmp ult i64 %i.ady, %i.aab
  %or.cond500.i.i = and i1 %.not.i207.i.i, %i.adz
  br i1 %or.cond500.i.i, label %bb.gc, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"

bb.gc:                                            ; preds = %.thread496.i.i
  %i.aea = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.aea, i64 %i.ady
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !80, !noalias !788
  %i.aed = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !788
  %i.aee = icmp eq i8 %i.aed, 0
  br i1 %i.aee, label %bb.gd, label %bb.gf, !prof !82

bb.gd:                                            ; preds = %bb.gc
  %i.aef = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  %.not.i513 = icmp eq i32 %i.aef, 0
  br i1 %.not.i513, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !788
  %i.aeg = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd, %bb.gc
  %i.aeh = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !788
  %i.aei = icmp eq i8 %i.aeh, 0
  br i1 %i.aei, label %bb.gg, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i", !prof !82

bb.gg:                                            ; preds = %bb.gf
  %i.aej = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  %.not3.i512 = icmp eq i32 %i.aej, 0
  br i1 %.not3.i512, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i", label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.gi unwind label %bb.gj, !noalias !788

bb.gi:                                            ; preds = %bb.gh
  %i.aek = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i"

bb.gj:                                            ; preds = %bb.gh
  %i.ael = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %.body.i24.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i": ; preds = %bb.gi, %bb.gg, %bb.gf
  %i.aem = zext i32 %i.aec to i64                 ; 2 uses
  %i.aen = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !788
  %i.aeo = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !788 ; 2 uses
  %i.aep = ptrtoint ptr %i.aen to i64
  %i.aeq = ptrtoint ptr %i.aeo to i64
  %i.aer = sub i64 %i.aep, %i.aeq
  %i.aes = ashr exact i64 %i.aer, 1
  %i.aet = icmp ugt i64 %i.aes, %i.aem
  %i.aeu = getelementptr inbounds nuw [2 x i8], ptr %i.aeo, i64 %i.aem
  %spec.select.i510 = select i1 %i.aet, ptr %i.aeu, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i511 = load i16, ptr %spec.select.i510, align 2, !tbaa !72, !noalias !788
  %i.aev = and i16 %.sroa.0.0.copyload.i511, 4
  %.not131.i.i = icmp eq i16 %i.aev, 0
  br i1 %.not131.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i", label %.critedge.i45.i

.critedge.i45.i:                                  ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i", %..critedge_crit_edge.i.i
  %.pre-phi2580 = phi i64 [ %.pre599.i.i, %..critedge_crit_edge.i.i ], [ %i.ady, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i" ] ; 2 uses
  %.not.i211.i.i = icmp uge i64 %.pre-phi2580, %.0111586.i.i
  %.not.i211.i.fr.i = freeze i1 %.not.i211.i.i
  br i1 %.not.i211.i.fr.i, label %.critedge.i45.split.preheader.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i"

.critedge.i45.split.preheader.i:                  ; preds = %.critedge.i45.i
  %28 = add nuw i64 %.0107582.i.i, 1
  %umax.i = call i64 @llvm.umax.i64(i64 %i.aab, i64 %28) ; 2 uses
  %.5.i.i4447 = add i64 %.0107582.i.i, 1          ; 2 uses
  %i.aew = icmp ult i64 %.5.i.i4447, %i.aab
  br i1 %i.aew, label %.lr.ph4449, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i"

.critedge.i45.split.i:                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i"
  %.5.i.i = add i64 %.5.i.i4448, 1                ; 2 uses
  %i.aex = icmp ult i64 %.5.i.i, %i.aab
  br i1 %i.aex, label %.lr.ph4449, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i", !llvm.loop !752

.lr.ph4449:                                       ; preds = %.critedge.i45.split.preheader.i, %.critedge.i45.split.i
  %.5.i.i4448 = phi i64 [ %.5.i.i, %.critedge.i45.split.i ], [ %.5.i.i4447, %.critedge.i45.split.preheader.i ] ; 3 uses
  %i.aey = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.aey, i64 %.5.i.i4448
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !80, !noalias !788
  %i.afb = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !788
  %i.afc = icmp eq i8 %i.afb, 0
  br i1 %i.afc, label %bb.gk, label %bb.gm, !prof !82

bb.gk:                                            ; preds = %.lr.ph4449
  %i.afd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  %.not.i335.i.i = icmp eq i32 %i.afd, 0
  br i1 %.not.i335.i.i, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !788
  %i.afe = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk, %.lr.ph4449
  %i.aff = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !788
  %i.afg = icmp eq i8 %i.aff, 0
  br i1 %i.afg, label %bb.gn, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i", !prof !82

bb.gn:                                            ; preds = %bb.gm
  %i.afh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  %.not3.i334.i.i = icmp eq i32 %i.afh, 0
  br i1 %.not3.i334.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i", label %bb.go

bb.go:                                            ; preds = %bb.gn
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.gp unwind label %bb.gq, !noalias !788

bb.gp:                                            ; preds = %bb.go
  %i.afi = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i"

bb.gq:                                            ; preds = %bb.go
  %i.afj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %.body.i24.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i": ; preds = %bb.gp, %bb.gn, %bb.gm
  %i.afk = zext i32 %i.afa to i64                 ; 2 uses
  %i.afl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !788
  %i.afm = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !788 ; 2 uses
  %i.afn = ptrtoint ptr %i.afl to i64
  %i.afo = ptrtoint ptr %i.afm to i64
  %i.afp = sub i64 %i.afn, %i.afo
  %i.afq = ashr exact i64 %i.afp, 1
  %i.afr = icmp ugt i64 %i.afq, %i.afk
  %i.afs = getelementptr inbounds nuw [2 x i8], ptr %i.afm, i64 %i.afk
  %spec.select.i332.i.i = select i1 %i.afr, ptr %i.afs, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i333.i.i = load i16, ptr %spec.select.i332.i.i, align 2, !tbaa !72, !noalias !788
  %i.aft = and i16 %.sroa.0.0.copyload.i333.i.i, 4
  %.not132.i.i = icmp eq i16 %i.aft, 0
  br i1 %.not132.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i._ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i.loopexit_crit_edge", label %.critedge.i45.split.i, !llvm.loop !752

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i._ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i.loopexit_crit_edge": ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i"
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i", !llvm.loop !752

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i": ; preds = %.critedge.i45.split.i, %.critedge.i45.split.preheader.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i._ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i.loopexit_crit_edge", %.critedge.i45.i
  %.us-phi.i = phi i64 [ %.pre-phi2580, %.critedge.i45.i ], [ %.5.i.i4448, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i._ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i.loopexit_crit_edge" ], [ %umax.i, %.critedge.i45.split.preheader.i ], [ %umax.i, %.critedge.i45.split.i ] ; 6 uses
  %i.afu = sub i64 %.us-phi.i, %.0454581.i.i      ; 2 uses
  %.not.i215.i.i = icmp eq i64 %.us-phi.i, %.0454581.i.i
  br i1 %.not.i215.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i", label %bb.gr

bb.gr:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i"
  %.not.i.i216.i.i = icmp eq ptr %.sroa.29.4.i, %.sroa.61.4.i
  br i1 %.not.i.i216.i.i, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  store i64 %i.afu, ptr %.sroa.29.4.i, align 8, !tbaa !66, !noalias !788
  %i.afv = getelementptr inbounds nuw i8, ptr %.sroa.29.4.i, i64 8
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

bb.gt:                                            ; preds = %bb.gr
  %i.afw = ptrtoint ptr %.sroa.29.4.i to i64
  %i.afx = ptrtoint ptr %.sroa.0.4.i to i64
  %i.afy = sub i64 %i.afw, %i.afx                 ; 6 uses
  %i.afz = icmp eq i64 %i.afy, 9223372036854775800
  br i1 %i.afz, label %bb.gu, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i217.i.i

bb.gu:                                            ; preds = %bb.gt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
          to label %.noexc223.i.i unwind label %.loopexit.split-lp526.i.i, !noalias !788

.noexc223.i.i:                                    ; preds = %bb.gu
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i217.i.i: ; preds = %bb.gt
  %i.aga = ashr exact i64 %i.afy, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i218.i.i = call i64 @llvm.umax.i64(i64 %i.aga, i64 1)
  %i.agb = add nsw i64 %.sroa.speculated.i.i.i.i218.i.i, %i.aga ; 2 uses
  %i.agc = icmp ult i64 %i.agb, %i.aga
  %i.agd = call i64 @llvm.umin.i64(i64 %i.agb, i64 1152921504606846975)
  %i.age = select i1 %i.agc, i64 1152921504606846975, i64 %i.agd ; 3 uses
  %.not.i.i.i.i219.i.i = icmp ne i64 %i.age, 0
  call void @llvm.assume(i1 %.not.i.i.i.i219.i.i)
  %i.agf = shl nuw nsw i64 %i.age, 3
  %i.agg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agf) #31
          to label %.noexc224.i.i unwind label %.loopexit525.i.i, !noalias !788 ; 4 uses

.noexc224.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i217.i.i
  %i.agh = getelementptr inbounds i8, ptr %i.agg, i64 %i.afy ; 2 uses
  store i64 %i.afu, ptr %i.agh, align 8, !tbaa !66, !noalias !788
  %i.agi = icmp sgt i64 %i.afy, 0
  br i1 %i.agi, label %bb.gv, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i220.i.i

bb.gv:                                            ; preds = %.noexc224.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.agg, ptr align 8 %.sroa.0.4.i, i64 %i.afy, i1 false), !noalias !788
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i220.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i220.i.i: ; preds = %bb.gv, %.noexc224.i.i
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %.not.i17.i.i.i221.i.i = icmp eq ptr %.sroa.0.4.i, null
  br i1 %.not.i17.i.i.i221.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i222.i.i, label %bb.gw

bb.gw:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i220.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4.i, i64 noundef %i.afy) #30, !noalias !788
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i222.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i222.i.i: ; preds = %bb.gw, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i220.i.i
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %i.agg, i64 %i.age
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i": ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i", %.thread496.i.i, %.thread477.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i", %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"
  %i.agl = phi i32 [ %i.aag, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i" ], [ %i.aag, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i" ], [ %i.adx, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i" ], [ %i.aag, %.thread477.i.i ], [ %i.adx, %.thread496.i.i ]
  %.sroa.0.0.i462480.i.i = phi i16 [ %.sroa.0.0.copyload.i.i46.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i" ], [ %.sroa.0.0.copyload.i.i46.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i" ], [ %.sroa.0.0.i462479495499.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i" ], [ %.sroa.0.0.copyload.i.i46.i, %.thread477.i.i ], [ %.sroa.0.0.i462479495499.i.i, %.thread496.i.i ] ; 3 uses
  %i.agm = and i16 %.sroa.0.0.i462480.i.i, 2
  %.not133.i.i = icmp eq i16 %i.agm, 0
  br i1 %.not133.i.i, label %bb.hq, label %.preheader514.i.i

.preheader514.i.i:                                ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"
  %i.agn = icmp ult i64 %.0107582.i.i, %i.aab
  %or.cond502555.i.i = and i1 %.not.i.i23.i, %i.agn
  br i1 %or.cond502555.i.i, label %.lr.ph.i28.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.thread.i.i"

.lr.ph.i28.i:                                     ; preds = %.preheader514.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i"
  %.sroa.0.7.i = phi ptr [ %.sroa.0.8.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ], [ %.sroa.0.4.i, %.preheader514.i.i ] ; 11 uses
  %.sroa.29.7.i = phi ptr [ %.sroa.29.8.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ], [ %.sroa.29.4.i, %.preheader514.i.i ] ; 9 uses
  %.sroa.61.7.i = phi ptr [ %.sroa.61.8.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ], [ %.sroa.61.4.i, %.preheader514.i.i ] ; 6 uses
  %.0105558.i.i = phi i64 [ %.1106.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ], [ %.0107582.i.i, %.preheader514.i.i ] ; 2 uses
  %.6557.i.i = phi i64 [ %i.ahk, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ], [ %.0107582.i.i, %.preheader514.i.i ] ; 3 uses
  %.4457556.i.i = phi i64 [ %.5458.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ], [ %.0454581.i.i, %.preheader514.i.i ] ; 6 uses
  %i.ago = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.ago, i64 %.6557.i.i
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !80, !noalias !788
  %i.agr = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !788
  %i.ags = icmp eq i8 %i.agr, 0
  br i1 %i.ags, label %bb.gx, label %bb.gz, !prof !82

bb.gx:                                            ; preds = %.lr.ph.i28.i
  %i.agt = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  %.not.i342.i.i = icmp eq i32 %i.agt, 0
  br i1 %.not.i342.i.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !788
  %i.agu = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx, %.lr.ph.i28.i
  %i.agv = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !788
  %i.agw = icmp eq i8 %i.agv, 0
  br i1 %i.agw, label %bb.ha, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i", !prof !82

bb.ha:                                            ; preds = %bb.gz
  %i.agx = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  %.not3.i341.i.i = icmp eq i32 %i.agx, 0
  br i1 %.not3.i341.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i", label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.hc unwind label %bb.hd, !noalias !788

bb.hc:                                            ; preds = %bb.hb
  %i.agy = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i"

bb.hd:                                            ; preds = %bb.hb
  %i.agz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %.body.i24.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i": ; preds = %bb.hc, %bb.ha, %bb.gz
  %i.aha = zext i32 %i.agq to i64                 ; 2 uses
  %i.ahb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !788
  %i.ahc = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !788 ; 2 uses
  %i.ahd = ptrtoint ptr %i.ahb to i64
  %i.ahe = ptrtoint ptr %i.ahc to i64
  %i.ahf = sub i64 %i.ahd, %i.ahe
  %i.ahg = ashr exact i64 %i.ahf, 1
  %i.ahh = icmp ugt i64 %i.ahg, %i.aha
  %i.ahi = getelementptr inbounds nuw [2 x i8], ptr %i.ahc, i64 %i.aha
  %spec.select.i339.i.i = select i1 %i.ahh, ptr %i.ahi, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i340.i.i = load i16, ptr %spec.select.i339.i.i, align 2, !tbaa !72, !noalias !788
  %i.ahj = and i16 %.sroa.0.0.copyload.i340.i.i, 2
  %.not145.i.i = icmp eq i16 %i.ahj, 0
  br i1 %.not145.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.thread.i.i", label %bb.he

bb.he:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i"
  %i.ahk = add nuw i64 %.6557.i.i, 1              ; 9 uses
  %i.ahl = sub i64 %i.ahk, %.0105558.i.i
  %i.ahm = icmp ugt i64 %i.ahl, 2
  br i1 %i.ahm, label %bb.hf, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i"

bb.hf:                                            ; preds = %bb.he
  %i.ahn = sub i64 %i.ahk, %.4457556.i.i          ; 2 uses
  %.not.i230.i29.i = icmp eq i64 %i.ahk, %.4457556.i.i
  br i1 %.not.i230.i29.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i", label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %.not.i.i231.i30.i = icmp eq ptr %.sroa.29.7.i, %.sroa.61.7.i
  br i1 %.not.i.i231.i30.i, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  store i64 %i.ahn, ptr %.sroa.29.7.i, align 8, !tbaa !66, !noalias !788
  %i.aho = getelementptr inbounds nuw i8, ptr %.sroa.29.7.i, i64 8
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i"

bb.hi:                                            ; preds = %bb.hg
  %i.ahp = ptrtoint ptr %.sroa.29.7.i to i64
  %i.ahq = ptrtoint ptr %.sroa.0.7.i to i64
  %i.ahr = sub i64 %i.ahp, %i.ahq                 ; 6 uses
  %i.ahs = icmp eq i64 %i.ahr, 9223372036854775800
  br i1 %i.ahs, label %.invoke.i25.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i31.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i31.i: ; preds = %bb.hi
  %i.aht = ashr exact i64 %i.ahr, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i233.i32.i = call i64 @llvm.umax.i64(i64 %i.aht, i64 1)
  %i.ahu = add nsw i64 %.sroa.speculated.i.i.i.i233.i32.i, %i.aht ; 2 uses
  %i.ahv = icmp ult i64 %i.ahu, %i.aht
  %i.ahw = call i64 @llvm.umin.i64(i64 %i.ahu, i64 1152921504606846975)
  %i.ahx = select i1 %i.ahv, i64 1152921504606846975, i64 %i.ahw ; 3 uses
  %.not.i.i.i.i234.i33.i = icmp ne i64 %i.ahx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i234.i33.i)
  %i.ahy = shl nuw nsw i64 %i.ahx, 3
  %i.ahz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahy) #31
          to label %.noexc239.i36.i unwind label %.loopexit.i34.i, !noalias !788 ; 4 uses

.noexc239.i36.i:                                  ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i31.i
  %i.aia = getelementptr inbounds i8, ptr %i.ahz, i64 %i.ahr ; 2 uses
  store i64 %i.ahn, ptr %i.aia, align 8, !tbaa !66, !noalias !788
  %i.aib = icmp sgt i64 %i.ahr, 0
  br i1 %i.aib, label %bb.hj, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i37.i

bb.hj:                                            ; preds = %.noexc239.i36.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ahz, ptr align 8 %.sroa.0.7.i, i64 %i.ahr, i1 false), !noalias !788
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i37.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i37.i: ; preds = %bb.hj, %.noexc239.i36.i
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aia, i64 8
  %.not.i17.i.i.i236.i38.i = icmp eq ptr %.sroa.0.7.i, null
  br i1 %.not.i17.i.i.i236.i38.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i39.i, label %bb.hk

bb.hk:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i37.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.7.i, i64 noundef %i.ahr) #30, !noalias !788
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i39.i

end_hunk_2
