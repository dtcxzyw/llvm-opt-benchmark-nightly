Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/unicode?download=true
inline.NumInlined: 8690
inline.NumDeleted: 3216
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN2cv3dnn19unicode_regex_splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE:bb.a
  %i.of = add nsw i64 %.sroa.speculated.i.i.i.i145.i.i, %i.oe ; 2 uses
  %i.og = icmp ult i64 %i.of, %i.oe
  %i.oh = call i64 @llvm.umin.i64(i64 %i.of, i64 1152921504606846975)
  %i.oi = select i1 %i.og, i64 1152921504606846975, i64 %i.oh ; 3 uses
  %.not.i.i.i.i146.i.i = icmp ne i64 %i.oi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i146.i.i)
  %i.oj = shl nuw nsw i64 %i.oi, 3
  %i.ok = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oj) #31
          to label %.noexc151.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !787 ; 4 uses

.noexc151.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i144.i.i
  %i.ol = getelementptr inbounds i8, ptr %i.ok, i64 %i.oc ; 2 uses
  store i64 %i.ny, ptr %i.ol, align 8, !tbaa !66, !noalias !787
  %i.om = icmp sgt i64 %i.oc, 0
  br i1 %i.om, label %bb.bp, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i147.i.i

bb.bp:                                            ; preds = %.noexc151.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ok, ptr align 8 %.sroa.034.4.i, i64 %i.oc, i1 false), !noalias !787
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i147.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i147.i.i: ; preds = %bb.bp, %.noexc151.i.i
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %.not.i17.i.i.i148.i.i = icmp eq ptr %.sroa.034.4.i, null
  br i1 %.not.i17.i.i.i148.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i147.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4.i, i64 noundef %i.oc) #30, !noalias !787
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i: ; preds = %bb.bq, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i147.i.i
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %i.oi
  br label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i, %bb.bn, %bb.bl
  %.sroa.034.6.i = phi ptr [ %.sroa.034.4.i, %bb.bl ], [ %i.ok, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i ], [ %.sroa.034.4.i, %bb.bn ]
  %.sroa.25.6.i = phi ptr [ %.sroa.25.4.i, %bb.bl ], [ %i.on, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i ], [ %i.nz, %bb.bn ]
  %.sroa.51.6.i = phi ptr [ %.sroa.51.4.i, %bb.bl ], [ %i.oo, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i149.i.i ], [ %.sroa.51.4.i, %bb.bn ]
  %i.op = add i64 %i.ny, %.078431.i.i
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.bs:                                            ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"
  %i.oq = add nuw i64 %.078431.i.i, 1             ; 2 uses
  %i.or = icmp ult i64 %i.oq, %i.lu
  br i1 %i.or, label %bb.bt, label %.lr.ph426.preheader.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.os = load ptr, ptr %9, align 8, !tbaa !77, !noalias !787
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.oq
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !80, !noalias !787
  %i.ov = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !787
  %i.ow = icmp eq i8 %i.ov, 0
  br i1 %i.ow, label %bb.bu, label %bb.bw, !prof !82

bb.bu:                                            ; preds = %bb.bt
  %i.ox = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  %.not.i248.i.i = icmp eq i32 %i.ox, 0
  br i1 %.not.i248.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !787
  %i.oy = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %i.oz = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !787
  %i.pa = icmp eq i8 %i.oz, 0
  br i1 %i.pa, label %bb.bx, label %.noexc155.i.i, !prof !82

bb.bx:                                            ; preds = %bb.bw
  %i.pb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  %.not3.i247.i.i = icmp eq i32 %i.pb, 0
  br i1 %.not3.i247.i.i, label %.noexc155.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.bz unwind label %bb.ca, !noalias !787

bb.bz:                                            ; preds = %bb.by
  %i.pc = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %.noexc155.i.i

bb.ca:                                            ; preds = %bb.by
  %i.pd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %.body.i.i

.noexc155.i.i:                                    ; preds = %bb.bz, %bb.bx, %bb.bw
  %i.pe = zext i32 %i.ou to i64                   ; 2 uses
  %i.pf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !787
  %i.pg = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !787 ; 2 uses
  %i.ph = ptrtoint ptr %i.pf to i64
  %i.pi = ptrtoint ptr %i.pg to i64
  %i.pj = sub i64 %i.ph, %i.pi
  %i.pk = ashr exact i64 %i.pj, 1
  %i.pl = icmp ugt i64 %i.pk, %i.pe
  %i.pm = getelementptr inbounds nuw [2 x i8], ptr %i.pg, i64 %i.pe
  %spec.select.i245.i.i = select i1 %i.pl, ptr %i.pm, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i246.i.i = load i16, ptr %spec.select.i245.i.i, align 2, !tbaa !72, !noalias !787
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit156.i.i"

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit156.i.i": ; preds = %.noexc155.i.i, %bb.bk, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit136.thread.i.i", %bb.bd, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"
  %i.pn = phi i64 [ 1, %.noexc155.i.i ], [ 0, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i" ], [ 0, %bb.bd ], [ 0, %bb.bk ], [ 0, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit136.thread.i.i" ] ; 9 uses
  %storemerge.i.i = phi i16 [ %.sroa.0.0.copyload.i246.i.i, %.noexc155.i.i ], [ %.sroa.0.0.copyload.i.i.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i" ], [ %.sroa.0.0.copyload.i.i.i, %bb.bd ], [ %.sroa.0.0.copyload.i.i.i, %bb.bk ], [ %.sroa.0.0.copyload.i.i.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit136.thread.i.i" ] ; 4 uses
  %i.po = and i16 %storemerge.i.i, 4
  %.not.i.i = icmp eq i16 %i.po, 0
  br i1 %.not.i.i, label %bb.cn, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit156.i.i"
  %i.pp = add nuw i64 %i.pn, %.078431.i.i         ; 2 uses
  %i.pq = add nuw i64 %.078431.i.i, 1
  %i.pr = add i64 %i.pq, %i.pn
  %.not.i157.i.i = icmp uge i64 %i.pr, %.081438.i.i
  %.not.i157.i.i.fr = freeze i1 %.not.i157.i.i
  br i1 %.not.i157.i.i.fr, label %.lr.ph.i.i.preheader, label %.lr.ph.preheader.i.i.split.us

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i
  %i.ps = add nuw nsw i64 %i.pn, 1
  %i.pt = add i64 %i.ps, %.078431.i.i
  %umax2146 = call i64 @llvm.umax.i64(i64 %i.pt, i64 %i.lu) ; 2 uses
  %i.pu = add i64 %i.pp, 1                        ; 2 uses
  %i.pv = icmp ult i64 %i.pu, %i.lu
  br i1 %i.pv, label %.lr.ph3646.a, label %._crit_edge.i.i

.lr.ph.preheader.i.i.split.us:                    ; preds = %.lr.ph.preheader.i.i
  %i.pw = add i64 %i.pp, 1
  br label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i"
  %i.px = add i64 %i.pz, 1                        ; 2 uses
  %i.py = icmp ult i64 %i.px, %i.lu
  br i1 %i.py, label %.lr.ph3646.a, label %._crit_edge.i.i, !llvm.loop !745

.lr.ph3646.a:                                     ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.pz = phi i64 [ %i.px, %.lr.ph.i.i ], [ %i.pu, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.qa = load ptr, ptr %9, align 8, !tbaa !77, !noalias !787
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.pz
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !80, !noalias !787
  %i.qd = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !787
  %i.qe = icmp eq i8 %i.qd, 0
  br i1 %i.qe, label %bb.cb, label %bb.cd, !prof !82

bb.cb:                                            ; preds = %.lr.ph3646.a
  %i.qf = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  %.not.i255.i.i = icmp eq i32 %i.qf, 0
  br i1 %.not.i255.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !787
  %i.qg = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %.lr.ph3646.a
  %i.qh = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !787
  %i.qi = icmp eq i8 %i.qh, 0
  br i1 %i.qi, label %bb.ce, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i", !prof !82

bb.ce:                                            ; preds = %bb.cd
  %i.qj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  %.not3.i254.i.i = icmp eq i32 %i.qj, 0
  br i1 %.not3.i254.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i", label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.cg unwind label %bb.ch, !noalias !787

bb.cg:                                            ; preds = %bb.cf
  %i.qk = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i"

bb.ch:                                            ; preds = %bb.cf
  %i.ql = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %.body.i.i

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i": ; preds = %bb.cg, %bb.ce, %bb.cd
  %i.qm = zext i32 %i.qc to i64                   ; 2 uses
  %i.qn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !787
  %i.qo = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !787 ; 2 uses
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = ptrtoint ptr %i.qo to i64
  %i.qr = sub i64 %i.qp, %i.qq
  %i.qs = ashr exact i64 %i.qr, 1
  %i.qt = icmp ugt i64 %i.qs, %i.qm
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %i.qo, i64 %i.qm
  %spec.select.i252.i.i = select i1 %i.qt, ptr %i.qu, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i253.i.i = load i16, ptr %spec.select.i252.i.i, align 2, !tbaa !72, !noalias !787
  %i.qv = and i16 %.sroa.0.0.copyload.i253.i.i, 4
  %i.qw = icmp eq i16 %i.qv, 0
  br i1 %i.qw, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i.._crit_edge.i.i.loopexit_crit_edge", label %.lr.ph.i.i, !llvm.loop !745

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i.._crit_edge.i.i.loopexit_crit_edge": ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i"
  br label %._crit_edge.i.i, !llvm.loop !745

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i.._crit_edge.i.i.loopexit_crit_edge", %.lr.ph.preheader.i.i.split.us
  %.us-phi1528 = phi i64 [ %i.pw, %.lr.ph.preheader.i.i.split.us ], [ %i.pz, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit160.i.i.._crit_edge.i.i.loopexit_crit_edge" ], [ %umax2146, %.lr.ph.i.i.preheader ], [ %umax2146, %.lr.ph.i.i ] ; 6 uses
  %i.qx = sub i64 %.us-phi1528, %.0346429.i.i     ; 2 uses
  %.not.i161.i.i = icmp eq i64 %.us-phi1528, %.0346429.i.i
  br i1 %.not.i161.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i", label %bb.ci

bb.ci:                                            ; preds = %._crit_edge.i.i
  %.not.i.i162.i.i = icmp eq ptr %.sroa.25.4.i, %.sroa.51.4.i
  br i1 %.not.i.i162.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store i64 %i.qx, ptr %.sroa.25.4.i, align 8, !tbaa !66, !noalias !787
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.25.4.i, i64 8
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.ck:                                            ; preds = %bb.ci
  %i.qz = ptrtoint ptr %.sroa.25.4.i to i64
  %i.ra = ptrtoint ptr %.sroa.034.4.i to i64
  %i.rb = sub i64 %i.qz, %i.ra                    ; 6 uses
  %i.rc = icmp eq i64 %i.rb, 9223372036854775800
  br i1 %i.rc, label %.invoke.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i163.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i163.i.i: ; preds = %bb.ck
  %i.rd = ashr exact i64 %i.rb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i164.i.i = call i64 @llvm.umax.i64(i64 %i.rd, i64 1)
  %i.re = add nsw i64 %.sroa.speculated.i.i.i.i164.i.i, %i.rd ; 2 uses
  %i.rf = icmp ult i64 %i.re, %i.rd
  %i.rg = call i64 @llvm.umin.i64(i64 %i.re, i64 1152921504606846975)
  %i.rh = select i1 %i.rf, i64 1152921504606846975, i64 %i.rg ; 3 uses
  %.not.i.i.i.i165.i.i = icmp ne i64 %i.rh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i165.i.i)
  %i.ri = shl nuw nsw i64 %i.rh, 3
  %i.rj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ri) #31
          to label %.noexc170.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !787 ; 4 uses

.noexc170.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i163.i.i
  %i.rk = getelementptr inbounds i8, ptr %i.rj, i64 %i.rb ; 2 uses
  store i64 %i.qx, ptr %i.rk, align 8, !tbaa !66, !noalias !787
  %i.rl = icmp sgt i64 %i.rb, 0
  br i1 %i.rl, label %bb.cl, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i166.i.i

bb.cl:                                            ; preds = %.noexc170.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rj, ptr align 8 %.sroa.034.4.i, i64 %i.rb, i1 false), !noalias !787
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i166.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i166.i.i: ; preds = %bb.cl, %.noexc170.i.i
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %.not.i17.i.i.i167.i.i = icmp eq ptr %.sroa.034.4.i, null
  br i1 %.not.i17.i.i.i167.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i166.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4.i, i64 noundef %i.rb) #30, !noalias !787
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i: ; preds = %bb.cm, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i166.i.i
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %i.rh
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.cn:                                            ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit156.i.i"
  %i.ro = and i16 %storemerge.i.i, 2
  %.not100.i.i = icmp eq i16 %i.ro, 0
  br i1 %.not100.i.i, label %bb.da, label %.lr.ph417.preheader.i.i

.lr.ph417.preheader.i.i:                          ; preds = %bb.cn
  %i.rp = add nuw i64 %i.pn, %.078431.i.i         ; 2 uses
  %i.rq = add nuw i64 %.078431.i.i, 1
  %i.rr = add i64 %i.rq, %i.pn
  %.not.i172.i.i = icmp uge i64 %i.rr, %.081438.i.i
  %.not.i172.i.i.fr = freeze i1 %.not.i172.i.i
  br i1 %.not.i172.i.i.fr, label %.lr.ph417.i.i.preheader, label %.lr.ph417.preheader.i.i.split.us

.lr.ph417.i.i.preheader:                          ; preds = %.lr.ph417.preheader.i.i
  %i.rs = add nuw nsw i64 %i.pn, 1
  %i.rt = add i64 %i.rs, %.078431.i.i
  %umax2147 = call i64 @llvm.umax.i64(i64 %i.rt, i64 %i.lu) ; 2 uses
  %i.ru = add i64 %i.rp, 1                        ; 2 uses
  %i.rv = icmp ult i64 %i.ru, %i.lu
  br i1 %i.rv, label %.lr.ph3649, label %._crit_edge418.i.i

.lr.ph417.preheader.i.i.split.us:                 ; preds = %.lr.ph417.preheader.i.i
  %i.rw = add i64 %i.rp, 1
  br label %._crit_edge418.i.i

.lr.ph417.i.i:                                    ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i"
  %i.rx = add i64 %i.rz, 1                        ; 2 uses
  %i.ry = icmp ult i64 %i.rx, %i.lu
  br i1 %i.ry, label %.lr.ph3649, label %._crit_edge418.i.i, !llvm.loop !746

.lr.ph3649:                                       ; preds = %.lr.ph417.i.i.preheader, %.lr.ph417.i.i
  %i.rz = phi i64 [ %i.rx, %.lr.ph417.i.i ], [ %i.ru, %.lr.ph417.i.i.preheader ] ; 3 uses
  %i.sa = load ptr, ptr %9, align 8, !tbaa !77, !noalias !787
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %i.rz
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !80, !noalias !787
  %i.sd = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !787
  %i.se = icmp eq i8 %i.sd, 0
  br i1 %i.se, label %bb.co, label %bb.cq, !prof !82

bb.co:                                            ; preds = %.lr.ph3649
  %i.sf = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  %.not.i262.i.i = icmp eq i32 %i.sf, 0
  br i1 %.not.i262.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !787
  %i.sg = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %.lr.ph3649
  %i.sh = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !787
  %i.si = icmp eq i8 %i.sh, 0
  br i1 %i.si, label %bb.cr, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i", !prof !82

bb.cr:                                            ; preds = %bb.cq
  %i.sj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  %.not3.i261.i.i = icmp eq i32 %i.sj, 0
  br i1 %.not3.i261.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i", label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.ct unwind label %bb.cu, !noalias !787

bb.ct:                                            ; preds = %bb.cs
  %i.sk = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i"

bb.cu:                                            ; preds = %bb.cs
  %i.sl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %.body.i.i

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i": ; preds = %bb.ct, %bb.cr, %bb.cq
  %i.sm = zext i32 %i.sc to i64                   ; 2 uses
  %i.sn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !787
  %i.so = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !787 ; 2 uses
  %i.sp = ptrtoint ptr %i.sn to i64
  %i.sq = ptrtoint ptr %i.so to i64
  %i.sr = sub i64 %i.sp, %i.sq
  %i.ss = ashr exact i64 %i.sr, 1
  %i.st = icmp ugt i64 %i.ss, %i.sm
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.so, i64 %i.sm
  %spec.select.i259.i.i = select i1 %i.st, ptr %i.su, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i260.i.i = load i16, ptr %spec.select.i259.i.i, align 2, !tbaa !72, !noalias !787
  %i.sv = and i16 %.sroa.0.0.copyload.i260.i.i, 2
  %i.sw = icmp eq i16 %i.sv, 0
  br i1 %i.sw, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i.._crit_edge418.i.i.loopexit_crit_edge", label %.lr.ph417.i.i, !llvm.loop !746

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i.._crit_edge418.i.i.loopexit_crit_edge": ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i"
  br label %._crit_edge418.i.i, !llvm.loop !746

._crit_edge418.i.i:                               ; preds = %.lr.ph417.i.i, %.lr.ph417.i.i.preheader, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i.._crit_edge418.i.i.loopexit_crit_edge", %.lr.ph417.preheader.i.i.split.us
  %.us-phi1529 = phi i64 [ %i.rw, %.lr.ph417.preheader.i.i.split.us ], [ %i.rz, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit175.i.i.._crit_edge418.i.i.loopexit_crit_edge" ], [ %umax2147, %.lr.ph417.i.i.preheader ], [ %umax2147, %.lr.ph417.i.i ] ; 6 uses
  %i.sx = sub i64 %.us-phi1529, %.0346429.i.i     ; 2 uses
  %.not.i176.i.i = icmp eq i64 %.us-phi1529, %.0346429.i.i
  br i1 %.not.i176.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i", label %bb.cv

bb.cv:                                            ; preds = %._crit_edge418.i.i
  %.not.i.i177.i.i = icmp eq ptr %.sroa.25.4.i, %.sroa.51.4.i
  br i1 %.not.i.i177.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store i64 %i.sx, ptr %.sroa.25.4.i, align 8, !tbaa !66, !noalias !787
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.25.4.i, i64 8
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.cx:                                            ; preds = %bb.cv
  %i.sz = ptrtoint ptr %.sroa.25.4.i to i64
  %i.ta = ptrtoint ptr %.sroa.034.4.i to i64
  %i.tb = sub i64 %i.sz, %i.ta                    ; 6 uses
  %i.tc = icmp eq i64 %i.tb, 9223372036854775800
  br i1 %i.tc, label %.invoke.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i178.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i178.i.i: ; preds = %bb.cx
  %i.td = ashr exact i64 %i.tb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i179.i.i = call i64 @llvm.umax.i64(i64 %i.td, i64 1)
  %i.te = add nsw i64 %.sroa.speculated.i.i.i.i179.i.i, %i.td ; 2 uses
  %i.tf = icmp ult i64 %i.te, %i.td
  %i.tg = call i64 @llvm.umin.i64(i64 %i.te, i64 1152921504606846975)
  %i.th = select i1 %i.tf, i64 1152921504606846975, i64 %i.tg ; 3 uses
  %.not.i.i.i.i180.i.i = icmp ne i64 %i.th, 0
  call void @llvm.assume(i1 %.not.i.i.i.i180.i.i)
  %i.ti = shl nuw nsw i64 %i.th, 3
  %i.tj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ti) #31
          to label %.noexc185.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !787 ; 4 uses

.noexc185.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i178.i.i
  %i.tk = getelementptr inbounds i8, ptr %i.tj, i64 %i.tb ; 2 uses
  store i64 %i.sx, ptr %i.tk, align 8, !tbaa !66, !noalias !787
  %i.tl = icmp sgt i64 %i.tb, 0
  br i1 %i.tl, label %bb.cy, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i181.i.i

bb.cy:                                            ; preds = %.noexc185.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tj, ptr align 8 %.sroa.034.4.i, i64 %i.tb, i1 false), !noalias !787
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i181.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i181.i.i: ; preds = %bb.cy, %.noexc185.i.i
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %.not.i17.i.i.i182.i.i = icmp eq ptr %.sroa.034.4.i, null
  br i1 %.not.i17.i.i.i182.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i181.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4.i, i64 noundef %i.tb) #30, !noalias !787
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i: ; preds = %bb.cz, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i181.i.i
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %i.th
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.da:                                            ; preds = %bb.cn
  %i.to = and i16 %storemerge.i.i, 256
  %.not101.i.i = icmp ne i16 %i.to, 0
  %.not102.i.i = icmp eq i16 %storemerge.i.i, 0
  %or.cond395.i.i = or i1 %.not102.i.i, %.not101.i.i
  br i1 %or.cond395.i.i, label %.lr.ph426.preheader.i.i, label %.lr.ph422.preheader.i.i

.lr.ph422.preheader.i.i:                          ; preds = %bb.da
  %i.tp = add nuw i64 %i.pn, %.078431.i.i         ; 2 uses
  %i.tq = add nuw i64 %.078431.i.i, 1
  %i.tr = add i64 %i.tq, %i.pn
  %.not.i187.i.i = icmp uge i64 %i.tr, %.081438.i.i
  %.not.i187.i.i.fr = freeze i1 %.not.i187.i.i
  br i1 %.not.i187.i.i.fr, label %.lr.ph422.i.i.preheader, label %.lr.ph422.preheader.i.i.split.us

.lr.ph422.i.i.preheader:                          ; preds = %.lr.ph422.preheader.i.i
  %i.ts = add nuw nsw i64 %i.pn, 1
  %i.tt = add i64 %i.ts, %.078431.i.i
  %umax2148 = call i64 @llvm.umax.i64(i64 %i.tt, i64 %i.lu) ; 2 uses
  %i.tu = add i64 %i.tp, 1                        ; 2 uses
  %i.tv = icmp ult i64 %i.tu, %i.lu
  br i1 %i.tv, label %.lr.ph3652, label %.critedge.i.i

.lr.ph422.preheader.i.i.split.us:                 ; preds = %.lr.ph422.preheader.i.i
  %i.tw = add i64 %i.tp, 1
  br label %.critedge.i.i

.lr.ph422.i.i:                                    ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i"
  %i.tx = add i64 %i.tz, 1                        ; 2 uses
  %i.ty = icmp ult i64 %i.tx, %i.lu
  br i1 %i.ty, label %.lr.ph3652, label %.critedge.i.i, !llvm.loop !747

.lr.ph3652:                                       ; preds = %.lr.ph422.i.i.preheader, %.lr.ph422.i.i
  %i.tz = phi i64 [ %i.tx, %.lr.ph422.i.i ], [ %i.tu, %.lr.ph422.i.i.preheader ] ; 3 uses
  %i.ua = load ptr, ptr %9, align 8, !tbaa !77, !noalias !787
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %i.tz
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !80, !noalias !787
  %i.ud = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !787
  %i.ue = icmp eq i8 %i.ud, 0
  br i1 %i.ue, label %bb.db, label %bb.dd, !prof !82

bb.db:                                            ; preds = %.lr.ph3652
  %i.uf = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  %.not.i269.i.i = icmp eq i32 %i.uf, 0
  br i1 %.not.i269.i.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !787
  %i.ug = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %.lr.ph3652
  %i.uh = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !787
  %i.ui = icmp eq i8 %i.uh, 0
  br i1 %i.ui, label %bb.de, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i", !prof !82

bb.de:                                            ; preds = %bb.dd
  %i.uj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  %.not3.i268.i.i = icmp eq i32 %i.uj, 0
  br i1 %.not3.i268.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i", label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.dg unwind label %bb.dh, !noalias !787

bb.dg:                                            ; preds = %bb.df
  %i.uk = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i"

bb.dh:                                            ; preds = %bb.df
  %i.ul = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %.body.i.i

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i": ; preds = %bb.dg, %bb.de, %bb.dd
  %i.um = zext i32 %i.uc to i64                   ; 2 uses
  %i.un = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !787
  %i.uo = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !787 ; 2 uses
  %i.up = ptrtoint ptr %i.un to i64
  %i.uq = ptrtoint ptr %i.uo to i64
  %i.ur = sub i64 %i.up, %i.uq
  %i.us = ashr exact i64 %i.ur, 1
  %i.ut = icmp ugt i64 %i.us, %i.um
  %i.uu = getelementptr inbounds nuw [2 x i8], ptr %i.uo, i64 %i.um
  %spec.select.i266.i.i = select i1 %i.ut, ptr %i.uu, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i267.i.i = load i16, ptr %spec.select.i266.i.i, align 2, !tbaa !72, !noalias !787 ; 2 uses
  %i.uv = and i16 %.sroa.0.0.copyload.i267.i.i, 262
  %i.uw = icmp ne i16 %i.uv, 0
  %.not104.i.i = icmp eq i16 %.sroa.0.0.copyload.i267.i.i, 0
  %or.cond396.i.i = or i1 %.not104.i.i, %i.uw
  br i1 %or.cond396.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i..critedge.i.i.loopexit_crit_edge", label %.lr.ph422.i.i, !llvm.loop !747

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i..critedge.i.i.loopexit_crit_edge": ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i"
  br label %.critedge.i.i, !llvm.loop !747

.critedge.i.i:                                    ; preds = %.lr.ph422.i.i, %.lr.ph422.i.i.preheader, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i..critedge.i.i.loopexit_crit_edge", %.lr.ph422.preheader.i.i.split.us
  %.us-phi1530 = phi i64 [ %i.tw, %.lr.ph422.preheader.i.i.split.us ], [ %i.tz, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit190.i.i..critedge.i.i.loopexit_crit_edge" ], [ %umax2148, %.lr.ph422.i.i.preheader ], [ %umax2148, %.lr.ph422.i.i ] ; 6 uses
  %i.ux = sub i64 %.us-phi1530, %.0346429.i.i     ; 2 uses
  %.not.i191.i.i = icmp eq i64 %.us-phi1530, %.0346429.i.i
  br i1 %.not.i191.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i", label %bb.di

bb.di:                                            ; preds = %.critedge.i.i
  %.not.i.i192.i.i = icmp eq ptr %.sroa.25.4.i, %.sroa.51.4.i
  br i1 %.not.i.i192.i.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  store i64 %i.ux, ptr %.sroa.25.4.i, align 8, !tbaa !66, !noalias !787
  %i.uy = getelementptr inbounds nuw i8, ptr %.sroa.25.4.i, i64 8
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.dk:                                            ; preds = %bb.di
  %i.uz = ptrtoint ptr %.sroa.25.4.i to i64
  %i.va = ptrtoint ptr %.sroa.034.4.i to i64
  %i.vb = sub i64 %i.uz, %i.va                    ; 6 uses
  %i.vc = icmp eq i64 %i.vb, 9223372036854775800
  br i1 %i.vc, label %.invoke.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i193.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i193.i.i: ; preds = %bb.dk
  %i.vd = ashr exact i64 %i.vb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i194.i.i = call i64 @llvm.umax.i64(i64 %i.vd, i64 1)
  %i.ve = add nsw i64 %.sroa.speculated.i.i.i.i194.i.i, %i.vd ; 2 uses
  %i.vf = icmp ult i64 %i.ve, %i.vd
  %i.vg = call i64 @llvm.umin.i64(i64 %i.ve, i64 1152921504606846975)
  %i.vh = select i1 %i.vf, i64 1152921504606846975, i64 %i.vg ; 3 uses
  %.not.i.i.i.i195.i.i = icmp ne i64 %i.vh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i195.i.i)
  %i.vi = shl nuw nsw i64 %i.vh, 3
  %i.vj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vi) #31
          to label %.noexc200.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !787 ; 4 uses

.noexc200.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i193.i.i
  %i.vk = getelementptr inbounds i8, ptr %i.vj, i64 %i.vb ; 2 uses
  store i64 %i.ux, ptr %i.vk, align 8, !tbaa !66, !noalias !787
  %i.vl = icmp sgt i64 %i.vb, 0
  br i1 %i.vl, label %bb.dl, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i196.i.i

bb.dl:                                            ; preds = %.noexc200.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.vj, ptr align 8 %.sroa.034.4.i, i64 %i.vb, i1 false), !noalias !787
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i196.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i196.i.i: ; preds = %bb.dl, %.noexc200.i.i
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %.not.i17.i.i.i197.i.i = icmp eq ptr %.sroa.034.4.i, null
  br i1 %.not.i17.i.i.i197.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i196.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4.i, i64 noundef %i.vb) #30, !noalias !787
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i: ; preds = %bb.dm, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i196.i.i
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %i.vh
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

.lr.ph426.preheader.i.i:                          ; preds = %bb.da, %bb.bs
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.078431.i.i, i64 %i.lu) ; 3 uses
  %i.vo = sub nuw i64 %umax.i.i, %.078431.i.i     ; 4 uses
  %exitcond.not.i.i3655 = icmp eq i64 %i.vo, 0
  br i1 %exitcond.not.i.i3655, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread.i.i", label %.lr.ph3657

.lr.ph426.i.i:                                    ; preds = %bb.du
  %exitcond.not.i.i = icmp eq i64 %i.wm, %i.vo
  br i1 %exitcond.not.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread.i.i", label %.lr.ph3657, !llvm.loop !748

.lr.ph3657:                                       ; preds = %.lr.ph426.preheader.i.i, %.lr.ph426.i.i
  %.0425.i.i3656 = phi i64 [ %i.wm, %.lr.ph426.i.i ], [ 0, %.lr.ph426.preheader.i.i ] ; 5 uses
  %i.vp = add nuw i64 %.0425.i.i3656, %.078431.i.i ; 6 uses
  %i.vq = load ptr, ptr %9, align 8, !tbaa !77, !noalias !787
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %i.vp
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !80, !noalias !787
  %i.vt = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !787
  %i.vu = icmp eq i8 %i.vt, 0
  br i1 %i.vu, label %bb.dn, label %bb.dp, !prof !82

bb.dn:                                            ; preds = %.lr.ph3657
  %i.vv = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  %.not.i276.i.i = icmp eq i32 %i.vv, 0
  br i1 %.not.i276.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !787
  %i.vw = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !787
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %.lr.ph3657
  %i.vx = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !787
  %i.vy = icmp eq i8 %i.vx, 0
  br i1 %i.vy, label %bb.dq, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.i.i", !prof !82

bb.dq:                                            ; preds = %bb.dp
  %i.vz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  %.not3.i275.i.i = icmp eq i32 %i.vz, 0
  br i1 %.not3.i275.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.i.i", label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.ds unwind label %bb.dt, !noalias !787

bb.ds:                                            ; preds = %bb.dr
  %i.wa = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !787 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.i.i"

bb.dt:                                            ; preds = %bb.dr
  %i.wb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !787
  br label %.body.i.i

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.i.i": ; preds = %bb.ds, %bb.dq, %bb.dp
  %i.wc = zext i32 %i.vs to i64                   ; 2 uses
  %i.wd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !787
  %i.we = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !787 ; 2 uses
  %i.wf = ptrtoint ptr %i.wd to i64
  %i.wg = ptrtoint ptr %i.we to i64
  %i.wh = sub i64 %i.wf, %i.wg
  %i.wi = ashr exact i64 %i.wh, 1
  %i.wj = icmp ugt i64 %i.wi, %i.wc
  %i.wk = getelementptr inbounds nuw [2 x i8], ptr %i.we, i64 %i.wc
  %spec.select.i273.i.i = select i1 %i.wj, ptr %i.wk, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i274.i.i = load i16, ptr %spec.select.i273.i.i, align 2, !tbaa !72, !noalias !787
  %i.wl = and i16 %.sroa.0.0.copyload.i274.i.i, 256
  %.not105.i.i = icmp eq i16 %i.wl, 0
  br i1 %.not105.i.i, label %.thread385.i.i, label %bb.du

bb.du:                                            ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.i.i"
  %i.wm = add i64 %.0425.i.i3656, 1               ; 4 uses
  %i.wn = add i64 %i.wm, %.078431.i.i             ; 2 uses
  %.not.i202.i.i = icmp ugt i64 %.081438.i.i, %i.wn
  br i1 %.not.i202.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.i.i", label %.lr.ph426.i.i, !llvm.loop !748

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.i.i": ; preds = %bb.du
  %i.wo = icmp eq i64 %i.wm, 0
  br i1 %i.wo, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread528.i.i", label %.thread389.i.i

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread.i.i": ; preds = %.lr.ph426.i.i, %.lr.ph426.preheader.i.i
  %i.wp = icmp ugt i64 %i.vo, 1
  br i1 %i.wp, label %.thread389.i.i, label %bb.eb

.thread385.i.i:                                   ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.i.i"
  %i.wq = icmp ugt i64 %.0425.i.i3656, 1
  br i1 %i.wq, label %.thread386.i.i, label %bb.eb

.thread386.i.i:                                   ; preds = %.thread385.i.i
  %i.wr = icmp ult i64 %i.vp, %i.lu
  br i1 %i.wr, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit207.i.i", label %.thread389.i.i

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit207.i.i": ; preds = %.thread386.i.i
  %i.ws = load ptr, ptr %9, align 8, !tbaa !77, !noalias !787
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %i.vp
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !80, !noalias !787
  %.not106.i.i = icmp eq i32 %i.wu, -1
  br i1 %.not106.i.i, label %.thread389.i.i, label %bb.dv

bb.dv:                                            ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit207.i.i"
  %i.wv = add i64 %.078431.i.i, -1
  %i.ww = add i64 %i.wv, %.0425.i.i3656           ; 6 uses
  %i.wx = sub i64 %i.ww, %.0346429.i.i            ; 2 uses
  %.not.i208.i.i = icmp eq i64 %i.ww, %.0346429.i.i
  br i1 %.not.i208.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i", label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.not.i.i209.i.i = icmp eq ptr %.sroa.25.4.i, %.sroa.51.4.i
  br i1 %.not.i.i209.i.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  store i64 %i.wx, ptr %.sroa.25.4.i, align 8, !tbaa !66, !noalias !787
  %i.wy = getelementptr inbounds nuw i8, ptr %.sroa.25.4.i, i64 8
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.dy:                                            ; preds = %bb.dw
  %i.wz = ptrtoint ptr %.sroa.25.4.i to i64
  %i.xa = ptrtoint ptr %.sroa.034.4.i to i64
  %i.xb = sub i64 %i.wz, %i.xa                    ; 6 uses
  %i.xc = icmp eq i64 %i.xb, 9223372036854775800
  br i1 %i.xc, label %.invoke.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i210.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i210.i.i: ; preds = %bb.dy
  %i.xd = ashr exact i64 %i.xb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i211.i.i = call i64 @llvm.umax.i64(i64 %i.xd, i64 1)
  %i.xe = add nsw i64 %.sroa.speculated.i.i.i.i211.i.i, %i.xd ; 2 uses
  %i.xf = icmp ult i64 %i.xe, %i.xd
  %i.xg = call i64 @llvm.umin.i64(i64 %i.xe, i64 1152921504606846975)
  %i.xh = select i1 %i.xf, i64 1152921504606846975, i64 %i.xg ; 3 uses
  %.not.i.i.i.i212.i.i = icmp ne i64 %i.xh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i212.i.i)
  %i.xi = shl nuw nsw i64 %i.xh, 3
  %i.xj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xi) #31
          to label %.noexc217.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !787 ; 4 uses

.noexc217.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i210.i.i
  %i.xk = getelementptr inbounds i8, ptr %i.xj, i64 %i.xb ; 2 uses
  store i64 %i.wx, ptr %i.xk, align 8, !tbaa !66, !noalias !787
  %i.xl = icmp sgt i64 %i.xb, 0
  br i1 %i.xl, label %bb.dz, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i213.i.i

bb.dz:                                            ; preds = %.noexc217.i.i
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn19unicode_regex_splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE:bb.a
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yc, ptr align 8 %.sroa.034.4.i, i64 %i.xu, i1 false), !noalias !787
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i224.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i224.i.i: ; preds = %bb.ef, %.noexc228.i.i
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %.not.i17.i.i.i225.i.i = icmp eq ptr %.sroa.034.4.i, null
  br i1 %.not.i17.i.i.i225.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i224.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4.i, i64 noundef %i.xu) #30, !noalias !787
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i: ; preds = %bb.eg, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i224.i.i
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.yc, i64 %i.ya
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread528.i.i": ; preds = %bb.eb, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.i.i", %.lr.ph434.i.i
  %i.yh = add i64 %.078431.i.i, 1                 ; 6 uses
  %i.yi = sub i64 %i.yh, %.0346429.i.i            ; 2 uses
  %.not.i230.i.i = icmp eq i64 %i.yh, %.0346429.i.i
  br i1 %.not.i230.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i", label %bb.eh

bb.eh:                                            ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread528.i.i"
  %.not.i.i231.i.i = icmp eq ptr %.sroa.25.4.i, %.sroa.51.4.i
  br i1 %.not.i.i231.i.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  store i64 %i.yi, ptr %.sroa.25.4.i, align 8, !tbaa !66, !noalias !787
  %i.yj = getelementptr inbounds nuw i8, ptr %.sroa.25.4.i, i64 8
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.ej:                                            ; preds = %bb.eh
  %i.yk = ptrtoint ptr %.sroa.25.4.i to i64
  %i.yl = ptrtoint ptr %.sroa.034.4.i to i64
  %i.ym = sub i64 %i.yk, %i.yl                    ; 6 uses
  %i.yn = icmp eq i64 %i.ym, 9223372036854775800
  br i1 %i.yn, label %.invoke.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i.i: ; preds = %bb.ej
  %i.yo = ashr exact i64 %i.ym, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i233.i.i = call i64 @llvm.umax.i64(i64 %i.yo, i64 1)
  %i.yp = add nsw i64 %.sroa.speculated.i.i.i.i233.i.i, %i.yo ; 2 uses
  %i.yq = icmp ult i64 %i.yp, %i.yo
  %i.yr = call i64 @llvm.umin.i64(i64 %i.yp, i64 1152921504606846975)
  %i.ys = select i1 %i.yq, i64 1152921504606846975, i64 %i.yr ; 3 uses
  %.not.i.i.i.i234.i.i = icmp ne i64 %i.ys, 0
  call void @llvm.assume(i1 %.not.i.i.i.i234.i.i)
  %i.yt = shl nuw nsw i64 %i.ys, 3
  %i.yu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yt) #31
          to label %.noexc239.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !787 ; 4 uses

.noexc239.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i.i
  %i.yv = getelementptr inbounds i8, ptr %i.yu, i64 %i.ym ; 2 uses
  store i64 %i.yi, ptr %i.yv, align 8, !tbaa !66, !noalias !787
  %i.yw = icmp sgt i64 %i.ym, 0
  br i1 %i.yw, label %bb.ek, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i

bb.ek:                                            ; preds = %.noexc239.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yu, ptr align 8 %.sroa.034.4.i, i64 %i.ym, i1 false), !noalias !787
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i: ; preds = %bb.ek, %.noexc239.i.i
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  %.not.i17.i.i.i236.i.i = icmp eq ptr %.sroa.034.4.i, null
  br i1 %.not.i17.i.i.i236.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i, label %bb.el

bb.el:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4.i, i64 noundef %i.ym) #30, !noalias !787
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i: ; preds = %bb.el, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.yu, i64 %i.ys
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i": ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i, %bb.ei, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread528.i.i", %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i, %bb.ed, %.thread389.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i, %bb.dx, %bb.dv, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i, %bb.dj, %.critedge.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i, %bb.cw, %._crit_edge418.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i, %bb.cj, %._crit_edge.i.i, %bb.br, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i"
  %.sroa.034.7.i = phi ptr [ %.sroa.034.4.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread528.i.i" ], [ %i.yu, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %.sroa.034.4.i, %bb.ei ], [ %.sroa.034.4.i, %.thread389.i.i ], [ %i.yc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %.sroa.034.4.i, %bb.ed ], [ %.sroa.034.4.i, %bb.dv ], [ %i.xj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %.sroa.034.4.i, %bb.dx ], [ %.sroa.034.4.i, %.critedge.i.i ], [ %i.vj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %.sroa.034.4.i, %bb.dj ], [ %.sroa.034.4.i, %._crit_edge418.i.i ], [ %i.tj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %.sroa.034.4.i, %bb.cw ], [ %.sroa.034.4.i, %._crit_edge.i.i ], [ %i.rj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %.sroa.034.4.i, %bb.cj ], [ %.sroa.034.6.i, %bb.br ], [ %.sroa.034.5.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %.sroa.25.7.i = phi ptr [ %.sroa.25.4.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread528.i.i" ], [ %i.yx, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %i.yj, %bb.ei ], [ %.sroa.25.4.i, %.thread389.i.i ], [ %i.yf, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %i.xr, %bb.ed ], [ %.sroa.25.4.i, %bb.dv ], [ %i.xm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %i.wy, %bb.dx ], [ %.sroa.25.4.i, %.critedge.i.i ], [ %i.vm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %i.uy, %bb.dj ], [ %.sroa.25.4.i, %._crit_edge418.i.i ], [ %i.tm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %i.sy, %bb.cw ], [ %.sroa.25.4.i, %._crit_edge.i.i ], [ %i.rm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %i.qy, %bb.cj ], [ %.sroa.25.6.i, %bb.br ], [ %.sroa.25.5.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %.sroa.51.7.i = phi ptr [ %.sroa.51.4.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread528.i.i" ], [ %i.yy, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %.sroa.51.4.i, %bb.ei ], [ %.sroa.51.4.i, %.thread389.i.i ], [ %i.yg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %.sroa.51.4.i, %bb.ed ], [ %.sroa.51.4.i, %bb.dv ], [ %i.xn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %.sroa.51.4.i, %bb.dx ], [ %.sroa.51.4.i, %.critedge.i.i ], [ %i.vn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %.sroa.51.4.i, %bb.dj ], [ %.sroa.51.4.i, %._crit_edge418.i.i ], [ %i.tn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %.sroa.51.4.i, %bb.cw ], [ %.sroa.51.4.i, %._crit_edge.i.i ], [ %i.rn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %.sroa.51.4.i, %bb.cj ], [ %.sroa.51.6.i, %bb.br ], [ %.sroa.51.5.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %.5350.i.i = phi i64 [ %.0346429.i.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread528.i.i" ], [ %i.yh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %i.yh, %bb.ei ], [ %.0346429.i.i, %.thread389.i.i ], [ %i.xp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %i.xp, %bb.ed ], [ %.0346429.i.i, %bb.dv ], [ %i.ww, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %i.ww, %bb.dx ], [ %.0346429.i.i, %.critedge.i.i ], [ %.us-phi1530, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %.us-phi1530, %bb.dj ], [ %.0346429.i.i, %._crit_edge418.i.i ], [ %.us-phi1529, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %.us-phi1529, %bb.cw ], [ %.0346429.i.i, %._crit_edge.i.i ], [ %.us-phi1528, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %.us-phi1528, %bb.cj ], [ %i.nx, %bb.br ], [ %i.mx, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ]
  %.10.i.i = phi i64 [ %.0346429.i.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread528.i.i" ], [ %i.yh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %i.yh, %bb.ei ], [ %.0346429.i.i, %.thread389.i.i ], [ %i.xp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %i.xp, %bb.ed ], [ %.0346429.i.i, %bb.dv ], [ %i.ww, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %i.ww, %bb.dx ], [ %.0346429.i.i, %.critedge.i.i ], [ %.us-phi1530, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %.us-phi1530, %bb.dj ], [ %.0346429.i.i, %._crit_edge418.i.i ], [ %.us-phi1529, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %.us-phi1529, %bb.cw ], [ %.0346429.i.i, %._crit_edge.i.i ], [ %.us-phi1528, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %.us-phi1528, %bb.cj ], [ %i.op, %bb.br ], [ %i.np, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %i.yz = icmp ult i64 %.10.i.i, %i.lu
  br i1 %i.yz, label %.lr.ph434.i.i, label %._crit_edge435.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.dt, %bb.dh, %bb.cu, %bb.ch, %bb.ca, %bb.bc
  %.sroa.51.4188.i = phi ptr [ %.sroa.51.4.i, %bb.bc ], [ %.sroa.51.4.i, %bb.dt ], [ %.sroa.51.4.i, %bb.ca ], [ %.sroa.51.4.i, %bb.ch ], [ %.sroa.51.4.i, %bb.cu ], [ %.sroa.51.4.i, %bb.dh ], [ %.sroa.25.4.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn112.pn.i.i = phi { ptr, i32 } [ %i.mi, %bb.bc ], [ %i.wb, %bb.dt ], [ %i.pd, %bb.ca ], [ %i.ql, %bb.ch ], [ %i.sl, %bb.cu ], [ %i.ul, %bb.dh ], [ %lpad.loopexit.split-lp3672, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.za = load ptr, ptr %9, align 8, !tbaa !77, !noalias !787 ; 3 uses
  %.not.i.i.i241.i.i = icmp eq ptr %i.za, null
  br i1 %.not.i.i.i241.i.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %.body.i.i
  %i.zb = load ptr, ptr %i.is, align 8, !tbaa !79, !noalias !787
  %i.zc = ptrtoint ptr %i.zb to i64
  %i.zd = ptrtoint ptr %i.za to i64
  %i.ze = sub i64 %i.zc, %i.zd
  call void @_ZdlPvm(ptr noundef nonnull %i.za, i64 noundef %i.ze) #30, !noalias !787
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %.body.i.i, %bb.au
  %.sroa.034.8.i = phi ptr [ %.sroa.034.4.i, %.body.i.i ], [ %.sroa.034.4.i, %bb.em ], [ %.sroa.034.0.i, %bb.au ] ; 3 uses
  %.sroa.51.8.i = phi ptr [ %.sroa.51.4188.i, %.body.i.i ], [ %.sroa.51.4188.i, %bb.em ], [ %.sroa.51.0.i, %bb.au ]
  %.pn112.pn.pn.i.i = phi { ptr, i32 } [ %.pn112.pn.i.i, %.body.i.i ], [ %.pn112.pn.i.i, %bb.em ], [ %i.ls, %bb.au ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !787
  %.not.i.i.i243.i.i = icmp eq ptr %.sroa.034.8.i, null
  br i1 %.not.i.i.i243.i.i, label %.body246, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.zf = ptrtoint ptr %.sroa.51.8.i to i64
  %i.zg = ptrtoint ptr %.sroa.034.8.i to i64
  %i.zh = sub i64 %i.zf, %i.zg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.8.i, i64 noundef %i.zh) #30, !noalias !787
  br label %.body246

bb.ep:                                            ; preds = %bb.at, %._crit_edge441.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !787
  br label %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i: ; preds = %bb.aq
  %bcmp.i14.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(115) %.val, ptr noundef nonnull dereferenceable(115) @.str.20, i64 115), !noalias !786
  %i.zi = icmp eq i32 %bcmp.i14.i, 0
  br i1 %i.zi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread.i, label %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i: ; preds = %bb.aq
  %bcmp.i16.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(144) %.val, ptr noundef nonnull dereferenceable(144) @.str.21, i64 144), !noalias !786
  %i.zj = icmp eq i32 %bcmp.i16.i, 0
  br i1 %i.zj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread.i, label %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i
  %i.zk = ptrtoint ptr %.sroa.24.01550 to i64
  %i.zl = ptrtoint ptr %.sroa.0593.01549 to i64
  %i.zm = sub i64 %i.zk, %i.zl                    ; 3 uses
  %i.zn = icmp ugt i64 %i.zm, 9223372036854775800
  br i1 %i.zn, label %.noexc.i.invoke.i, label %bb.eq

bb.eq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread.i
  %.not640.i.i = icmp eq ptr %.sroa.24.01550, %.sroa.0593.01549 ; 2 uses
  br i1 %.not640.i.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i18.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i18.i: ; preds = %bb.eq
  %i.zo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zm) #31
          to label %.noexc57.i unwind label %.loopexit.split-lp753.loopexit.split-lp, !noalias !786 ; 2 uses

.noexc57.i:                                       ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i18.i
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 %i.zm
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i

_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i:        ; preds = %.noexc57.i, %bb.eq
  %.sroa.0.0.i = phi ptr [ null, %bb.eq ], [ %i.zo, %.noexc57.i ] ; 5 uses
  %.sroa.61.0.i = phi ptr [ null, %bb.eq ], [ %i.zp, %.noexc57.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !788
  invoke void @_ZN2cv3dnn22unicode_cpts_from_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %8, ptr noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %bb.er unwind label %bb.et, !noalias !788

bb.er:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i
  br i1 %.not640.i.i, label %._crit_edge565.i.i, label %.lr.ph564.i.i

._crit_edge565.i.i:                               ; preds = %._crit_edge.i21.i, %bb.er
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %bb.er ], [ %.sroa.0.3.i, %._crit_edge.i21.i ]
  %.sroa.29.1.i = phi ptr [ %.sroa.0.0.i, %bb.er ], [ %.sroa.29.3.i, %._crit_edge.i21.i ]
  %.sroa.61.1.i = phi ptr [ %.sroa.61.0.i, %bb.er ], [ %.sroa.61.3.i, %._crit_edge.i21.i ]
  %i.zq = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788 ; 3 uses
  %.not.i.i.i.i22.i = icmp eq ptr %i.zq, null
  br i1 %.not.i.i.i.i22.i, label %bb.jx, label %bb.es

bb.es:                                            ; preds = %._crit_edge565.i.i
  %i.zr = load ptr, ptr %i.ir, align 8, !tbaa !79, !noalias !788
  %i.zs = ptrtoint ptr %i.zr to i64
  %i.zt = ptrtoint ptr %i.zq to i64
  %i.zu = sub i64 %i.zs, %i.zt
  call void @_ZdlPvm(ptr noundef nonnull %i.zq, i64 noundef %i.zu) #30, !noalias !788
  br label %bb.jx

bb.et:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i
  %i.zv = landingpad { ptr, i32 }
          cleanup
  br label %bb.jv

.lr.ph564.i.i:                                    ; preds = %bb.er, %._crit_edge.i21.i
  %.sroa.0.2.i = phi ptr [ %.sroa.0.3.i, %._crit_edge.i21.i ], [ %.sroa.0.0.i, %bb.er ] ; 2 uses
  %.sroa.29.2.i = phi ptr [ %.sroa.29.3.i, %._crit_edge.i21.i ], [ %.sroa.0.0.i, %bb.er ] ; 2 uses
  %.sroa.61.2.i = phi ptr [ %.sroa.61.3.i, %._crit_edge.i21.i ], [ %.sroa.61.0.i, %bb.er ] ; 2 uses
  %.0111562.i.i = phi i64 [ %i.zx, %._crit_edge.i21.i ], [ 0, %bb.er ] ; 11 uses
  %.sroa.0407.0561.i.i = phi ptr [ %i.zz, %._crit_edge.i21.i ], [ %.sroa.0593.01549, %bb.er ] ; 2 uses
  %i.zw = load i64, ptr %.sroa.0407.0561.i.i, align 8, !tbaa !66, !noalias !788
  %i.zx = add i64 %i.zw, %.0111562.i.i            ; 23 uses
  %i.zy = icmp ult i64 %.0111562.i.i, %i.zx
  br i1 %i.zy, label %.lr.ph559.i.i, label %._crit_edge.i21.i

._crit_edge.i21.i:                                ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i", %.lr.ph564.i.i
  %.sroa.0.3.i = phi ptr [ %.sroa.0.2.i, %.lr.ph564.i.i ], [ %.sroa.0.12.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ] ; 2 uses
  %.sroa.29.3.i = phi ptr [ %.sroa.29.2.i, %.lr.ph564.i.i ], [ %.sroa.29.10.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ] ; 2 uses
  %.sroa.61.3.i = phi ptr [ %.sroa.61.2.i, %.lr.ph564.i.i ], [ %.sroa.61.12.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ] ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.sroa.0407.0561.i.i, i64 8 ; 2 uses
  %.not512.i.i = icmp eq ptr %i.zz, %.sroa.24.01550
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
  %i.aaa = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %.0107558.i.i
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !80, !noalias !788 ; 6 uses
  %i.aad = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !788
  %i.aae = icmp eq i8 %i.aad, 0
  br i1 %i.aae, label %bb.ev, label %bb.ex, !prof !82

bb.ev:                                            ; preds = %bb.eu
  %i.aaf = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  %.not.i331.i.i = icmp eq i32 %i.aaf, 0
  br i1 %.not.i331.i.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !788
  %i.aag = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %bb.eu
  %i.aah = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !788
  %i.aai = icmp eq i8 %i.aah, 0
  br i1 %i.aai, label %bb.ey, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i", !prof !82

bb.ey:                                            ; preds = %bb.ex
  %i.aaj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  %.not3.i.i54.i = icmp eq i32 %i.aaj, 0
  br i1 %.not3.i.i54.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i", label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.fa unwind label %bb.fb, !noalias !788

bb.fa:                                            ; preds = %bb.ez
  %i.aak = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"

bb.fb:                                            ; preds = %bb.ez
  %i.aal = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %.body.i24.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i": ; preds = %bb.fa, %bb.ey, %bb.ex
  %i.aam = zext i32 %i.aac to i64                 ; 2 uses
  %i.aan = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !788
  %i.aao = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !788 ; 2 uses
  %i.aap = ptrtoint ptr %i.aan to i64
  %i.aaq = ptrtoint ptr %i.aao to i64
  %i.aar = sub i64 %i.aap, %i.aaq
  %i.aas = ashr exact i64 %i.aar, 1
  %i.aat = icmp ugt i64 %i.aas, %i.aam
  %i.aau = getelementptr inbounds nuw [2 x i8], ptr %i.aao, i64 %i.aam
  %spec.select.i330.i.i = select i1 %i.aat, ptr %i.aau, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i.i42.i = load i16, ptr %spec.select.i330.i.i, align 2, !tbaa !72, !noalias !788 ; 6 uses
  switch i32 %i.aac, label %.thread477.i.i [
    i32 39, label %bb.fc
    i32 13, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"
    i32 10, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"
  ]

bb.fc:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"
  %i.aav = add nuw i64 %.0107558.i.i, 1           ; 2 uses
  %i.aaw = icmp ult i64 %i.aav, %i.zx
  br i1 %i.aaw, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i", label %.thread477.i.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i": ; preds = %bb.fc
  %i.aax = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788 ; 2 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.aax, i64 %i.aav
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !80, !noalias !788 ; 4 uses
  %i.aba = load ptr, ptr @_ZN2cv3dnn21unicode_map_lowercaseE, align 8, !tbaa !98, !noalias !788 ; 5 uses
  %i.abb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv3dnn21unicode_map_lowercaseE, i64 8), align 8, !tbaa !99, !noalias !788 ; 4 uses
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.aba, i64 %i.abb ; 2 uses
  %i.abd = icmp sgt i64 %i.abb, 0                 ; 2 uses
  br i1 %i.abd, label %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, label %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i"

_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i: ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i", %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ], [ %i.abb, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i" ] ; 2 uses
  %.0114.i.i.i.i.i = phi ptr [ %.112.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ], [ %i.aba, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i" ] ; 2 uses
  %i.abe = lshr i64 %.05.i.i.i.i.i, 1             ; 3 uses
  %i.abf = getelementptr inbounds nuw [8 x i8], ptr %.0114.i.i.i.i.i, i64 %i.abe ; 2 uses
  %.val.i.i.i.i.i = load i32, ptr %i.abf, align 4, !tbaa !121, !noalias !788
  %i.abg = icmp ult i32 %.val.i.i.i.i.i, %i.aaz   ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  %i.abi = xor i64 %i.abe, -1
  %i.abj = add nsw i64 %.05.i.i.i.i.i, %i.abi
  %.112.i.i.i.i.i = select i1 %i.abg, ptr %i.abh, ptr %.0114.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i = select i1 %i.abg, i64 %i.abj, i64 %i.abe ; 2 uses
  %i.abk = icmp sgt i64 %.1.i.i.i.i.i, 0
  br i1 %i.abk, label %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, label %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i", !llvm.loop !2

"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i": ; preds = %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i"
  %.011.lcssa.i.i.i.i.i = phi ptr [ %i.aba, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i" ], [ %.112.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ] ; 3 uses
  %.not.i175.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i, %i.abc
  br i1 %.not.i175.i.i, label %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i, label %bb.fd

bb.fd:                                            ; preds = %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i"
  %i.abl = load i32, ptr %.011.lcssa.i.i.i.i.i, align 4, !tbaa !121, !noalias !788
  %i.abm = icmp eq i32 %i.abl, %i.aaz
  br i1 %i.abm, label %.then.i.i, label %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i

.then.i.i:                                        ; preds = %bb.fd
  %i.abn = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i, i64 4
  %.0.pre.i.then.val.i.i = load i32, ptr %i.abn, align 4, !tbaa !80, !noalias !788
  br label %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i

_ZN2cv3dnn15unicode_tolowerEj.exit.i.i:           ; preds = %.then.i.i, %bb.fd, %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i"
  %.0.i.i.i = phi i32 [ %i.aaz, %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i" ], [ %.0.pre.i.then.val.i.i, %.then.i.i ], [ %i.aaz, %bb.fd ] ; 3 uses
  %i.abo = add nuw i64 %.0107558.i.i, 2           ; 5 uses
  switch i32 %.0.i.i.i, label %bb.fk [
    i32 116, label %bb.fe
    i32 115, label %bb.fe
    i32 109, label %bb.fe
    i32 100, label %bb.fe
  ]

bb.fe:                                            ; preds = %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i, %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i, %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i, %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i
  %i.abp = sub i64 %i.abo, %.0454557.i.i          ; 3 uses
  %.not.i176.i44.i = icmp eq i64 %i.abo, %.0454557.i.i
  br i1 %.not.i176.i44.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i", label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %.not.i.i.i45.i.a = icmp eq ptr %.sroa.29.4.i, %.sroa.61.4.i
  br i1 %.not.i.i.i45.i.a, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  store i64 %i.abp, ptr %.sroa.29.4.i, align 8, !tbaa !66, !noalias !788
  %i.abq = getelementptr inbounds nuw i8, ptr %.sroa.29.4.i, i64 8
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i"

bb.fh:                                            ; preds = %bb.ff
  %i.abr = ptrtoint ptr %.sroa.29.4.i to i64
  %i.abs = ptrtoint ptr %.sroa.0.4.i to i64
  %i.abt = sub i64 %i.abr, %i.abs                 ; 6 uses
  %i.abu = icmp eq i64 %i.abt, 9223372036854775800
  br i1 %i.abu, label %.invoke.i25.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i46.i

.invoke.i25.i:                                    ; preds = %bb.jr, %bb.jm, %bb.jg, %bb.iy, %bb.im, %bb.hf, %bb.gm, %bb.fq, %bb.fh, %bb.ha
  %.sroa.0.5.i = phi ptr [ %.sroa.0.8.i, %bb.ha ], [ %.sroa.0.4.i, %bb.jm ], [ %.sroa.0.4.i, %bb.jg ], [ %.sroa.0.4.i, %bb.iy ], [ %.sroa.0.4.i, %bb.im ], [ %.sroa.0.10.i, %bb.hf ], [ %.sroa.0.4.i, %bb.fh ], [ %.sroa.0.4.i, %bb.gm ], [ %.sroa.0.4.i, %bb.fq ], [ %.sroa.0.4.i, %bb.jr ]
  %.sroa.61.5.i = phi ptr [ %.sroa.29.7.i, %bb.ha ], [ %.sroa.29.4.i, %bb.jm ], [ %.sroa.29.4.i, %bb.jg ], [ %.sroa.29.4.i, %bb.iy ], [ %.sroa.29.4.i, %bb.im ], [ %.sroa.29.9.i, %bb.hf ], [ %.sroa.29.4.i, %bb.fh ], [ %.sroa.29.4.i, %bb.gm ], [ %.sroa.29.4.i, %bb.fq ], [ %.sroa.29.4.i, %bb.jr ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
          to label %.cont.i26.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i, !noalias !788

.cont.i26.i:                                      ; preds = %.invoke.i25.i
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i46.i: ; preds = %bb.fh
  %i.abv = ashr exact i64 %i.abt, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i47.i = call i64 @llvm.umax.i64(i64 %i.abv, i64 1)
  %i.abw = add nsw i64 %.sroa.speculated.i.i.i.i.i47.i, %i.abv ; 2 uses
  %i.abx = icmp ult i64 %i.abw, %i.abv
  %i.aby = call i64 @llvm.umin.i64(i64 %i.abw, i64 1152921504606846975)
  %i.abz = select i1 %i.abx, i64 1152921504606846975, i64 %i.aby ; 3 uses
  %.not.i.i.i.i.i48.i = icmp ne i64 %i.abz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i48.i)
  %i.aca = shl nuw nsw i64 %i.abz, 3
  %i.acb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aca) #31
          to label %.noexc178.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i, !noalias !788 ; 4 uses

.noexc178.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i46.i
  %i.acc = getelementptr inbounds i8, ptr %i.acb, i64 %i.abt ; 2 uses
  store i64 %i.abp, ptr %i.acc, align 8, !tbaa !66, !noalias !788
  %i.acd = icmp sgt i64 %i.abt, 0
  br i1 %i.acd, label %bb.fi, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i49.i

bb.fi:                                            ; preds = %.noexc178.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.acb, ptr align 8 %.sroa.0.4.i, i64 %i.abt, i1 false), !noalias !788
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i49.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i49.i: ; preds = %bb.fi, %.noexc178.i.i
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acc, i64 8
  %.not.i17.i.i.i.i50.i = icmp eq ptr %.sroa.0.4.i, null
  br i1 %.not.i17.i.i.i.i50.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i51.i, label %bb.fj

bb.fj:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i49.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4.i, i64 noundef %i.abt) #30, !noalias !788
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i51.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i51.i: ; preds = %bb.fj, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i49.i
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.acb, i64 %i.abz
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i": ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i51.i, %bb.fg, %bb.fe
  %.sroa.0.6.i = phi ptr [ %.sroa.0.4.i, %bb.fe ], [ %i.acb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i51.i ], [ %.sroa.0.4.i, %bb.fg ]
  %.sroa.29.5.i = phi ptr [ %.sroa.29.4.i, %bb.fe ], [ %i.ace, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i51.i ], [ %i.abq, %bb.fg ]
  %.sroa.61.6.i = phi ptr [ %.sroa.61.4.i, %bb.fe ], [ %i.acf, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i51.i ], [ %.sroa.61.4.i, %bb.fg ]
  %i.acg = add i64 %i.abp, %.0107558.i.i
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i", !llvm.loop !751

bb.fk:                                            ; preds = %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i
  %i.ach = icmp ult i64 %i.abo, %i.zx
  br i1 %i.ach, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i", label %.thread477.i.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i": ; preds = %bb.fk
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.aax, i64 %i.abo
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !80, !noalias !788 ; 4 uses
  br i1 %i.abd, label %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i, label %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i"

_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i: ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i", %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i
  %.05.i.i.i188.i.i = phi i64 [ %.1.i.i.i194.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i ], [ %i.abb, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i" ] ; 2 uses
  %.0114.i.i.i189.i.i = phi ptr [ %.112.i.i.i193.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i ], [ %i.aba, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i" ] ; 2 uses
  %i.ack = lshr i64 %.05.i.i.i188.i.i, 1          ; 3 uses
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %.0114.i.i.i189.i.i, i64 %i.ack ; 2 uses
  %.val.i.i.i192.i.i = load i32, ptr %i.acl, align 4, !tbaa !121, !noalias !788
  %i.acm = icmp ult i32 %.val.i.i.i192.i.i, %i.acj ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acl, i64 8
  %i.aco = xor i64 %i.ack, -1
  %i.acp = add nsw i64 %.05.i.i.i188.i.i, %i.aco
  %.112.i.i.i193.i.i = select i1 %i.acm, ptr %i.acn, ptr %.0114.i.i.i189.i.i ; 2 uses
  %.1.i.i.i194.i.i = select i1 %i.acm, i64 %i.acp, i64 %i.ack ; 2 uses
  %i.acq = icmp sgt i64 %.1.i.i.i194.i.i, 0
  br i1 %i.acq, label %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i, label %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i", !llvm.loop !2

"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i": ; preds = %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i"
  %.011.lcssa.i.i.i182.i.i = phi ptr [ %i.aba, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i" ], [ %.112.i.i.i193.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i ] ; 3 uses
  %.not.i183.i.i = icmp eq ptr %.011.lcssa.i.i.i182.i.i, %i.abc
  br i1 %.not.i183.i.i, label %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i, label %bb.fl

bb.fl:                                            ; preds = %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i"
  %i.acr = load i32, ptr %.011.lcssa.i.i.i182.i.i, align 4, !tbaa !121, !noalias !788
  %i.acs = icmp eq i32 %i.acr, %i.acj
  br i1 %i.acs, label %.then411.i.i, label %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i

.then411.i.i:                                     ; preds = %bb.fl
  %i.act = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i182.i.i, i64 4
  %.0.pre.i185.then.val.i.i = load i32, ptr %i.act, align 4, !tbaa !80, !noalias !788
  br label %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i

_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i:        ; preds = %.then411.i.i, %bb.fl, %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i"
  %.0.i186.i.i = phi i32 [ %i.acj, %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i" ], [ %.0.pre.i185.then.val.i.i, %.then411.i.i ], [ %i.acj, %bb.fl ] ; 2 uses
  %i.acu = icmp eq i32 %.0.i186.i.i, 101
  %i.acv = and i32 %.0.i.i.i, -5
  %or.cond8513.i.i = icmp eq i32 %i.acv, 114
  %or.cond.i52.i = and i1 %or.cond8513.i.i, %i.acu
  br i1 %or.cond.i52.i, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i
  %i.acw = icmp eq i32 %.0.i.i.i, 108
  %i.acx = icmp eq i32 %.0.i186.i.i, 108
  %or.cond12.i53.i = and i1 %i.acw, %i.acx
  br i1 %or.cond12.i53.i, label %bb.fn, label %.thread477.i.i

bb.fn:                                            ; preds = %bb.fm, %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i
  %i.acy = add nuw i64 %.0107558.i.i, 3           ; 3 uses
  %i.acz = sub i64 %i.acy, %.0454557.i.i          ; 3 uses
  %.not.i196.i.i = icmp eq i64 %i.acy, %.0454557.i.i
  br i1 %.not.i196.i.i, label %bb.ft, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %.not.i.i197.i.i = icmp eq ptr %.sroa.29.4.i, %.sroa.61.4.i
  br i1 %.not.i.i197.i.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  store i64 %i.acz, ptr %.sroa.29.4.i, align 8, !tbaa !66, !noalias !788
  %i.ada = getelementptr inbounds nuw i8, ptr %.sroa.29.4.i, i64 8
  br label %bb.ft

bb.fq:                                            ; preds = %bb.fo
  %i.adb = ptrtoint ptr %.sroa.29.4.i to i64
  %i.adc = ptrtoint ptr %.sroa.0.4.i to i64
  %i.add = sub i64 %i.adb, %i.adc                 ; 6 uses
  %i.ade = icmp eq i64 %i.add, 9223372036854775800
  br i1 %i.ade, label %.invoke.i25.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i198.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i198.i.i: ; preds = %bb.fq
  %i.adf = ashr exact i64 %i.add, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i199.i.i = call i64 @llvm.umax.i64(i64 %i.adf, i64 1)
  %i.adg = add nsw i64 %.sroa.speculated.i.i.i.i199.i.i, %i.adf ; 2 uses
  %i.adh = icmp ult i64 %i.adg, %i.adf
  %i.adi = call i64 @llvm.umin.i64(i64 %i.adg, i64 1152921504606846975)
  %i.adj = select i1 %i.adh, i64 1152921504606846975, i64 %i.adi ; 3 uses
  %.not.i.i.i.i200.i.i = icmp ne i64 %i.adj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i200.i.i)
  %i.adk = shl nuw nsw i64 %i.adj, 3
  %i.adl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adk) #31
          to label %.noexc205.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i, !noalias !788 ; 4 uses

.noexc205.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i198.i.i
  %i.adm = getelementptr inbounds i8, ptr %i.adl, i64 %i.add ; 2 uses
  store i64 %i.acz, ptr %i.adm, align 8, !tbaa !66, !noalias !788
  %i.adn = icmp sgt i64 %i.add, 0
  br i1 %i.adn, label %bb.fr, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i

bb.fr:                                            ; preds = %.noexc205.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.adl, ptr align 8 %.sroa.0.4.i, i64 %i.add, i1 false), !noalias !788
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i: ; preds = %bb.fr, %.noexc205.i.i
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adm, i64 8
  %.not.i17.i.i.i202.i.i = icmp eq ptr %.sroa.0.4.i, null
  br i1 %.not.i17.i.i.i202.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i, label %bb.fs

bb.fs:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4.i, i64 noundef %i.add) #30, !noalias !788
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i: ; preds = %bb.fs, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.adl, i64 %i.adj
  br label %bb.ft

bb.ft:                                            ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i, %bb.fp, %bb.fn
  %.sroa.0.7.i = phi ptr [ %.sroa.0.4.i, %bb.fn ], [ %i.adl, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i ], [ %.sroa.0.4.i, %bb.fp ]
  %.sroa.29.6.i = phi ptr [ %.sroa.29.4.i, %bb.fn ], [ %i.ado, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i ], [ %i.ada, %bb.fp ]
  %.sroa.61.7.i = phi ptr [ %.sroa.61.4.i, %bb.fn ], [ %i.adp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i ], [ %.sroa.61.4.i, %bb.fp ]
  %i.adq = add i64 %i.acz, %.0107558.i.i
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

.thread477.i.i:                                   ; preds = %bb.fm, %bb.fk, %bb.fc, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"
  %i.adr = and i16 %.sroa.0.0.copyload.i.i42.i, 2
  %.not.i43.i = icmp eq i16 %i.adr, 0
  br i1 %.not.i43.i, label %bb.fu, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"

bb.fu:                                            ; preds = %.thread477.i.i
  %i.ads = and i16 %.sroa.0.0.copyload.i.i42.i, 4
  %.not130.i.i = icmp eq i16 %i.ads, 0
  br i1 %.not130.i.i, label %.thread496.i.i, label %..critedge_crit_edge.i.i

..critedge_crit_edge.i.i:                         ; preds = %bb.fu
  %.pre577.i.i = add nuw i64 %.0107558.i.i, 1
  br label %.critedge.i41.i

.thread496.i.i:                                   ; preds = %bb.fu, %.lr.ph559.i.i
  %i.adt = phi i32 [ %i.aac, %bb.fu ], [ -1, %.lr.ph559.i.i ] ; 2 uses
  %.sroa.0.0.i462479495499.i.i = phi i16 [ %.sroa.0.0.copyload.i.i42.i, %bb.fu ], [ 0, %.lr.ph559.i.i ] ; 2 uses
  %i.adu = add nuw i64 %.0107558.i.i, 1           ; 4 uses
  %.not.i207.i.i = icmp ule i64 %.0111562.i.i, %i.adu
  %i.adv = icmp ult i64 %i.adu, %i.zx
  %or.cond500.i.i = and i1 %.not.i207.i.i, %i.adv
  br i1 %or.cond500.i.i, label %bb.fv, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"

bb.fv:                                            ; preds = %.thread496.i.i
  %i.adw = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.adw, i64 %i.adu
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !80, !noalias !788
  %i.adz = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !788
  %i.aea = icmp eq i8 %i.adz, 0
  br i1 %i.aea, label %bb.fw, label %bb.fy, !prof !82

bb.fw:                                            ; preds = %bb.fv
  %i.aeb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  %.not.i507 = icmp eq i32 %i.aeb, 0
  br i1 %.not.i507, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !788
  %i.aec = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw, %bb.fv
  %i.aed = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !788
  %i.aee = icmp eq i8 %i.aed, 0
  br i1 %i.aee, label %bb.fz, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i", !prof !82

bb.fz:                                            ; preds = %bb.fy
  %i.aef = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  %.not3.i506 = icmp eq i32 %i.aef, 0
  br i1 %.not3.i506, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i", label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.gb unwind label %bb.gc, !noalias !788

bb.gb:                                            ; preds = %bb.ga
  %i.aeg = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i"

bb.gc:                                            ; preds = %bb.ga
  %i.aeh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %.body.i24.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i": ; preds = %bb.gb, %bb.fz, %bb.fy
  %i.aei = zext i32 %i.ady to i64                 ; 2 uses
  %i.aej = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !788
  %i.aek = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !788 ; 2 uses
  %i.ael = ptrtoint ptr %i.aej to i64
  %i.aem = ptrtoint ptr %i.aek to i64
  %i.aen = sub i64 %i.ael, %i.aem
  %i.aeo = ashr exact i64 %i.aen, 1
  %i.aep = icmp ugt i64 %i.aeo, %i.aei
  %i.aeq = getelementptr inbounds nuw [2 x i8], ptr %i.aek, i64 %i.aei
  %spec.select.i504 = select i1 %i.aep, ptr %i.aeq, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i505 = load i16, ptr %spec.select.i504, align 2, !tbaa !72, !noalias !788
  %i.aer = and i16 %.sroa.0.0.copyload.i505, 4
  %.not131.i.i = icmp eq i16 %i.aer, 0
  br i1 %.not131.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i", label %.critedge.i41.i

.critedge.i41.i:                                  ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i", %..critedge_crit_edge.i.i
  %.pre-phi2167 = phi i64 [ %i.adu, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i" ], [ %.pre577.i.i, %..critedge_crit_edge.i.i ] ; 3 uses
  %.not.i211.i.i = icmp uge i64 %.pre-phi2167, %.0111562.i.i
  %.not.i211.i.fr.i = freeze i1 %.not.i211.i.i
  br i1 %.not.i211.i.fr.i, label %.critedge.i41.split.preheader.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i"

.critedge.i41.split.preheader.i:                  ; preds = %.critedge.i41.i
  %umax.i = call i64 @llvm.umax.i64(i64 %i.zx, i64 %.pre-phi2167) ; 2 uses
  %.5.i.i3640 = add i64 %.0107558.i.i, 1          ; 2 uses
  %i.aes = icmp ult i64 %.5.i.i3640, %i.zx
  br i1 %i.aes, label %.lr.ph3642, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i"

.critedge.i41.split.i:                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i"
  %.5.i.i = add i64 %.5.i.i3641, 1                ; 2 uses
  %i.aet = icmp ult i64 %.5.i.i, %i.zx
  br i1 %i.aet, label %.lr.ph3642, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i", !llvm.loop !752

.lr.ph3642:                                       ; preds = %.critedge.i41.split.preheader.i, %.critedge.i41.split.i
  %.5.i.i3641 = phi i64 [ %.5.i.i, %.critedge.i41.split.i ], [ %.5.i.i3640, %.critedge.i41.split.preheader.i ] ; 3 uses
  %i.aeu = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %.5.i.i3641
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !80, !noalias !788
  %i.aex = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !788
  %i.aey = icmp eq i8 %i.aex, 0
  br i1 %i.aey, label %bb.gd, label %bb.gf, !prof !82

bb.gd:                                            ; preds = %.lr.ph3642
  %i.aez = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  %.not.i335.i.i = icmp eq i32 %i.aez, 0
  br i1 %.not.i335.i.i, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !788
  %i.afa = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd, %.lr.ph3642
  %i.afb = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !788
  %i.afc = icmp eq i8 %i.afb, 0
  br i1 %i.afc, label %bb.gg, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i", !prof !82

bb.gg:                                            ; preds = %bb.gf
  %i.afd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  %.not3.i334.i.i = icmp eq i32 %i.afd, 0
  br i1 %.not3.i334.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i", label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.gi unwind label %bb.gj, !noalias !788

bb.gi:                                            ; preds = %bb.gh
  %i.afe = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i"

bb.gj:                                            ; preds = %bb.gh
  %i.aff = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %.body.i24.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i": ; preds = %bb.gi, %bb.gg, %bb.gf
  %i.afg = zext i32 %i.aew to i64                 ; 2 uses
  %i.afh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !788
  %i.afi = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !788 ; 2 uses
  %i.afj = ptrtoint ptr %i.afh to i64
  %i.afk = ptrtoint ptr %i.afi to i64
  %i.afl = sub i64 %i.afj, %i.afk
  %i.afm = ashr exact i64 %i.afl, 1
  %i.afn = icmp ugt i64 %i.afm, %i.afg
  %i.afo = getelementptr inbounds nuw [2 x i8], ptr %i.afi, i64 %i.afg
  %spec.select.i332.i.i = select i1 %i.afn, ptr %i.afo, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i333.i.i = load i16, ptr %spec.select.i332.i.i, align 2, !tbaa !72, !noalias !788
  %i.afp = and i16 %.sroa.0.0.copyload.i333.i.i, 4
  %.not132.i.i = icmp eq i16 %i.afp, 0
  br i1 %.not132.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i._ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i.loopexit_crit_edge", label %.critedge.i41.split.i, !llvm.loop !752

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i._ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i.loopexit_crit_edge": ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i"
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i", !llvm.loop !752

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i": ; preds = %.critedge.i41.split.i, %.critedge.i41.split.preheader.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i._ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i.loopexit_crit_edge", %.critedge.i41.i
  %.us-phi.i = phi i64 [ %.pre-phi2167, %.critedge.i41.i ], [ %umax.i, %.critedge.i41.split.preheader.i ], [ %.5.i.i3641, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i._ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i.loopexit_crit_edge" ], [ %umax.i, %.critedge.i41.split.i ] ; 6 uses
  %i.afq = sub i64 %.us-phi.i, %.0454557.i.i      ; 2 uses
  %.not.i215.i.i = icmp eq i64 %.us-phi.i, %.0454557.i.i
  br i1 %.not.i215.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i", label %bb.gk

bb.gk:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i"
  %.not.i.i216.i.i = icmp eq ptr %.sroa.29.4.i, %.sroa.61.4.i
  br i1 %.not.i.i216.i.i, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  store i64 %i.afq, ptr %.sroa.29.4.i, align 8, !tbaa !66, !noalias !788
  %i.afr = getelementptr inbounds nuw i8, ptr %.sroa.29.4.i, i64 8
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

bb.gm:                                            ; preds = %bb.gk
  %i.afs = ptrtoint ptr %.sroa.29.4.i to i64
  %i.aft = ptrtoint ptr %.sroa.0.4.i to i64
  %i.afu = sub i64 %i.afs, %i.aft                 ; 6 uses
  %i.afv = icmp eq i64 %i.afu, 9223372036854775800
  br i1 %i.afv, label %.invoke.i25.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i217.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i217.i.i: ; preds = %bb.gm
  %i.afw = ashr exact i64 %i.afu, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i218.i.i = call i64 @llvm.umax.i64(i64 %i.afw, i64 1)
  %i.afx = add nsw i64 %.sroa.speculated.i.i.i.i218.i.i, %i.afw ; 2 uses
  %i.afy = icmp ult i64 %i.afx, %i.afw
  %i.afz = call i64 @llvm.umin.i64(i64 %i.afx, i64 1152921504606846975)
  %i.aga = select i1 %i.afy, i64 1152921504606846975, i64 %i.afz ; 3 uses
  %.not.i.i.i.i219.i.i = icmp ne i64 %i.aga, 0
  call void @llvm.assume(i1 %.not.i.i.i.i219.i.i)
  %i.agb = shl nuw nsw i64 %i.aga, 3
  %i.agc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agb) #31
          to label %.noexc224.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i, !noalias !788 ; 4 uses

.noexc224.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i217.i.i
  %i.agd = getelementptr inbounds i8, ptr %i.agc, i64 %i.afu ; 2 uses
  store i64 %i.afq, ptr %i.agd, align 8, !tbaa !66, !noalias !788
  %i.age = icmp sgt i64 %i.afu, 0
  br i1 %i.age, label %bb.gn, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i220.i.i

bb.gn:                                            ; preds = %.noexc224.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.agc, ptr align 8 %.sroa.0.4.i, i64 %i.afu, i1 false), !noalias !788
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i220.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i220.i.i: ; preds = %bb.gn, %.noexc224.i.i
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  %.not.i17.i.i.i221.i.i = icmp eq ptr %.sroa.0.4.i, null
  br i1 %.not.i17.i.i.i221.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i222.i.i, label %bb.go

bb.go:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i220.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4.i, i64 noundef %i.afu) #30, !noalias !788
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i222.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i222.i.i: ; preds = %bb.go, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i220.i.i
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %i.aga
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i": ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i", %.thread496.i.i, %.thread477.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i", %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"
  %i.agh = phi i32 [ %i.aac, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i" ], [ %i.aac, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i" ], [ %i.adt, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i" ], [ %i.aac, %.thread477.i.i ], [ %i.adt, %.thread496.i.i ]
  %.sroa.0.0.i462480.i.i = phi i16 [ %.sroa.0.0.copyload.i.i42.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i" ], [ %.sroa.0.0.copyload.i.i42.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i" ], [ %.sroa.0.0.i462479495499.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i" ], [ %.sroa.0.0.copyload.i.i42.i, %.thread477.i.i ], [ %.sroa.0.0.i462479495499.i.i, %.thread496.i.i ] ; 3 uses
  %i.agi = and i16 %.sroa.0.0.i462480.i.i, 2
  %.not133.i.i = icmp eq i16 %i.agi, 0
  br i1 %.not133.i.i, label %bb.hi, label %.preheader514.i.i

.preheader514.i.i:                                ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"
  %i.agj = icmp ult i64 %.0107558.i.i, %i.zx
  %or.cond502531.i.i = and i1 %.not.i.i23.i, %i.agj
  br i1 %or.cond502531.i.i, label %.lr.ph.i28.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.thread.i.i"

.lr.ph.i28.i:                                     ; preds = %.preheader514.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i"
  %.sroa.0.8.i = phi ptr [ %.sroa.0.9.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ], [ %.sroa.0.4.i, %.preheader514.i.i ] ; 11 uses
  %.sroa.29.7.i = phi ptr [ %.sroa.29.8.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ], [ %.sroa.29.4.i, %.preheader514.i.i ] ; 9 uses
  %.sroa.61.8.i = phi ptr [ %.sroa.61.9.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ], [ %.sroa.61.4.i, %.preheader514.i.i ] ; 6 uses
  %.0105534.i.i = phi i64 [ %.1106.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ], [ %.0107558.i.i, %.preheader514.i.i ] ; 2 uses
  %.6533.i.i = phi i64 [ %i.ahg, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ], [ %.0107558.i.i, %.preheader514.i.i ] ; 3 uses
  %.4457532.i.i = phi i64 [ %.5458.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ], [ %.0454557.i.i, %.preheader514.i.i ] ; 6 uses
  %i.agk = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.agk, i64 %.6533.i.i
  %i.agm = load i32, ptr %i.agl, align 4, !tbaa !80, !noalias !788
  %i.agn = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !788
  %i.ago = icmp eq i8 %i.agn, 0
  br i1 %i.ago, label %bb.gp, label %bb.gr, !prof !82

bb.gp:                                            ; preds = %.lr.ph.i28.i
  %i.agp = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  %.not.i342.i.i = icmp eq i32 %i.agp, 0
  br i1 %.not.i342.i.i, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !788
  %i.agq = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp, %.lr.ph.i28.i
  %i.agr = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !788
  %i.ags = icmp eq i8 %i.agr, 0
  br i1 %i.ags, label %bb.gs, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i", !prof !82

bb.gs:                                            ; preds = %bb.gr
  %i.agt = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  %.not3.i341.i.i = icmp eq i32 %i.agt, 0
  br i1 %.not3.i341.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i", label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.gu unwind label %bb.gv, !noalias !788

bb.gu:                                            ; preds = %bb.gt
  %i.agu = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i"

bb.gv:                                            ; preds = %bb.gt
  %i.agv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %.body.i24.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i": ; preds = %bb.gu, %bb.gs, %bb.gr
  %i.agw = zext i32 %i.agm to i64                 ; 2 uses
  %i.agx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !788
  %i.agy = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !788 ; 2 uses
  %i.agz = ptrtoint ptr %i.agx to i64
  %i.aha = ptrtoint ptr %i.agy to i64
  %i.ahb = sub i64 %i.agz, %i.aha
  %i.ahc = ashr exact i64 %i.ahb, 1
  %i.ahd = icmp ugt i64 %i.ahc, %i.agw
  %i.ahe = getelementptr inbounds nuw [2 x i8], ptr %i.agy, i64 %i.agw
  %spec.select.i339.i.i = select i1 %i.ahd, ptr %i.ahe, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i340.i.i = load i16, ptr %spec.select.i339.i.i, align 2, !tbaa !72, !noalias !788
  %i.ahf = and i16 %.sroa.0.0.copyload.i340.i.i, 2
  %.not145.i.i = icmp eq i16 %i.ahf, 0
  br i1 %.not145.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.thread.i.i", label %bb.gw

bb.gw:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i"
  %i.ahg = add nuw i64 %.6533.i.i, 1              ; 9 uses
  %i.ahh = sub i64 %i.ahg, %.0105534.i.i
  %i.ahi = icmp ugt i64 %i.ahh, 2
  br i1 %i.ahi, label %bb.gx, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i"

bb.gx:                                            ; preds = %bb.gw
  %i.ahj = sub i64 %i.ahg, %.4457532.i.i          ; 2 uses
  %.not.i230.i29.i = icmp eq i64 %i.ahg, %.4457532.i.i
  br i1 %.not.i230.i29.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i", label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %.not.i.i231.i30.i = icmp eq ptr %.sroa.29.7.i, %.sroa.61.8.i
  br i1 %.not.i.i231.i30.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  store i64 %i.ahj, ptr %.sroa.29.7.i, align 8, !tbaa !66, !noalias !788
  %i.ahk = getelementptr inbounds nuw i8, ptr %.sroa.29.7.i, i64 8
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i"

bb.ha:                                            ; preds = %bb.gy
  %i.ahl = ptrtoint ptr %.sroa.29.7.i to i64
  %i.ahm = ptrtoint ptr %.sroa.0.8.i to i64
  %i.ahn = sub i64 %i.ahl, %i.ahm                 ; 6 uses
  %i.aho = icmp eq i64 %i.ahn, 9223372036854775800
  br i1 %i.aho, label %.invoke.i25.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i31.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i31.i: ; preds = %bb.ha
  %i.ahp = ashr exact i64 %i.ahn, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i233.i32.i = call i64 @llvm.umax.i64(i64 %i.ahp, i64 1)
  %i.ahq = add nsw i64 %.sroa.speculated.i.i.i.i233.i32.i, %i.ahp ; 2 uses
  %i.ahr = icmp ult i64 %i.ahq, %i.ahp
  %i.ahs = call i64 @llvm.umin.i64(i64 %i.ahq, i64 1152921504606846975)
  %i.aht = select i1 %i.ahr, i64 1152921504606846975, i64 %i.ahs ; 3 uses
  %.not.i.i.i.i234.i33.i = icmp ne i64 %i.aht, 0
  call void @llvm.assume(i1 %.not.i.i.i.i234.i33.i)
  %i.ahu = shl nuw nsw i64 %i.aht, 3
  %i.ahv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahu) #31
          to label %.noexc239.i34.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i, !noalias !788 ; 4 uses

.noexc239.i34.i:                                  ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i31.i
  %i.ahw = getelementptr inbounds i8, ptr %i.ahv, i64 %i.ahn ; 2 uses
  store i64 %i.ahj, ptr %i.ahw, align 8, !tbaa !66, !noalias !788
  %i.ahx = icmp sgt i64 %i.ahn, 0
  br i1 %i.ahx, label %bb.hb, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i35.i

bb.hb:                                            ; preds = %.noexc239.i34.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ahv, ptr align 8 %.sroa.0.8.i, i64 %i.ahn, i1 false), !noalias !788
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i35.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i35.i: ; preds = %bb.hb, %.noexc239.i34.i
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahw, i64 8
  %.not.i17.i.i.i236.i36.i = icmp eq ptr %.sroa.0.8.i, null
  br i1 %.not.i17.i.i.i236.i36.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i37.i, label %bb.hc

bb.hc:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i35.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.8.i, i64 noundef %i.ahn) #30, !noalias !788
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i37.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i37.i: ; preds = %bb.hc, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i35.i
  %i.ahz = getelementptr inbounds nuw [8 x i8], ptr %i.ahv, i64 %i.aht
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i": ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i37.i, %bb.gz, %bb.gx, %bb.gw
  %.sroa.0.9.i = phi ptr [ %.sroa.0.8.i, %bb.gx ], [ %i.ahv, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i37.i ], [ %.sroa.0.8.i, %bb.gz ], [ %.sroa.0.8.i, %bb.gw ] ; 2 uses
  %.sroa.29.8.i = phi ptr [ %.sroa.29.7.i, %bb.gx ], [ %i.ahy, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i37.i ], [ %i.ahk, %bb.gz ], [ %.sroa.29.7.i, %bb.gw ] ; 2 uses
end_hunk_1
