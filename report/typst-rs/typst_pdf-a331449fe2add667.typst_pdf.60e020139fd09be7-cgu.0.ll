Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7942
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13table_cell_id:bb.a
_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i: ; preds = %.lr.ph.split.us.i.i
  %i.bd = trunc nuw i8 %i.bc to i1                ; 2 uses
  %spec.store.select.i.i.us.i.i = select i1 %i.bd, i8 0, i8 2
  store i8 %spec.store.select.i.i.us.i.i, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !22337, !noalias !22330
  br i1 %i.bd, label %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i.us.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i.us.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i, %.lr.ph.split.us.i.i
  %.not.i.i.i.us.i.i = icmp eq i64 %i.bb, %.sink10.i.i.i
  br i1 %.not.i.i.i.us.i.i, label %.critedge79.i.i, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i.us.i.i
  %i.be = add i64 %i.bb, 1                        ; 2 uses
  store i64 %i.be, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !22338, !noalias !22330
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink11.i.i.i.i.i.i.i, i64 %i.bb
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !22330, !noundef !10
  br label %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i

_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i: ; preds = %bb.t, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i
  %i.bh = phi i64 [ %i.bb, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i ], [ %i.be, %bb.t ]
  %i.bi = phi i8 [ 0, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i ], [ 2, %bb.t ]
  %.pn2.i.i.us.i.i = phi i8 [ 85, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i ], [ %i.bg, %bb.t ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 %storemerge81.us.i.i
  store i8 %.pn2.i.i.us.i.i, ptr %i.bj, align 1, !noalias !22334
  %i.bk = add i64 %storemerge81.us.i.i, 1         ; 2 uses
  %exitcond118.not.i.i = icmp eq i64 %i.bk, %.sink.i17.pre-phi.i3539.i57
  br i1 %exitcond118.not.i.i, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i

._crit_edge.i.i:                                  ; preds = %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i, %.thread.i
  %i.bl = phi ptr [ %spec.select41, %.thread.i ], [ %i.ay, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i ]
  %storemerge.lcssa.i.i = phi i64 [ %.pre, %.thread.i ], [ %.sink.i17.pre-phi.i3539.i57, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i ]
  store i64 %storemerge.lcssa.i.i, ptr %i.bl, align 8, !alias.scope !22333, !noalias !22334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !22330
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %.promoted96.i.i = load i8, ptr %i.bm, align 8, !alias.scope !22339, !noalias !22330 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !22330 ; 2 uses
  %i.bp = load i64, ptr %i.a, align 8, !range !19, !noalias !22330
  %.fr.i.i = freeze i64 %i.bp                     ; 3 uses
  %i.bq = trunc i64 %.fr.i.i to i1
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !22330
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !22330 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 33                  ; 3 uses
  %i.by = load ptr, ptr %i.bu, align 8, !noalias !22330, !nonnull !10 ; 3 uses
  %.sink11.i.i.i.i.i29.i.i = select i1 %i.bx, ptr %i.bu, ptr %i.by
  br i1 %i.bq, label %.split.us.preheader.i.i, label %.split.i.i

.split.us.preheader.i.i:                          ; preds = %._crit_edge.i.i
  %.promoted100.i.i = load i64, ptr %i.br, align 8, !noalias !22330
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.us.i.i, %.split.us.preheader.i.i
  %i.bz = phi i64 [ %i.ce, %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.us.i.i ], [ %.promoted100.i.i, %.split.us.preheader.i.i ] ; 4 uses
  %spec.store.select.i.i2099.us.i.i = phi i8 [ %spec.store.select.i.i2097.us.i.i, %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.us.i.i ], [ %.promoted96.i.i, %.split.us.preheader.i.i ] ; 2 uses
  %.not.i.i18.us.i.i = icmp eq i8 %spec.store.select.i.i2099.us.i.i, 2
  br i1 %.not.i.i18.us.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i21.us.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i: ; preds = %.split.us.i.i
  %i.ca = trunc nuw i8 %spec.store.select.i.i2099.us.i.i to i1 ; 2 uses
  %spec.store.select.i.i20.us.i.i = select i1 %i.ca, i8 0, i8 2
  store i8 %spec.store.select.i.i20.us.i.i, ptr %i.bm, align 8, !alias.scope !22339, !noalias !22330
  br i1 %i.ca, label %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i21.us.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i21.us.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i, %.split.us.i.i
  %.not.i.i.i28.us.i.i = icmp eq i64 %i.bz, %i.bt
  br i1 %.not.i.i.i28.us.i.i, label %.critedge.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i21.us.i.i
  %i.cb = add i64 %i.bz, 1                        ; 2 uses
  store i64 %i.cb, ptr %i.br, align 8, !alias.scope !22340, !noalias !22330
  %i.cc = getelementptr inbounds nuw i8, ptr %.sink11.i.i.i.i.i29.i.i, i64 %i.bz
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !22330, !noundef !10
  br label %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i

_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i: ; preds = %bb.u, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i
  %i.ce = phi i64 [ %i.bz, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i ], [ %i.cb, %bb.u ]
  %spec.store.select.i.i2097.us.i.i = phi i8 [ 0, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i ], [ 2, %bb.u ]
  %.pn2.i.i26.us.i.i = phi i8 [ %i.bo, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i ], [ %i.cd, %bb.u ]
  %i.cf = load i64, ptr %i.ak, align 8, !alias.scope !22341, !noalias !22342, !noundef !10 ; 2 uses
  %i.cg = icmp ugt i64 %i.cf, 16                  ; 2 uses
  %i.ch = load ptr, ptr %i.c, align 8, !alias.scope !22341, !noalias !22342, !nonnull !10
  %.sink10.i.i.us.i.i = select i1 %i.cg, ptr %i.ch, ptr %i.c
  %.sink9.i.i.us.i.i = select i1 %i.cg, ptr %i.am, ptr %i.ak ; 2 uses
  %.sink.i.i31.us.i.i = call i64 @llvm.umax.i64(i64 %i.cf, i64 16)
  %i.ci = load i64, ptr %.sink9.i.i.us.i.i, align 8, !alias.scope !22343, !noalias !22334, !noundef !10 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, %.sink.i.i31.us.i.i
  br i1 %i.cj, label %bb.v, label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.us.i.i, !prof !13

bb.v:                                             ; preds = %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i
  invoke fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E21reserve_one_uncheckedCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc33.us.i.i unwind label %.split102.us.i.i, !noalias !22334

.noexc33.us.i.i:                                  ; preds = %bb.v
  %i.ck = load ptr, ptr %i.c, align 8, !alias.scope !22343, !noalias !22334, !nonnull !10, !noundef !10
  %.pre.i.us.i.i = load i64, ptr %i.am, align 8, !alias.scope !22343, !noalias !22334
  br label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.us.i.i

_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.us.i.i: ; preds = %.noexc33.us.i.i, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i
  %i.cl = phi i64 [ %.pre.i.us.i.i, %.noexc33.us.i.i ], [ %i.ci, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i ]
  %.sroa.01.0.i.us.i.i = phi ptr [ %i.am, %.noexc33.us.i.i ], [ %.sink9.i.i.us.i.i, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i ] ; 2 uses
  %.sroa.0.0.i32.us.i.i = phi ptr [ %i.ck, %.noexc33.us.i.i ], [ %.sink10.i.i.us.i.i, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.us.i.i, i64 %i.cl
  store i8 %.pn2.i.i26.us.i.i, ptr %i.cm, align 1, !noalias !22334
  %i.cn = load i64, ptr %.sroa.01.0.i.us.i.i, align 8, !alias.scope !22343, !noalias !22334, !noundef !10
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %.sroa.01.0.i.us.i.i, align 8, !alias.scope !22343, !noalias !22334
  br label %.split.us.i.i

.split102.us.i.i:                                 ; preds = %bb.v
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.split102.i.i

.split.i.i:                                       ; preds = %._crit_edge.i.i
  switch i8 %.promoted96.i.i, label %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i [
    i8 2, label %.critedge.i.i
    i8 0, label %.critedge.i.i
  ]

.split102.i.split.i:                              ; preds = %bb.w
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.split102.i.i

.split102.i.i:                                    ; preds = %.split102.i.split.i, %.split102.us.i.i
  %.us-phi103.i.i = phi { ptr, i32 } [ %i.cp, %.split102.us.i.i ], [ %i.cq, %.split102.i.split.i ] ; 2 uses
  %i.cr = icmp eq i64 %.fr.i.i, 0
  %brmerge.i.i = select i1 %i.cr, i1 true, i1 %i.bx
  br i1 %brmerge.i.i, label %.body.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i: ; preds = %.split102.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !22344
  br label %.body.i

_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i: ; preds = %.split.i.i
  %i.cs = load i64, ptr %i.ak, align 8, !alias.scope !22341, !noalias !22342, !noundef !10 ; 2 uses
  %i.ct = icmp ugt i64 %i.cs, 16                  ; 2 uses
  %i.cu = load ptr, ptr %i.c, align 8, !alias.scope !22341, !noalias !22342, !nonnull !10
  %.sink10.i.i.i.i = select i1 %i.ct, ptr %i.cu, ptr %i.c
  %.sink9.i.i.i.i = select i1 %i.ct, ptr %i.am, ptr %i.ak ; 2 uses
  %.sink.i.i31.i.i = call i64 @llvm.umax.i64(i64 %i.cs, i64 16)
  %i.cv = load i64, ptr %.sink9.i.i.i.i, align 8, !alias.scope !22343, !noalias !22334, !noundef !10 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, %.sink.i.i31.i.i
  br i1 %i.cw, label %bb.w, label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.i.i, !prof !13

bb.w:                                             ; preds = %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i
  invoke fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E21reserve_one_uncheckedCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc33.i.i unwind label %.split102.i.split.i, !noalias !22334

.noexc33.i.i:                                     ; preds = %bb.w
  %i.cx = load ptr, ptr %i.c, align 8, !alias.scope !22343, !noalias !22334, !nonnull !10, !noundef !10
  %.pre.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !22343, !noalias !22334
  br label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.i.i

_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %.noexc33.i.i, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i
  %i.cy = phi i64 [ %.pre.i.i.i, %.noexc33.i.i ], [ %i.cv, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i ]
  %.sroa.01.0.i.i.i = phi ptr [ %i.am, %.noexc33.i.i ], [ %.sink9.i.i.i.i, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i ] ; 2 uses
  %.sroa.0.0.i32.i.i = phi ptr [ %i.cx, %.noexc33.i.i ], [ %.sink10.i.i.i.i, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.i.i, i64 %i.cy
  store i8 %i.bo, ptr %i.cz, align 1, !noalias !22334
  %i.da = load i64, ptr %.sroa.01.0.i.i.i, align 8, !alias.scope !22343, !noalias !22334, !noundef !10
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %.sroa.01.0.i.i.i, align 8, !alias.scope !22343, !noalias !22334
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i21.us.i.i, %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.i.i, %.split.i.i, %.split.i.i
  %i.dc = icmp eq i64 %.fr.i.i, 0
  %brmerge135.i.i = select i1 %i.dc, i1 true, i1 %i.bx
  br i1 %brmerge135.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtBI_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EEECs8jFhWeO2DFb_9typst_pdf.exit41.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i39.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i39.i.i: ; preds = %.critedge.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !22345
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtBI_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EEECs8jFhWeO2DFb_9typst_pdf.exit41.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtBI_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EEECs8jFhWeO2DFb_9typst_pdf.exit41.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i39.i.i, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22330
  br label %bb.x

.critedge79.i.i:                                  ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i.us.i.i
  store i64 %storemerge81.us.i.i, ptr %i.ay, align 8, !alias.scope !22333, !noalias !22334
  br i1 %i.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i47.i.i, label %bb.x

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i47.i.i: ; preds = %.critedge79.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %.sroa.625.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !22346
  br label %bb.x

_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAhj20_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i53.i.i: ; preds = %.thread70.i.i, %bb.s, %bb.q
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i55.i.i, label %.body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i55.i.i: ; preds = %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAhj20_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i53.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %.sroa.625.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !22347
  br label %.body.i

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i55.i.i, %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAhj20_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i53.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i, %.split102.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dd, %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAhj20_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i53.i.i ], [ %.us-phi103.i.i, %.split102.i.i ], [ %.us-phi103.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i ], [ %i.dd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i55.i.i ] ; 2 uses
  %.val3.i = load i64, ptr %i.ak, align 8, !alias.scope !22348, !noalias !22331, !noundef !10 ; 2 uses
  %i.de = icmp ugt i64 %.val3.i, 16
  br i1 %i.de, label %.body.sink.split, label %.body

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i47.i.i, %.critedge79.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtBI_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EEECs8jFhWeO2DFb_9typst_pdf.exit41.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

.body.sink.split:                                 ; preds = %.body.i, %bb.y
  %.sink = phi ptr [ %i.i, %bb.y ], [ %i.c, %.body.i ]
  %.val15.sink = phi i64 [ %.val15, %bb.y ], [ %.val3.i, %.body.i ]
  %eh.lpad-body34.ph = phi { ptr, i32 } [ %eh.lpad-body.ph, %bb.y ], [ %eh.lpad-body.i, %.body.i ]
  %.val14 = load ptr, ptr %.sink, align 8, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %.val15.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !10
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.y, %.body.i
  %eh.lpad-body34 = phi { ptr, i32 } [ %eh.lpad-body.ph, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body34.ph, %.body.sink.split ]
  resume { ptr, i32 } %eh.lpad-body34

bb.y:                                             ; preds = %bb.b, %bb.l
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.r, %bb.b ] ; 2 uses
  %.val15 = load i64, ptr %i.l, align 8, !alias.scope !22349, !noundef !10 ; 2 uses
  %i.df = icmp ugt i64 %.val15, 32
  br i1 %i.df, label %.body.sink.split, label %.body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCs8jFhWeO2DFb_9typst_pdf4pageNtNtCsidf7BFzONoc_6krilla4page9PageLabelNtB2_12PageLabelExt8generate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !range !64, !noundef !10
  %i.h = icmp eq i8 %i.g, 2
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !10
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 -2, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.m = load i8, ptr %i.l, align 1, !noundef !10 ; 2 uses
  %i.n = and i8 %i.m, 127
  %i.o = zext nneg i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %.not2469 = icmp slt i8 %i.m, 0
  %.sroa.016.0 = select i1 %.not2469, i64 %i.o, i64 %i.q
  %i.r = icmp eq i64 %.sroa.016.0, 0
  br i1 %i.r, label %bb.g, label %bb.m

bb.f:                                             ; preds = %bb.u, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !60, !noundef !10 ; 2 uses
  switch i8 %i.t, label %bb.m [
    i8 0, label %bb.l
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = icmp ult i64 %2, 27
  br i1 %i.u, label %bb.l, label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.v = icmp ult i64 %2, 27
  br i1 %i.v, label %bb.l, label %bb.m

bb.j:                                             ; preds = %bb.g
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.j, %bb.k, %bb.g
  %.sroa.02.0 = phi i8 [ 2, %bb.k ], [ %i.t, %bb.g ], [ 3, %bb.h ], [ 1, %bb.j ], [ 4, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 15
  %i.x = load i8, ptr %i.w, align 1, !noundef !10 ; 2 uses
  %.not25 = icmp sgt i8 %i.x, -1
  br i1 %.not25, label %bb.n, label %.thread

bb.m:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %2, ptr %i.d, align 8
  call void @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library5model10numbering_NtB5_16NumberingPattern5apply(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef align 8 dereferenceable_or_null(200) null, i64 undef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef 1)
  %i.y = load i64, ptr %i.e, align 8, !range !19, !noundef !10
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %.split, label %.split.thread

bb.n:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !10 ; 3 uses
  %.not26 = icmp eq i64 %i.ab, 0
  br i1 %.not26, label %bb.s, label %bb.o

.thread:                                          ; preds = %bb.l
  %i.ac = and i8 %i.x, 127
  %.not2634 = icmp eq i8 %i.ac, 0
  br i1 %.not2634, label %bb.s, label %bb.r

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22353)
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !22353, !noalias !22354, !nonnull !10, !noundef !10 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %.thread50, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds i8, ptr %.val.i, i64 -16
  %i.ae = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8, !noalias !22355
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.q, label %.thread50, !prof !13

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val.i) #39
  unreachable

bb.r:                                             ; preds = %.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.013.0.copyload.i = load ptr, ptr %i.i, align 8, !alias.scope !22353, !noalias !22354
  %.sroa.414.0.copyload.i = load i64, ptr %i.ag, align 8, !alias.scope !22353, !noalias !22354
  br label %.thread50

.split:                                           ; preds = %bb.m
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsakL8LGkl72C_4ecow6string9EcoStringBX_EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

.thread50:                                        ; preds = %bb.r, %bb.p, %bb.o
  %.sroa.5.sroa.3.0.ph.ph = phi i64 [ %.sroa.414.0.copyload.i, %bb.r ], [ %i.ab, %bb.o ], [ %i.ab, %bb.p ]
  %.sroa.5.sroa.0.0.ph.ph = phi ptr [ %.sroa.013.0.copyload.i, %bb.r ], [ inttoptr (i64 16 to ptr), %bb.o ], [ %.val.i, %bb.p ]
  %i.ah = icmp ugt i64 %2, 4294967295
  %i.ai = trunc nuw i64 %2 to i32
  %.sroa.06.04054 = select i1 %i.ah, i32 0, i32 %i.ai
  br label %bb.t

bb.s:                                             ; preds = %.thread, %bb.n
  %i.aj = icmp ugt i64 %2, 4294967295
  %i.ak = trunc nuw i64 %2 to i32
  %.sroa.06.040 = select i1 %i.aj, i32 0, i32 %i.ak
  br label %bb.u

.split.thread:                                    ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.031.0.copyload = load ptr, ptr %i.al, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.432.0.copyload = load i64, ptr %.sroa.432.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.t

bb.t:                                             ; preds = %.split.thread, %.thread50
  %i.am = phi i32 [ 0, %.split.thread ], [ %.sroa.06.04054, %.thread50 ]
  %.sroa.5.sroa.3.04249 = phi i64 [ %.sroa.432.0.copyload, %.split.thread ], [ %.sroa.5.sroa.3.0.ph.ph, %.thread50 ]
  %.sroa.5.sroa.0.04348 = phi ptr [ %.sroa.031.0.copyload, %.split.thread ], [ %.sroa.5.sroa.0.0.ph.ph, %.thread50 ]
  %.sroa.02.24547 = phi i8 [ -1, %.split.thread ], [ %.sroa.02.0, %.thread50 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.5.sroa.0.04348, ptr %i.b, align 8
  %.sroa.5.sroa.3.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.sroa.3.04249, ptr %.sroa.5.sroa.3.0..sroa_idx29, align 8
  call fastcc void @_RNvXsu_NtCsakL8LGkl72C_4ecow6stringNtNtCs1xwejQucwHj_5alloc6string6StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9EcoStringE4from(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.b) #40
  %.sroa.013.0.copyload = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.u:                                             ; preds = %.split, %bb.s, %bb.t
  %i.an = phi i32 [ %i.am, %bb.t ], [ %.sroa.06.040, %bb.s ], [ 0, %.split ]
  %.sroa.02.24546 = phi i8 [ %.sroa.02.24547, %bb.t ], [ %.sroa.02.0, %bb.s ], [ -1, %.split ]
  %.sroa.013.0 = phi i64 [ %.sroa.013.0.copyload, %bb.t ], [ -1, %bb.s ], [ -1, %.split ]
  store i64 %.sroa.013.0, ptr %0, align 8
  %.sroa.010.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.an, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
end_hunk_0
