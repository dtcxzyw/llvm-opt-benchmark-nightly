Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7942
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context6finish:bb.a
  %i.tk = and i64 %i.tj, %i.ss
  %i.tl = sub nsw i64 0, %i.tk                    ; 2 uses
  %i.tm = getelementptr inbounds [16 x i8], ptr %i.st, i64 %i.tl
  %i.tn = getelementptr inbounds i8, ptr %i.tm, i64 -16
  %.val2.i.us.us.i.i.i.i = load ptr, ptr %i.tn, align 8, !noalias !19600, !align !21, !noundef !10
  %.not.i.i.i.us.us.i.i.i.i = icmp eq ptr %.val2.i.us.us.i.i.i.i, null
  br i1 %.not.i.i.i.us.us.i.i.i.i, label %.loopexit.i156.i, label %.lr.ph40.us.i.i.i.i, !prof !19602

.lr.ph40.us.i.i.i.i:                              ; preds = %.lr.ph.us.i.i.i.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2a_6layout3abs3AbsEEEjEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_jNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs8jFhWeO2DFb_9typst_pdf.exit.us.us.i.i.i.i
  %.sroa.06.0.i32.us39.us.i.i.i.i = phi i16 [ %i.tp, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2a_6layout3abs3AbsEEEjEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_jNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs8jFhWeO2DFb_9typst_pdf.exit.us.us.i.i.i.i ], [ %i.sz, %.lr.ph.us.i.i.i.i ] ; 2 uses
  %i.to = add i16 %.sroa.06.0.i32.us39.us.i.i.i.i, -1
  %i.tp = and i16 %i.to, %.sroa.06.0.i32.us39.us.i.i.i.i ; 3 uses
  %.not.i.not.us.us.i.i.i.i = icmp eq i16 %i.tp, 0
  br i1 %.not.i.not.us.us.i.i.i.i, label %._crit_edge.split.us.us.i.i.i.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2a_6layout3abs3AbsEEEjEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_jNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs8jFhWeO2DFb_9typst_pdf.exit.us.us.i.i.i.i

._crit_edge.split.us.us.i.i.i.i:                  ; preds = %.lr.ph40.us.i.i.i.i, %.split47.us.i.i.i.i
  %i.tq = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.us.i.i.i.i, splat (i8 -1)
  %i.tr = bitcast <16 x i1> %i.tq to i16
  %i.ts = icmp eq i16 %i.tr, 0
  br i1 %i.ts, label %bb.cz, label %.loopexit5.i.i.i, !prof !13

bb.cz:                                            ; preds = %._crit_edge.split.us.us.i.i.i.i
  %i.tt = add i64 %.sroa.9.0.i.us.i.i.i.i, 16     ; 2 uses
  %i.tu = add i64 %.sroa.01.0.i.us.i.i.i.i, %i.tt
  br label %.split47.us.i.i.i.i

.split47.i.i.i.i:                                 ; preds = %bb.db, %.split47.i.preheader.i.i.i
  %.sroa.9.0.i.i.i.i.i = phi i64 [ %i.un, %bb.db ], [ 0, %.split47.i.preheader.i.i.i ]
  %.pn.i.i.i.i = phi i64 [ %i.uo, %bb.db ], [ %i.sp, %.split47.i.preheader.i.i.i ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ss ; 3 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.st, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i25.i.i.i.i = load <16 x i8>, ptr %i.tv, align 1, !noalias !19599 ; 2 uses
  %i.tw = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, %i.sv
  %i.tx = bitcast <16 x i1> %i.tw to i16          ; 2 uses
  %.not.i.not31.i.i.i.i = icmp eq i16 %i.tx, 0
  br i1 %.not.i.not31.i.i.i.i, label %._crit_edge.split.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split47.i.i.i.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2a_6layout3abs3AbsEEEjEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_jNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i
  %.sroa.06.0.i32.i.i.i.i = phi i16 [ %i.um, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2a_6layout3abs3AbsEEEjEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_jNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ], [ %i.tx, %.split47.i.i.i.i ] ; 3 uses
  %i.ty = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i.i.i.i, i1 true)
  %i.tz = zext nneg i16 %i.ty to i64
  %i.ua = add i64 %.sroa.01.0.i.i.i.i.i, %i.tz
  %i.ub = and i64 %i.ua, %i.ss
  %i.uc = sub nsw i64 0, %i.ub                    ; 3 uses
  %i.ud = getelementptr inbounds [16 x i8], ptr %i.st, i64 %i.uc
  %i.ue = getelementptr inbounds i8, ptr %i.ud, i64 -16
  %.val2.i.i.i.i.i = load ptr, ptr %i.ue, align 8, !noalias !19600, !align !21, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val2.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2a_6layout3abs3AbsEEEjEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_jNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, label %bb.da

bb.da:                                            ; preds = %.lr.ph.i.i.i.i
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %.val2.i.i.i.i.i, align 8, !noalias !19600, !nonnull !10, !noundef !10 ; 2 uses
  %i.uf = icmp eq ptr %.val.i.i.i.i.i.i.i.i, %.val1.i.i.i.i.i.i.i.i
  br i1 %i.uf, label %.loopexit.i156.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.da
  %i.ug = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 16
  %i.uh = invoke fastcc noundef zeroext i1 @_RNvXsl_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ug, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.sw) #40
          to label %.noexc57.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19588

.noexc57.i.i:                                     ; preds = %.split.i.i.i.i
  br i1 %i.uh, label %.loopexit.i156.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2a_6layout3abs3AbsEEEjEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_jNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, !prof !19603

._crit_edge.split.i.i.i.i:                        ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2a_6layout3abs3AbsEEEjEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_jNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, %.split47.i.i.i.i
  %i.ui = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, splat (i8 -1)
  %i.uj = bitcast <16 x i1> %i.ui to i16
  %i.uk = icmp eq i16 %i.uj, 0
  br i1 %i.uk, label %bb.db, label %.loopexit5.i.i.i, !prof !13

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2a_6layout3abs3AbsEEEjEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_jNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i: ; preds = %.noexc57.i.i, %.lr.ph.i.i.i.i
  %i.ul = add i16 %.sroa.06.0.i32.i.i.i.i, -1
  %i.um = and i16 %i.ul, %.sroa.06.0.i32.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.um, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.split.i.i.i.i, label %.lr.ph.i.i.i.i

bb.db:                                            ; preds = %._crit_edge.split.i.i.i.i
  %i.un = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.uo = add i64 %.sroa.01.0.i.i.i.i.i, %i.un
  br label %.split47.i.i.i.i

.loopexit5.i.i.i:                                 ; preds = %._crit_edge.split.i.i.i.i, %._crit_edge.split.us.us.i.i.i.i
  %i.up = load i64, ptr %i.ay, align 8, !alias.scope !19604, !noalias !19576, !noundef !10
  %i.uq = icmp eq i64 %i.up, 0
  br i1 %i.uq, label %bb.dc, label %.noexc58.i.i, !prof !13

bb.dc:                                            ; preds = %.loopexit5.i.i.i
  %i.ur = invoke { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB28_6layout3abs3AbsEEEjEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_jNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i1 noundef zeroext true) #38
          to label %.noexc58.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19588 ; 0 uses

bb.dd:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !19576
  br label %.backedge2497

.noexc58.i.i:                                     ; preds = %bb.dc, %.loopexit5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !19576
  call void @llvm.experimental.noalias.scope.decl(metadata !19605)
  %.val.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !19605, !noalias !19606, !nonnull !10, !noundef !10 ; 8 uses
  %.val2.i.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !19605, !noalias !19606, !noundef !10 ; 4 uses
  %.sroa.0.07.i.i.i.i.i = and i64 %.val2.i.i.i.i, %i.sp ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i.i = load <16 x i8>, ptr %i.us, align 1, !noalias !19607
  %i.ut = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i.i, zeroinitializer
  %i.uu = bitcast <16 x i1> %i.ut to i16          ; 2 uses
  %.not.i9.i.i.i.i.i = icmp eq i16 %i.uu, 0
  br i1 %.not.i9.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !prof !22

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %.noexc58.i.i
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i64 [ %.sroa.0.07.i.i.i.i.i, %.noexc58.i.i ], [ %.sroa.0.0.i.i.i.i155.i, %.lr.ph.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i = phi i16 [ %i.uu, %.noexc58.i.i ], [ %i.vl, %.lr.ph.i.i.i.i.i ]
  %i.uv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.uw = zext nneg i16 %i.uv to i64
  %i.ux = add i64 %.sroa.0.0.lcssa.i.i.i.i.i, %i.uw
  %i.uy = and i64 %i.ux, %.val2.i.i.i.i           ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.uy
  %i.va = load i8, ptr %i.uz, align 1, !noalias !19608, !noundef !10 ; 2 uses
  %i.vb = icmp sgt i8 %i.va, -1
  br i1 %i.vb, label %bb.de, label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB27_6layout3abs3AbsEEEjEE14insert_no_growCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i, !prof !13

bb.de:                                            ; preds = %._crit_edge.i.i.i.i.i
  %.val2.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i, align 16, !noalias !19608
  %i.vc = icmp slt <16 x i8> %.val2.i.i.i.i.i.i, zeroinitializer
  %i.vd = bitcast <16 x i1> %i.vc to i16          ; 2 uses
  %.not.i6.i.i.i.i.i = icmp ne i16 %i.vd, 0
  %i.ve = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.vd, i1 true)
  %i.vf = zext nneg i16 %i.ve to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i.i.i)
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.vf
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !19608
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB27_6layout3abs3AbsEEEjEE14insert_no_growCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc58.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i155.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.noexc58.i.i ]
  %i.vg = phi i64 [ %i.vh, %.lr.ph.i.i.i.i.i ], [ 0, %.noexc58.i.i ]
  %i.vh = add i64 %i.vg, 16                       ; 2 uses
  %i.vi = add i64 %i.vh, %.sroa.0.010.i.i.i.i.i
  %.sroa.0.0.i.i.i.i155.i = and i64 %i.vi, %.val2.i.i.i.i ; 3 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i155.i
  %.sroa.0.0.copyload.i6.i.i.i.i.i = load <16 x i8>, ptr %i.vj, align 1, !noalias !19607
  %i.vk = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i.i, zeroinitializer
  %i.vl = bitcast <16 x i1> %i.vk to i16          ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.vl, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !prof !23

_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB27_6layout3abs3AbsEEEjEE14insert_no_growCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i: ; preds = %bb.de, %._crit_edge.i.i.i.i.i
  %i.vm = phi i8 [ %.pre.i.i.i.i, %bb.de ], [ %i.va, %._crit_edge.i.i.i.i.i ]
  %.sroa.0.0.i5.i.i.i.i.i = phi i64 [ %i.vf, %bb.de ], [ %i.uy, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i5.i.i.i.i.i
  %i.vo = add i64 %.sroa.0.0.i5.i.i.i.i.i, -16
  %i.vp = and i64 %i.vo, %.val2.i.i.i.i
  store i8 %i.sr, ptr %i.vn, align 1, !noalias !19608
  %i.vq = getelementptr i8, ptr %.val.i.i.i.i, i64 %i.vp
  %i.vr = getelementptr i8, ptr %i.vq, i64 16
  store i8 %i.sr, ptr %i.vr, align 1, !noalias !19608
  %i.vs = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i.i
  %i.vt = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i, i64 %i.vs ; 3 uses
  %i.vu = and i8 %i.vm, 1
  %i.vv = zext nneg i8 %i.vu to i64
  %i.vw = getelementptr inbounds i8, ptr %i.vt, i64 -16
  store ptr %..i.i, ptr %i.vw, align 8, !noalias !19608
  %i.vx = getelementptr inbounds i8, ptr %i.vt, i64 -8
  store i64 0, ptr %i.vx, align 8, !noalias !19609
  %i.vy = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !19605, !noalias !19606
  %i.vz = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.vv, i64 0
  %i.wa = sub <2 x i64> %i.vy, %i.vz
  store <2 x i64> %i.wa, ptr %i.ay, align 8, !alias.scope !19605, !noalias !19606
  br label %bb.df

.loopexit.i156.i:                                 ; preds = %.lr.ph.us.i.i.i.i, %.noexc57.i.i, %bb.da, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2a_6layout3abs3AbsEEEjEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_jNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs8jFhWeO2DFb_9typst_pdf.exit.us.us.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %i.tl, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2a_6layout3abs3AbsEEEjEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_jNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs8jFhWeO2DFb_9typst_pdf.exit.us.us.i.i.i.i ], [ %i.uc, %.noexc57.i.i ], [ %i.uc, %bb.da ], [ %i.te, %.lr.ph.us.i.i.i.i ]
  %i.wb = getelementptr inbounds [16 x i8], ptr %i.st, i64 %.pre-phi.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !19576
  br label %bb.df

bb.df:                                            ; preds = %.loopexit.i156.i, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB27_6layout3abs3AbsEEEjEE14insert_no_growCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i
  %.pn.i.i.i = phi ptr [ %i.vt, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB27_6layout3abs3AbsEEEjEE14insert_no_growCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i ], [ %i.wb, %.loopexit.i156.i ]
  %.sroa.0.0.i61.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -8 ; 2 uses
  %i.wc = load i64, ptr %.sroa.0.0.i61.i.i, align 8, !noalias !19588, !noundef !10
  %i.wd = add i64 %i.wc, 1
  store i64 %i.wd, ptr %.sroa.0.0.i61.i.i, align 8, !noalias !19588
  %.not.i52.i.i = icmp eq i64 %i.sl, 4
  br i1 %.not.i52.i.i, label %bb.dd, label %bb.cy

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.split.i.i.i.i, %bb.cy, %bb.dc
  %lpad.loopexit.split-lp2478 = landingpad { ptr, i32 }
          cleanup
  %.val.i154.i = load ptr, ptr %i.r, align 8, !noalias !19576
  %.val45.i.i = load i64, ptr %i.ax, align 8, !noalias !19576, !noundef !10
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapINtNtB4_6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2y_6layout3abs3AbsEEEjNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs8jFhWeO2DFb_9typst_pdf(ptr %.val.i154.i, i64 %.val45.i.i) #44, !noalias !19588
  br label %common.resume

_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table24try_resolve_table_stroke.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs8jFhWeO2DFb_9typst_pdf.exit.i.i, %.thread37.i.i, %.noexc.i.i, %bb.co, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterINtNtBb_6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2U_6layout3abs3AbsEEEjENCINvNvNtNtNtB9_6traits8iterator8Iterator10max_by_key3keyTB1S_jEjNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table24try_resolve_table_stroke0E0EB4m_4nextB5s_.exit.i.i.i.i
  %.sroa.7495.0.i = phi i32 [ %.sroa.4.sroa.0.0.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs8jFhWeO2DFb_9typst_pdf.exit.i.i ], [ 0, %.thread37.i.i ], [ 0, %.noexc.i.i ], [ 0, %bb.co ], [ 0, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterINtNtBb_6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2U_6layout3abs3AbsEEEjENCINvNvNtNtNtB9_6traits8iterator8Iterator10max_by_key3keyTB1S_jEjNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table24try_resolve_table_stroke0E0EB4m_4nextB5s_.exit.i.i.i.i ]
  %.sroa.5494.0.i = phi float [ %.sroa.3.0.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs8jFhWeO2DFb_9typst_pdf.exit.i.i ], [ undef, %.thread37.i.i ], [ undef, %.noexc.i.i ], [ undef, %bb.co ], [ undef, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterINtNtBb_6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2U_6layout3abs3AbsEEEjENCINvNvNtNtNtB9_6traits8iterator8Iterator10max_by_key3keyTB1S_jEjNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table24try_resolve_table_stroke0E0EB4m_4nextB5s_.exit.i.i.i.i ]
  %.sroa.0493.0.i = phi i32 [ %.sroa.06.0.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs8jFhWeO2DFb_9typst_pdf.exit.i.i ], [ 0, %.thread37.i.i ], [ 0, %.noexc.i.i ], [ 0, %bb.co ], [ 0, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterINtNtBb_6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2U_6layout3abs3AbsEEEjENCINvNvNtNtNtB9_6traits8iterator8Iterator10max_by_key3keyTB1S_jEjNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table24try_resolve_table_stroke0E0EB4m_4nextB5s_.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !19576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !19576
  %i.we = getelementptr inbounds nuw i8, ptr %i.fx, i64 56 ; 2 uses
  store i32 %.sroa.0493.0.i, ptr %i.we, align 8
  %i.wf = getelementptr inbounds nuw i8, ptr %i.fx, i64 60
  store float %.sroa.5494.0.i, ptr %i.wf, align 4
  %i.wg = getelementptr inbounds nuw i8, ptr %i.fx, i64 88
  %1 = insertelement <2 x ptr> poison, ptr %i.fx, i64 0 ; 2 uses
  %2 = insertelement <2 x ptr> %1, ptr %i.gv, i64 1
  %3 = getelementptr inbounds nuw i8, <2 x ptr> %2, <2 x i64> <i64 88, i64 0>
  store i32 %.sroa.7495.0.i, ptr %i.wg, align 8
  %i.wh = load i64, ptr %i.gy, align 8, !noundef !10
  %.not101.i = icmp eq i64 %i.wh, 0
  br i1 %.not101.i, label %bb.di, label %bb.dg

.lr.ph903.i:                                      ; preds = %..loopexit604_crit_edge.i, %.lr.ph903.preheader.i
  %indvars.iv1161.i = phi i64 [ 0, %.lr.ph903.preheader.i ], [ %indvars.iv.next1162.i, %..loopexit604_crit_edge.i ] ; 3 uses
  %indvars.iv.next1162.i = add nuw nsw i64 %indvars.iv1161.i, 1 ; 2 uses
  br label %bb.er

bb.dg:                                            ; preds = %_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table24try_resolve_table_stroke.exit.i
  %i.wi = load ptr, ptr %i.gw, align 8, !nonnull !10, !noundef !10
  %.sroa.045.0.copyload.i = load i64, ptr %i.wi, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !19610)
  %i.wj = load i64, ptr %i.gk, align 8, !alias.scope !19610, !noundef !10 ; 2 uses
  %i.wk = icmp eq i64 %i.wj, 0
  br i1 %i.wk, label %bb.dh, label %_RNvMs0_NtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4gridINtB5_9GridCellsNtNtB7_5table13TableCellDataE8rows_mutBb_.exit.i, !prof !13

bb.dh:                                            ; preds = %bb.dg
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @197, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #42, !noalias !19611
  unreachable

_RNvMs0_NtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4gridINtB5_9GridCellsNtNtB7_5table13TableCellDataE8rows_mutBb_.exit.i: ; preds = %bb.dg
  %i.wl = load i64, ptr %i.fy, align 8, !alias.scope !19610, !noundef !10 ; 2 uses
  %i.wm = icmp eq i64 %i.wl, 0
  br i1 %i.wm, label %_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table11build_table.exit, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtBZ_5table13TableCellDataEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB13_.exit.i.lr.ph.i

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtBZ_5table13TableCellDataEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB13_.exit.i.lr.ph.i: ; preds = %_RNvMs0_NtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4gridINtB5_9GridCellsNtNtB7_5table13TableCellDataE8rows_mutBb_.exit.i
  %i.wn = load ptr, ptr %.phi.trans.insert1182.i, align 8, !alias.scope !19610, !nonnull !10, !noundef !10
  %i.wo = getelementptr inbounds nuw i8, ptr %i.fx, i64 92 ; 2 uses
  %i.wp = insertelement <2 x ptr> %1, ptr %i.we, i64 1
  %i.wq = getelementptr inbounds nuw i8, <2 x ptr> %i.wp, <2 x i64> <i64 96, i64 0>
  br label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtBZ_5table13TableCellDataEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB13_.exit.i.i

bb.di:                                            ; preds = %_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table24try_resolve_table_stroke.exit.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @517) #42
  unreachable

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtBZ_5table13TableCellDataEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB13_.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB1f_6groups5GroupEEEB1h_.exit179.i, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtBZ_5table13TableCellDataEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB13_.exit.i.lr.ph.i
  %.sroa.045.0911.i = phi i64 [ %.sroa.045.0.copyload.i, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtBZ_5table13TableCellDataEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB13_.exit.i.lr.ph.i ], [ %.sroa.045.1.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB1f_6groups5GroupEEEB1h_.exit179.i ] ; 5 uses
  %.sroa.058.0910.i = phi i32 [ -1, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtBZ_5table13TableCellDataEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB13_.exit.i.lr.ph.i ], [ %.sroa.058.1.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB1f_6groups5GroupEEEB1h_.exit179.i ] ; 8 uses
  %.sroa.0504.0909.i = phi ptr [ %i.wn, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtBZ_5table13TableCellDataEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB13_.exit.i.lr.ph.i ], [ %i.wr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB1f_6groups5GroupEEEB1h_.exit179.i ] ; 2 uses
  %.sroa.5505.0908.i = phi i64 [ %i.wl, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtBZ_5table13TableCellDataEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB13_.exit.i.lr.ph.i ], [ %i.ws, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB1f_6groups5GroupEEEB1h_.exit179.i ] ; 2 uses
  %.sroa.11507.0907.i = phi i32 [ 0, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtBZ_5table13TableCellDataEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB13_.exit.i.lr.ph.i ], [ %i.wt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB1f_6groups5GroupEEEB1h_.exit179.i ] ; 2 uses
  %..i.i.i159.i = call noundef i64 @llvm.umin.i64(i64 %i.wj, i64 %.sroa.5505.0908.i) ; 2 uses
  %i.wr = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0504.0909.i, i64 %..i.i.i159.i ; 2 uses
  %i.ws = sub nuw i64 %.sroa.5505.0908.i, %..i.i.i159.i ; 2 uses
  %i.wt = add i32 %.sroa.11507.0907.i, 1
  br i1 %.sroa.013.1.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtBZ_5table13TableCellDataEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB13_.exit.i.i
  %i.wu = load i32, ptr %i.wo, align 4, !noundef !10
  br label %bb.dl

bb.dk:                                            ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtBZ_5table13TableCellDataEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB13_.exit.i.i
  %i.wv = sext i32 %.sroa.11507.0907.i to i64     ; 3 uses
  %i.ww = load i64, ptr %i.gy, align 8, !noundef !10 ; 2 uses
  %i.wx = icmp ugt i64 %i.ww, %i.wv
  br i1 %i.wx, label %bb.eb, label %bb.ec

bb.dl:                                            ; preds = %_RINvMs2_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB6_6Groups8push_tagNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag7TagKindEBa_.exit.i, %bb.ee, %.split553.i, %.split.i, %bb.dj
  %.sroa.058.1.i = phi i32 [ %.sroa.058.0910.i, %bb.dj ], [ %i.abl, %_RINvMs2_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB6_6Groups8push_tagNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag7TagKindEBa_.exit.i ], [ %.sroa.058.0910.i, %bb.ee ], [ %.sroa.058.0910.i, %.split.i ], [ %.sroa.058.0910.i, %.split553.i ]
  %.sroa.048.0.i = phi i32 [ %i.wu, %bb.dj ], [ %i.abl, %_RINvMs2_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB6_6Groups8push_tagNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag7TagKindEBa_.exit.i ], [ %.sroa.058.0910.i, %bb.ee ], [ %.sroa.058.0910.i, %.split.i ], [ %.sroa.058.0910.i, %.split553.i ] ; 2 uses
  %.sroa.045.1.i = phi i64 [ %.sroa.045.0911.i, %bb.dj ], [ %.sroa.049.0.copyload.i, %_RINvMs2_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB6_6Groups8push_tagNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag7TagKindEBa_.exit.i ], [ %.sroa.045.0911.i, %bb.ee ], [ %.sroa.045.0911.i, %.split.i ], [ %.sroa.045.0911.i, %.split553.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !19612)
  call void @llvm.experimental.noalias.scope.decl(metadata !19613)
  %i.wy = load i64, ptr %i.bh, align 8, !alias.scope !19614, !noundef !10 ; 5 uses
  %i.wz = icmp ult i64 %i.wy, 144115188075855872
  call void @llvm.assume(i1 %i.wz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !19615
  store i64 16, ptr %i.j, align 8, !noalias !19615
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx.i.i.i, i8 0, i64 56, i1 false), !noalias !19550
  call void @llvm.experimental.noalias.scope.decl(metadata !19616)
  %i.xa = load i64, ptr %i.bg, align 8, !range !17, !alias.scope !19617, !noundef !10
  %i.xb = icmp eq i64 %i.wy, %i.xa
  br i1 %i.xb, label %bb.dm, label %_RINvMs3_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB6_10TagStorage4pushINtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag3TagNtNtB19_4kind2TREEBa_.exit.i.i

bb.dm:                                            ; preds = %bb.dl
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag7TagKindEE8grow_oneCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvMs3_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB6_10TagStorage4pushINtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag3TagNtNtB19_4kind2TREEBa_.exit.i.i unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag7TagKindEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, !noalias !19618

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag7TagKindEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i: ; preds = %bb.dm
  %i.xc = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag7TagKindECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j), !noalias !19619
  br label %common.resume

_RINvMs3_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB6_10TagStorage4pushINtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag3TagNtNtB19_4kind2TREEBa_.exit.i.i: ; preds = %bb.dm, %bb.dl
  %i.xd = trunc i64 %i.wy to i32
  %i.xe = load ptr, ptr %i.bi, align 8, !alias.scope !19617, !nonnull !10, !noundef !10
  %i.xf = getelementptr inbounds nuw [64 x i8], ptr %i.xe, i64 %i.wy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.xf, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !noalias !19619
  %i.xg = add nuw nsw i64 %i.wy, 1
  store i64 %i.xg, ptr %i.bh, align 8, !alias.scope !19617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !19615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !19620
  store i32 %.sroa.048.0.i, ptr %i.bp, align 8, !noalias !19620
  store i64 1, ptr %i.bq, align 8, !noalias !19620
  store i8 27, ptr %i.br, align 8, !noalias !19620
  store i8 2, ptr %.sroa.4.0..sroa_idx.i160.i, align 1, !noalias !19620
  store i32 %i.xd, ptr %.sroa.5.0..sroa_idx.i161.i, align 8, !noalias !19620
  store i64 0, ptr %i.k, align 8, !noalias !19620
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx4.i.i, align 8, !noalias !19620
  store i64 0, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !19620
  store i8 0, ptr %i.bs, align 4, !noalias !19620
  %i.xh = load i64, ptr %i.bn, align 8, !alias.scope !19621, !noundef !10 ; 6 uses
  %i.xi = icmp ult i64 %i.xh, 115292150460684698
  call void @llvm.assume(i1 %i.xi)
  call void @llvm.experimental.noalias.scope.decl(metadata !19622)
  %i.xj = load i64, ptr %i.bf, align 8, !range !17, !alias.scope !19623, !noundef !10
  %i.xk = icmp eq i64 %i.xh, %i.xj
  br i1 %i.xk, label %bb.dn, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8push_mutBL_.exit.i.i

bb.dn:                                            ; preds = %_RINvMs3_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB6_10TagStorage4pushINtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag3TagNtNtB19_4kind2TREEBa_.exit.i.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bf)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8push_mutBL_.exit.i.i unwind label %bb.do, !noalias !19624

bb.do:                                            ; preds = %bb.dn
  %i.xl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.k) #44
          to label %common.resume unwind label %bb.dp, !noalias !19625

bb.dp:                                            ; preds = %bb.do
  %i.xm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !19625
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8push_mutBL_.exit.i.i: ; preds = %bb.dn, %_RINvMs3_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB6_10TagStorage4pushINtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag3TagNtNtB19_4kind2TREEBa_.exit.i.i
  %i.xn = load ptr, ptr %i.bo, align 8, !alias.scope !19623, !nonnull !10, !noundef !10 ; 2 uses
  %i.xo = getelementptr inbounds nuw [80 x i8], ptr %i.xn, i64 %i.xh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.xo, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 80, i1 false), !noalias !19625
  %i.xp = add nuw nsw i64 %i.xh, 1                ; 2 uses
  store i64 %i.xp, ptr %i.bn, align 8, !alias.scope !19623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !19620
  %i.xq = zext i32 %.sroa.048.0.i to i64          ; 3 uses
  %.not.i162.i = icmp samesign ult i64 %i.xh, %i.xq
  br i1 %.not.i162.i, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8push_mutBL_.exit.i.i
  %i.xr = getelementptr inbounds nuw [80 x i8], ptr %i.xn, i64 %i.xq ; 4 uses
  %.sroa.5.0.insert.ext.i.i = and i64 %i.xh, 4294967295 ; 4 uses
  %i.xs = inttoptr i64 %.sroa.5.0.insert.ext.i.i to ptr
  call void @llvm.experimental.noalias.scope.decl(metadata !19626)
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xr, i64 16 ; 2 uses
  %i.xu = load i64, ptr %i.xt, align 8, !alias.scope !19626, !noalias !19627, !noundef !10 ; 3 uses
  %i.xv = load i64, ptr %i.xr, align 8, !range !17, !alias.scope !19626, !noalias !19627, !noundef !10
  %i.xw = icmp eq i64 %i.xu, %i.xv
  br i1 %i.xw, label %bb.dr, label %_RINvMs2_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB6_6Groups8push_tagINtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag3TagNtNtB18_4kind2TREEBa_.exit.i

bb.dr:                                            ; preds = %bb.dq
  call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve7TagNodeE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.xr), !noalias !19628
  br label %_RINvMs2_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB6_6Groups8push_tagINtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag3TagNtNtB18_4kind2TREEBa_.exit.i

bb.ds:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8push_mutBL_.exit.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.xq, i64 noundef %i.xp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #42, !noalias !19627
  unreachable

_RINvMs2_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB6_6Groups8push_tagINtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag3TagNtNtB18_4kind2TREEBa_.exit.i: ; preds = %bb.dr, %bb.dq
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  %i.xy = load ptr, ptr %i.xx, align 8, !alias.scope !19626, !noalias !19627, !nonnull !10, !noundef !10
  %i.xz = getelementptr inbounds nuw [64 x i8], ptr %i.xy, i64 %i.xu ; 2 uses
  store i64 -9223372036854775808, ptr %i.xz, align 8, !noalias !19629
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  store ptr %i.xs, ptr %.sroa.5.0..sroa_idx7.i.i, align 8, !noalias !19629
  %i.ya = add i64 %i.xu, 1
  store i64 %i.ya, ptr %i.xt, align 8, !alias.scope !19626, !noalias !19627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !19550
  store ptr %.sroa.0504.0909.i, ptr %i.s, align 8, !noalias !19550
  store ptr %i.wr, ptr %i.bt, align 8, !noalias !19550
  store <2 x ptr> %i.wq, ptr %i.bu, align 8, !noalias !19550
  store <2 x ptr> %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !19550
  store ptr %i.bg, ptr %.sroa.763.0..sroa_idx.i, align 8, !noalias !19550
  %i.yb = call fastcc { i32, i32 } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter7IterMutINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtB1I_5table13TableCellDataEENCNvB2E_11build_tables5_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.s) #40, !noalias !19630 ; 2 uses
  %i.yc = extractvalue { i32, i32 } %i.yb, 0
  %i.yd = trunc i32 %i.yc to i1
  br i1 %i.yd, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB18_6groups5GroupEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtB2R_5slice4iter7IterMutINtNtNtB18_7context4grid9GridEntryNtNtB4j_5table13TableCellDataEENCNvB4O_11build_tables5_0EE9from_iterB1a_.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %_RINvMs2_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB6_6Groups8push_tagINtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag3TagNtNtB18_4kind2TREEBa_.exit.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !19631
  %i.ye = call noundef align 4 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, 17) 4) #41, !noalias !19631 ; 6 uses
  %i.yf = icmp eq ptr %i.ye, null
  br i1 %i.yf, label %bb.dt, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8jFhWeO2DFb_9typst_pdf.exit.i.i

bb.dt:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 4, i64 16) #39, !noalias !19632
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.yg = extractvalue { i32, i32 } %i.yb, 1
  store i32 %i.yg, ptr %i.ye, align 4, !noalias !19632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !19633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false), !noalias !19634
  %i.yh = invoke fastcc { i32, i32 } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter7IterMutINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtB1I_5table13TableCellDataEENCNvB2E_11build_tables5_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.i) #40
          to label %.noexc.i164.i unwind label %.loopexit.split-lp.thread.i.i, !noalias !19632 ; 2 uses

.noexc.i164.i:                                    ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %i.yi = extractvalue { i32, i32 } %i.yh, 0
  %i.yj = trunc i32 %i.yi to i1
  br i1 %i.yj, label %.lr.ph.i.i.i165.i, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBY_6groups5GroupEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtB2x_5slice4iter7IterMutINtNtNtBY_7context4grid9GridEntryNtNtB3Z_5table13TableCellDataEENCNvB4t_11build_tables5_0EE11spec_extendB10_.exit.i.i

.lr.ph.i.i.i165.i:                                ; preds = %.noexc.i164.i, %.noexc11.i.i
  %.sroa.8.0 = phi ptr [ %.sroa.8.1, %.noexc11.i.i ], [ %i.ye, %.noexc.i164.i ] ; 4 uses
  %.sroa.068.0 = phi i64 [ %.sroa.068.1, %.noexc11.i.i ], [ 4, %.noexc.i164.i ] ; 5 uses
  %i.yk = phi ptr [ %i.za, %.noexc11.i.i ], [ %i.ye, %.noexc.i164.i ]
  %i.yl = phi i64 [ %i.zb, %.noexc11.i.i ], [ 4, %.noexc.i164.i ] ; 3 uses
  %i.ym = phi i64 [ %i.ze, %.noexc11.i.i ], [ 1, %.noexc.i164.i ] ; 4 uses
  %.pn.i.i.i166.i = phi { i32, i32 } [ %i.zd, %.noexc11.i.i ], [ %i.yh, %.noexc.i164.i ]
  %i.yn = extractvalue { i32, i32 } %.pn.i.i.i166.i, 1
  %i.yo = icmp samesign ult i64 %i.ym, 2305843009213693952
  call void @llvm.assume(i1 %i.yo)
  %i.yp = icmp eq i64 %i.ym, %i.yl
  br i1 %i.yp, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBL_6groups5GroupEE7reserveBN_.exit.i.i.i.i, label %bb.dx

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBL_6groups5GroupEE7reserveBN_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i165.i
  %i.yq = add nuw nsw i64 %i.yl, 1
  %i.yr = shl nuw i64 %.sroa.068.0, 1
  %..i.i.i60 = call noundef i64 @llvm.umax.i64(i64 %i.yq, i64 %i.yr) ; 2 uses
  %..i14.i.i = call noundef i64 @llvm.umax.i64(i64 %..i.i.i60, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.575)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.experimental.noalias.scope.decl(metadata !19635)
  %i.ys = shl i64 %..i14.i.i, 2                   ; 5 uses
  %i.yt = icmp ugt i64 %..i.i.i60, 4611686018427387903
  %.not.i61 = icmp ugt i64 %i.ys, 9223372036854775804
  %or.cond.i62 = or i1 %i.yt, %.not.i61
  br i1 %or.cond.i62, label %.loopexit, label %bb.du, !prof !36

bb.du:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBL_6groups5GroupEE7reserveBN_.exit.i.i.i.i
  %i.yu = icmp eq i64 %.sroa.068.0, 0
  br i1 %i.yu, label %bb.dv, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit.i
end_hunk_0
