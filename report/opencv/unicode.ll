Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/unicode?download=true
inline.NumInlined: 8690
inline.NumDeleted: 3216
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN2cv3dnn19unicode_regex_splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE:bb.a
  %i.og = add nsw i64 %.sroa.speculated.i.i.i.i145.i.i, %i.of ; 2 uses
  %i.oh = icmp ult i64 %i.og, %i.of
  %i.oi = call i64 @llvm.umin.i64(i64 %i.og, i64 1152921504606846975)
  %i.oj = select i1 %i.oh, i64 1152921504606846975, i64 %i.oi ; 3 uses
  %.not.i.i.i.i146.i.i = icmp ne i64 %i.oj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i146.i.i)
  %i.ok = shl nuw nsw i64 %i.oj, 3
  %i.ol = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ok) #31
          to label %.noexc151.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !785 ; 4 uses

.noexc151.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i144.i.i
  %i.om = getelementptr inbounds i8, ptr %i.ol, i64 %i.od ; 2 uses
  store i64 %i.nz, ptr %i.om, align 8, !tbaa !64, !noalias !785
  %i.on = icmp sgt i64 %i.od, 0
  br i1 %i.on, label %bb.bp, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i147.i.i

bb.bp:                                            ; preds = %.noexc151.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ol, ptr align 8 %.sroa.034.4.i, i64 %i.od, i1 false), !noalias !785
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i147.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i147.i.i: ; preds = %bb.bp, %.noexc151.i.i
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %.not.i17.i.i.i148.i.i = icmp eq ptr %.sroa.034.4.i, null
  br i1 %.not.i17.i.i.i148.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i147.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4.i, i64 noundef %i.od) #30, !noalias !785
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i: ; preds = %bb.bq, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i147.i.i
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %i.oj
  br label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i, %bb.bn, %bb.bl
  %.sroa.034.6.i = phi ptr [ %.sroa.034.4.i, %bb.bl ], [ %i.ol, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i ], [ %.sroa.034.4.i, %bb.bn ]
  %.sroa.25.6.i = phi ptr [ %.sroa.25.4.i, %bb.bl ], [ %i.oo, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i ], [ %i.oa, %bb.bn ]
  %.sroa.51.6.i = phi ptr [ %.sroa.51.4.i, %bb.bl ], [ %i.op, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i ], [ %.sroa.51.4.i, %bb.bn ]
  %i.oq = add i64 %i.nz, %.078431.i.i
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.bs:                                            ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"
  %i.or = add nuw i64 %.078431.i.i, 1             ; 2 uses
  %i.os = icmp ult i64 %i.or, %i.lv
  br i1 %i.os, label %bb.bt, label %.lr.ph426.preheader.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.ot = load ptr, ptr %9, align 8, !tbaa !75, !noalias !785
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.or
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !78, !noalias !785
  %i.ow = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !785
  %i.ox = icmp eq i8 %i.ow, 0
  br i1 %i.ox, label %bb.bu, label %bb.bw, !prof !80

bb.bu:                                            ; preds = %bb.bt
  %i.oy = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !785
  %.not.i248.i.i = icmp eq i32 %i.oy, 0
  br i1 %.not.i248.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !82, !noalias !785
  %i.oz = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !785 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !785
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %i.pa = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !785
  %i.pb = icmp eq i8 %i.pa, 0
  br i1 %i.pb, label %bb.bx, label %.noexc155.i.i, !prof !80

bb.bx:                                            ; preds = %bb.bw
  %i.pc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !785
  %.not3.i247.i.i = icmp eq i32 %i.pc, 0
  br i1 %.not3.i247.i.i, label %.noexc155.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.bz unwind label %bb.ca, !noalias !785

bb.bz:                                            ; preds = %bb.by
  %i.pd = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !785 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !785
  br label %.noexc155.i.i

bb.ca:                                            ; preds = %bb.by
  %i.pe = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !785
  br label %.body.i.i

.noexc155.i.i:                                    ; preds = %bb.bz, %bb.bx, %bb.bw
  %i.pf = zext i32 %i.ov to i64                   ; 2 uses
  %i.pg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !85, !noalias !785
  %i.ph = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !86, !noalias !785 ; 2 uses
  %i.pi = ptrtoint ptr %i.pg to i64
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = sub i64 %i.pi, %i.pj
  %i.pl = ashr exact i64 %i.pk, 1
  %i.pm = icmp ugt i64 %i.pl, %i.pf
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr %i.ph, i64 %i.pf
  %spec.select.i245.i.i = select i1 %i.pm, ptr %i.pn, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i246.i.i = load i16, ptr %spec.select.i245.i.i, align 2, !tbaa !70, !noalias !785
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit156.i.i"

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit156.i.i": ; preds = %.noexc155.i.i, %bb.bk, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit136.thread.i.i", %bb.bd, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"
  %i.po = phi i64 [ 1, %.noexc155.i.i ], [ 0, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i" ], [ 0, %bb.bd ], [ 0, %bb.bk ], [ 0, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit136.thread.i.i" ] ; 9 uses
  %storemerge.i.i = phi i16 [ %.sroa.0.0.copyload.i246.i.i, %.noexc155.i.i ], [ %.sroa.0.0.copyload.i.i.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i" ], [ %.sroa.0.0.copyload.i.i.i, %bb.bd ], [ %.sroa.0.0.copyload.i.i.i, %bb.bk ], [ %.sroa.0.0.copyload.i.i.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit136.thread.i.i" ] ; 4 uses
  %i.pp = and i16 %storemerge.i.i, 4
  %.not.i.i = icmp eq i16 %i.pp, 0
  br i1 %.not.i.i, label %bb.cn, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit156.i.i"
  %i.pq = add nuw i64 %i.po, %.078431.i.i         ; 2 uses
  %i.pr = add nuw i64 %.078431.i.i, 1
  %i.ps = add i64 %i.pr, %i.po
  %.not.i157.i.i = icmp uge i64 %i.ps, %.081438.i.i
  %.not.i157.i.i.fr = freeze i1 %.not.i157.i.i
  br i1 %.not.i157.i.i.fr, label %.lr.ph.i.i.preheader, label %.lr.ph.preheader.i.i.split.us

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i
  %i.pt = add nuw nsw i64 %i.po, 1
  %i.pu = add i64 %i.pt, %.078431.i.i
  %umax2146 = call i64 @llvm.umax.i64(i64 %i.pu, i64 %i.lv) ; 2 uses
  %i.pv = add i64 %i.pq, 1                        ; 2 uses
  %i.pw = icmp ult i64 %i.pv, %i.lv
  br i1 %i.pw, label %.lr.ph3650.a, label %._crit_edge.i.i

.lr.ph.preheader.i.i.split.us:                    ; preds = %.lr.ph.preheader.i.i
  %i.px = add i64 %i.pq, 1
  br label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i"
  %i.py = add i64 %i.qa, 1                        ; 2 uses
  %i.pz = icmp ult i64 %i.py, %i.lv
  br i1 %i.pz, label %.lr.ph3650.a, label %._crit_edge.i.i, !llvm.loop !743

.lr.ph3650.a:                                     ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.qa = phi i64 [ %i.py, %.lr.ph.i.i ], [ %i.pv, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.qb = load ptr, ptr %9, align 8, !tbaa !75, !noalias !785
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.qa
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !78, !noalias !785
  %i.qe = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !785
  %i.qf = icmp eq i8 %i.qe, 0
  br i1 %i.qf, label %bb.cb, label %bb.cd, !prof !80

bb.cb:                                            ; preds = %.lr.ph3650.a
  %i.qg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !785
  %.not.i255.i.i = icmp eq i32 %i.qg, 0
  br i1 %.not.i255.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !82, !noalias !785
  %i.qh = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !785 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !785
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %.lr.ph3650.a
  %i.qi = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !785
  %i.qj = icmp eq i8 %i.qi, 0
  br i1 %i.qj, label %bb.ce, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i", !prof !80

bb.ce:                                            ; preds = %bb.cd
  %i.qk = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !785
  %.not3.i254.i.i = icmp eq i32 %i.qk, 0
  br i1 %.not3.i254.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i", label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.cg unwind label %bb.ch, !noalias !785

bb.cg:                                            ; preds = %bb.cf
  %i.ql = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !785 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !785
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i"

bb.ch:                                            ; preds = %bb.cf
  %i.qm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !785
  br label %.body.i.i

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i": ; preds = %bb.cg, %bb.ce, %bb.cd
  %i.qn = zext i32 %i.qd to i64                   ; 2 uses
  %i.qo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !85, !noalias !785
  %i.qp = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !86, !noalias !785 ; 2 uses
  %i.qq = ptrtoint ptr %i.qo to i64
  %i.qr = ptrtoint ptr %i.qp to i64
  %i.qs = sub i64 %i.qq, %i.qr
  %i.qt = ashr exact i64 %i.qs, 1
  %i.qu = icmp ugt i64 %i.qt, %i.qn
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %i.qn
  %spec.select.i252.i.i = select i1 %i.qu, ptr %i.qv, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i253.i.i = load i16, ptr %spec.select.i252.i.i, align 2, !tbaa !70, !noalias !785
  %i.qw = and i16 %.sroa.0.0.copyload.i253.i.i, 4
  %i.qx = icmp eq i16 %i.qw, 0
  br i1 %i.qx, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i.._crit_edge.i.i.loopexit_crit_edge", label %.lr.ph.i.i, !llvm.loop !743

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i.._crit_edge.i.i.loopexit_crit_edge": ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i"
  br label %._crit_edge.i.i, !llvm.loop !743

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i.._crit_edge.i.i.loopexit_crit_edge", %.lr.ph.preheader.i.i.split.us
  %.us-phi1528 = phi i64 [ %i.px, %.lr.ph.preheader.i.i.split.us ], [ %i.qa, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i.._crit_edge.i.i.loopexit_crit_edge" ], [ %umax2146, %.lr.ph.i.i.preheader ], [ %umax2146, %.lr.ph.i.i ] ; 6 uses
  %i.qy = sub i64 %.us-phi1528, %.0346429.i.i     ; 2 uses
  %.not.i161.i.i = icmp eq i64 %.us-phi1528, %.0346429.i.i
  br i1 %.not.i161.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i", label %bb.ci

bb.ci:                                            ; preds = %._crit_edge.i.i
  %.not.i.i162.i.i = icmp eq ptr %.sroa.25.4.i, %.sroa.51.4.i
  br i1 %.not.i.i162.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store i64 %i.qy, ptr %.sroa.25.4.i, align 8, !tbaa !64, !noalias !785
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.25.4.i, i64 8
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.ck:                                            ; preds = %bb.ci
  %i.ra = ptrtoint ptr %.sroa.25.4.i to i64
  %i.rb = ptrtoint ptr %.sroa.034.4.i to i64
  %i.rc = sub i64 %i.ra, %i.rb                    ; 6 uses
  %i.rd = icmp eq i64 %i.rc, 9223372036854775800
  br i1 %i.rd, label %.invoke.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i163.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i163.i.i: ; preds = %bb.ck
  %i.re = ashr exact i64 %i.rc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i164.i.i = call i64 @llvm.umax.i64(i64 %i.re, i64 1)
  %i.rf = add nsw i64 %.sroa.speculated.i.i.i.i164.i.i, %i.re ; 2 uses
  %i.rg = icmp ult i64 %i.rf, %i.re
  %i.rh = call i64 @llvm.umin.i64(i64 %i.rf, i64 1152921504606846975)
  %i.ri = select i1 %i.rg, i64 1152921504606846975, i64 %i.rh ; 3 uses
  %.not.i.i.i.i165.i.i = icmp ne i64 %i.ri, 0
  call void @llvm.assume(i1 %.not.i.i.i.i165.i.i)
  %i.rj = shl nuw nsw i64 %i.ri, 3
  %i.rk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rj) #31
          to label %.noexc170.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !785 ; 4 uses

.noexc170.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i163.i.i
  %i.rl = getelementptr inbounds i8, ptr %i.rk, i64 %i.rc ; 2 uses
  store i64 %i.qy, ptr %i.rl, align 8, !tbaa !64, !noalias !785
  %i.rm = icmp sgt i64 %i.rc, 0
  br i1 %i.rm, label %bb.cl, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i166.i.i

bb.cl:                                            ; preds = %.noexc170.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rk, ptr align 8 %.sroa.034.4.i, i64 %i.rc, i1 false), !noalias !785
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i166.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i166.i.i: ; preds = %bb.cl, %.noexc170.i.i
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %.not.i17.i.i.i167.i.i = icmp eq ptr %.sroa.034.4.i, null
  br i1 %.not.i17.i.i.i167.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i166.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4.i, i64 noundef %i.rc) #30, !noalias !785
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i: ; preds = %bb.cm, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i166.i.i
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.rk, i64 %i.ri
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.cn:                                            ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit156.i.i"
  %i.rp = and i16 %storemerge.i.i, 2
  %.not100.i.i = icmp eq i16 %i.rp, 0
  br i1 %.not100.i.i, label %bb.da, label %.lr.ph417.preheader.i.i

.lr.ph417.preheader.i.i:                          ; preds = %bb.cn
  %i.rq = add nuw i64 %i.po, %.078431.i.i         ; 2 uses
  %i.rr = add nuw i64 %.078431.i.i, 1
  %i.rs = add i64 %i.rr, %i.po
  %.not.i172.i.i = icmp uge i64 %i.rs, %.081438.i.i
  %.not.i172.i.i.fr = freeze i1 %.not.i172.i.i
  br i1 %.not.i172.i.i.fr, label %.lr.ph417.i.i.preheader, label %.lr.ph417.preheader.i.i.split.us

.lr.ph417.i.i.preheader:                          ; preds = %.lr.ph417.preheader.i.i
  %i.rt = add nuw nsw i64 %i.po, 1
  %i.ru = add i64 %i.rt, %.078431.i.i
  %umax2147 = call i64 @llvm.umax.i64(i64 %i.ru, i64 %i.lv) ; 2 uses
  %i.rv = add i64 %i.rq, 1                        ; 2 uses
  %i.rw = icmp ult i64 %i.rv, %i.lv
  br i1 %i.rw, label %.lr.ph3653, label %._crit_edge418.i.i

.lr.ph417.preheader.i.i.split.us:                 ; preds = %.lr.ph417.preheader.i.i
  %i.rx = add i64 %i.rq, 1
  br label %._crit_edge418.i.i

.lr.ph417.i.i:                                    ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i"
  %i.ry = add i64 %i.sa, 1                        ; 2 uses
  %i.rz = icmp ult i64 %i.ry, %i.lv
  br i1 %i.rz, label %.lr.ph3653, label %._crit_edge418.i.i, !llvm.loop !744

.lr.ph3653:                                       ; preds = %.lr.ph417.i.i.preheader, %.lr.ph417.i.i
  %i.sa = phi i64 [ %i.ry, %.lr.ph417.i.i ], [ %i.rv, %.lr.ph417.i.i.preheader ] ; 3 uses
  %i.sb = load ptr, ptr %9, align 8, !tbaa !75, !noalias !785
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.sa
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !78, !noalias !785
  %i.se = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !785
  %i.sf = icmp eq i8 %i.se, 0
  br i1 %i.sf, label %bb.co, label %bb.cq, !prof !80

bb.co:                                            ; preds = %.lr.ph3653
  %i.sg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !785
  %.not.i262.i.i = icmp eq i32 %i.sg, 0
  br i1 %.not.i262.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !82, !noalias !785
  %i.sh = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !785 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !785
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %.lr.ph3653
  %i.si = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !785
  %i.sj = icmp eq i8 %i.si, 0
  br i1 %i.sj, label %bb.cr, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i", !prof !80

bb.cr:                                            ; preds = %bb.cq
  %i.sk = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !785
  %.not3.i261.i.i = icmp eq i32 %i.sk, 0
  br i1 %.not3.i261.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i", label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.ct unwind label %bb.cu, !noalias !785

bb.ct:                                            ; preds = %bb.cs
  %i.sl = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !785 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !785
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i"

bb.cu:                                            ; preds = %bb.cs
  %i.sm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !785
  br label %.body.i.i

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i": ; preds = %bb.ct, %bb.cr, %bb.cq
  %i.sn = zext i32 %i.sd to i64                   ; 2 uses
  %i.so = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !85, !noalias !785
  %i.sp = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !86, !noalias !785 ; 2 uses
  %i.sq = ptrtoint ptr %i.so to i64
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = sub i64 %i.sq, %i.sr
  %i.st = ashr exact i64 %i.ss, 1
  %i.su = icmp ugt i64 %i.st, %i.sn
  %i.sv = getelementptr inbounds nuw [2 x i8], ptr %i.sp, i64 %i.sn
  %spec.select.i259.i.i = select i1 %i.su, ptr %i.sv, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i260.i.i = load i16, ptr %spec.select.i259.i.i, align 2, !tbaa !70, !noalias !785
  %i.sw = and i16 %.sroa.0.0.copyload.i260.i.i, 2
  %i.sx = icmp eq i16 %i.sw, 0
  br i1 %i.sx, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i.._crit_edge418.i.i.loopexit_crit_edge", label %.lr.ph417.i.i, !llvm.loop !744

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i.._crit_edge418.i.i.loopexit_crit_edge": ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i"
  br label %._crit_edge418.i.i, !llvm.loop !744

._crit_edge418.i.i:                               ; preds = %.lr.ph417.i.i, %.lr.ph417.i.i.preheader, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i.._crit_edge418.i.i.loopexit_crit_edge", %.lr.ph417.preheader.i.i.split.us
  %.us-phi1529 = phi i64 [ %i.rx, %.lr.ph417.preheader.i.i.split.us ], [ %i.sa, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i.._crit_edge418.i.i.loopexit_crit_edge" ], [ %umax2147, %.lr.ph417.i.i.preheader ], [ %umax2147, %.lr.ph417.i.i ] ; 6 uses
  %i.sy = sub i64 %.us-phi1529, %.0346429.i.i     ; 2 uses
  %.not.i176.i.i = icmp eq i64 %.us-phi1529, %.0346429.i.i
  br i1 %.not.i176.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i", label %bb.cv

bb.cv:                                            ; preds = %._crit_edge418.i.i
  %.not.i.i177.i.i = icmp eq ptr %.sroa.25.4.i, %.sroa.51.4.i
  br i1 %.not.i.i177.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store i64 %i.sy, ptr %.sroa.25.4.i, align 8, !tbaa !64, !noalias !785
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.25.4.i, i64 8
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.cx:                                            ; preds = %bb.cv
  %i.ta = ptrtoint ptr %.sroa.25.4.i to i64
  %i.tb = ptrtoint ptr %.sroa.034.4.i to i64
  %i.tc = sub i64 %i.ta, %i.tb                    ; 6 uses
  %i.td = icmp eq i64 %i.tc, 9223372036854775800
  br i1 %i.td, label %.invoke.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i178.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i178.i.i: ; preds = %bb.cx
  %i.te = ashr exact i64 %i.tc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i179.i.i = call i64 @llvm.umax.i64(i64 %i.te, i64 1)
  %i.tf = add nsw i64 %.sroa.speculated.i.i.i.i179.i.i, %i.te ; 2 uses
  %i.tg = icmp ult i64 %i.tf, %i.te
  %i.th = call i64 @llvm.umin.i64(i64 %i.tf, i64 1152921504606846975)
  %i.ti = select i1 %i.tg, i64 1152921504606846975, i64 %i.th ; 3 uses
  %.not.i.i.i.i180.i.i = icmp ne i64 %i.ti, 0
  call void @llvm.assume(i1 %.not.i.i.i.i180.i.i)
  %i.tj = shl nuw nsw i64 %i.ti, 3
  %i.tk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tj) #31
          to label %.noexc185.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !785 ; 4 uses

.noexc185.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i178.i.i
  %i.tl = getelementptr inbounds i8, ptr %i.tk, i64 %i.tc ; 2 uses
  store i64 %i.sy, ptr %i.tl, align 8, !tbaa !64, !noalias !785
  %i.tm = icmp sgt i64 %i.tc, 0
  br i1 %i.tm, label %bb.cy, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i181.i.i

bb.cy:                                            ; preds = %.noexc185.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tk, ptr align 8 %.sroa.034.4.i, i64 %i.tc, i1 false), !noalias !785
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i181.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i181.i.i: ; preds = %bb.cy, %.noexc185.i.i
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %.not.i17.i.i.i182.i.i = icmp eq ptr %.sroa.034.4.i, null
  br i1 %.not.i17.i.i.i182.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i181.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4.i, i64 noundef %i.tc) #30, !noalias !785
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i: ; preds = %bb.cz, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i181.i.i
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %i.ti
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.da:                                            ; preds = %bb.cn
  %i.tp = and i16 %storemerge.i.i, 256
  %.not101.i.i = icmp ne i16 %i.tp, 0
  %.not102.i.i = icmp eq i16 %storemerge.i.i, 0
  %or.cond395.i.i = or i1 %.not102.i.i, %.not101.i.i
  br i1 %or.cond395.i.i, label %.lr.ph426.preheader.i.i, label %.lr.ph422.preheader.i.i

.lr.ph422.preheader.i.i:                          ; preds = %bb.da
  %i.tq = add nuw i64 %i.po, %.078431.i.i         ; 2 uses
  %i.tr = add nuw i64 %.078431.i.i, 1
  %i.ts = add i64 %i.tr, %i.po
  %.not.i187.i.i = icmp uge i64 %i.ts, %.081438.i.i
  %.not.i187.i.i.fr = freeze i1 %.not.i187.i.i
  br i1 %.not.i187.i.i.fr, label %.lr.ph422.i.i.preheader, label %.lr.ph422.preheader.i.i.split.us

.lr.ph422.i.i.preheader:                          ; preds = %.lr.ph422.preheader.i.i
  %i.tt = add nuw nsw i64 %i.po, 1
  %i.tu = add i64 %i.tt, %.078431.i.i
  %umax2148 = call i64 @llvm.umax.i64(i64 %i.tu, i64 %i.lv) ; 2 uses
  %i.tv = add i64 %i.tq, 1                        ; 2 uses
  %i.tw = icmp ult i64 %i.tv, %i.lv
  br i1 %i.tw, label %.lr.ph3656, label %.critedge.i.i

.lr.ph422.preheader.i.i.split.us:                 ; preds = %.lr.ph422.preheader.i.i
  %i.tx = add i64 %i.tq, 1
  br label %.critedge.i.i

.lr.ph422.i.i:                                    ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i"
  %i.ty = add i64 %i.ua, 1                        ; 2 uses
  %i.tz = icmp ult i64 %i.ty, %i.lv
  br i1 %i.tz, label %.lr.ph3656, label %.critedge.i.i, !llvm.loop !745

.lr.ph3656:                                       ; preds = %.lr.ph422.i.i.preheader, %.lr.ph422.i.i
  %i.ua = phi i64 [ %i.ty, %.lr.ph422.i.i ], [ %i.tv, %.lr.ph422.i.i.preheader ] ; 3 uses
  %i.ub = load ptr, ptr %9, align 8, !tbaa !75, !noalias !785
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.ua
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !78, !noalias !785
  %i.ue = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !785
  %i.uf = icmp eq i8 %i.ue, 0
  br i1 %i.uf, label %bb.db, label %bb.dd, !prof !80

bb.db:                                            ; preds = %.lr.ph3656
  %i.ug = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !785
  %.not.i269.i.i = icmp eq i32 %i.ug, 0
  br i1 %.not.i269.i.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !82, !noalias !785
  %i.uh = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !785 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !785
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %.lr.ph3656
  %i.ui = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !785
  %i.uj = icmp eq i8 %i.ui, 0
  br i1 %i.uj, label %bb.de, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i", !prof !80

bb.de:                                            ; preds = %bb.dd
  %i.uk = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !785
  %.not3.i268.i.i = icmp eq i32 %i.uk, 0
  br i1 %.not3.i268.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i", label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.dg unwind label %bb.dh, !noalias !785

bb.dg:                                            ; preds = %bb.df
  %i.ul = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !785 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !785
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i"

bb.dh:                                            ; preds = %bb.df
  %i.um = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !785
  br label %.body.i.i

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i": ; preds = %bb.dg, %bb.de, %bb.dd
  %i.un = zext i32 %i.ud to i64                   ; 2 uses
  %i.uo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !85, !noalias !785
  %i.up = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !86, !noalias !785 ; 2 uses
  %i.uq = ptrtoint ptr %i.uo to i64
  %i.ur = ptrtoint ptr %i.up to i64
  %i.us = sub i64 %i.uq, %i.ur
  %i.ut = ashr exact i64 %i.us, 1
  %i.uu = icmp ugt i64 %i.ut, %i.un
  %i.uv = getelementptr inbounds nuw [2 x i8], ptr %i.up, i64 %i.un
  %spec.select.i266.i.i = select i1 %i.uu, ptr %i.uv, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i267.i.i = load i16, ptr %spec.select.i266.i.i, align 2, !tbaa !70, !noalias !785 ; 2 uses
  %i.uw = and i16 %.sroa.0.0.copyload.i267.i.i, 262
  %i.ux = icmp ne i16 %i.uw, 0
  %.not104.i.i = icmp eq i16 %.sroa.0.0.copyload.i267.i.i, 0
  %or.cond396.i.i = or i1 %.not104.i.i, %i.ux
  br i1 %or.cond396.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i..critedge.i.i.loopexit_crit_edge", label %.lr.ph422.i.i, !llvm.loop !745

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i..critedge.i.i.loopexit_crit_edge": ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i"
  br label %.critedge.i.i, !llvm.loop !745

.critedge.i.i:                                    ; preds = %.lr.ph422.i.i, %.lr.ph422.i.i.preheader, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i..critedge.i.i.loopexit_crit_edge", %.lr.ph422.preheader.i.i.split.us
  %.us-phi1530 = phi i64 [ %i.tx, %.lr.ph422.preheader.i.i.split.us ], [ %i.ua, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i..critedge.i.i.loopexit_crit_edge" ], [ %umax2148, %.lr.ph422.i.i.preheader ], [ %umax2148, %.lr.ph422.i.i ] ; 6 uses
  %i.uy = sub i64 %.us-phi1530, %.0346429.i.i     ; 2 uses
  %.not.i191.i.i = icmp eq i64 %.us-phi1530, %.0346429.i.i
  br i1 %.not.i191.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i", label %bb.di

bb.di:                                            ; preds = %.critedge.i.i
  %.not.i.i192.i.i = icmp eq ptr %.sroa.25.4.i, %.sroa.51.4.i
  br i1 %.not.i.i192.i.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  store i64 %i.uy, ptr %.sroa.25.4.i, align 8, !tbaa !64, !noalias !785
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.25.4.i, i64 8
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.dk:                                            ; preds = %bb.di
  %i.va = ptrtoint ptr %.sroa.25.4.i to i64
  %i.vb = ptrtoint ptr %.sroa.034.4.i to i64
  %i.vc = sub i64 %i.va, %i.vb                    ; 6 uses
  %i.vd = icmp eq i64 %i.vc, 9223372036854775800
  br i1 %i.vd, label %.invoke.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i193.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i193.i.i: ; preds = %bb.dk
  %i.ve = ashr exact i64 %i.vc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i194.i.i = call i64 @llvm.umax.i64(i64 %i.ve, i64 1)
  %i.vf = add nsw i64 %.sroa.speculated.i.i.i.i194.i.i, %i.ve ; 2 uses
  %i.vg = icmp ult i64 %i.vf, %i.ve
  %i.vh = call i64 @llvm.umin.i64(i64 %i.vf, i64 1152921504606846975)
  %i.vi = select i1 %i.vg, i64 1152921504606846975, i64 %i.vh ; 3 uses
  %.not.i.i.i.i195.i.i = icmp ne i64 %i.vi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i195.i.i)
  %i.vj = shl nuw nsw i64 %i.vi, 3
  %i.vk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vj) #31
          to label %.noexc200.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !785 ; 4 uses

.noexc200.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i193.i.i
  %i.vl = getelementptr inbounds i8, ptr %i.vk, i64 %i.vc ; 2 uses
  store i64 %i.uy, ptr %i.vl, align 8, !tbaa !64, !noalias !785
  %i.vm = icmp sgt i64 %i.vc, 0
  br i1 %i.vm, label %bb.dl, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i196.i.i

bb.dl:                                            ; preds = %.noexc200.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.vk, ptr align 8 %.sroa.034.4.i, i64 %i.vc, i1 false), !noalias !785
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i196.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i196.i.i: ; preds = %bb.dl, %.noexc200.i.i
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %.not.i17.i.i.i197.i.i = icmp eq ptr %.sroa.034.4.i, null
  br i1 %.not.i17.i.i.i197.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i196.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4.i, i64 noundef %i.vc) #30, !noalias !785
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i: ; preds = %bb.dm, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i196.i.i
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %i.vi
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

.lr.ph426.preheader.i.i:                          ; preds = %bb.da, %bb.bs
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.078431.i.i, i64 %i.lv) ; 3 uses
  %i.vp = sub nuw i64 %umax.i.i, %.078431.i.i     ; 4 uses
  %exitcond.not.i.i3659 = icmp eq i64 %i.vp, 0
  br i1 %exitcond.not.i.i3659, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread.i.i", label %.lr.ph3661

.lr.ph426.i.i:                                    ; preds = %bb.du
  %exitcond.not.i.i = icmp eq i64 %i.wn, %i.vp
  br i1 %exitcond.not.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread.i.i", label %.lr.ph3661, !llvm.loop !746

.lr.ph3661:                                       ; preds = %.lr.ph426.preheader.i.i, %.lr.ph426.i.i
  %.0425.i.i3660 = phi i64 [ %i.wn, %.lr.ph426.i.i ], [ 0, %.lr.ph426.preheader.i.i ] ; 5 uses
  %i.vq = add nuw i64 %.0425.i.i3660, %.078431.i.i ; 6 uses
  %i.vr = load ptr, ptr %9, align 8, !tbaa !75, !noalias !785
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.vr, i64 %i.vq
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !78, !noalias !785
  %i.vu = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !785
  %i.vv = icmp eq i8 %i.vu, 0
  br i1 %i.vv, label %bb.dn, label %bb.dp, !prof !80

bb.dn:                                            ; preds = %.lr.ph3661
  %i.vw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !785
  %.not.i276.i.i = icmp eq i32 %i.vw, 0
  br i1 %.not.i276.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !82, !noalias !785
  %i.vx = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !785 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !785
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %.lr.ph3661
  %i.vy = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !785
  %i.vz = icmp eq i8 %i.vy, 0
  br i1 %i.vz, label %bb.dq, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.i.i", !prof !80

bb.dq:                                            ; preds = %bb.dp
  %i.wa = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !785
  %.not3.i275.i.i = icmp eq i32 %i.wa, 0
  br i1 %.not3.i275.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.i.i", label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.ds unwind label %bb.dt, !noalias !785

bb.ds:                                            ; preds = %bb.dr
  %i.wb = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !785 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !785
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.i.i"

bb.dt:                                            ; preds = %bb.dr
  %i.wc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !785
  br label %.body.i.i

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.i.i": ; preds = %bb.ds, %bb.dq, %bb.dp
  %i.wd = zext i32 %i.vt to i64                   ; 2 uses
  %i.we = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !85, !noalias !785
  %i.wf = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !86, !noalias !785 ; 2 uses
  %i.wg = ptrtoint ptr %i.we to i64
  %i.wh = ptrtoint ptr %i.wf to i64
  %i.wi = sub i64 %i.wg, %i.wh
  %i.wj = ashr exact i64 %i.wi, 1
  %i.wk = icmp ugt i64 %i.wj, %i.wd
  %i.wl = getelementptr inbounds nuw [2 x i8], ptr %i.wf, i64 %i.wd
  %spec.select.i273.i.i = select i1 %i.wk, ptr %i.wl, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i274.i.i = load i16, ptr %spec.select.i273.i.i, align 2, !tbaa !70, !noalias !785
  %i.wm = and i16 %.sroa.0.0.copyload.i274.i.i, 256
  %.not105.i.i = icmp eq i16 %i.wm, 0
  br i1 %.not105.i.i, label %.thread385.i.i, label %bb.du

bb.du:                                            ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.i.i"
  %i.wn = add i64 %.0425.i.i3660, 1               ; 4 uses
  %i.wo = add i64 %i.wn, %.078431.i.i             ; 2 uses
  %.not.i202.i.i = icmp ugt i64 %.081438.i.i, %i.wo
  br i1 %.not.i202.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.i.i", label %.lr.ph426.i.i, !llvm.loop !746

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.i.i": ; preds = %bb.du
  %i.wp = icmp eq i64 %i.wn, 0
  br i1 %i.wp, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread528.i.i", label %.thread389.i.i

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread.i.i": ; preds = %.lr.ph426.i.i, %.lr.ph426.preheader.i.i
  %i.wq = icmp ugt i64 %i.vp, 1
  br i1 %i.wq, label %.thread389.i.i, label %bb.eb

.thread385.i.i:                                   ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.i.i"
  %i.wr = icmp ugt i64 %.0425.i.i3660, 1
  br i1 %i.wr, label %.thread386.i.i, label %bb.eb

.thread386.i.i:                                   ; preds = %.thread385.i.i
  %i.ws = icmp ult i64 %i.vq, %i.lv
  br i1 %i.ws, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit207.i.i", label %.thread389.i.i

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit207.i.i": ; preds = %.thread386.i.i
  %i.wt = load ptr, ptr %9, align 8, !tbaa !75, !noalias !785
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %i.vq
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !78, !noalias !785
  %.not106.i.i = icmp eq i32 %i.wv, -1
  br i1 %.not106.i.i, label %.thread389.i.i, label %bb.dv

bb.dv:                                            ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit207.i.i"
  %i.ww = add i64 %.078431.i.i, -1
  %i.wx = add i64 %i.ww, %.0425.i.i3660           ; 6 uses
  %i.wy = sub i64 %i.wx, %.0346429.i.i            ; 2 uses
  %.not.i208.i.i = icmp eq i64 %i.wx, %.0346429.i.i
  br i1 %.not.i208.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i", label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.not.i.i209.i.i = icmp eq ptr %.sroa.25.4.i, %.sroa.51.4.i
  br i1 %.not.i.i209.i.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  store i64 %i.wy, ptr %.sroa.25.4.i, align 8, !tbaa !64, !noalias !785
  %i.wz = getelementptr inbounds nuw i8, ptr %.sroa.25.4.i, i64 8
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.dy:                                            ; preds = %bb.dw
  %i.xa = ptrtoint ptr %.sroa.25.4.i to i64
  %i.xb = ptrtoint ptr %.sroa.034.4.i to i64
  %i.xc = sub i64 %i.xa, %i.xb                    ; 6 uses
  %i.xd = icmp eq i64 %i.xc, 9223372036854775800
  br i1 %i.xd, label %.invoke.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i210.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i210.i.i: ; preds = %bb.dy
  %i.xe = ashr exact i64 %i.xc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i211.i.i = call i64 @llvm.umax.i64(i64 %i.xe, i64 1)
  %i.xf = add nsw i64 %.sroa.speculated.i.i.i.i211.i.i, %i.xe ; 2 uses
  %i.xg = icmp ult i64 %i.xf, %i.xe
  %i.xh = call i64 @llvm.umin.i64(i64 %i.xf, i64 1152921504606846975)
  %i.xi = select i1 %i.xg, i64 1152921504606846975, i64 %i.xh ; 3 uses
  %.not.i.i.i.i212.i.i = icmp ne i64 %i.xi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i212.i.i)
  %i.xj = shl nuw nsw i64 %i.xi, 3
  %i.xk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xj) #31
          to label %.noexc217.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !785 ; 4 uses

.noexc217.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i210.i.i
  %i.xl = getelementptr inbounds i8, ptr %i.xk, i64 %i.xc ; 2 uses
  store i64 %i.wy, ptr %i.xl, align 8, !tbaa !64, !noalias !785
  %i.xm = icmp sgt i64 %i.xc, 0
  br i1 %i.xm, label %bb.dz, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i213.i.i

bb.dz:                                            ; preds = %.noexc217.i.i
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn19unicode_regex_splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE:bb.a
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yd, ptr align 8 %.sroa.034.4.i, i64 %i.xv, i1 false), !noalias !785
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i224.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i224.i.i: ; preds = %bb.ef, %.noexc228.i.i
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %.not.i17.i.i.i225.i.i = icmp eq ptr %.sroa.034.4.i, null
  br i1 %.not.i17.i.i.i225.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i224.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4.i, i64 noundef %i.xv) #30, !noalias !785
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i: ; preds = %bb.eg, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i224.i.i
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.yd, i64 %i.yb
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread528.i.i": ; preds = %bb.eb, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.i.i", %.lr.ph434.i.i
  %i.yi = add nuw i64 %.078431.i.i, 1             ; 6 uses
  %i.yj = sub i64 %i.yi, %.0346429.i.i            ; 2 uses
  %.not.i230.i.i = icmp eq i64 %i.yi, %.0346429.i.i
  br i1 %.not.i230.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i", label %bb.eh

bb.eh:                                            ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread528.i.i"
  %.not.i.i231.i.i = icmp eq ptr %.sroa.25.4.i, %.sroa.51.4.i
  br i1 %.not.i.i231.i.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  store i64 %i.yj, ptr %.sroa.25.4.i, align 8, !tbaa !64, !noalias !785
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.25.4.i, i64 8
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.ej:                                            ; preds = %bb.eh
  %i.yl = ptrtoint ptr %.sroa.25.4.i to i64
  %i.ym = ptrtoint ptr %.sroa.034.4.i to i64
  %i.yn = sub i64 %i.yl, %i.ym                    ; 6 uses
  %i.yo = icmp eq i64 %i.yn, 9223372036854775800
  br i1 %i.yo, label %.invoke.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i.i: ; preds = %bb.ej
  %i.yp = ashr exact i64 %i.yn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i233.i.i = call i64 @llvm.umax.i64(i64 %i.yp, i64 1)
  %i.yq = add nsw i64 %.sroa.speculated.i.i.i.i233.i.i, %i.yp ; 2 uses
  %i.yr = icmp ult i64 %i.yq, %i.yp
  %i.ys = call i64 @llvm.umin.i64(i64 %i.yq, i64 1152921504606846975)
  %i.yt = select i1 %i.yr, i64 1152921504606846975, i64 %i.ys ; 3 uses
  %.not.i.i.i.i234.i.i = icmp ne i64 %i.yt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i234.i.i)
  %i.yu = shl nuw nsw i64 %i.yt, 3
  %i.yv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yu) #31
          to label %.noexc239.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !785 ; 4 uses

.noexc239.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i.i
  %i.yw = getelementptr inbounds i8, ptr %i.yv, i64 %i.yn ; 2 uses
  store i64 %i.yj, ptr %i.yw, align 8, !tbaa !64, !noalias !785
  %i.yx = icmp sgt i64 %i.yn, 0
  br i1 %i.yx, label %bb.ek, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i

bb.ek:                                            ; preds = %.noexc239.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yv, ptr align 8 %.sroa.034.4.i, i64 %i.yn, i1 false), !noalias !785
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i: ; preds = %bb.ek, %.noexc239.i.i
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %.not.i17.i.i.i236.i.i = icmp eq ptr %.sroa.034.4.i, null
  br i1 %.not.i17.i.i.i236.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i, label %bb.el

bb.el:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4.i, i64 noundef %i.yn) #30, !noalias !785
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i: ; preds = %bb.el, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.yv, i64 %i.yt
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i": ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i, %bb.ei, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread528.i.i", %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i, %bb.ed, %.thread389.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i, %bb.dx, %bb.dv, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i, %bb.dj, %.critedge.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i, %bb.cw, %._crit_edge418.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i, %bb.cj, %._crit_edge.i.i, %bb.br, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i"
  %.sroa.034.7.i = phi ptr [ %.sroa.034.4.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread528.i.i" ], [ %i.yv, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %.sroa.034.4.i, %bb.ei ], [ %.sroa.034.4.i, %.thread389.i.i ], [ %i.yd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %.sroa.034.4.i, %bb.ed ], [ %.sroa.034.4.i, %bb.dv ], [ %i.xk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %.sroa.034.4.i, %bb.dx ], [ %.sroa.034.4.i, %.critedge.i.i ], [ %i.vk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %.sroa.034.4.i, %bb.dj ], [ %.sroa.034.4.i, %._crit_edge418.i.i ], [ %i.tk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %.sroa.034.4.i, %bb.cw ], [ %.sroa.034.4.i, %._crit_edge.i.i ], [ %i.rk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %.sroa.034.4.i, %bb.cj ], [ %.sroa.034.6.i, %bb.br ], [ %.sroa.034.5.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %.sroa.25.7.i = phi ptr [ %.sroa.25.4.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread528.i.i" ], [ %i.yy, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %i.yk, %bb.ei ], [ %.sroa.25.4.i, %.thread389.i.i ], [ %i.yg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %i.xs, %bb.ed ], [ %.sroa.25.4.i, %bb.dv ], [ %i.xn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %i.wz, %bb.dx ], [ %.sroa.25.4.i, %.critedge.i.i ], [ %i.vn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %i.uz, %bb.dj ], [ %.sroa.25.4.i, %._crit_edge418.i.i ], [ %i.tn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %i.sz, %bb.cw ], [ %.sroa.25.4.i, %._crit_edge.i.i ], [ %i.rn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %i.qz, %bb.cj ], [ %.sroa.25.6.i, %bb.br ], [ %.sroa.25.5.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %.sroa.51.7.i = phi ptr [ %.sroa.51.4.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread528.i.i" ], [ %i.yz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %.sroa.51.4.i, %bb.ei ], [ %.sroa.51.4.i, %.thread389.i.i ], [ %i.yh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %.sroa.51.4.i, %bb.ed ], [ %.sroa.51.4.i, %bb.dv ], [ %i.xo, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %.sroa.51.4.i, %bb.dx ], [ %.sroa.51.4.i, %.critedge.i.i ], [ %i.vo, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %.sroa.51.4.i, %bb.dj ], [ %.sroa.51.4.i, %._crit_edge418.i.i ], [ %i.to, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %.sroa.51.4.i, %bb.cw ], [ %.sroa.51.4.i, %._crit_edge.i.i ], [ %i.ro, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %.sroa.51.4.i, %bb.cj ], [ %.sroa.51.6.i, %bb.br ], [ %.sroa.51.5.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %.5350.i.i = phi i64 [ %.0346429.i.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread528.i.i" ], [ %i.yi, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %i.yi, %bb.ei ], [ %.0346429.i.i, %.thread389.i.i ], [ %i.xq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %i.xq, %bb.ed ], [ %.0346429.i.i, %bb.dv ], [ %i.wx, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %i.wx, %bb.dx ], [ %.0346429.i.i, %.critedge.i.i ], [ %.us-phi1530, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %.us-phi1530, %bb.dj ], [ %.0346429.i.i, %._crit_edge418.i.i ], [ %.us-phi1529, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %.us-phi1529, %bb.cw ], [ %.0346429.i.i, %._crit_edge.i.i ], [ %.us-phi1528, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %.us-phi1528, %bb.cj ], [ %i.ny, %bb.br ], [ %i.my, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ]
  %.10.i.i = phi i64 [ %.0346429.i.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread528.i.i" ], [ %i.yi, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %i.yi, %bb.ei ], [ %.0346429.i.i, %.thread389.i.i ], [ %i.xq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %i.xq, %bb.ed ], [ %.0346429.i.i, %bb.dv ], [ %i.wx, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %i.wx, %bb.dx ], [ %.0346429.i.i, %.critedge.i.i ], [ %.us-phi1530, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %.us-phi1530, %bb.dj ], [ %.0346429.i.i, %._crit_edge418.i.i ], [ %.us-phi1529, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %.us-phi1529, %bb.cw ], [ %.0346429.i.i, %._crit_edge.i.i ], [ %.us-phi1528, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %.us-phi1528, %bb.cj ], [ %i.oq, %bb.br ], [ %i.nq, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %i.za = icmp ult i64 %.10.i.i, %i.lv
  br i1 %i.za, label %.lr.ph434.i.i, label %._crit_edge435.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.dt, %bb.dh, %bb.cu, %bb.ch, %bb.ca, %bb.bc
  %.sroa.51.4188.i = phi ptr [ %.sroa.51.4.i, %bb.bc ], [ %.sroa.51.4.i, %bb.dt ], [ %.sroa.51.4.i, %bb.ca ], [ %.sroa.51.4.i, %bb.ch ], [ %.sroa.51.4.i, %bb.cu ], [ %.sroa.51.4.i, %bb.dh ], [ %.sroa.25.4.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn112.pn.i.i = phi { ptr, i32 } [ %i.mj, %bb.bc ], [ %i.wc, %bb.dt ], [ %i.pe, %bb.ca ], [ %i.qm, %bb.ch ], [ %i.sm, %bb.cu ], [ %i.um, %bb.dh ], [ %lpad.loopexit.split-lp3676, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.zb = load ptr, ptr %9, align 8, !tbaa !75, !noalias !785 ; 3 uses
  %.not.i.i.i241.i.i = icmp eq ptr %i.zb, null
  br i1 %.not.i.i.i241.i.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %.body.i.i
  %i.zc = load ptr, ptr %i.it, align 8, !tbaa !77, !noalias !785
  %i.zd = ptrtoint ptr %i.zc to i64
  %i.ze = ptrtoint ptr %i.zb to i64
  %i.zf = sub i64 %i.zd, %i.ze
  call void @_ZdlPvm(ptr noundef nonnull %i.zb, i64 noundef %i.zf) #30, !noalias !785
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %.body.i.i, %bb.au
  %.sroa.034.8.i = phi ptr [ %.sroa.034.4.i, %.body.i.i ], [ %.sroa.034.4.i, %bb.em ], [ %.sroa.034.0.i, %bb.au ] ; 3 uses
  %.sroa.51.8.i = phi ptr [ %.sroa.51.4188.i, %.body.i.i ], [ %.sroa.51.4188.i, %bb.em ], [ %.sroa.51.0.i, %bb.au ]
  %.pn112.pn.pn.i.i = phi { ptr, i32 } [ %.pn112.pn.i.i, %.body.i.i ], [ %.pn112.pn.i.i, %bb.em ], [ %i.lt, %bb.au ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !785
  %.not.i.i.i243.i.i = icmp eq ptr %.sroa.034.8.i, null
  br i1 %.not.i.i.i243.i.i, label %.body246, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.zg = ptrtoint ptr %.sroa.51.8.i to i64
  %i.zh = ptrtoint ptr %.sroa.034.8.i to i64
  %i.zi = sub i64 %i.zg, %i.zh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.8.i, i64 noundef %i.zi) #30, !noalias !785
  br label %.body246

bb.ep:                                            ; preds = %bb.at, %._crit_edge441.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !785
  br label %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i: ; preds = %bb.aq
  %bcmp.i14.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(115) %.val, ptr noundef nonnull dereferenceable(115) @.str.20, i64 115), !noalias !784
  %i.zj = icmp eq i32 %bcmp.i14.i, 0
  br i1 %i.zj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread.i, label %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i: ; preds = %bb.aq
  %bcmp.i16.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(144) %.val, ptr noundef nonnull dereferenceable(144) @.str.21, i64 144), !noalias !784
  %i.zk = icmp eq i32 %bcmp.i16.i, 0
  br i1 %i.zk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread.i, label %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i
  %i.zl = ptrtoint ptr %.sroa.24.01550 to i64
  %i.zm = ptrtoint ptr %.sroa.0593.01549 to i64
  %i.zn = sub i64 %i.zl, %i.zm                    ; 3 uses
  %i.zo = icmp ugt i64 %i.zn, 9223372036854775800
  br i1 %i.zo, label %.noexc.i.invoke.i, label %bb.eq

bb.eq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread.i
  %.not640.i.i = icmp eq ptr %.sroa.24.01550, %.sroa.0593.01549 ; 2 uses
  br i1 %.not640.i.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i18.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i18.i: ; preds = %bb.eq
  %i.zp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zn) #31
          to label %.noexc57.i unwind label %.loopexit.split-lp753.loopexit.split-lp, !noalias !784 ; 2 uses

.noexc57.i:                                       ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i18.i
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 %i.zn
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i

_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i:        ; preds = %.noexc57.i, %bb.eq
  %.sroa.0.0.i = phi ptr [ null, %bb.eq ], [ %i.zp, %.noexc57.i ] ; 5 uses
  %.sroa.61.0.i = phi ptr [ null, %bb.eq ], [ %i.zq, %.noexc57.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !786
  invoke void @_ZN2cv3dnn22unicode_cpts_from_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %8, ptr noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %bb.er unwind label %bb.et, !noalias !786

bb.er:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i
  br i1 %.not640.i.i, label %._crit_edge565.i.i, label %.lr.ph564.i.i

._crit_edge565.i.i:                               ; preds = %._crit_edge.i21.i, %bb.er
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %bb.er ], [ %.sroa.0.3.i, %._crit_edge.i21.i ]
  %.sroa.29.1.i = phi ptr [ %.sroa.0.0.i, %bb.er ], [ %.sroa.29.3.i, %._crit_edge.i21.i ]
  %.sroa.61.1.i = phi ptr [ %.sroa.61.0.i, %bb.er ], [ %.sroa.61.3.i, %._crit_edge.i21.i ]
  %i.zr = load ptr, ptr %8, align 8, !tbaa !75, !noalias !786 ; 3 uses
  %.not.i.i.i.i22.i = icmp eq ptr %i.zr, null
  br i1 %.not.i.i.i.i22.i, label %bb.jx, label %bb.es

bb.es:                                            ; preds = %._crit_edge565.i.i
  %i.zs = load ptr, ptr %i.is, align 8, !tbaa !77, !noalias !786
  %i.zt = ptrtoint ptr %i.zs to i64
  %i.zu = ptrtoint ptr %i.zr to i64
  %i.zv = sub i64 %i.zt, %i.zu
  call void @_ZdlPvm(ptr noundef nonnull %i.zr, i64 noundef %i.zv) #30, !noalias !786
  br label %bb.jx

bb.et:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i
  %i.zw = landingpad { ptr, i32 }
          cleanup
  br label %bb.jv

.lr.ph564.i.i:                                    ; preds = %bb.er, %._crit_edge.i21.i
  %.sroa.0.2.i = phi ptr [ %.sroa.0.3.i, %._crit_edge.i21.i ], [ %.sroa.0.0.i, %bb.er ] ; 2 uses
  %.sroa.29.2.i = phi ptr [ %.sroa.29.3.i, %._crit_edge.i21.i ], [ %.sroa.0.0.i, %bb.er ] ; 2 uses
  %.sroa.61.2.i = phi ptr [ %.sroa.61.3.i, %._crit_edge.i21.i ], [ %.sroa.61.0.i, %bb.er ] ; 2 uses
  %.0111562.i.i = phi i64 [ %i.zy, %._crit_edge.i21.i ], [ 0, %bb.er ] ; 11 uses
  %.sroa.0407.0561.i.i = phi ptr [ %i.aaa, %._crit_edge.i21.i ], [ %.sroa.0593.01549, %bb.er ] ; 2 uses
  %i.zx = load i64, ptr %.sroa.0407.0561.i.i, align 8, !tbaa !64, !noalias !786
  %i.zy = add i64 %i.zx, %.0111562.i.i            ; 23 uses
  %i.zz = icmp ult i64 %.0111562.i.i, %i.zy
  br i1 %i.zz, label %.lr.ph559.i.i, label %._crit_edge.i21.i

._crit_edge.i21.i:                                ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i", %.lr.ph564.i.i
  %.sroa.0.3.i = phi ptr [ %.sroa.0.2.i, %.lr.ph564.i.i ], [ %.sroa.0.12.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ] ; 2 uses
  %.sroa.29.3.i = phi ptr [ %.sroa.29.2.i, %.lr.ph564.i.i ], [ %.sroa.29.10.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ] ; 2 uses
  %.sroa.61.3.i = phi ptr [ %.sroa.61.2.i, %.lr.ph564.i.i ], [ %.sroa.61.12.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ] ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.sroa.0407.0561.i.i, i64 8 ; 2 uses
  %.not512.i.i = icmp eq ptr %i.aaa, %.sroa.24.01550
  br i1 %.not512.i.i, label %._crit_edge565.i.i, label %.lr.ph564.i.i

.lr.ph559.i.i:                                    ; preds = %.lr.ph564.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"
  %.sroa.0.4.i = phi ptr [ %.sroa.0.12.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ], [ %.sroa.0.2.i, %.lr.ph564.i.i ] ; 72 uses
  %.sroa.29.4.i = phi ptr [ %.sroa.29.10.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ], [ %.sroa.29.2.i, %.lr.ph564.i.i ] ; 58 uses
  %.sroa.61.4.i = phi ptr [ %.sroa.61.12.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ], [ %.sroa.61.2.i, %.lr.ph564.i.i ] ; 32 uses
  %.0107558.i.i = phi i64 [ %.11.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ], [ %.0111562.i.i, %.lr.ph564.i.i ] ; 25 uses
  %.0454557.i.i = phi i64 [ %.7460.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ], [ %.0111562.i.i, %.lr.ph564.i.i ] ; 30 uses
  %.not.i.i23.i = icmp ule i64 %.0111562.i.i, %.0107558.i.i ; 3 uses
  br i1 %.not.i.i23.i, label %bb.eu, label %.thread496.i.i

bb.eu:                                            ; preds = %.lr.ph559.i.i
  %i.aab = load ptr, ptr %8, align 8, !tbaa !75, !noalias !786
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %.0107558.i.i
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !78, !noalias !786 ; 6 uses
  %i.aae = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !786
  %i.aaf = icmp eq i8 %i.aae, 0
  br i1 %i.aaf, label %bb.ev, label %bb.ex, !prof !80

bb.ev:                                            ; preds = %bb.eu
  %i.aag = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !786
  %.not.i331.i.i = icmp eq i32 %i.aag, 0
  br i1 %.not.i331.i.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !82, !noalias !786
  %i.aah = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !786 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !786
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %bb.eu
  %i.aai = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !786
  %i.aaj = icmp eq i8 %i.aai, 0
  br i1 %i.aaj, label %bb.ey, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i", !prof !80

bb.ey:                                            ; preds = %bb.ex
  %i.aak = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !786
  %.not3.i.i54.i = icmp eq i32 %i.aak, 0
  br i1 %.not3.i.i54.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i", label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.fa unwind label %bb.fb, !noalias !786

bb.fa:                                            ; preds = %bb.ez
  %i.aal = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !786 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !786
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"

bb.fb:                                            ; preds = %bb.ez
  %i.aam = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !786
  br label %.body.i24.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i": ; preds = %bb.fa, %bb.ey, %bb.ex
  %i.aan = zext i32 %i.aad to i64                 ; 2 uses
  %i.aao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !85, !noalias !786
  %i.aap = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !86, !noalias !786 ; 2 uses
  %i.aaq = ptrtoint ptr %i.aao to i64
  %i.aar = ptrtoint ptr %i.aap to i64
  %i.aas = sub i64 %i.aaq, %i.aar
  %i.aat = ashr exact i64 %i.aas, 1
  %i.aau = icmp ugt i64 %i.aat, %i.aan
  %i.aav = getelementptr inbounds nuw [2 x i8], ptr %i.aap, i64 %i.aan
  %spec.select.i330.i.i = select i1 %i.aau, ptr %i.aav, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i.i42.i = load i16, ptr %spec.select.i330.i.i, align 2, !tbaa !70, !noalias !786 ; 6 uses
  switch i32 %i.aad, label %.thread477.i.i [
    i32 39, label %bb.fc
    i32 13, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"
    i32 10, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"
  ]

bb.fc:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"
  %i.aaw = add nuw i64 %.0107558.i.i, 1           ; 2 uses
  %i.aax = icmp ult i64 %i.aaw, %i.zy
  br i1 %i.aax, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i", label %.thread477.i.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i": ; preds = %bb.fc
  %i.aay = load ptr, ptr %8, align 8, !tbaa !75, !noalias !786 ; 2 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %i.aaw
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !78, !noalias !786 ; 4 uses
  %i.abb = load ptr, ptr @_ZN2cv3dnn21unicode_map_lowercaseE, align 8, !tbaa !96, !noalias !786 ; 5 uses
  %i.abc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv3dnn21unicode_map_lowercaseE, i64 8), align 8, !tbaa !97, !noalias !786 ; 4 uses
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %i.abc ; 2 uses
  %i.abe = icmp sgt i64 %i.abc, 0                 ; 2 uses
  br i1 %i.abe, label %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, label %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i"

_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i: ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i", %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ], [ %i.abc, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i" ] ; 2 uses
  %.0114.i.i.i.i.i = phi ptr [ %.112.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ], [ %i.abb, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i" ] ; 2 uses
  %i.abf = lshr i64 %.05.i.i.i.i.i, 1             ; 3 uses
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %.0114.i.i.i.i.i, i64 %i.abf ; 2 uses
  %.val.i.i.i.i.i = load i32, ptr %i.abg, align 4, !tbaa !119, !noalias !786
  %i.abh = icmp ult i32 %.val.i.i.i.i.i, %i.aba   ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.abj = xor i64 %i.abf, -1
  %i.abk = add nsw i64 %.05.i.i.i.i.i, %i.abj
  %.112.i.i.i.i.i = select i1 %i.abh, ptr %i.abi, ptr %.0114.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i = select i1 %i.abh, i64 %i.abk, i64 %i.abf ; 2 uses
  %i.abl = icmp sgt i64 %.1.i.i.i.i.i, 0
  br i1 %i.abl, label %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, label %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i", !llvm.loop !2

"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i": ; preds = %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i"
  %.011.lcssa.i.i.i.i.i = phi ptr [ %i.abb, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i" ], [ %.112.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ] ; 3 uses
  %.not.i175.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i, %i.abd
  br i1 %.not.i175.i.i, label %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i, label %bb.fd

bb.fd:                                            ; preds = %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i"
  %i.abm = load i32, ptr %.011.lcssa.i.i.i.i.i, align 4, !tbaa !119, !noalias !786
  %i.abn = icmp eq i32 %i.abm, %i.aba
  br i1 %i.abn, label %.then.i.i, label %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i

.then.i.i:                                        ; preds = %bb.fd
  %i.abo = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i, i64 4
  %.0.pre.i.then.val.i.i = load i32, ptr %i.abo, align 4, !tbaa !78, !noalias !786
  br label %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i

_ZN2cv3dnn15unicode_tolowerEj.exit.i.i:           ; preds = %.then.i.i, %bb.fd, %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i"
  %.0.i.i.i = phi i32 [ %i.aba, %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i" ], [ %.0.pre.i.then.val.i.i, %.then.i.i ], [ %i.aba, %bb.fd ] ; 3 uses
  %i.abp = add nuw i64 %.0107558.i.i, 2           ; 5 uses
  switch i32 %.0.i.i.i, label %bb.fk [
    i32 116, label %bb.fe
    i32 115, label %bb.fe
    i32 109, label %bb.fe
    i32 100, label %bb.fe
  ]

bb.fe:                                            ; preds = %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i, %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i, %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i, %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i
  %i.abq = sub i64 %i.abp, %.0454557.i.i          ; 3 uses
  %.not.i176.i44.i = icmp eq i64 %i.abp, %.0454557.i.i
  br i1 %.not.i176.i44.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i", label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %.not.i.i.i45.i.a = icmp eq ptr %.sroa.29.4.i, %.sroa.61.4.i
  br i1 %.not.i.i.i45.i.a, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  store i64 %i.abq, ptr %.sroa.29.4.i, align 8, !tbaa !64, !noalias !786
  %i.abr = getelementptr inbounds nuw i8, ptr %.sroa.29.4.i, i64 8
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i"

bb.fh:                                            ; preds = %bb.ff
  %i.abs = ptrtoint ptr %.sroa.29.4.i to i64
  %i.abt = ptrtoint ptr %.sroa.0.4.i to i64
  %i.abu = sub i64 %i.abs, %i.abt                 ; 6 uses
  %i.abv = icmp eq i64 %i.abu, 9223372036854775800
  br i1 %i.abv, label %.invoke.i25.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i46.i

.invoke.i25.i:                                    ; preds = %bb.jr, %bb.jm, %bb.jg, %bb.iy, %bb.im, %bb.hf, %bb.gm, %bb.fq, %bb.fh, %bb.ha
  %.sroa.0.5.i = phi ptr [ %.sroa.0.8.i, %bb.ha ], [ %.sroa.0.4.i, %bb.jm ], [ %.sroa.0.4.i, %bb.jg ], [ %.sroa.0.4.i, %bb.iy ], [ %.sroa.0.4.i, %bb.im ], [ %.sroa.0.10.i, %bb.hf ], [ %.sroa.0.4.i, %bb.fh ], [ %.sroa.0.4.i, %bb.gm ], [ %.sroa.0.4.i, %bb.fq ], [ %.sroa.0.4.i, %bb.jr ]
  %.sroa.61.5.i = phi ptr [ %.sroa.29.7.i, %bb.ha ], [ %.sroa.29.4.i, %bb.jm ], [ %.sroa.29.4.i, %bb.jg ], [ %.sroa.29.4.i, %bb.iy ], [ %.sroa.29.4.i, %bb.im ], [ %.sroa.29.9.i, %bb.hf ], [ %.sroa.29.4.i, %bb.fh ], [ %.sroa.29.4.i, %bb.gm ], [ %.sroa.29.4.i, %bb.fq ], [ %.sroa.29.4.i, %bb.jr ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
          to label %.cont.i26.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i, !noalias !786

.cont.i26.i:                                      ; preds = %.invoke.i25.i
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i46.i: ; preds = %bb.fh
  %i.abw = ashr exact i64 %i.abu, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i47.i = call i64 @llvm.umax.i64(i64 %i.abw, i64 1)
  %i.abx = add nsw i64 %.sroa.speculated.i.i.i.i.i47.i, %i.abw ; 2 uses
  %i.aby = icmp ult i64 %i.abx, %i.abw
  %i.abz = call i64 @llvm.umin.i64(i64 %i.abx, i64 1152921504606846975)
  %i.aca = select i1 %i.aby, i64 1152921504606846975, i64 %i.abz ; 3 uses
  %.not.i.i.i.i.i48.i = icmp ne i64 %i.aca, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i48.i)
  %i.acb = shl nuw nsw i64 %i.aca, 3
  %i.acc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acb) #31
          to label %.noexc178.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i, !noalias !786 ; 4 uses

.noexc178.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i46.i
  %i.acd = getelementptr inbounds i8, ptr %i.acc, i64 %i.abu ; 2 uses
  store i64 %i.abq, ptr %i.acd, align 8, !tbaa !64, !noalias !786
  %i.ace = icmp sgt i64 %i.abu, 0
  br i1 %i.ace, label %bb.fi, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i49.i

bb.fi:                                            ; preds = %.noexc178.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.acc, ptr align 8 %.sroa.0.4.i, i64 %i.abu, i1 false), !noalias !786
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i49.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i49.i: ; preds = %bb.fi, %.noexc178.i.i
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  %.not.i17.i.i.i.i50.i = icmp eq ptr %.sroa.0.4.i, null
  br i1 %.not.i17.i.i.i.i50.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i51.i, label %bb.fj

bb.fj:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i49.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4.i, i64 noundef %i.abu) #30, !noalias !786
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i51.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i51.i: ; preds = %bb.fj, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i49.i
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %i.acc, i64 %i.aca
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i": ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i51.i, %bb.fg, %bb.fe
  %.sroa.0.6.i = phi ptr [ %.sroa.0.4.i, %bb.fe ], [ %i.acc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i51.i ], [ %.sroa.0.4.i, %bb.fg ]
  %.sroa.29.5.i = phi ptr [ %.sroa.29.4.i, %bb.fe ], [ %i.acf, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i51.i ], [ %i.abr, %bb.fg ]
  %.sroa.61.6.i = phi ptr [ %.sroa.61.4.i, %bb.fe ], [ %i.acg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i51.i ], [ %.sroa.61.4.i, %bb.fg ]
  %i.ach = add i64 %i.abq, %.0107558.i.i
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i", !llvm.loop !749

bb.fk:                                            ; preds = %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i
  %i.aci = icmp ult i64 %i.abp, %i.zy
  br i1 %i.aci, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i", label %.thread477.i.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i": ; preds = %bb.fk
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %i.abp
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !78, !noalias !786 ; 4 uses
  br i1 %i.abe, label %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i, label %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i"

_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i: ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i", %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i
  %.05.i.i.i188.i.i = phi i64 [ %.1.i.i.i194.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i ], [ %i.abc, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i" ] ; 2 uses
  %.0114.i.i.i189.i.i = phi ptr [ %.112.i.i.i193.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i ], [ %i.abb, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i" ] ; 2 uses
  %i.acl = lshr i64 %.05.i.i.i188.i.i, 1          ; 3 uses
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %.0114.i.i.i189.i.i, i64 %i.acl ; 2 uses
  %.val.i.i.i192.i.i = load i32, ptr %i.acm, align 4, !tbaa !119, !noalias !786
  %i.acn = icmp ult i32 %.val.i.i.i192.i.i, %i.ack ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acm, i64 8
  %i.acp = xor i64 %i.acl, -1
  %i.acq = add nsw i64 %.05.i.i.i188.i.i, %i.acp
  %.112.i.i.i193.i.i = select i1 %i.acn, ptr %i.aco, ptr %.0114.i.i.i189.i.i ; 2 uses
  %.1.i.i.i194.i.i = select i1 %i.acn, i64 %i.acq, i64 %i.acl ; 2 uses
  %i.acr = icmp sgt i64 %.1.i.i.i194.i.i, 0
  br i1 %i.acr, label %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i, label %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i", !llvm.loop !2

"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i": ; preds = %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i"
  %.011.lcssa.i.i.i182.i.i = phi ptr [ %i.abb, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i" ], [ %.112.i.i.i193.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i ] ; 3 uses
  %.not.i183.i.i = icmp eq ptr %.011.lcssa.i.i.i182.i.i, %i.abd
  br i1 %.not.i183.i.i, label %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i, label %bb.fl

bb.fl:                                            ; preds = %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i"
  %i.acs = load i32, ptr %.011.lcssa.i.i.i182.i.i, align 4, !tbaa !119, !noalias !786
  %i.act = icmp eq i32 %i.acs, %i.ack
  br i1 %i.act, label %.then411.i.i, label %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i

.then411.i.i:                                     ; preds = %bb.fl
  %i.acu = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i182.i.i, i64 4
  %.0.pre.i185.then.val.i.i = load i32, ptr %i.acu, align 4, !tbaa !78, !noalias !786
  br label %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i

_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i:        ; preds = %.then411.i.i, %bb.fl, %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i"
  %.0.i186.i.i = phi i32 [ %i.ack, %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i" ], [ %.0.pre.i185.then.val.i.i, %.then411.i.i ], [ %i.ack, %bb.fl ] ; 2 uses
  %i.acv = icmp eq i32 %.0.i186.i.i, 101
  %i.acw = and i32 %.0.i.i.i, -5
  %or.cond8513.i.i = icmp eq i32 %i.acw, 114
  %or.cond.i52.i = and i1 %or.cond8513.i.i, %i.acv
  br i1 %or.cond.i52.i, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i
  %i.acx = icmp eq i32 %.0.i.i.i, 108
  %i.acy = icmp eq i32 %.0.i186.i.i, 108
  %or.cond12.i53.i = and i1 %i.acx, %i.acy
  br i1 %or.cond12.i53.i, label %bb.fn, label %.thread477.i.i

bb.fn:                                            ; preds = %bb.fm, %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i
  %i.acz = add nuw i64 %.0107558.i.i, 3           ; 3 uses
  %i.ada = sub i64 %i.acz, %.0454557.i.i          ; 3 uses
  %.not.i196.i.i = icmp eq i64 %i.acz, %.0454557.i.i
  br i1 %.not.i196.i.i, label %bb.ft, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %.not.i.i197.i.i = icmp eq ptr %.sroa.29.4.i, %.sroa.61.4.i
  br i1 %.not.i.i197.i.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  store i64 %i.ada, ptr %.sroa.29.4.i, align 8, !tbaa !64, !noalias !786
  %i.adb = getelementptr inbounds nuw i8, ptr %.sroa.29.4.i, i64 8
  br label %bb.ft

bb.fq:                                            ; preds = %bb.fo
  %i.adc = ptrtoint ptr %.sroa.29.4.i to i64
  %i.add = ptrtoint ptr %.sroa.0.4.i to i64
  %i.ade = sub i64 %i.adc, %i.add                 ; 6 uses
  %i.adf = icmp eq i64 %i.ade, 9223372036854775800
  br i1 %i.adf, label %.invoke.i25.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i198.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i198.i.i: ; preds = %bb.fq
  %i.adg = ashr exact i64 %i.ade, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i199.i.i = call i64 @llvm.umax.i64(i64 %i.adg, i64 1)
  %i.adh = add nsw i64 %.sroa.speculated.i.i.i.i199.i.i, %i.adg ; 2 uses
  %i.adi = icmp ult i64 %i.adh, %i.adg
  %i.adj = call i64 @llvm.umin.i64(i64 %i.adh, i64 1152921504606846975)
  %i.adk = select i1 %i.adi, i64 1152921504606846975, i64 %i.adj ; 3 uses
  %.not.i.i.i.i200.i.i = icmp ne i64 %i.adk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i200.i.i)
  %i.adl = shl nuw nsw i64 %i.adk, 3
  %i.adm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adl) #31
          to label %.noexc205.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i, !noalias !786 ; 4 uses

.noexc205.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i198.i.i
  %i.adn = getelementptr inbounds i8, ptr %i.adm, i64 %i.ade ; 2 uses
  store i64 %i.ada, ptr %i.adn, align 8, !tbaa !64, !noalias !786
  %i.ado = icmp sgt i64 %i.ade, 0
  br i1 %i.ado, label %bb.fr, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i

bb.fr:                                            ; preds = %.noexc205.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.adm, ptr align 8 %.sroa.0.4.i, i64 %i.ade, i1 false), !noalias !786
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i: ; preds = %bb.fr, %.noexc205.i.i
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adn, i64 8
  %.not.i17.i.i.i202.i.i = icmp eq ptr %.sroa.0.4.i, null
  br i1 %.not.i17.i.i.i202.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i, label %bb.fs

bb.fs:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4.i, i64 noundef %i.ade) #30, !noalias !786
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i: ; preds = %bb.fs, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.adm, i64 %i.adk
  br label %bb.ft

bb.ft:                                            ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i, %bb.fp, %bb.fn
  %.sroa.0.7.i = phi ptr [ %.sroa.0.4.i, %bb.fn ], [ %i.adm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i ], [ %.sroa.0.4.i, %bb.fp ]
  %.sroa.29.6.i = phi ptr [ %.sroa.29.4.i, %bb.fn ], [ %i.adp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i ], [ %i.adb, %bb.fp ]
  %.sroa.61.7.i = phi ptr [ %.sroa.61.4.i, %bb.fn ], [ %i.adq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i ], [ %.sroa.61.4.i, %bb.fp ]
  %i.adr = add i64 %i.ada, %.0107558.i.i
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

.thread477.i.i:                                   ; preds = %bb.fm, %bb.fk, %bb.fc, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"
  %i.ads = and i16 %.sroa.0.0.copyload.i.i42.i, 2
  %.not.i43.i = icmp eq i16 %i.ads, 0
  br i1 %.not.i43.i, label %bb.fu, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"

bb.fu:                                            ; preds = %.thread477.i.i
  %i.adt = and i16 %.sroa.0.0.copyload.i.i42.i, 4
  %.not130.i.i = icmp eq i16 %i.adt, 0
  br i1 %.not130.i.i, label %.thread496.i.i, label %..critedge_crit_edge.i.i

..critedge_crit_edge.i.i:                         ; preds = %bb.fu
  %.pre577.i.i = add nuw i64 %.0107558.i.i, 1
  br label %.critedge.i41.i

.thread496.i.i:                                   ; preds = %bb.fu, %.lr.ph559.i.i
  %i.adu = phi i32 [ %i.aad, %bb.fu ], [ -1, %.lr.ph559.i.i ] ; 2 uses
  %.sroa.0.0.i462479495499.i.i = phi i16 [ %.sroa.0.0.copyload.i.i42.i, %bb.fu ], [ 0, %.lr.ph559.i.i ] ; 2 uses
  %i.adv = add nuw i64 %.0107558.i.i, 1           ; 4 uses
  %.not.i207.i.i = icmp ule i64 %.0111562.i.i, %i.adv
  %i.adw = icmp ult i64 %i.adv, %i.zy
  %or.cond500.i.i = and i1 %.not.i207.i.i, %i.adw
  br i1 %or.cond500.i.i, label %bb.fv, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"

bb.fv:                                            ; preds = %.thread496.i.i
  %i.adx = load ptr, ptr %8, align 8, !tbaa !75, !noalias !786
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %i.adv
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !78, !noalias !786
  %i.aea = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !786
  %i.aeb = icmp eq i8 %i.aea, 0
  br i1 %i.aeb, label %bb.fw, label %bb.fy, !prof !80

bb.fw:                                            ; preds = %bb.fv
  %i.aec = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !786
  %.not.i507 = icmp eq i32 %i.aec, 0
  br i1 %.not.i507, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !82, !noalias !786
  %i.aed = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !786 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !786
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw, %bb.fv
  %i.aee = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !786
  %i.aef = icmp eq i8 %i.aee, 0
  br i1 %i.aef, label %bb.fz, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i", !prof !80

bb.fz:                                            ; preds = %bb.fy
  %i.aeg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !786
  %.not3.i506 = icmp eq i32 %i.aeg, 0
  br i1 %.not3.i506, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i", label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.gb unwind label %bb.gc, !noalias !786

bb.gb:                                            ; preds = %bb.ga
  %i.aeh = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !786 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !786
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i"

bb.gc:                                            ; preds = %bb.ga
  %i.aei = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !786
  br label %.body.i24.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i": ; preds = %bb.gb, %bb.fz, %bb.fy
  %i.aej = zext i32 %i.adz to i64                 ; 2 uses
  %i.aek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !85, !noalias !786
  %i.ael = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !86, !noalias !786 ; 2 uses
  %i.aem = ptrtoint ptr %i.aek to i64
  %i.aen = ptrtoint ptr %i.ael to i64
  %i.aeo = sub i64 %i.aem, %i.aen
  %i.aep = ashr exact i64 %i.aeo, 1
  %i.aeq = icmp ugt i64 %i.aep, %i.aej
  %i.aer = getelementptr inbounds nuw [2 x i8], ptr %i.ael, i64 %i.aej
  %spec.select.i504 = select i1 %i.aeq, ptr %i.aer, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i505 = load i16, ptr %spec.select.i504, align 2, !tbaa !70, !noalias !786
  %i.aes = and i16 %.sroa.0.0.copyload.i505, 4
  %.not131.i.i = icmp eq i16 %i.aes, 0
  br i1 %.not131.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i", label %.critedge.i41.i

.critedge.i41.i:                                  ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i", %..critedge_crit_edge.i.i
  %.pre-phi2169 = phi i64 [ %i.adv, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i" ], [ %.pre577.i.i, %..critedge_crit_edge.i.i ] ; 3 uses
  %.not.i211.i.i = icmp uge i64 %.pre-phi2169, %.0111562.i.i
  %.not.i211.i.fr.i = freeze i1 %.not.i211.i.i
  br i1 %.not.i211.i.fr.i, label %.critedge.i41.split.preheader.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i"

.critedge.i41.split.preheader.i:                  ; preds = %.critedge.i41.i
  %umax.i = call i64 @llvm.umax.i64(i64 %i.zy, i64 %.pre-phi2169) ; 2 uses
  %.5.i.i3644 = add i64 %.0107558.i.i, 1          ; 2 uses
  %i.aet = icmp ult i64 %.5.i.i3644, %i.zy
  br i1 %i.aet, label %.lr.ph3646, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i"

.critedge.i41.split.i:                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i"
  %.5.i.i = add i64 %.5.i.i3645, 1                ; 2 uses
  %i.aeu = icmp ult i64 %.5.i.i, %i.zy
  br i1 %i.aeu, label %.lr.ph3646, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i", !llvm.loop !750

.lr.ph3646:                                       ; preds = %.critedge.i41.split.preheader.i, %.critedge.i41.split.i
  %.5.i.i3645 = phi i64 [ %.5.i.i, %.critedge.i41.split.i ], [ %.5.i.i3644, %.critedge.i41.split.preheader.i ] ; 3 uses
  %i.aev = load ptr, ptr %8, align 8, !tbaa !75, !noalias !786
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %.5.i.i3645
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !78, !noalias !786
  %i.aey = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !786
  %i.aez = icmp eq i8 %i.aey, 0
  br i1 %i.aez, label %bb.gd, label %bb.gf, !prof !80

bb.gd:                                            ; preds = %.lr.ph3646
  %i.afa = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !786
  %.not.i335.i.i = icmp eq i32 %i.afa, 0
  br i1 %.not.i335.i.i, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !82, !noalias !786
  %i.afb = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !786 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !786
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd, %.lr.ph3646
  %i.afc = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !786
  %i.afd = icmp eq i8 %i.afc, 0
  br i1 %i.afd, label %bb.gg, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i", !prof !80

bb.gg:                                            ; preds = %bb.gf
  %i.afe = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !786
  %.not3.i334.i.i = icmp eq i32 %i.afe, 0
  br i1 %.not3.i334.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i", label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.gi unwind label %bb.gj, !noalias !786

bb.gi:                                            ; preds = %bb.gh
  %i.aff = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !786 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !786
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i"

bb.gj:                                            ; preds = %bb.gh
  %i.afg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !786
  br label %.body.i24.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i": ; preds = %bb.gi, %bb.gg, %bb.gf
  %i.afh = zext i32 %i.aex to i64                 ; 2 uses
  %i.afi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !85, !noalias !786
  %i.afj = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !86, !noalias !786 ; 2 uses
  %i.afk = ptrtoint ptr %i.afi to i64
  %i.afl = ptrtoint ptr %i.afj to i64
  %i.afm = sub i64 %i.afk, %i.afl
  %i.afn = ashr exact i64 %i.afm, 1
  %i.afo = icmp ugt i64 %i.afn, %i.afh
  %i.afp = getelementptr inbounds nuw [2 x i8], ptr %i.afj, i64 %i.afh
  %spec.select.i332.i.i = select i1 %i.afo, ptr %i.afp, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i333.i.i = load i16, ptr %spec.select.i332.i.i, align 2, !tbaa !70, !noalias !786
  %i.afq = and i16 %.sroa.0.0.copyload.i333.i.i, 4
  %.not132.i.i = icmp eq i16 %i.afq, 0
  br i1 %.not132.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i._ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i.loopexit_crit_edge", label %.critedge.i41.split.i, !llvm.loop !750

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i._ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i.loopexit_crit_edge": ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i"
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i", !llvm.loop !750

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i": ; preds = %.critedge.i41.split.i, %.critedge.i41.split.preheader.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i._ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i.loopexit_crit_edge", %.critedge.i41.i
  %.us-phi.i = phi i64 [ %.pre-phi2169, %.critedge.i41.i ], [ %umax.i, %.critedge.i41.split.preheader.i ], [ %.5.i.i3645, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i._ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i.loopexit_crit_edge" ], [ %umax.i, %.critedge.i41.split.i ] ; 6 uses
  %i.afr = sub i64 %.us-phi.i, %.0454557.i.i      ; 2 uses
  %.not.i215.i.i = icmp eq i64 %.us-phi.i, %.0454557.i.i
  br i1 %.not.i215.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i", label %bb.gk

bb.gk:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i"
  %.not.i.i216.i.i = icmp eq ptr %.sroa.29.4.i, %.sroa.61.4.i
  br i1 %.not.i.i216.i.i, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  store i64 %i.afr, ptr %.sroa.29.4.i, align 8, !tbaa !64, !noalias !786
  %i.afs = getelementptr inbounds nuw i8, ptr %.sroa.29.4.i, i64 8
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

bb.gm:                                            ; preds = %bb.gk
  %i.aft = ptrtoint ptr %.sroa.29.4.i to i64
  %i.afu = ptrtoint ptr %.sroa.0.4.i to i64
  %i.afv = sub i64 %i.aft, %i.afu                 ; 6 uses
  %i.afw = icmp eq i64 %i.afv, 9223372036854775800
  br i1 %i.afw, label %.invoke.i25.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i217.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i217.i.i: ; preds = %bb.gm
  %i.afx = ashr exact i64 %i.afv, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i218.i.i = call i64 @llvm.umax.i64(i64 %i.afx, i64 1)
  %i.afy = add nsw i64 %.sroa.speculated.i.i.i.i218.i.i, %i.afx ; 2 uses
  %i.afz = icmp ult i64 %i.afy, %i.afx
  %i.aga = call i64 @llvm.umin.i64(i64 %i.afy, i64 1152921504606846975)
  %i.agb = select i1 %i.afz, i64 1152921504606846975, i64 %i.aga ; 3 uses
  %.not.i.i.i.i219.i.i = icmp ne i64 %i.agb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i219.i.i)
  %i.agc = shl nuw nsw i64 %i.agb, 3
  %i.agd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agc) #31
          to label %.noexc224.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i, !noalias !786 ; 4 uses

.noexc224.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i217.i.i
  %i.age = getelementptr inbounds i8, ptr %i.agd, i64 %i.afv ; 2 uses
  store i64 %i.afr, ptr %i.age, align 8, !tbaa !64, !noalias !786
  %i.agf = icmp sgt i64 %i.afv, 0
  br i1 %i.agf, label %bb.gn, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i220.i.i

bb.gn:                                            ; preds = %.noexc224.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.agd, ptr align 8 %.sroa.0.4.i, i64 %i.afv, i1 false), !noalias !786
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i220.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i220.i.i: ; preds = %bb.gn, %.noexc224.i.i
  %i.agg = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  %.not.i17.i.i.i221.i.i = icmp eq ptr %.sroa.0.4.i, null
  br i1 %.not.i17.i.i.i221.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i222.i.i, label %bb.go

bb.go:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i220.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4.i, i64 noundef %i.afv) #30, !noalias !786
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i222.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i222.i.i: ; preds = %bb.go, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i220.i.i
  %i.agh = getelementptr inbounds nuw [8 x i8], ptr %i.agd, i64 %i.agb
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i": ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i", %.thread496.i.i, %.thread477.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i", %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"
  %i.agi = phi i32 [ %i.aad, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i" ], [ %i.aad, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i" ], [ %i.adu, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i" ], [ %i.aad, %.thread477.i.i ], [ %i.adu, %.thread496.i.i ]
  %.sroa.0.0.i462480.i.i = phi i16 [ %.sroa.0.0.copyload.i.i42.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i" ], [ %.sroa.0.0.copyload.i.i42.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i" ], [ %.sroa.0.0.i462479495499.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i" ], [ %.sroa.0.0.copyload.i.i42.i, %.thread477.i.i ], [ %.sroa.0.0.i462479495499.i.i, %.thread496.i.i ] ; 3 uses
  %i.agj = and i16 %.sroa.0.0.i462480.i.i, 2
  %.not133.i.i = icmp eq i16 %i.agj, 0
  br i1 %.not133.i.i, label %bb.hi, label %.preheader514.i.i

.preheader514.i.i:                                ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"
  %i.agk = icmp ult i64 %.0107558.i.i, %i.zy
  %or.cond502531.i.i = and i1 %.not.i.i23.i, %i.agk
  br i1 %or.cond502531.i.i, label %.lr.ph.i28.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.thread.i.i"

.lr.ph.i28.i:                                     ; preds = %.preheader514.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i"
  %.sroa.0.8.i = phi ptr [ %.sroa.0.9.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ], [ %.sroa.0.4.i, %.preheader514.i.i ] ; 11 uses
  %.sroa.29.7.i = phi ptr [ %.sroa.29.8.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ], [ %.sroa.29.4.i, %.preheader514.i.i ] ; 9 uses
  %.sroa.61.8.i = phi ptr [ %.sroa.61.9.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ], [ %.sroa.61.4.i, %.preheader514.i.i ] ; 6 uses
  %.0105534.i.i = phi i64 [ %.1106.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ], [ %.0107558.i.i, %.preheader514.i.i ] ; 2 uses
  %.6533.i.i = phi i64 [ %i.ahh, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ], [ %.0107558.i.i, %.preheader514.i.i ] ; 3 uses
  %.4457532.i.i = phi i64 [ %.5458.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ], [ %.0454557.i.i, %.preheader514.i.i ] ; 6 uses
  %i.agl = load ptr, ptr %8, align 8, !tbaa !75, !noalias !786
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %.6533.i.i
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !78, !noalias !786
  %i.ago = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !786
  %i.agp = icmp eq i8 %i.ago, 0
  br i1 %i.agp, label %bb.gp, label %bb.gr, !prof !80

bb.gp:                                            ; preds = %.lr.ph.i28.i
  %i.agq = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !786
  %.not.i342.i.i = icmp eq i32 %i.agq, 0
  br i1 %.not.i342.i.i, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !82, !noalias !786
  %i.agr = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !786 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !786
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp, %.lr.ph.i28.i
  %i.ags = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !786
  %i.agt = icmp eq i8 %i.ags, 0
  br i1 %i.agt, label %bb.gs, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i", !prof !80

bb.gs:                                            ; preds = %bb.gr
  %i.agu = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !786
  %.not3.i341.i.i = icmp eq i32 %i.agu, 0
  br i1 %.not3.i341.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i", label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.gu unwind label %bb.gv, !noalias !786

bb.gu:                                            ; preds = %bb.gt
  %i.agv = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !786 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !786
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i"

bb.gv:                                            ; preds = %bb.gt
  %i.agw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !786
  br label %.body.i24.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i": ; preds = %bb.gu, %bb.gs, %bb.gr
  %i.agx = zext i32 %i.agn to i64                 ; 2 uses
  %i.agy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !85, !noalias !786
  %i.agz = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !86, !noalias !786 ; 2 uses
  %i.aha = ptrtoint ptr %i.agy to i64
  %i.ahb = ptrtoint ptr %i.agz to i64
  %i.ahc = sub i64 %i.aha, %i.ahb
  %i.ahd = ashr exact i64 %i.ahc, 1
  %i.ahe = icmp ugt i64 %i.ahd, %i.agx
  %i.ahf = getelementptr inbounds nuw [2 x i8], ptr %i.agz, i64 %i.agx
  %spec.select.i339.i.i = select i1 %i.ahe, ptr %i.ahf, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i340.i.i = load i16, ptr %spec.select.i339.i.i, align 2, !tbaa !70, !noalias !786
  %i.ahg = and i16 %.sroa.0.0.copyload.i340.i.i, 2
  %.not145.i.i = icmp eq i16 %i.ahg, 0
  br i1 %.not145.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.thread.i.i", label %bb.gw

bb.gw:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i"
  %i.ahh = add nuw i64 %.6533.i.i, 1              ; 9 uses
  %i.ahi = sub i64 %i.ahh, %.0105534.i.i
  %i.ahj = icmp ugt i64 %i.ahi, 2
  br i1 %i.ahj, label %bb.gx, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i"

bb.gx:                                            ; preds = %bb.gw
  %i.ahk = sub i64 %i.ahh, %.4457532.i.i          ; 2 uses
  %.not.i230.i29.i = icmp eq i64 %i.ahh, %.4457532.i.i
  br i1 %.not.i230.i29.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i", label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %.not.i.i231.i30.i = icmp eq ptr %.sroa.29.7.i, %.sroa.61.8.i
  br i1 %.not.i.i231.i30.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  store i64 %i.ahk, ptr %.sroa.29.7.i, align 8, !tbaa !64, !noalias !786
  %i.ahl = getelementptr inbounds nuw i8, ptr %.sroa.29.7.i, i64 8
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i"

bb.ha:                                            ; preds = %bb.gy
  %i.ahm = ptrtoint ptr %.sroa.29.7.i to i64
  %i.ahn = ptrtoint ptr %.sroa.0.8.i to i64
  %i.aho = sub i64 %i.ahm, %i.ahn                 ; 6 uses
  %i.ahp = icmp eq i64 %i.aho, 9223372036854775800
  br i1 %i.ahp, label %.invoke.i25.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i31.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i31.i: ; preds = %bb.ha
  %i.ahq = ashr exact i64 %i.aho, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i233.i32.i = call i64 @llvm.umax.i64(i64 %i.ahq, i64 1)
  %i.ahr = add nsw i64 %.sroa.speculated.i.i.i.i233.i32.i, %i.ahq ; 2 uses
  %i.ahs = icmp ult i64 %i.ahr, %i.ahq
  %i.aht = call i64 @llvm.umin.i64(i64 %i.ahr, i64 1152921504606846975)
  %i.ahu = select i1 %i.ahs, i64 1152921504606846975, i64 %i.aht ; 3 uses
  %.not.i.i.i.i234.i33.i = icmp ne i64 %i.ahu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i234.i33.i)
  %i.ahv = shl nuw nsw i64 %i.ahu, 3
  %i.ahw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahv) #31
          to label %.noexc239.i34.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i, !noalias !786 ; 4 uses

.noexc239.i34.i:                                  ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i31.i
  %i.ahx = getelementptr inbounds i8, ptr %i.ahw, i64 %i.aho ; 2 uses
  store i64 %i.ahk, ptr %i.ahx, align 8, !tbaa !64, !noalias !786
  %i.ahy = icmp sgt i64 %i.aho, 0
  br i1 %i.ahy, label %bb.hb, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i35.i

bb.hb:                                            ; preds = %.noexc239.i34.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ahw, ptr align 8 %.sroa.0.8.i, i64 %i.aho, i1 false), !noalias !786
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i35.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i35.i: ; preds = %bb.hb, %.noexc239.i34.i
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8
  %.not.i17.i.i.i236.i36.i = icmp eq ptr %.sroa.0.8.i, null
  br i1 %.not.i17.i.i.i236.i36.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i37.i, label %bb.hc

bb.hc:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i35.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.8.i, i64 noundef %i.aho) #30, !noalias !786
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i37.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i37.i: ; preds = %bb.hc, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i35.i
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %i.ahw, i64 %i.ahu
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i": ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i37.i, %bb.gz, %bb.gx, %bb.gw
  %.sroa.0.9.i = phi ptr [ %.sroa.0.8.i, %bb.gx ], [ %i.ahw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i37.i ], [ %.sroa.0.8.i, %bb.gz ], [ %.sroa.0.8.i, %bb.gw ] ; 2 uses
  %.sroa.29.8.i = phi ptr [ %.sroa.29.7.i, %bb.gx ], [ %i.ahz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i37.i ], [ %i.ahl, %bb.gz ], [ %.sroa.29.7.i, %bb.gw ] ; 2 uses
end_hunk_1
