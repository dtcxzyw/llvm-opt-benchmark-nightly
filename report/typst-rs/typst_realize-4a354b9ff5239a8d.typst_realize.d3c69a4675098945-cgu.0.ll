Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_realize-4a354b9ff5239a8d.typst_realize.d3c69a4675098945-cgu.0?download=true
inline.NumInlined: 1838
inline.NumDeleted: 1082
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model4list8ListElemEB2_:bb.a
  br i1 %.not16.i.i.i, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.aq = add i64 %.sroa.0.012.i.i, 1
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader

bb.f:                                             ; preds = %.lr.ph.i.i
  %.sroa.012.0.copyload.i.i.i = load ptr, ptr %.sroa.6101.0.i, align 8, !noalias !153
  %.sroa.6101.8..sroa.413.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6101.0.i, i64 16
  %.sroa.6101.8.copyload.i = load ptr, ptr %.sroa.6101.8..sroa.413.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !154
  %i.ar = icmp eq ptr %.sroa.012.0.copyload.i.i.i, null
  %i.as = add i64 %.sroa.0.012.i.i, 1             ; 2 uses
  br i1 %i.ar, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader, label %.lr.ph.i.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader: ; preds = %bb.f, %.thread.i.i
  %.sroa.0.0.i.ph212 = phi i64 [ %i.aq, %.thread.i.i ], [ %i.as, %bb.f ]
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader
  %.sroa.0102.0.i = phi ptr [ %i.ak, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %i.av, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ]
  %.sroa.11.0.i = phi ptr [ %.sroa.799.0.copyload.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.11.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 8 uses
  %.sroa.8.0.i = phi i64 [ %.sroa.6.0.copyload.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.8.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 5 uses
  %.sroa.019.0.i = phi ptr [ %.sroa.098.0.copyload.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.019.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 6 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.i.ph212, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.0.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 10 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i
  %i.at = phi ptr [ %i.av, %bb.h ], [ %.sroa.0102.0.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i ] ; 6 uses
  %i.au = icmp eq ptr %i.at, %i.u
  br i1 %i.au, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model4list8ListElemEs_0ENCB3s_s0_0EEB3v_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !noalias !155, !nonnull !11, !align !13, !noundef !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !155, !nonnull !11, !align !13, !noundef !11
  %i.az = icmp eq ptr %i.ay, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model4lists_1__NtB9_8ListItemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.az, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model4list8ListElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i, label %bb.g

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model4list8ListElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i: ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.0103.0.copyload.i = load ptr, ptr %i.ba, align 8, !noalias !156 ; 5 uses
  %.sroa.6104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.6104.0.copyload.i = load i64, ptr %.sroa.6104.0..sroa_idx.i, align 8, !noalias !156 ; 4 uses
  %.sroa.7105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.7105.0.copyload.i = load ptr, ptr %.sroa.7105.0..sroa_idx.i, align 8, !noalias !156 ; 7 uses
  %.not73.i = icmp eq ptr %.sroa.0103.0.copyload.i, null
  br i1 %.not73.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model4list8ListElemEs_0ENCB3s_s0_0EEB3v_.exit, label %.lr.ph.i88.i

.lr.ph.i88.i:                                     ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model4list8ListElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i, %bb.i
  %.sroa.6108.0.i = phi ptr [ %.sroa.6108.8.copyload.i, %bb.i ], [ %.sroa.7105.0.copyload.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model4list8ListElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i ] ; 3 uses
  %.sroa.0.012.i89.i = phi i64 [ %i.bd, %bb.i ], [ 0, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model4list8ListElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i ] ; 2 uses
  %.not16.i.i91.i = icmp eq ptr %.sroa.6108.0.i, null
  br i1 %.not16.i.i91.i, label %.thread.i95.i, label %bb.i

.thread.i95.i:                                    ; preds = %.lr.ph.i88.i
  %i.bb = add i64 %.sroa.0.012.i89.i, 1
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i

bb.i:                                             ; preds = %.lr.ph.i88.i
  %.sroa.012.0.copyload.i.i92.i = load ptr, ptr %.sroa.6108.0.i, align 8, !noalias !157
  %.sroa.6108.8..sroa.413.0..sroa_idx.i.i93.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6108.0.i, i64 16
  %.sroa.6108.8.copyload.i = load ptr, ptr %.sroa.6108.8..sroa.413.0..sroa_idx.i.i93.sroa_idx.i, align 8, !noalias !154
  %i.bc = icmp eq ptr %.sroa.012.0.copyload.i.i92.i, null
  %i.bd = add i64 %.sroa.0.012.i89.i, 1           ; 2 uses
  br i1 %i.bc, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i, label %.lr.ph.i88.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i: ; preds = %bb.i, %.thread.i95.i
  %.sroa.0.0.lcssa.i94.i = phi i64 [ %i.bb, %.thread.i95.i ], [ %i.bd, %bb.i ] ; 9 uses
  %i.be = icmp ult i64 %.sroa.0.0.lcssa.i94.i, %.sroa.0.0.i
  br i1 %i.be, label %.lr.ph155.preheader.i, label %bb.j

bb.j:                                             ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i
  %i.bf = icmp ugt i64 %.sroa.0.0.lcssa.i94.i, %.sroa.0.0.i
  br i1 %i.bf, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph155.preheader.i:                            ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i
  %i.bg = sub nuw i64 %.sroa.0.0.i, %.sroa.0.0.lcssa.i94.i ; 3 uses
  %.neg243 = add i64 %.sroa.0.0.lcssa.i94.i, 1
  %xtraiter235 = and i64 %i.bg, 1
  %i.bh = icmp eq i64 %.sroa.0.0.i, %.neg243
  br i1 %i.bh, label %.lr.ph155.i.epil.preheader, label %.lr.ph155.preheader.i.new

.lr.ph155.preheader.i.new:                        ; preds = %.lr.ph155.preheader.i
  %unroll_iter241 = and i64 %i.bg, -2
  br label %.lr.ph155.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.bi = sub nuw i64 %.sroa.0.0.lcssa.i94.i, %.sroa.0.0.i ; 3 uses
  %.neg = add i64 %.sroa.0.0.i, 1
  %xtraiter = and i64 %i.bi, 1
  %i.bj = icmp eq i64 %.sroa.0.0.lcssa.i94.i, %.neg
  br i1 %i.bj, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.bi, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.preheader.i.new
  %.sroa.10.0149.i = phi ptr [ %.sroa.7105.0.copyload.i, %.lr.ph.preheader.i.new ], [ %.sroa.10.2.i.1, %bb.o ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.o ]
  %.not74.i = icmp eq ptr %.sroa.10.0149.i, null
  br i1 %.not74.i, label %.lr.ph.i.1, label %bb.m

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.x
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %.loopexit.i, label %.lr.ph155.i.epil.preheader

.lr.ph155.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph155.preheader.i
  %.sroa.11.2154.i.epil.init = phi ptr [ %.sroa.11.0.i, %.lr.ph155.preheader.i ], [ %.sroa.11.5.i.1, %.loopexit.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod240 = trunc i64 %i.bg to i1
  tail call void @llvm.assume(i1 %lcmp.mod240)
  %.not80.i.epil = icmp eq ptr %.sroa.11.2154.i.epil.init, null
  br i1 %.not80.i.epil, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph155.i.epil.preheader
  %.sroa.019.0.copyload23.i.epil = load ptr, ptr %.sroa.11.2154.i.epil.init, align 8, !noalias !154
  %.sroa.8.0..sroa.07.0.8.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.11.2154.i.epil.init, i64 8
  %.sroa.8.0.copyload29.i.epil = load i64, ptr %.sroa.8.0..sroa.07.0.8.sroa_idx.i.epil, align 8, !noalias !154
  %.sroa.11.0..sroa.07.0.8.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.11.2154.i.epil.init, i64 16
  %.sroa.11.0.copyload35.i.epil = load ptr, ptr %.sroa.11.0..sroa.07.0.8.sroa_idx.i.epil, align 8, !noalias !154
  br label %.loopexit.i

.loopexit.i.loopexit211.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit211.unr-lcssa, %.lr.ph.preheader.i
  %.sroa.10.0149.i.epil.init = phi ptr [ %.sroa.7105.0.copyload.i, %.lr.ph.preheader.i ], [ %.sroa.10.2.i.1, %.loopexit.i.loopexit211.unr-lcssa ] ; 4 uses
  %lcmp.mod234 = trunc i64 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod234)
  %.not74.i.epil = icmp eq ptr %.sroa.10.0149.i.epil.init, null
  br i1 %.not74.i.epil, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.epil.preheader
  %.sroa.049.0.copyload51.i.epil = load ptr, ptr %.sroa.10.0149.i.epil.init, align 8, !noalias !154
  %.sroa.7.0..sroa.09.0.10.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.10.0149.i.epil.init, i64 8
  %.sroa.7.0.copyload55.i.epil = load i64, ptr %.sroa.7.0..sroa.09.0.10.sroa_idx.i.epil, align 8, !noalias !154
  %.sroa.10.0..sroa.09.0.10.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.10.0149.i.epil.init, i64 16
  %.sroa.10.0.copyload59.i.epil = load ptr, ptr %.sroa.10.0..sroa.09.0.10.sroa_idx.i.epil, align 8, !noalias !154
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit211.unr-lcssa, %bb.l, %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %bb.k, %.lr.ph155.i.epil.preheader, %bb.j
  %.sroa.049.1.i = phi ptr [ %.sroa.0103.0.copyload.i, %bb.j ], [ %.sroa.0103.0.copyload.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.0103.0.copyload.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.0103.0.copyload.i, %bb.k ], [ %.sroa.049.2.i.1, %.loopexit.i.loopexit211.unr-lcssa ], [ %.sroa.049.0.copyload51.i.epil, %bb.l ], [ inttoptr (i64 16 to ptr), %.lr.ph.i.epil.preheader ]
  %.sroa.7.1.i = phi i64 [ %.sroa.6104.0.copyload.i, %bb.j ], [ %.sroa.6104.0.copyload.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.6104.0.copyload.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.6104.0.copyload.i, %bb.k ], [ %.sroa.7.2.i.1, %.loopexit.i.loopexit211.unr-lcssa ], [ %.sroa.7.0.copyload55.i.epil, %bb.l ], [ 0, %.lr.ph.i.epil.preheader ]
  %.sroa.10.1.i = phi ptr [ %.sroa.7105.0.copyload.i, %bb.j ], [ %.sroa.7105.0.copyload.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.7105.0.copyload.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.7105.0.copyload.i, %bb.k ], [ %.sroa.10.2.i.1, %.loopexit.i.loopexit211.unr-lcssa ], [ %.sroa.10.0.copyload59.i.epil, %bb.l ], [ null, %.lr.ph.i.epil.preheader ]
  %.sroa.11.1.i = phi ptr [ %.sroa.11.0.i, %bb.j ], [ null, %.lr.ph155.i.epil.preheader ], [ %.sroa.11.5.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.11.0.copyload35.i.epil, %bb.k ], [ %.sroa.11.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.11.0.i, %bb.l ], [ %.sroa.11.0.i, %.loopexit.i.loopexit211.unr-lcssa ] ; 2 uses
  %.sroa.8.1.i = phi i64 [ %.sroa.8.0.i, %bb.j ], [ 0, %.lr.ph155.i.epil.preheader ], [ %.sroa.8.5.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.8.0.copyload29.i.epil, %bb.k ], [ %.sroa.8.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.8.0.i, %bb.l ], [ %.sroa.8.0.i, %.loopexit.i.loopexit211.unr-lcssa ] ; 2 uses
  %.sroa.019.1.i = phi ptr [ %.sroa.019.0.i, %bb.j ], [ inttoptr (i64 16 to ptr), %.lr.ph155.i.epil.preheader ], [ %.sroa.019.5.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.019.0.copyload23.i.epil, %bb.k ], [ %.sroa.019.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.019.0.i, %bb.l ], [ %.sroa.019.0.i, %.loopexit.i.loopexit211.unr-lcssa ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.0.0.lcssa.i94.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.lcssa.i94.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.0.0.lcssa.i94.i, %bb.k ], [ %.sroa.0.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.0.0.i, %bb.l ], [ %.sroa.0.0.i, %.loopexit.i.loopexit211.unr-lcssa ] ; 2 uses
  %.not75159.i = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %.not75159.i, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.lr.ph171.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge: ; preds = %bb.r, %.split.i, %bb.u, %.loopexit.i
  %.sroa.11.0.i.be = phi ptr [ %.sroa.11.1.i, %.loopexit.i ], [ null, %bb.r ], [ %.sroa.11.3163.i, %.split.i ], [ %.sroa.11.4128.i, %bb.u ]
  %.sroa.8.0.i.be = phi i64 [ %.sroa.8.1.i, %.loopexit.i ], [ %.sroa.8.3164.i, %bb.r ], [ %.sroa.8.3164.i, %.split.i ], [ %.sroa.8.4130.i, %bb.u ]
  %.sroa.019.0.i.be = phi ptr [ %.sroa.019.1.i, %.loopexit.i ], [ %.sroa.019.3165.i, %bb.r ], [ %.sroa.019.3165.i, %.split.i ], [ %.sroa.019.4132.i, %bb.u ]
  %.sroa.0.0.i.be = phi i64 [ 0, %.loopexit.i ], [ %.sroa.0.2166.i, %bb.r ], [ %.sroa.0.2166.i, %.split.i ], [ 0, %bb.u ]
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i

bb.m:                                             ; preds = %.lr.ph.i
  %.sroa.10.0..sroa.09.0.10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0149.i, i64 16
  %.sroa.10.0.copyload59.i = load ptr, ptr %.sroa.10.0..sroa.09.0.10.sroa_idx.i, align 8, !noalias !154
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.m, %.lr.ph.i
  %.sroa.10.2.i = phi ptr [ %.sroa.10.0.copyload59.i, %bb.m ], [ null, %.lr.ph.i ] ; 4 uses
  %.not74.i.1 = icmp eq ptr %.sroa.10.2.i, null
  br i1 %.not74.i.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.1
  %.sroa.049.0.copyload51.i.1 = load ptr, ptr %.sroa.10.2.i, align 8, !noalias !154
  %.sroa.7.0..sroa.09.0.10.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 8
  %.sroa.7.0.copyload55.i.1 = load i64, ptr %.sroa.7.0..sroa.09.0.10.sroa_idx.i.1, align 8, !noalias !154
  %.sroa.10.0..sroa.09.0.10.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 16
  %.sroa.10.0.copyload59.i.1 = load ptr, ptr %.sroa.10.0..sroa.09.0.10.sroa_idx.i.1, align 8, !noalias !154
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.1
  %.sroa.049.2.i.1 = phi ptr [ %.sroa.049.0.copyload51.i.1, %bb.n ], [ inttoptr (i64 16 to ptr), %.lr.ph.i.1 ]
  %.sroa.7.2.i.1 = phi i64 [ %.sroa.7.0.copyload55.i.1, %bb.n ], [ 0, %.lr.ph.i.1 ]
  %.sroa.10.2.i.1 = phi ptr [ %.sroa.10.0.copyload59.i.1, %bb.n ], [ null, %.lr.ph.i.1 ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit211.unr-lcssa, label %.lr.ph.i

.lr.ph155.i:                                      ; preds = %bb.x, %.lr.ph155.preheader.i.new
  %.sroa.11.2154.i = phi ptr [ %.sroa.11.0.i, %.lr.ph155.preheader.i.new ], [ %.sroa.11.5.i.1, %bb.x ] ; 2 uses
  %niter242 = phi i64 [ 0, %.lr.ph155.preheader.i.new ], [ %niter242.next.1, %bb.x ]
  %.not80.i = icmp eq ptr %.sroa.11.2154.i, null
  br i1 %.not80.i, label %.lr.ph155.i.1, label %bb.v

.lr.ph171.i:                                      ; preds = %.loopexit.i, %bb.u
  %.sroa.0.2166.i = phi i64 [ %i.bp, %bb.u ], [ %.sroa.0.1.i, %.loopexit.i ] ; 3 uses
  %.sroa.019.3165.i = phi ptr [ %.sroa.019.4132.i, %bb.u ], [ %.sroa.019.1.i, %.loopexit.i ] ; 4 uses
  %.sroa.8.3164.i = phi i64 [ %.sroa.8.4130.i, %bb.u ], [ %.sroa.8.1.i, %.loopexit.i ] ; 3 uses
  %.sroa.11.3163.i = phi ptr [ %.sroa.11.4128.i, %bb.u ], [ %.sroa.11.1.i, %.loopexit.i ] ; 7 uses
  %.sroa.10.3162.i = phi ptr [ %.sroa.10.4.i, %bb.u ], [ %.sroa.10.1.i, %.loopexit.i ] ; 6 uses
  %.sroa.7.3161.i = phi i64 [ %.sroa.7.4.i, %bb.u ], [ %.sroa.7.1.i, %.loopexit.i ]
  %.sroa.049.3160.i = phi ptr [ %.sroa.049.4.i, %bb.u ], [ %.sroa.049.1.i, %.loopexit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.049.3160.i), "nonnull"(ptr %.sroa.019.3165.i) ]
  %i.bk = icmp eq ptr %.sroa.049.3160.i, %.sroa.019.3165.i
  %i.bl = icmp eq i64 %.sroa.7.3161.i, %.sroa.8.3164.i
  %i.bm = and i1 %i.bl, %i.bk
  br i1 %i.bm, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.lr.ph171.i
  %.not76.i = icmp eq ptr %.sroa.10.3162.i, null
  %i.bn = icmp eq ptr %.sroa.11.3163.i, null      ; 2 uses
  br i1 %.not76.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.bn, label %.thread122.i, label %.split.i

bb.r:                                             ; preds = %bb.p
  br i1 %i.bn, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.thread.i

.split.i:                                         ; preds = %bb.q
  %i.bo = icmp eq ptr %.sroa.10.3162.i, %.sroa.11.3163.i
  br i1 %i.bo, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.thread.i

bb.s:                                             ; preds = %.lr.ph171.i
  %.not78.i = icmp eq ptr %.sroa.11.3163.i, null
  br i1 %.not78.i, label %bb.t, label %.thread.i

.thread.i:                                        ; preds = %bb.s, %.split.i, %bb.r
  %.sroa.019.0.copyload22.i = load ptr, ptr %.sroa.11.3163.i, align 8, !noalias !154
  %.sroa.8.0..sroa.017.0.18.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.3163.i, i64 8
  %.sroa.8.0.copyload28.i = load i64, ptr %.sroa.8.0..sroa.017.0.18.sroa_idx.i, align 8, !noalias !154
  %.sroa.11.0..sroa.017.0.18.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.3163.i, i64 16
  %.sroa.11.0.copyload34.i = load ptr, ptr %.sroa.11.0..sroa.017.0.18.sroa_idx.i, align 8, !noalias !154
  br label %bb.t

bb.t:                                             ; preds = %.thread.i, %bb.s
  %.sroa.11.4.i = phi ptr [ %.sroa.11.0.copyload34.i, %.thread.i ], [ null, %bb.s ] ; 2 uses
  %.sroa.8.4.i = phi i64 [ %.sroa.8.0.copyload28.i, %.thread.i ], [ 0, %bb.s ] ; 2 uses
  %.sroa.019.4.i = phi ptr [ %.sroa.019.0.copyload22.i, %.thread.i ], [ inttoptr (i64 16 to ptr), %bb.s ] ; 2 uses
  %.not79.i = icmp eq ptr %.sroa.10.3162.i, null
  br i1 %.not79.i, label %bb.u, label %.thread122.i

.thread122.i:                                     ; preds = %bb.t, %bb.q
  %.sroa.019.4131.i = phi ptr [ %.sroa.019.4.i, %bb.t ], [ inttoptr (i64 16 to ptr), %bb.q ]
  %.sroa.8.4129.i = phi i64 [ %.sroa.8.4.i, %bb.t ], [ 0, %bb.q ]
  %.sroa.11.4127.i = phi ptr [ %.sroa.11.4.i, %bb.t ], [ null, %bb.q ]
  %.sroa.049.0.copyload52.i = load ptr, ptr %.sroa.10.3162.i, align 8, !noalias !154
  %.sroa.7.0..sroa.047.0.48.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.3162.i, i64 8
  %.sroa.7.0.copyload56.i = load i64, ptr %.sroa.7.0..sroa.047.0.48.sroa_idx.i, align 8, !noalias !154
  %.sroa.10.0..sroa.047.0.48.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.3162.i, i64 16
  %.sroa.10.0.copyload60.i = load ptr, ptr %.sroa.10.0..sroa.047.0.48.sroa_idx.i, align 8, !noalias !154
  br label %bb.u

bb.u:                                             ; preds = %.thread122.i, %bb.t
  %.sroa.019.4132.i = phi ptr [ %.sroa.019.4131.i, %.thread122.i ], [ %.sroa.019.4.i, %bb.t ] ; 2 uses
  %.sroa.8.4130.i = phi i64 [ %.sroa.8.4129.i, %.thread122.i ], [ %.sroa.8.4.i, %bb.t ] ; 2 uses
  %.sroa.11.4128.i = phi ptr [ %.sroa.11.4127.i, %.thread122.i ], [ %.sroa.11.4.i, %bb.t ] ; 2 uses
  %.sroa.049.4.i = phi ptr [ %.sroa.049.0.copyload52.i, %.thread122.i ], [ inttoptr (i64 16 to ptr), %bb.t ]
  %.sroa.7.4.i = phi i64 [ %.sroa.7.0.copyload56.i, %.thread122.i ], [ 0, %bb.t ]
  %.sroa.10.4.i = phi ptr [ %.sroa.10.0.copyload60.i, %.thread122.i ], [ null, %bb.t ]
  %i.bp = add i64 %.sroa.0.2166.i, -1             ; 2 uses
  %.not75.i = icmp eq i64 %i.bp, 0
  br i1 %.not75.i, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.lr.ph171.i

bb.v:                                             ; preds = %.lr.ph155.i
  %.sroa.11.0..sroa.07.0.8.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.2154.i, i64 16
  %.sroa.11.0.copyload35.i = load ptr, ptr %.sroa.11.0..sroa.07.0.8.sroa_idx.i, align 8, !noalias !154
  br label %.lr.ph155.i.1

.lr.ph155.i.1:                                    ; preds = %bb.v, %.lr.ph155.i
  %.sroa.11.5.i = phi ptr [ %.sroa.11.0.copyload35.i, %bb.v ], [ null, %.lr.ph155.i ] ; 4 uses
  %.not80.i.1 = icmp eq ptr %.sroa.11.5.i, null
  br i1 %.not80.i.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph155.i.1
  %.sroa.019.0.copyload23.i.1 = load ptr, ptr %.sroa.11.5.i, align 8, !noalias !154
  %.sroa.8.0..sroa.07.0.8.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.11.5.i, i64 8
  %.sroa.8.0.copyload29.i.1 = load i64, ptr %.sroa.8.0..sroa.07.0.8.sroa_idx.i.1, align 8, !noalias !154
  %.sroa.11.0..sroa.07.0.8.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.11.5.i, i64 16
  %.sroa.11.0.copyload35.i.1 = load ptr, ptr %.sroa.11.0..sroa.07.0.8.sroa_idx.i.1, align 8, !noalias !154
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph155.i.1
  %.sroa.11.5.i.1 = phi ptr [ %.sroa.11.0.copyload35.i.1, %bb.w ], [ null, %.lr.ph155.i.1 ] ; 3 uses
  %.sroa.8.5.i.1 = phi i64 [ %.sroa.8.0.copyload29.i.1, %bb.w ], [ 0, %.lr.ph155.i.1 ]
  %.sroa.019.5.i.1 = phi ptr [ %.sroa.019.0.copyload23.i.1, %bb.w ], [ inttoptr (i64 16 to ptr), %.lr.ph155.i.1 ]
  %niter242.next.1 = add i64 %niter242, 2         ; 2 uses
  %niter242.ncmp.1 = icmp eq i64 %niter242.next.1, %unroll_iter241
  br i1 %niter242.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph155.i

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model4list8ListElemEs_0ENCB3s_s0_0EEB3v_.exit: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model4list8ListElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i, %bb.g
  %.not = icmp eq ptr %.sroa.019.0.i, null
  br i1 %.not, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model4list8ListElemEs_0ENCB3s_s0_0EEB3v_.exit.thread, label %bb.y, !prof !15

bb.y:                                             ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model4list8ListElemEs_0ENCB3s_s0_0EEB3v_.exit
  store ptr %.sroa.019.0.i, ptr %i.n, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.8.0.i, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %.sroa.11.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  br label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %bb.y, %bb.z
  %.sroa.618.0 = phi ptr [ %.sroa.11.0.i, %bb.y ], [ %.sroa.618.8.copyload, %bb.z ] ; 3 uses
  %.sroa.0.012.i = phi i64 [ 0, %bb.y ], [ %i.bs, %bb.z ] ; 2 uses
  %.not16.i.i = icmp eq ptr %.sroa.618.0, null
  br i1 %.not16.i.i, label %.thread.i6, label %bb.z

.thread.i6:                                       ; preds = %.lr.ph.i5
  %i.bq = add i64 %.sroa.0.012.i, 1
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit

bb.z:                                             ; preds = %.lr.ph.i5
  %.sroa.012.0.copyload.i.i = load ptr, ptr %.sroa.618.0, align 8, !noalias !158
  %.sroa.618.8..sroa.413.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.618.0, i64 16
  %.sroa.618.8.copyload = load ptr, ptr %.sroa.618.8..sroa.413.0..sroa_idx.i.i.sroa_idx, align 8
  %i.br = icmp eq ptr %.sroa.012.0.copyload.i.i, null
  %i.bs = add i64 %.sroa.0.012.i, 1               ; 2 uses
  br i1 %i.br, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph.i5

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.z, %.thread.i6
  %.sroa.0.0.lcssa.i = phi i64 [ %i.bq, %.thread.i6 ], [ %i.bs, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !159
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit, %bb.ad
  %i.bt = phi ptr [ %i.bu, %bb.ad ], [ %i.t, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !162
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.bv = load ptr, ptr %i.bt, align 8, !alias.scope !165, !noalias !166, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !167
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !167, !nonnull !11, !align !13, !noundef !11
  %i.by = icmp eq ptr %i.bx, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model4lists_1__NtB9_8ListItemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.by, label %bb.aa, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model4list8ListElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2V_6styles10StyleChainEEE8call_mutBT_.exit.thread.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model4list8ListElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2V_6styles10StyleChainEEE8call_mutBT_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !167
  br label %bb.ad

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  call void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bv), !noalias !167
  %i.ca = invoke { ptr, i64 } @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain6suffix(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bz, i64 noundef %.sroa.0.0.lcssa.i)
          to label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model4list8ListElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2V_6styles10StyleChainEEE8call_mutBT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ab, !noalias !166 ; 2 uses

common.resume:                                    ; preds = %bb.aw, %bb.ay, %bb.ab, %bb.ae, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %bb.ae ], [ %i.cb, %bb.ab ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.dq, %bb.aw ], [ %i.ds, %bb.ay ]
  resume { ptr, i32 } %common.resume.op

bb.ab:                                            ; preds = %bb.aa
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.ac, !noalias !167

bb.ac:                                            ; preds = %bb.ab
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !167
  unreachable

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model4list8ListElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2V_6styles10StyleChainEEE8call_mutBT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aa
  %i.cd = extractvalue { ptr, i64 } %i.ca, 0
  %i.ce = extractvalue { ptr, i64 } %i.ca, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !167
  call void @_RNvXs0_NtNtCsdaEETE4DqmE_13typst_library5model4listNtB5_8ListItemNtB5_12ListItemLike6styled(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull %i.cd, i64 noundef %i.ce), !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !167
  %.pr.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !noalias !162 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !167
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model4list8ListElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2V_6styles10StyleChainEEE8call_mutBT_.exit.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model4list8ListElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2V_6styles10StyleChainEEE8call_mutBT_.exit.thread.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !162
  %i.cf = icmp eq ptr %i.bu, %i.u
  br i1 %i.cf, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB13_5model4list8ListItemEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtB33_6copied6CopiedINtNtNtB37_5slice4iter4IterTRNtBZ_7ContentNtNtB11_6styles10StyleChainEEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtB27_8ListElemEs1_0EE9from_iterB5C_.exit, label %.lr.ph.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ag
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.ar, !noalias !159

bb.af:                                            ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model4list8ListElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2V_6styles10StyleChainEEE8call_mutBT_.exit.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i.i.i.i, i64 16, i1 false), !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !162
  store ptr %.pr.i.i.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !159
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !169
  %i.ch = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) 96, i64 noundef 8) #29, !noalias !169 ; 4 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #30
end_hunk_0
begin_hunk_1_@_RINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model5enum_8EnumElemEB2_:bb.a
  br i1 %.not16.i.i.i, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.aq = add i64 %.sroa.0.012.i.i, 1
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader

bb.f:                                             ; preds = %.lr.ph.i.i
  %.sroa.012.0.copyload.i.i.i = load ptr, ptr %.sroa.6101.0.i, align 8, !noalias !310
  %.sroa.6101.8..sroa.413.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6101.0.i, i64 16
  %.sroa.6101.8.copyload.i = load ptr, ptr %.sroa.6101.8..sroa.413.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !311
  %i.ar = icmp eq ptr %.sroa.012.0.copyload.i.i.i, null
  %i.as = add i64 %.sroa.0.012.i.i, 1             ; 2 uses
  br i1 %i.ar, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader, label %.lr.ph.i.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader: ; preds = %bb.f, %.thread.i.i
  %.sroa.0.0.i.ph223 = phi i64 [ %i.aq, %.thread.i.i ], [ %i.as, %bb.f ]
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader
  %.sroa.0102.0.i = phi ptr [ %i.ak, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %i.av, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ]
  %.sroa.11.0.i = phi ptr [ %.sroa.799.0.copyload.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.11.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 8 uses
  %.sroa.8.0.i = phi i64 [ %.sroa.6.0.copyload.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.8.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 5 uses
  %.sroa.019.0.i = phi ptr [ %.sroa.098.0.copyload.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.019.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 6 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.i.ph223, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.0.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 10 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i
  %i.at = phi ptr [ %i.av, %bb.h ], [ %.sroa.0102.0.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i ] ; 6 uses
  %i.au = icmp eq ptr %i.at, %i.u
  br i1 %i.au, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5enum_8EnumElemEs_0ENCB3s_s0_0EEB3v_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !noalias !312, !nonnull !11, !align !13, !noundef !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !312, !nonnull !11, !align !13, !noundef !11
  %i.az = icmp eq ptr %i.ay, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model5enum_s_1__NtB9_8EnumItemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.az, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5enum_8EnumElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i, label %bb.g

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5enum_8EnumElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i: ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.0103.0.copyload.i = load ptr, ptr %i.ba, align 8, !noalias !313 ; 5 uses
  %.sroa.6104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.6104.0.copyload.i = load i64, ptr %.sroa.6104.0..sroa_idx.i, align 8, !noalias !313 ; 4 uses
  %.sroa.7105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.7105.0.copyload.i = load ptr, ptr %.sroa.7105.0..sroa_idx.i, align 8, !noalias !313 ; 7 uses
  %.not73.i = icmp eq ptr %.sroa.0103.0.copyload.i, null
  br i1 %.not73.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5enum_8EnumElemEs_0ENCB3s_s0_0EEB3v_.exit, label %.lr.ph.i88.i

.lr.ph.i88.i:                                     ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5enum_8EnumElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i, %bb.i
  %.sroa.6108.0.i = phi ptr [ %.sroa.6108.8.copyload.i, %bb.i ], [ %.sroa.7105.0.copyload.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5enum_8EnumElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i ] ; 3 uses
  %.sroa.0.012.i89.i = phi i64 [ %i.bd, %bb.i ], [ 0, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5enum_8EnumElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i ] ; 2 uses
  %.not16.i.i91.i = icmp eq ptr %.sroa.6108.0.i, null
  br i1 %.not16.i.i91.i, label %.thread.i95.i, label %bb.i

.thread.i95.i:                                    ; preds = %.lr.ph.i88.i
  %i.bb = add i64 %.sroa.0.012.i89.i, 1
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i

bb.i:                                             ; preds = %.lr.ph.i88.i
  %.sroa.012.0.copyload.i.i92.i = load ptr, ptr %.sroa.6108.0.i, align 8, !noalias !314
  %.sroa.6108.8..sroa.413.0..sroa_idx.i.i93.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6108.0.i, i64 16
  %.sroa.6108.8.copyload.i = load ptr, ptr %.sroa.6108.8..sroa.413.0..sroa_idx.i.i93.sroa_idx.i, align 8, !noalias !311
  %i.bc = icmp eq ptr %.sroa.012.0.copyload.i.i92.i, null
  %i.bd = add i64 %.sroa.0.012.i89.i, 1           ; 2 uses
  br i1 %i.bc, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i, label %.lr.ph.i88.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i: ; preds = %bb.i, %.thread.i95.i
  %.sroa.0.0.lcssa.i94.i = phi i64 [ %i.bb, %.thread.i95.i ], [ %i.bd, %bb.i ] ; 9 uses
  %i.be = icmp ult i64 %.sroa.0.0.lcssa.i94.i, %.sroa.0.0.i
  br i1 %i.be, label %.lr.ph155.preheader.i, label %bb.j

bb.j:                                             ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i
  %i.bf = icmp ugt i64 %.sroa.0.0.lcssa.i94.i, %.sroa.0.0.i
  br i1 %i.bf, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph155.preheader.i:                            ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i
  %i.bg = sub nuw i64 %.sroa.0.0.i, %.sroa.0.0.lcssa.i94.i ; 3 uses
  %.neg254 = add i64 %.sroa.0.0.lcssa.i94.i, 1
  %xtraiter246 = and i64 %i.bg, 1
  %i.bh = icmp eq i64 %.sroa.0.0.i, %.neg254
  br i1 %i.bh, label %.lr.ph155.i.epil.preheader, label %.lr.ph155.preheader.i.new

.lr.ph155.preheader.i.new:                        ; preds = %.lr.ph155.preheader.i
  %unroll_iter252 = and i64 %i.bg, -2
  br label %.lr.ph155.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.bi = sub nuw i64 %.sroa.0.0.lcssa.i94.i, %.sroa.0.0.i ; 3 uses
  %.neg = add i64 %.sroa.0.0.i, 1
  %xtraiter = and i64 %i.bi, 1
  %i.bj = icmp eq i64 %.sroa.0.0.lcssa.i94.i, %.neg
  br i1 %i.bj, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.bi, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.preheader.i.new
  %.sroa.10.0149.i = phi ptr [ %.sroa.7105.0.copyload.i, %.lr.ph.preheader.i.new ], [ %.sroa.10.2.i.1, %bb.o ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.o ]
  %.not74.i = icmp eq ptr %.sroa.10.0149.i, null
  br i1 %.not74.i, label %.lr.ph.i.1, label %bb.m

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.x
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  br i1 %lcmp.mod247.not, label %.loopexit.i, label %.lr.ph155.i.epil.preheader

.lr.ph155.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph155.preheader.i
  %.sroa.11.2154.i.epil.init = phi ptr [ %.sroa.11.0.i, %.lr.ph155.preheader.i ], [ %.sroa.11.5.i.1, %.loopexit.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod251 = trunc i64 %i.bg to i1
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %.not80.i.epil = icmp eq ptr %.sroa.11.2154.i.epil.init, null
  br i1 %.not80.i.epil, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph155.i.epil.preheader
  %.sroa.019.0.copyload23.i.epil = load ptr, ptr %.sroa.11.2154.i.epil.init, align 8, !noalias !311
  %.sroa.8.0..sroa.07.0.8.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.11.2154.i.epil.init, i64 8
  %.sroa.8.0.copyload29.i.epil = load i64, ptr %.sroa.8.0..sroa.07.0.8.sroa_idx.i.epil, align 8, !noalias !311
  %.sroa.11.0..sroa.07.0.8.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.11.2154.i.epil.init, i64 16
  %.sroa.11.0.copyload35.i.epil = load ptr, ptr %.sroa.11.0..sroa.07.0.8.sroa_idx.i.epil, align 8, !noalias !311
  br label %.loopexit.i

.loopexit.i.loopexit222.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit222.unr-lcssa, %.lr.ph.preheader.i
  %.sroa.10.0149.i.epil.init = phi ptr [ %.sroa.7105.0.copyload.i, %.lr.ph.preheader.i ], [ %.sroa.10.2.i.1, %.loopexit.i.loopexit222.unr-lcssa ] ; 4 uses
  %lcmp.mod245 = trunc i64 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod245)
  %.not74.i.epil = icmp eq ptr %.sroa.10.0149.i.epil.init, null
  br i1 %.not74.i.epil, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.epil.preheader
  %.sroa.049.0.copyload51.i.epil = load ptr, ptr %.sroa.10.0149.i.epil.init, align 8, !noalias !311
  %.sroa.7.0..sroa.09.0.10.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.10.0149.i.epil.init, i64 8
  %.sroa.7.0.copyload55.i.epil = load i64, ptr %.sroa.7.0..sroa.09.0.10.sroa_idx.i.epil, align 8, !noalias !311
  %.sroa.10.0..sroa.09.0.10.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.10.0149.i.epil.init, i64 16
  %.sroa.10.0.copyload59.i.epil = load ptr, ptr %.sroa.10.0..sroa.09.0.10.sroa_idx.i.epil, align 8, !noalias !311
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit222.unr-lcssa, %bb.l, %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %bb.k, %.lr.ph155.i.epil.preheader, %bb.j
  %.sroa.049.1.i = phi ptr [ %.sroa.0103.0.copyload.i, %bb.j ], [ %.sroa.0103.0.copyload.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.0103.0.copyload.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.0103.0.copyload.i, %bb.k ], [ %.sroa.049.2.i.1, %.loopexit.i.loopexit222.unr-lcssa ], [ %.sroa.049.0.copyload51.i.epil, %bb.l ], [ inttoptr (i64 16 to ptr), %.lr.ph.i.epil.preheader ]
  %.sroa.7.1.i = phi i64 [ %.sroa.6104.0.copyload.i, %bb.j ], [ %.sroa.6104.0.copyload.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.6104.0.copyload.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.6104.0.copyload.i, %bb.k ], [ %.sroa.7.2.i.1, %.loopexit.i.loopexit222.unr-lcssa ], [ %.sroa.7.0.copyload55.i.epil, %bb.l ], [ 0, %.lr.ph.i.epil.preheader ]
  %.sroa.10.1.i = phi ptr [ %.sroa.7105.0.copyload.i, %bb.j ], [ %.sroa.7105.0.copyload.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.7105.0.copyload.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.7105.0.copyload.i, %bb.k ], [ %.sroa.10.2.i.1, %.loopexit.i.loopexit222.unr-lcssa ], [ %.sroa.10.0.copyload59.i.epil, %bb.l ], [ null, %.lr.ph.i.epil.preheader ]
  %.sroa.11.1.i = phi ptr [ %.sroa.11.0.i, %bb.j ], [ null, %.lr.ph155.i.epil.preheader ], [ %.sroa.11.5.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.11.0.copyload35.i.epil, %bb.k ], [ %.sroa.11.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.11.0.i, %bb.l ], [ %.sroa.11.0.i, %.loopexit.i.loopexit222.unr-lcssa ] ; 2 uses
  %.sroa.8.1.i = phi i64 [ %.sroa.8.0.i, %bb.j ], [ 0, %.lr.ph155.i.epil.preheader ], [ %.sroa.8.5.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.8.0.copyload29.i.epil, %bb.k ], [ %.sroa.8.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.8.0.i, %bb.l ], [ %.sroa.8.0.i, %.loopexit.i.loopexit222.unr-lcssa ] ; 2 uses
  %.sroa.019.1.i = phi ptr [ %.sroa.019.0.i, %bb.j ], [ inttoptr (i64 16 to ptr), %.lr.ph155.i.epil.preheader ], [ %.sroa.019.5.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.019.0.copyload23.i.epil, %bb.k ], [ %.sroa.019.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.019.0.i, %bb.l ], [ %.sroa.019.0.i, %.loopexit.i.loopexit222.unr-lcssa ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.0.0.lcssa.i94.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.lcssa.i94.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.0.0.lcssa.i94.i, %bb.k ], [ %.sroa.0.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.0.0.i, %bb.l ], [ %.sroa.0.0.i, %.loopexit.i.loopexit222.unr-lcssa ] ; 2 uses
  %.not75159.i = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %.not75159.i, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.lr.ph171.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge: ; preds = %bb.r, %.split.i, %bb.u, %.loopexit.i
  %.sroa.11.0.i.be = phi ptr [ %.sroa.11.1.i, %.loopexit.i ], [ null, %bb.r ], [ %.sroa.11.3163.i, %.split.i ], [ %.sroa.11.4128.i, %bb.u ]
  %.sroa.8.0.i.be = phi i64 [ %.sroa.8.1.i, %.loopexit.i ], [ %.sroa.8.3164.i, %bb.r ], [ %.sroa.8.3164.i, %.split.i ], [ %.sroa.8.4130.i, %bb.u ]
  %.sroa.019.0.i.be = phi ptr [ %.sroa.019.1.i, %.loopexit.i ], [ %.sroa.019.3165.i, %bb.r ], [ %.sroa.019.3165.i, %.split.i ], [ %.sroa.019.4132.i, %bb.u ]
  %.sroa.0.0.i.be = phi i64 [ 0, %.loopexit.i ], [ %.sroa.0.2166.i, %bb.r ], [ %.sroa.0.2166.i, %.split.i ], [ 0, %bb.u ]
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i

bb.m:                                             ; preds = %.lr.ph.i
  %.sroa.10.0..sroa.09.0.10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0149.i, i64 16
  %.sroa.10.0.copyload59.i = load ptr, ptr %.sroa.10.0..sroa.09.0.10.sroa_idx.i, align 8, !noalias !311
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.m, %.lr.ph.i
  %.sroa.10.2.i = phi ptr [ %.sroa.10.0.copyload59.i, %bb.m ], [ null, %.lr.ph.i ] ; 4 uses
  %.not74.i.1 = icmp eq ptr %.sroa.10.2.i, null
  br i1 %.not74.i.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.1
  %.sroa.049.0.copyload51.i.1 = load ptr, ptr %.sroa.10.2.i, align 8, !noalias !311
  %.sroa.7.0..sroa.09.0.10.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 8
  %.sroa.7.0.copyload55.i.1 = load i64, ptr %.sroa.7.0..sroa.09.0.10.sroa_idx.i.1, align 8, !noalias !311
  %.sroa.10.0..sroa.09.0.10.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 16
  %.sroa.10.0.copyload59.i.1 = load ptr, ptr %.sroa.10.0..sroa.09.0.10.sroa_idx.i.1, align 8, !noalias !311
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.1
  %.sroa.049.2.i.1 = phi ptr [ %.sroa.049.0.copyload51.i.1, %bb.n ], [ inttoptr (i64 16 to ptr), %.lr.ph.i.1 ]
  %.sroa.7.2.i.1 = phi i64 [ %.sroa.7.0.copyload55.i.1, %bb.n ], [ 0, %.lr.ph.i.1 ]
  %.sroa.10.2.i.1 = phi ptr [ %.sroa.10.0.copyload59.i.1, %bb.n ], [ null, %.lr.ph.i.1 ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit222.unr-lcssa, label %.lr.ph.i

.lr.ph155.i:                                      ; preds = %bb.x, %.lr.ph155.preheader.i.new
  %.sroa.11.2154.i = phi ptr [ %.sroa.11.0.i, %.lr.ph155.preheader.i.new ], [ %.sroa.11.5.i.1, %bb.x ] ; 2 uses
  %niter253 = phi i64 [ 0, %.lr.ph155.preheader.i.new ], [ %niter253.next.1, %bb.x ]
  %.not80.i = icmp eq ptr %.sroa.11.2154.i, null
  br i1 %.not80.i, label %.lr.ph155.i.1, label %bb.v

.lr.ph171.i:                                      ; preds = %.loopexit.i, %bb.u
  %.sroa.0.2166.i = phi i64 [ %i.bp, %bb.u ], [ %.sroa.0.1.i, %.loopexit.i ] ; 3 uses
  %.sroa.019.3165.i = phi ptr [ %.sroa.019.4132.i, %bb.u ], [ %.sroa.019.1.i, %.loopexit.i ] ; 4 uses
  %.sroa.8.3164.i = phi i64 [ %.sroa.8.4130.i, %bb.u ], [ %.sroa.8.1.i, %.loopexit.i ] ; 3 uses
  %.sroa.11.3163.i = phi ptr [ %.sroa.11.4128.i, %bb.u ], [ %.sroa.11.1.i, %.loopexit.i ] ; 7 uses
  %.sroa.10.3162.i = phi ptr [ %.sroa.10.4.i, %bb.u ], [ %.sroa.10.1.i, %.loopexit.i ] ; 6 uses
  %.sroa.7.3161.i = phi i64 [ %.sroa.7.4.i, %bb.u ], [ %.sroa.7.1.i, %.loopexit.i ]
  %.sroa.049.3160.i = phi ptr [ %.sroa.049.4.i, %bb.u ], [ %.sroa.049.1.i, %.loopexit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.049.3160.i), "nonnull"(ptr %.sroa.019.3165.i) ]
  %i.bk = icmp eq ptr %.sroa.049.3160.i, %.sroa.019.3165.i
  %i.bl = icmp eq i64 %.sroa.7.3161.i, %.sroa.8.3164.i
  %i.bm = and i1 %i.bl, %i.bk
  br i1 %i.bm, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.lr.ph171.i
  %.not76.i = icmp eq ptr %.sroa.10.3162.i, null
  %i.bn = icmp eq ptr %.sroa.11.3163.i, null      ; 2 uses
  br i1 %.not76.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.bn, label %.thread122.i, label %.split.i

bb.r:                                             ; preds = %bb.p
  br i1 %i.bn, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.thread.i

.split.i:                                         ; preds = %bb.q
  %i.bo = icmp eq ptr %.sroa.10.3162.i, %.sroa.11.3163.i
  br i1 %i.bo, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.thread.i

bb.s:                                             ; preds = %.lr.ph171.i
  %.not78.i = icmp eq ptr %.sroa.11.3163.i, null
  br i1 %.not78.i, label %bb.t, label %.thread.i

.thread.i:                                        ; preds = %bb.s, %.split.i, %bb.r
  %.sroa.019.0.copyload22.i = load ptr, ptr %.sroa.11.3163.i, align 8, !noalias !311
  %.sroa.8.0..sroa.017.0.18.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.3163.i, i64 8
  %.sroa.8.0.copyload28.i = load i64, ptr %.sroa.8.0..sroa.017.0.18.sroa_idx.i, align 8, !noalias !311
  %.sroa.11.0..sroa.017.0.18.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.3163.i, i64 16
  %.sroa.11.0.copyload34.i = load ptr, ptr %.sroa.11.0..sroa.017.0.18.sroa_idx.i, align 8, !noalias !311
  br label %bb.t

bb.t:                                             ; preds = %.thread.i, %bb.s
  %.sroa.11.4.i = phi ptr [ %.sroa.11.0.copyload34.i, %.thread.i ], [ null, %bb.s ] ; 2 uses
  %.sroa.8.4.i = phi i64 [ %.sroa.8.0.copyload28.i, %.thread.i ], [ 0, %bb.s ] ; 2 uses
  %.sroa.019.4.i = phi ptr [ %.sroa.019.0.copyload22.i, %.thread.i ], [ inttoptr (i64 16 to ptr), %bb.s ] ; 2 uses
  %.not79.i = icmp eq ptr %.sroa.10.3162.i, null
  br i1 %.not79.i, label %bb.u, label %.thread122.i

.thread122.i:                                     ; preds = %bb.t, %bb.q
  %.sroa.019.4131.i = phi ptr [ %.sroa.019.4.i, %bb.t ], [ inttoptr (i64 16 to ptr), %bb.q ]
  %.sroa.8.4129.i = phi i64 [ %.sroa.8.4.i, %bb.t ], [ 0, %bb.q ]
  %.sroa.11.4127.i = phi ptr [ %.sroa.11.4.i, %bb.t ], [ null, %bb.q ]
  %.sroa.049.0.copyload52.i = load ptr, ptr %.sroa.10.3162.i, align 8, !noalias !311
  %.sroa.7.0..sroa.047.0.48.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.3162.i, i64 8
  %.sroa.7.0.copyload56.i = load i64, ptr %.sroa.7.0..sroa.047.0.48.sroa_idx.i, align 8, !noalias !311
  %.sroa.10.0..sroa.047.0.48.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.3162.i, i64 16
  %.sroa.10.0.copyload60.i = load ptr, ptr %.sroa.10.0..sroa.047.0.48.sroa_idx.i, align 8, !noalias !311
  br label %bb.u

bb.u:                                             ; preds = %.thread122.i, %bb.t
  %.sroa.019.4132.i = phi ptr [ %.sroa.019.4131.i, %.thread122.i ], [ %.sroa.019.4.i, %bb.t ] ; 2 uses
  %.sroa.8.4130.i = phi i64 [ %.sroa.8.4129.i, %.thread122.i ], [ %.sroa.8.4.i, %bb.t ] ; 2 uses
  %.sroa.11.4128.i = phi ptr [ %.sroa.11.4127.i, %.thread122.i ], [ %.sroa.11.4.i, %bb.t ] ; 2 uses
  %.sroa.049.4.i = phi ptr [ %.sroa.049.0.copyload52.i, %.thread122.i ], [ inttoptr (i64 16 to ptr), %bb.t ]
  %.sroa.7.4.i = phi i64 [ %.sroa.7.0.copyload56.i, %.thread122.i ], [ 0, %bb.t ]
  %.sroa.10.4.i = phi ptr [ %.sroa.10.0.copyload60.i, %.thread122.i ], [ null, %bb.t ]
  %i.bp = add i64 %.sroa.0.2166.i, -1             ; 2 uses
  %.not75.i = icmp eq i64 %i.bp, 0
  br i1 %.not75.i, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.lr.ph171.i

bb.v:                                             ; preds = %.lr.ph155.i
  %.sroa.11.0..sroa.07.0.8.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.2154.i, i64 16
  %.sroa.11.0.copyload35.i = load ptr, ptr %.sroa.11.0..sroa.07.0.8.sroa_idx.i, align 8, !noalias !311
  br label %.lr.ph155.i.1

.lr.ph155.i.1:                                    ; preds = %bb.v, %.lr.ph155.i
  %.sroa.11.5.i = phi ptr [ %.sroa.11.0.copyload35.i, %bb.v ], [ null, %.lr.ph155.i ] ; 4 uses
  %.not80.i.1 = icmp eq ptr %.sroa.11.5.i, null
  br i1 %.not80.i.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph155.i.1
  %.sroa.019.0.copyload23.i.1 = load ptr, ptr %.sroa.11.5.i, align 8, !noalias !311
  %.sroa.8.0..sroa.07.0.8.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.11.5.i, i64 8
  %.sroa.8.0.copyload29.i.1 = load i64, ptr %.sroa.8.0..sroa.07.0.8.sroa_idx.i.1, align 8, !noalias !311
  %.sroa.11.0..sroa.07.0.8.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.11.5.i, i64 16
  %.sroa.11.0.copyload35.i.1 = load ptr, ptr %.sroa.11.0..sroa.07.0.8.sroa_idx.i.1, align 8, !noalias !311
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph155.i.1
  %.sroa.11.5.i.1 = phi ptr [ %.sroa.11.0.copyload35.i.1, %bb.w ], [ null, %.lr.ph155.i.1 ] ; 3 uses
  %.sroa.8.5.i.1 = phi i64 [ %.sroa.8.0.copyload29.i.1, %bb.w ], [ 0, %.lr.ph155.i.1 ]
  %.sroa.019.5.i.1 = phi ptr [ %.sroa.019.0.copyload23.i.1, %bb.w ], [ inttoptr (i64 16 to ptr), %.lr.ph155.i.1 ]
  %niter253.next.1 = add i64 %niter253, 2         ; 2 uses
  %niter253.ncmp.1 = icmp eq i64 %niter253.next.1, %unroll_iter252
  br i1 %niter253.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph155.i

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5enum_8EnumElemEs_0ENCB3s_s0_0EEB3v_.exit: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5enum_8EnumElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i, %bb.g
  %.not = icmp eq ptr %.sroa.019.0.i, null
  br i1 %.not, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5enum_8EnumElemEs_0ENCB3s_s0_0EEB3v_.exit.thread, label %bb.y, !prof !15

bb.y:                                             ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5enum_8EnumElemEs_0ENCB3s_s0_0EEB3v_.exit
  store ptr %.sroa.019.0.i, ptr %i.n, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.8.0.i, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %.sroa.11.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  br label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %bb.y, %bb.z
  %.sroa.618.0 = phi ptr [ %.sroa.11.0.i, %bb.y ], [ %.sroa.618.8.copyload, %bb.z ] ; 3 uses
  %.sroa.0.012.i = phi i64 [ 0, %bb.y ], [ %i.bs, %bb.z ] ; 2 uses
  %.not16.i.i = icmp eq ptr %.sroa.618.0, null
  br i1 %.not16.i.i, label %.thread.i6, label %bb.z

.thread.i6:                                       ; preds = %.lr.ph.i5
  %i.bq = add i64 %.sroa.0.012.i, 1
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit

bb.z:                                             ; preds = %.lr.ph.i5
  %.sroa.012.0.copyload.i.i = load ptr, ptr %.sroa.618.0, align 8, !noalias !315
  %.sroa.618.8..sroa.413.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.618.0, i64 16
  %.sroa.618.8.copyload = load ptr, ptr %.sroa.618.8..sroa.413.0..sroa_idx.i.i.sroa_idx, align 8
  %i.br = icmp eq ptr %.sroa.012.0.copyload.i.i, null
  %i.bs = add i64 %.sroa.0.012.i, 1               ; 2 uses
  br i1 %i.br, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph.i5

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.z, %.thread.i6
  %.sroa.0.0.lcssa.i = phi i64 [ %i.bq, %.thread.i6 ], [ %i.bs, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !316
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit, %bb.ad
  %i.bt = phi ptr [ %i.bu, %bb.ad ], [ %i.t, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !319
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.bv = load ptr, ptr %i.bt, align 8, !alias.scope !322, !noalias !323, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !324
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !324, !nonnull !11, !align !13, !noundef !11
  %i.by = icmp eq ptr %i.bx, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model5enum_s_1__NtB9_8EnumItemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.by, label %bb.aa, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model5enum_8EnumElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2W_6styles10StyleChainEEE8call_mutBT_.exit.thread.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model5enum_8EnumElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2W_6styles10StyleChainEEE8call_mutBT_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !324
  br label %bb.ad

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  call void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bv), !noalias !324
  %i.ca = invoke { ptr, i64 } @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain6suffix(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bz, i64 noundef %.sroa.0.0.lcssa.i)
          to label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model5enum_8EnumElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2W_6styles10StyleChainEEE8call_mutBT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ab, !noalias !323 ; 2 uses

common.resume:                                    ; preds = %bb.aw, %bb.ay, %bb.ab, %bb.ae, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %bb.ae ], [ %i.cb, %bb.ab ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.dq, %bb.aw ], [ %i.ds, %bb.ay ]
  resume { ptr, i32 } %common.resume.op

bb.ab:                                            ; preds = %bb.aa
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.ac, !noalias !324

bb.ac:                                            ; preds = %bb.ab
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !324
  unreachable

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model5enum_8EnumElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2W_6styles10StyleChainEEE8call_mutBT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aa
  %i.cd = extractvalue { ptr, i64 } %i.ca, 0
  %i.ce = extractvalue { ptr, i64 } %i.ca, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !324
  call void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library5model5enum_NtB4_8EnumItemNtNtB6_4list12ListItemLike6styled(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull %i.cd, i64 noundef %i.ce), !noalias !325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !324
  %.pr.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !noalias !319 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !324
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model5enum_8EnumElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2W_6styles10StyleChainEEE8call_mutBT_.exit.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model5enum_8EnumElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2W_6styles10StyleChainEEE8call_mutBT_.exit.thread.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !319
  %i.cf = icmp eq ptr %i.bu, %i.u
  br i1 %i.cf, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB13_5model5enum_8EnumItemEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtB34_6copied6CopiedINtNtNtB38_5slice4iter4IterTRNtBZ_7ContentNtNtB11_6styles10StyleChainEEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtB27_8EnumElemEs1_0EE9from_iterB5D_.exit, label %.lr.ph.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ag
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.ar, !noalias !316

bb.af:                                            ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model5enum_8EnumElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2W_6styles10StyleChainEEE8call_mutBT_.exit.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i.i.i.i, i64 16, i1 false), !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !319
  store ptr %.pr.i.i.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !316
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !326
  %i.ch = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) 96, i64 noundef 8) #29, !noalias !326 ; 4 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #30
end_hunk_1
begin_hunk_2_@_RINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model5terms9TermsElemEB2_:bb.a
  br i1 %.not16.i.i.i, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.aq = add i64 %.sroa.0.012.i.i, 1
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader

bb.f:                                             ; preds = %.lr.ph.i.i
  %.sroa.012.0.copyload.i.i.i = load ptr, ptr %.sroa.6101.0.i, align 8, !noalias !467
  %.sroa.6101.8..sroa.413.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6101.0.i, i64 16
  %.sroa.6101.8.copyload.i = load ptr, ptr %.sroa.6101.8..sroa.413.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !468
  %i.ar = icmp eq ptr %.sroa.012.0.copyload.i.i.i, null
  %i.as = add i64 %.sroa.0.012.i.i, 1             ; 2 uses
  br i1 %i.ar, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader, label %.lr.ph.i.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader: ; preds = %bb.f, %.thread.i.i
  %.sroa.0.0.i.ph210 = phi i64 [ %i.aq, %.thread.i.i ], [ %i.as, %bb.f ]
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader
  %.sroa.0102.0.i = phi ptr [ %i.ak, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %i.av, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ]
  %.sroa.11.0.i = phi ptr [ %.sroa.799.0.copyload.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.11.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 8 uses
  %.sroa.8.0.i = phi i64 [ %.sroa.6.0.copyload.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.8.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 5 uses
  %.sroa.019.0.i = phi ptr [ %.sroa.098.0.copyload.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.019.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 6 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.i.ph210, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.0.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 10 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i
  %i.at = phi ptr [ %i.av, %bb.h ], [ %.sroa.0102.0.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i ] ; 6 uses
  %i.au = icmp eq ptr %i.at, %i.u
  br i1 %i.au, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5terms9TermsElemEs_0ENCB3s_s0_0EEB3v_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !noalias !469, !nonnull !11, !align !13, !noundef !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !469, !nonnull !11, !align !13, !noundef !11
  %i.az = icmp eq ptr %i.ay, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model5termss_1__NtB9_8TermItemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.az, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5terms9TermsElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i, label %bb.g

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5terms9TermsElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i: ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.0103.0.copyload.i = load ptr, ptr %i.ba, align 8, !noalias !470 ; 5 uses
  %.sroa.6104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.6104.0.copyload.i = load i64, ptr %.sroa.6104.0..sroa_idx.i, align 8, !noalias !470 ; 4 uses
  %.sroa.7105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.7105.0.copyload.i = load ptr, ptr %.sroa.7105.0..sroa_idx.i, align 8, !noalias !470 ; 7 uses
  %.not73.i = icmp eq ptr %.sroa.0103.0.copyload.i, null
  br i1 %.not73.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5terms9TermsElemEs_0ENCB3s_s0_0EEB3v_.exit, label %.lr.ph.i88.i

.lr.ph.i88.i:                                     ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5terms9TermsElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i, %bb.i
  %.sroa.6108.0.i = phi ptr [ %.sroa.6108.8.copyload.i, %bb.i ], [ %.sroa.7105.0.copyload.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5terms9TermsElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i ] ; 3 uses
  %.sroa.0.012.i89.i = phi i64 [ %i.bd, %bb.i ], [ 0, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5terms9TermsElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i ] ; 2 uses
  %.not16.i.i91.i = icmp eq ptr %.sroa.6108.0.i, null
  br i1 %.not16.i.i91.i, label %.thread.i95.i, label %bb.i

.thread.i95.i:                                    ; preds = %.lr.ph.i88.i
  %i.bb = add i64 %.sroa.0.012.i89.i, 1
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i

bb.i:                                             ; preds = %.lr.ph.i88.i
  %.sroa.012.0.copyload.i.i92.i = load ptr, ptr %.sroa.6108.0.i, align 8, !noalias !471
  %.sroa.6108.8..sroa.413.0..sroa_idx.i.i93.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6108.0.i, i64 16
  %.sroa.6108.8.copyload.i = load ptr, ptr %.sroa.6108.8..sroa.413.0..sroa_idx.i.i93.sroa_idx.i, align 8, !noalias !468
  %i.bc = icmp eq ptr %.sroa.012.0.copyload.i.i92.i, null
  %i.bd = add i64 %.sroa.0.012.i89.i, 1           ; 2 uses
  br i1 %i.bc, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i, label %.lr.ph.i88.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i: ; preds = %bb.i, %.thread.i95.i
  %.sroa.0.0.lcssa.i94.i = phi i64 [ %i.bb, %.thread.i95.i ], [ %i.bd, %bb.i ] ; 9 uses
  %i.be = icmp ult i64 %.sroa.0.0.lcssa.i94.i, %.sroa.0.0.i
  br i1 %i.be, label %.lr.ph155.preheader.i, label %bb.j

bb.j:                                             ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i
  %i.bf = icmp ugt i64 %.sroa.0.0.lcssa.i94.i, %.sroa.0.0.i
  br i1 %i.bf, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph155.preheader.i:                            ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i
  %i.bg = sub nuw i64 %.sroa.0.0.i, %.sroa.0.0.lcssa.i94.i ; 3 uses
  %.neg241 = add i64 %.sroa.0.0.lcssa.i94.i, 1
  %xtraiter233 = and i64 %i.bg, 1
  %i.bh = icmp eq i64 %.sroa.0.0.i, %.neg241
  br i1 %i.bh, label %.lr.ph155.i.epil.preheader, label %.lr.ph155.preheader.i.new

.lr.ph155.preheader.i.new:                        ; preds = %.lr.ph155.preheader.i
  %unroll_iter239 = and i64 %i.bg, -2
  br label %.lr.ph155.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.bi = sub nuw i64 %.sroa.0.0.lcssa.i94.i, %.sroa.0.0.i ; 3 uses
  %.neg = add i64 %.sroa.0.0.i, 1
  %xtraiter = and i64 %i.bi, 1
  %i.bj = icmp eq i64 %.sroa.0.0.lcssa.i94.i, %.neg
  br i1 %i.bj, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.bi, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.preheader.i.new
  %.sroa.10.0149.i = phi ptr [ %.sroa.7105.0.copyload.i, %.lr.ph.preheader.i.new ], [ %.sroa.10.2.i.1, %bb.o ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.o ]
  %.not74.i = icmp eq ptr %.sroa.10.0149.i, null
  br i1 %.not74.i, label %.lr.ph.i.1, label %bb.m

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.x
  %lcmp.mod234.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod234.not, label %.loopexit.i, label %.lr.ph155.i.epil.preheader

.lr.ph155.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph155.preheader.i
  %.sroa.11.2154.i.epil.init = phi ptr [ %.sroa.11.0.i, %.lr.ph155.preheader.i ], [ %.sroa.11.5.i.1, %.loopexit.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod238 = trunc i64 %i.bg to i1
  tail call void @llvm.assume(i1 %lcmp.mod238)
  %.not80.i.epil = icmp eq ptr %.sroa.11.2154.i.epil.init, null
  br i1 %.not80.i.epil, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph155.i.epil.preheader
  %.sroa.019.0.copyload23.i.epil = load ptr, ptr %.sroa.11.2154.i.epil.init, align 8, !noalias !468
  %.sroa.8.0..sroa.07.0.8.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.11.2154.i.epil.init, i64 8
  %.sroa.8.0.copyload29.i.epil = load i64, ptr %.sroa.8.0..sroa.07.0.8.sroa_idx.i.epil, align 8, !noalias !468
  %.sroa.11.0..sroa.07.0.8.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.11.2154.i.epil.init, i64 16
  %.sroa.11.0.copyload35.i.epil = load ptr, ptr %.sroa.11.0..sroa.07.0.8.sroa_idx.i.epil, align 8, !noalias !468
  br label %.loopexit.i

.loopexit.i.loopexit209.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit209.unr-lcssa, %.lr.ph.preheader.i
  %.sroa.10.0149.i.epil.init = phi ptr [ %.sroa.7105.0.copyload.i, %.lr.ph.preheader.i ], [ %.sroa.10.2.i.1, %.loopexit.i.loopexit209.unr-lcssa ] ; 4 uses
  %lcmp.mod232 = trunc i64 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod232)
  %.not74.i.epil = icmp eq ptr %.sroa.10.0149.i.epil.init, null
  br i1 %.not74.i.epil, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.epil.preheader
  %.sroa.049.0.copyload51.i.epil = load ptr, ptr %.sroa.10.0149.i.epil.init, align 8, !noalias !468
  %.sroa.7.0..sroa.09.0.10.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.10.0149.i.epil.init, i64 8
  %.sroa.7.0.copyload55.i.epil = load i64, ptr %.sroa.7.0..sroa.09.0.10.sroa_idx.i.epil, align 8, !noalias !468
  %.sroa.10.0..sroa.09.0.10.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.10.0149.i.epil.init, i64 16
  %.sroa.10.0.copyload59.i.epil = load ptr, ptr %.sroa.10.0..sroa.09.0.10.sroa_idx.i.epil, align 8, !noalias !468
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit209.unr-lcssa, %bb.l, %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %bb.k, %.lr.ph155.i.epil.preheader, %bb.j
  %.sroa.049.1.i = phi ptr [ %.sroa.0103.0.copyload.i, %bb.j ], [ %.sroa.0103.0.copyload.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.0103.0.copyload.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.0103.0.copyload.i, %bb.k ], [ %.sroa.049.2.i.1, %.loopexit.i.loopexit209.unr-lcssa ], [ %.sroa.049.0.copyload51.i.epil, %bb.l ], [ inttoptr (i64 16 to ptr), %.lr.ph.i.epil.preheader ]
  %.sroa.7.1.i = phi i64 [ %.sroa.6104.0.copyload.i, %bb.j ], [ %.sroa.6104.0.copyload.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.6104.0.copyload.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.6104.0.copyload.i, %bb.k ], [ %.sroa.7.2.i.1, %.loopexit.i.loopexit209.unr-lcssa ], [ %.sroa.7.0.copyload55.i.epil, %bb.l ], [ 0, %.lr.ph.i.epil.preheader ]
  %.sroa.10.1.i = phi ptr [ %.sroa.7105.0.copyload.i, %bb.j ], [ %.sroa.7105.0.copyload.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.7105.0.copyload.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.7105.0.copyload.i, %bb.k ], [ %.sroa.10.2.i.1, %.loopexit.i.loopexit209.unr-lcssa ], [ %.sroa.10.0.copyload59.i.epil, %bb.l ], [ null, %.lr.ph.i.epil.preheader ]
  %.sroa.11.1.i = phi ptr [ %.sroa.11.0.i, %bb.j ], [ null, %.lr.ph155.i.epil.preheader ], [ %.sroa.11.5.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.11.0.copyload35.i.epil, %bb.k ], [ %.sroa.11.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.11.0.i, %bb.l ], [ %.sroa.11.0.i, %.loopexit.i.loopexit209.unr-lcssa ] ; 2 uses
  %.sroa.8.1.i = phi i64 [ %.sroa.8.0.i, %bb.j ], [ 0, %.lr.ph155.i.epil.preheader ], [ %.sroa.8.5.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.8.0.copyload29.i.epil, %bb.k ], [ %.sroa.8.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.8.0.i, %bb.l ], [ %.sroa.8.0.i, %.loopexit.i.loopexit209.unr-lcssa ] ; 2 uses
  %.sroa.019.1.i = phi ptr [ %.sroa.019.0.i, %bb.j ], [ inttoptr (i64 16 to ptr), %.lr.ph155.i.epil.preheader ], [ %.sroa.019.5.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.019.0.copyload23.i.epil, %bb.k ], [ %.sroa.019.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.019.0.i, %bb.l ], [ %.sroa.019.0.i, %.loopexit.i.loopexit209.unr-lcssa ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.0.0.lcssa.i94.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.lcssa.i94.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.0.0.lcssa.i94.i, %bb.k ], [ %.sroa.0.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.0.0.i, %bb.l ], [ %.sroa.0.0.i, %.loopexit.i.loopexit209.unr-lcssa ] ; 2 uses
  %.not75159.i = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %.not75159.i, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.lr.ph171.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge: ; preds = %bb.r, %.split.i, %bb.u, %.loopexit.i
  %.sroa.11.0.i.be = phi ptr [ %.sroa.11.1.i, %.loopexit.i ], [ null, %bb.r ], [ %.sroa.11.3163.i, %.split.i ], [ %.sroa.11.4128.i, %bb.u ]
  %.sroa.8.0.i.be = phi i64 [ %.sroa.8.1.i, %.loopexit.i ], [ %.sroa.8.3164.i, %bb.r ], [ %.sroa.8.3164.i, %.split.i ], [ %.sroa.8.4130.i, %bb.u ]
  %.sroa.019.0.i.be = phi ptr [ %.sroa.019.1.i, %.loopexit.i ], [ %.sroa.019.3165.i, %bb.r ], [ %.sroa.019.3165.i, %.split.i ], [ %.sroa.019.4132.i, %bb.u ]
  %.sroa.0.0.i.be = phi i64 [ 0, %.loopexit.i ], [ %.sroa.0.2166.i, %bb.r ], [ %.sroa.0.2166.i, %.split.i ], [ 0, %bb.u ]
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i

bb.m:                                             ; preds = %.lr.ph.i
  %.sroa.10.0..sroa.09.0.10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0149.i, i64 16
  %.sroa.10.0.copyload59.i = load ptr, ptr %.sroa.10.0..sroa.09.0.10.sroa_idx.i, align 8, !noalias !468
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.m, %.lr.ph.i
  %.sroa.10.2.i = phi ptr [ %.sroa.10.0.copyload59.i, %bb.m ], [ null, %.lr.ph.i ] ; 4 uses
  %.not74.i.1 = icmp eq ptr %.sroa.10.2.i, null
  br i1 %.not74.i.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.1
  %.sroa.049.0.copyload51.i.1 = load ptr, ptr %.sroa.10.2.i, align 8, !noalias !468
  %.sroa.7.0..sroa.09.0.10.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 8
  %.sroa.7.0.copyload55.i.1 = load i64, ptr %.sroa.7.0..sroa.09.0.10.sroa_idx.i.1, align 8, !noalias !468
  %.sroa.10.0..sroa.09.0.10.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 16
  %.sroa.10.0.copyload59.i.1 = load ptr, ptr %.sroa.10.0..sroa.09.0.10.sroa_idx.i.1, align 8, !noalias !468
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.1
  %.sroa.049.2.i.1 = phi ptr [ %.sroa.049.0.copyload51.i.1, %bb.n ], [ inttoptr (i64 16 to ptr), %.lr.ph.i.1 ]
  %.sroa.7.2.i.1 = phi i64 [ %.sroa.7.0.copyload55.i.1, %bb.n ], [ 0, %.lr.ph.i.1 ]
  %.sroa.10.2.i.1 = phi ptr [ %.sroa.10.0.copyload59.i.1, %bb.n ], [ null, %.lr.ph.i.1 ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit209.unr-lcssa, label %.lr.ph.i

.lr.ph155.i:                                      ; preds = %bb.x, %.lr.ph155.preheader.i.new
  %.sroa.11.2154.i = phi ptr [ %.sroa.11.0.i, %.lr.ph155.preheader.i.new ], [ %.sroa.11.5.i.1, %bb.x ] ; 2 uses
  %niter240 = phi i64 [ 0, %.lr.ph155.preheader.i.new ], [ %niter240.next.1, %bb.x ]
  %.not80.i = icmp eq ptr %.sroa.11.2154.i, null
  br i1 %.not80.i, label %.lr.ph155.i.1, label %bb.v

.lr.ph171.i:                                      ; preds = %.loopexit.i, %bb.u
  %.sroa.0.2166.i = phi i64 [ %i.bp, %bb.u ], [ %.sroa.0.1.i, %.loopexit.i ] ; 3 uses
  %.sroa.019.3165.i = phi ptr [ %.sroa.019.4132.i, %bb.u ], [ %.sroa.019.1.i, %.loopexit.i ] ; 4 uses
  %.sroa.8.3164.i = phi i64 [ %.sroa.8.4130.i, %bb.u ], [ %.sroa.8.1.i, %.loopexit.i ] ; 3 uses
  %.sroa.11.3163.i = phi ptr [ %.sroa.11.4128.i, %bb.u ], [ %.sroa.11.1.i, %.loopexit.i ] ; 7 uses
  %.sroa.10.3162.i = phi ptr [ %.sroa.10.4.i, %bb.u ], [ %.sroa.10.1.i, %.loopexit.i ] ; 6 uses
  %.sroa.7.3161.i = phi i64 [ %.sroa.7.4.i, %bb.u ], [ %.sroa.7.1.i, %.loopexit.i ]
  %.sroa.049.3160.i = phi ptr [ %.sroa.049.4.i, %bb.u ], [ %.sroa.049.1.i, %.loopexit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.049.3160.i), "nonnull"(ptr %.sroa.019.3165.i) ]
  %i.bk = icmp eq ptr %.sroa.049.3160.i, %.sroa.019.3165.i
  %i.bl = icmp eq i64 %.sroa.7.3161.i, %.sroa.8.3164.i
  %i.bm = and i1 %i.bl, %i.bk
  br i1 %i.bm, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.lr.ph171.i
  %.not76.i = icmp eq ptr %.sroa.10.3162.i, null
  %i.bn = icmp eq ptr %.sroa.11.3163.i, null      ; 2 uses
  br i1 %.not76.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.bn, label %.thread122.i, label %.split.i

bb.r:                                             ; preds = %bb.p
  br i1 %i.bn, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.thread.i

.split.i:                                         ; preds = %bb.q
  %i.bo = icmp eq ptr %.sroa.10.3162.i, %.sroa.11.3163.i
  br i1 %i.bo, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.thread.i

bb.s:                                             ; preds = %.lr.ph171.i
  %.not78.i = icmp eq ptr %.sroa.11.3163.i, null
  br i1 %.not78.i, label %bb.t, label %.thread.i

.thread.i:                                        ; preds = %bb.s, %.split.i, %bb.r
  %.sroa.019.0.copyload22.i = load ptr, ptr %.sroa.11.3163.i, align 8, !noalias !468
  %.sroa.8.0..sroa.017.0.18.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.3163.i, i64 8
  %.sroa.8.0.copyload28.i = load i64, ptr %.sroa.8.0..sroa.017.0.18.sroa_idx.i, align 8, !noalias !468
  %.sroa.11.0..sroa.017.0.18.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.3163.i, i64 16
  %.sroa.11.0.copyload34.i = load ptr, ptr %.sroa.11.0..sroa.017.0.18.sroa_idx.i, align 8, !noalias !468
  br label %bb.t

bb.t:                                             ; preds = %.thread.i, %bb.s
  %.sroa.11.4.i = phi ptr [ %.sroa.11.0.copyload34.i, %.thread.i ], [ null, %bb.s ] ; 2 uses
  %.sroa.8.4.i = phi i64 [ %.sroa.8.0.copyload28.i, %.thread.i ], [ 0, %bb.s ] ; 2 uses
  %.sroa.019.4.i = phi ptr [ %.sroa.019.0.copyload22.i, %.thread.i ], [ inttoptr (i64 16 to ptr), %bb.s ] ; 2 uses
  %.not79.i = icmp eq ptr %.sroa.10.3162.i, null
  br i1 %.not79.i, label %bb.u, label %.thread122.i

.thread122.i:                                     ; preds = %bb.t, %bb.q
  %.sroa.019.4131.i = phi ptr [ %.sroa.019.4.i, %bb.t ], [ inttoptr (i64 16 to ptr), %bb.q ]
  %.sroa.8.4129.i = phi i64 [ %.sroa.8.4.i, %bb.t ], [ 0, %bb.q ]
  %.sroa.11.4127.i = phi ptr [ %.sroa.11.4.i, %bb.t ], [ null, %bb.q ]
  %.sroa.049.0.copyload52.i = load ptr, ptr %.sroa.10.3162.i, align 8, !noalias !468
  %.sroa.7.0..sroa.047.0.48.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.3162.i, i64 8
  %.sroa.7.0.copyload56.i = load i64, ptr %.sroa.7.0..sroa.047.0.48.sroa_idx.i, align 8, !noalias !468
  %.sroa.10.0..sroa.047.0.48.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.3162.i, i64 16
  %.sroa.10.0.copyload60.i = load ptr, ptr %.sroa.10.0..sroa.047.0.48.sroa_idx.i, align 8, !noalias !468
  br label %bb.u

bb.u:                                             ; preds = %.thread122.i, %bb.t
  %.sroa.019.4132.i = phi ptr [ %.sroa.019.4131.i, %.thread122.i ], [ %.sroa.019.4.i, %bb.t ] ; 2 uses
  %.sroa.8.4130.i = phi i64 [ %.sroa.8.4129.i, %.thread122.i ], [ %.sroa.8.4.i, %bb.t ] ; 2 uses
  %.sroa.11.4128.i = phi ptr [ %.sroa.11.4127.i, %.thread122.i ], [ %.sroa.11.4.i, %bb.t ] ; 2 uses
  %.sroa.049.4.i = phi ptr [ %.sroa.049.0.copyload52.i, %.thread122.i ], [ inttoptr (i64 16 to ptr), %bb.t ]
  %.sroa.7.4.i = phi i64 [ %.sroa.7.0.copyload56.i, %.thread122.i ], [ 0, %bb.t ]
  %.sroa.10.4.i = phi ptr [ %.sroa.10.0.copyload60.i, %.thread122.i ], [ null, %bb.t ]
  %i.bp = add i64 %.sroa.0.2166.i, -1             ; 2 uses
  %.not75.i = icmp eq i64 %i.bp, 0
  br i1 %.not75.i, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.lr.ph171.i

bb.v:                                             ; preds = %.lr.ph155.i
  %.sroa.11.0..sroa.07.0.8.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.2154.i, i64 16
  %.sroa.11.0.copyload35.i = load ptr, ptr %.sroa.11.0..sroa.07.0.8.sroa_idx.i, align 8, !noalias !468
  br label %.lr.ph155.i.1

.lr.ph155.i.1:                                    ; preds = %bb.v, %.lr.ph155.i
  %.sroa.11.5.i = phi ptr [ %.sroa.11.0.copyload35.i, %bb.v ], [ null, %.lr.ph155.i ] ; 4 uses
  %.not80.i.1 = icmp eq ptr %.sroa.11.5.i, null
  br i1 %.not80.i.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph155.i.1
  %.sroa.019.0.copyload23.i.1 = load ptr, ptr %.sroa.11.5.i, align 8, !noalias !468
  %.sroa.8.0..sroa.07.0.8.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.11.5.i, i64 8
  %.sroa.8.0.copyload29.i.1 = load i64, ptr %.sroa.8.0..sroa.07.0.8.sroa_idx.i.1, align 8, !noalias !468
  %.sroa.11.0..sroa.07.0.8.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.11.5.i, i64 16
  %.sroa.11.0.copyload35.i.1 = load ptr, ptr %.sroa.11.0..sroa.07.0.8.sroa_idx.i.1, align 8, !noalias !468
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph155.i.1
  %.sroa.11.5.i.1 = phi ptr [ %.sroa.11.0.copyload35.i.1, %bb.w ], [ null, %.lr.ph155.i.1 ] ; 3 uses
  %.sroa.8.5.i.1 = phi i64 [ %.sroa.8.0.copyload29.i.1, %bb.w ], [ 0, %.lr.ph155.i.1 ]
  %.sroa.019.5.i.1 = phi ptr [ %.sroa.019.0.copyload23.i.1, %bb.w ], [ inttoptr (i64 16 to ptr), %.lr.ph155.i.1 ]
  %niter240.next.1 = add i64 %niter240, 2         ; 2 uses
  %niter240.ncmp.1 = icmp eq i64 %niter240.next.1, %unroll_iter239
  br i1 %niter240.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph155.i

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5terms9TermsElemEs_0ENCB3s_s0_0EEB3v_.exit: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5terms9TermsElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i, %bb.g
  %.not = icmp eq ptr %.sroa.019.0.i, null
  br i1 %.not, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5terms9TermsElemEs_0ENCB3s_s0_0EEB3v_.exit.thread, label %bb.y, !prof !15

bb.y:                                             ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5terms9TermsElemEs_0ENCB3s_s0_0EEB3v_.exit
  store ptr %.sroa.019.0.i, ptr %i.n, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.8.0.i, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %.sroa.11.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  br label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %bb.y, %bb.z
  %.sroa.618.0 = phi ptr [ %.sroa.11.0.i, %bb.y ], [ %.sroa.618.8.copyload, %bb.z ] ; 3 uses
  %.sroa.0.012.i = phi i64 [ 0, %bb.y ], [ %i.bs, %bb.z ] ; 2 uses
  %.not16.i.i = icmp eq ptr %.sroa.618.0, null
  br i1 %.not16.i.i, label %.thread.i6, label %bb.z

.thread.i6:                                       ; preds = %.lr.ph.i5
  %i.bq = add i64 %.sroa.0.012.i, 1
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit

bb.z:                                             ; preds = %.lr.ph.i5
  %.sroa.012.0.copyload.i.i = load ptr, ptr %.sroa.618.0, align 8, !noalias !472
  %.sroa.618.8..sroa.413.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.618.0, i64 16
  %.sroa.618.8.copyload = load ptr, ptr %.sroa.618.8..sroa.413.0..sroa_idx.i.i.sroa_idx, align 8
  %i.br = icmp eq ptr %.sroa.012.0.copyload.i.i, null
  %i.bs = add i64 %.sroa.0.012.i, 1               ; 2 uses
  br i1 %i.br, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph.i5

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.z, %.thread.i6
  %.sroa.0.0.lcssa.i = phi i64 [ %i.bq, %.thread.i6 ], [ %i.bs, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !473
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit, %bb.ad
  %i.bt = phi ptr [ %i.bu, %bb.ad ], [ %i.t, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  call void @llvm.experimental.noalias.scope.decl(metadata !475)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !476
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %i.bv = load ptr, ptr %i.bt, align 8, !alias.scope !479, !noalias !480, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !481
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !481, !nonnull !11, !align !13, !noundef !11
  %i.by = icmp eq ptr %i.bx, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model5termss_1__NtB9_8TermItemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.by, label %bb.aa, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model5terms9TermsElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2X_6styles10StyleChainEEE8call_mutBT_.exit.thread.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model5terms9TermsElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2X_6styles10StyleChainEEE8call_mutBT_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !481
  br label %bb.ad

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  call void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bv), !noalias !481
  %i.ca = invoke { ptr, i64 } @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain6suffix(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bz, i64 noundef %.sroa.0.0.lcssa.i)
          to label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model5terms9TermsElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2X_6styles10StyleChainEEE8call_mutBT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ab, !noalias !480 ; 2 uses

common.resume:                                    ; preds = %bb.aw, %bb.ay, %bb.ab, %bb.ae, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %bb.ae ], [ %i.cb, %bb.ab ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.dq, %bb.aw ], [ %i.ds, %bb.ay ]
  resume { ptr, i32 } %common.resume.op

bb.ab:                                            ; preds = %bb.aa
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.ac, !noalias !481

bb.ac:                                            ; preds = %bb.ab
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !481
  unreachable

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model5terms9TermsElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2X_6styles10StyleChainEEE8call_mutBT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aa
  %i.cd = extractvalue { ptr, i64 } %i.ca, 0
  %i.ce = extractvalue { ptr, i64 } %i.ca, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !481
  call void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library5model5termsNtB4_8TermItemNtNtB6_4list12ListItemLike6styled(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull %i.cd, i64 noundef %i.ce), !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !481
  %.pr.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !noalias !476 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !481
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model5terms9TermsElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2X_6styles10StyleChainEEE8call_mutBT_.exit.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model5terms9TermsElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2X_6styles10StyleChainEEE8call_mutBT_.exit.thread.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !476
  %i.cf = icmp eq ptr %i.bu, %i.u
  br i1 %i.cf, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB13_5model5terms8TermItemEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtB34_6copied6CopiedINtNtNtB38_5slice4iter4IterTRNtBZ_7ContentNtNtB11_6styles10StyleChainEEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtB27_9TermsElemEs1_0EE9from_iterB5D_.exit, label %.lr.ph.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ag
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.ar, !noalias !473

bb.af:                                            ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model5terms9TermsElemEs1_0INtB7_5FnMutTTRNtNtNtB1K_11foundations7content7ContentNtNtB2X_6styles10StyleChainEEE8call_mutBT_.exit.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i.i.i.i, i64 16, i1 false), !noalias !473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !476
  store ptr %.pr.i.i.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !473
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !483
  %i.ch = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) 96, i64 noundef 8) #29, !noalias !483 ; 4 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #30
end_hunk_2
begin_hunk_3_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECsibhcYuwTAtB_13typst_realize:bb.a
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !651
  %i.k = getelementptr i8, ptr %.val.i.i, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !651, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, label %bb.d, !prof !21

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !651
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  %i.l = add nuw nsw i64 %.val.i.i.i.i.i.i, 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.i, ptr %i.m, align 8, !noalias !651
  store i64 8, ptr %i.d, align 8, !noalias !651
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.l, ptr %i.n, align 8, !noalias !651
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !651
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  %i.o = icmp eq i64 %i.e, 0
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !654 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val1.i.i.i = load i8, ptr %i.q, align 1, !alias.scope !654, !noundef !11
  %.not.i.i.i.i1.i = icmp sgt i8 %.val1.i.i.i, -1
  br i1 %.not.i.i.i.i1.i, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  %i.r = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !654
  %.not.i.i.i.i.i2.i = icmp eq i64 %i.s, 1
  br i1 %.not.i.i.i.i.i2.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !654
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !654, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, label %bb.h, !prof !21

bb.h:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !654
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  %i.u = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.r, ptr %i.v, align 8, !noalias !654
  store i64 8, ptr %i.c, align 8, !noalias !654
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.u, ptr %i.w, align 8, !noalias !654
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !654
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

bb.i:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %.val.i3.i = load ptr, ptr %i.x, align 8, !alias.scope !656 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val1.i4.i = load i8, ptr %i.y, align 1, !alias.scope !656, !noundef !11
  %.not.i.i.i5.i = icmp sgt i8 %.val1.i4.i, -1
  br i1 %.not.i.i.i5.i, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i3.i) ]
  %.not.i.i.i.i.i6.i = icmp eq ptr %.val.i3.i, inttoptr (i64 16 to ptr)
  %i.z = getelementptr inbounds i8, ptr %.val.i3.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i6.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i7.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i7.i: ; preds = %bb.j
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !656
  %.not.i.i.i.i8.i = icmp eq i64 %i.aa, 1
  br i1 %.not.i.i.i.i8.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i9.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i9.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i7.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !656
  %i.ab = getelementptr i8, ptr %.val.i3.i, i64 -8
  %.val.i.i.i.i.i10.i = load i64, ptr %i.ab, align 8, !noalias !656, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i11.i = icmp ult i64 %.val.i.i.i.i.i10.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i11.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i12.i, label %bb.k, !prof !21

bb.k:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i9.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !656
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i12.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i9.i
  %i.ac = add nuw nsw i64 %.val.i.i.i.i.i10.i, 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.z, ptr %i.ad, align 8, !noalias !656
  store i64 8, ptr %i.b, align 8, !noalias !656
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !noalias !656
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !656
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

bb.l:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %.val.i14.i = load ptr, ptr %i.af, align 8, !alias.scope !658 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val1.i15.i = load i8, ptr %i.ag, align 1, !alias.scope !658, !noundef !11
  %.not.i.i.i16.i = icmp sgt i8 %.val1.i15.i, -1
  br i1 %.not.i.i.i16.i, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i14.i) ]
  %.not.i.i.i.i.i17.i = icmp eq ptr %.val.i14.i, inttoptr (i64 16 to ptr)
  %i.ah = getelementptr inbounds i8, ptr %.val.i14.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i17.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i18.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i18.i: ; preds = %bb.m
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !658
  %.not.i.i.i.i19.i = icmp eq i64 %i.ai, 1
  br i1 %.not.i.i.i.i19.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i20.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i20.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i18.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !658
  %i.aj = getelementptr i8, ptr %.val.i14.i, i64 -8
  %.val.i.i.i.i.i21.i = load i64, ptr %i.aj, align 8, !noalias !658, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i22.i = icmp ult i64 %.val.i.i.i.i.i21.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i22.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i23.i, label %bb.n, !prof !21

bb.n:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i20.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !658
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i23.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i20.i
  %i.ak = add nuw nsw i64 %.val.i.i.i.i.i21.i, 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ah, ptr %i.al, align 8, !noalias !658
  store i64 8, ptr %i.a, align 8, !noalias !658
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ak, ptr %i.am, align 8, !noalias !658
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !658
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.b, %bb.c, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, %bb.e, %bb.f, %bb.g, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, %bb.i, %bb.j, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i7.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i12.i, %bb.l, %bb.m, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i18.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i23.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  %i.b = load i64, ptr %i.a, align 16, !range !23, !alias.scope !686, !noundef !11 ; 4 uses
  %i.c = icmp ne i64 %i.b, 4
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i64 %i.b, -3
  %i.e = icmp samesign ugt i64 %i.b, 2
  %i.f = select i1 %i.e, i64 %i.d, i64 1
  switch i64 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit [
    i64 0, label %bb.b
    i64 1, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !686 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.h, align 16, !alias.scope !686, !nonnull !11, !align !13, !noundef !11 ; 5 uses
  %i.i = load ptr, ptr %.val1.i, align 8, !invariant.load !11, !noalias !686 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ], !noalias !686
  invoke void %i.i(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.e, !noalias !686

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !16, !invariant.load !11, !noalias !686 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ], !noalias !686
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !24, !invariant.load !11, !noalias !686
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #29, !noalias !686
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !16, !invariant.load !11, !noalias !686 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !24, !invariant.load !11, !noalias !686
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.t) #29, !noalias !686
  br label %common.resume

common.resume:                                    ; preds = %bb.h, %bb.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.o, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.z, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = load i64, ptr %i.u, align 16, !range !25, !alias.scope !687, !noundef !11
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.u)
          to label %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i_crit_edge unwind label %bb.h, !inline_history !665

._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i_crit_edge: ; preds = %bb.g
  %.pre = load i64, ptr %i.a, align 16, !range !26, !alias.scope !688
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i_crit_edge, %bb.f
  %i.x = phi i64 [ %.pre, %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i_crit_edge ], [ %i.b, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  switch i64 %i.x, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles14TransformationECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(112) %i.a) #31
          to label %common.resume unwind label %bb.r, !inline_history !668

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i
  tail call fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.y), !inline_history !669
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i
  tail call void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.aa = load i64, ptr %i.y, align 8, !range !17, !alias.scope !691, !noundef !11
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  switch i64 %i.aa, label %bb.l [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit
    i64 2, label %bb.n
    i64 3, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.ac = load ptr, ptr %i.ab, align 16, !alias.scope !694, !nonnull !11, !noundef !11
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !694
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcTNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncNtNtBL_4args4ArgsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit

bb.n:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %i.af = load ptr, ptr %i.ab, align 16, !alias.scope !697, !nonnull !11, !noundef !11
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !697
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func7ClosureEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit

bb.p:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %i.ai = load ptr, ptr %i.ab, align 16, !alias.scope !700, !nonnull !11, !noundef !11
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !700
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_10PluginFuncE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit

bb.r:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !inline_history !668
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.j, %bb.i, %bb.k, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECsibhcYuwTAtB_13typst_realize(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.d = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.a
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.e, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.f, align 8, !noundef !11 ; 2 uses
  %i.g = icmp ult i64 %.val.i.i, 576460752303423488
  %i.h = shl nuw i64 %.val.i.i, 5
  %i.i = or disjoint i64 %i.h, 16                 ; 2 uses
  %i.j = icmp ult i64 %i.i, 9223372036854775799
  %narrow.i.i.i = select i1 %i.g, i1 %i.j, i1 false
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i, label %bb.b, !prof !21

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.k, align 8
  store i64 8, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.i, ptr %i.l, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %i.m = icmp eq i64 %.8.val, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i.i, %.lr.ph.i.i
  %.sroa.0.012.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.012.i.i ; 2 uses
  %i.q = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 4 uses
  %i.r = getelementptr i8, ptr %i.p, i64 16
  %.val8.i.i = load ptr, ptr %i.r, align 8, !alias.scope !710 ; 4 uses
  %i.s = getelementptr i8, ptr %i.p, i64 31
  %.val9.i.i = load i8, ptr %i.s, align 1, !alias.scope !710, !noundef !11
  %.not.i.i.i.i.i.i = icmp sgt i8 %.val9.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val8.i.i, inttoptr (i64 16 to ptr)
  %i.t = getelementptr inbounds i8, ptr %.val8.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !711
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.u, 1
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !711
  %i.v = getelementptr i8, ptr %.val8.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !711, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i, label %bb.e, !prof !21

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !709

.noexc.i.i:                                       ; preds = %bb.e
end_hunk_3
begin_hunk_4_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECsibhcYuwTAtB_13typst_realize:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.t, ptr %i.v, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef %.val16)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.g

bb.f:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECsibhcYuwTAtB_13typst_realize.exit

bb.g:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.m, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i, %bb.f
  ret void

bb.h:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_EECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %i.a = load i64, ptr %0, align 8, !alias.scope !747, !noundef !11 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !747, !noundef !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtB9_3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sub nuw i64 %i.c, %i.a                   ; 3 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %i.a ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %i.j, %i.f
  br i1 %i.h, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtB9_3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i.i.i.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.sroa.0.0.i.i.i.i.i.i3
  %i.j = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i3, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.i)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.k = add i64 %.sroa.0.1.i.i.i.i.i.i4, 1       ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %i.f
  br i1 %i.n, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i.i.i.i4 = phi i64 [ %i.k, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.sroa.0.1.i.i.i.i.i.i4
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.o) #31
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %.lr.ph5
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !748
  unreachable

_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtB9_3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !751)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !751, !nonnull !11, !noundef !11 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !751, !nonnull !11, !noundef !11 ; 2 uses
  %i.c = ptrtoint ptr %.val1.i to i64
  %i.d = ptrtoint ptr %.val.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24                  ; 3 uses
  %i.g = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i, label %.lr.ph

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit7.i.i, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !751, !noundef !11 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBO_5alloc6GlobalEECsibhcYuwTAtB_13typst_realize.exit.i, label %bb.b

bb.b:                                             ; preds = %.body.i
  %i.k = load ptr, ptr %0, align 8, !alias.scope !751, !nonnull !11, !noundef !11
  %i.l = mul nuw i64 %i.i, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !751
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBO_5alloc6GlobalEECsibhcYuwTAtB_13typst_realize.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %.lr.ph
  %i.m = icmp eq i64 %i.o, %i.f
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i.i
  %.sroa.0.0.i.i3 = phi i64 [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i3
  %i.o = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i.i unwind label %bb.c, !noalias !751

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit7.i.i: ; preds = %.lr.ph5
  %i.p = add i64 %.sroa.0.1.i.i4, 1               ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.f
  br i1 %i.q, label %.body.i, label %.lr.ph5

bb.c:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.o, %i.f
  br i1 %i.s, label %.body.i, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit7.i.i
  %.sroa.0.1.i.i4 = phi i64 [ %i.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit7.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i4
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit7.i.i unwind label %bb.d, !noalias !751

bb.d:                                             ; preds = %.lr.ph5
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !751
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i.i, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !751, !noundef !11 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i
  %i.y = load ptr, ptr %0, align 8, !alias.scope !751, !nonnull !11, !noundef !11
  %i.z = mul nuw i64 %i.w, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !751
  br label %_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBO_5alloc6GlobalEECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.b, %.body.i
  resume { ptr, i32 } %i.r

_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs7lTeezpKIYd_14regex_automata4util4pool4PoolNtNtNtBI_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1r_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3q_10UnwindSafeNtB37_4SyncEL_EEECsibhcYuwTAtB_13typst_realize(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !762 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %.val2.i.i = load ptr, ptr %i.b, align 8, !alias.scope !762, !nonnull !11, !align !13, !noundef !11 ; 5 uses
  %i.c = load ptr, ptr %.val2.i.i, align 8, !invariant.load !11, !noalias !762 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.c(ptr noundef nonnull %.val.i.i)
          to label %bb.c unwind label %bb.d, !noalias !762

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !16, !invariant.load !11, !noalias !762 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheNtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB2X_10UnwindSafeNtB2E_4SyncEL_EECsibhcYuwTAtB_13typst_realize.exit.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !24, !invariant.load !11, !noalias !762
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.h) #29, !noalias !762
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheNtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB2X_10UnwindSafeNtB2E_4SyncEL_EECsibhcYuwTAtB_13typst_realize.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !16, !invariant.load !11, !noalias !762 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !24, !invariant.load !11, !noalias !762
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #29, !noalias !762
  br label %.body.i.i

.body.i.i:                                        ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.d
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(1448) %.0.val) #31
          to label %bb.e unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheNtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB2X_10UnwindSafeNtB2E_4SyncEL_EECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.c
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(1448) %.0.val)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.g, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.i, %.body.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !27, !alias.scope !763, !noundef !11
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.o)
          to label %bb.l unwind label %bb.j

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheNtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB2X_10UnwindSafeNtB2E_4SyncEL_EECsibhcYuwTAtB_13typst_realize.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheNtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB2X_10UnwindSafeNtB2E_4SyncEL_EECsibhcYuwTAtB_13typst_realize.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !27, !alias.scope !764, !noundef !11
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner4PoolNtNtNtB1j_4meta5regex5CacheIBC_DINtNtNtB4_3ops8function2FnuEp6OutputB28_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3D_10UnwindSafeNtB3k_4SyncEL_EEEECsibhcYuwTAtB_13typst_realize.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner4PoolNtNtNtB1j_4meta5regex5CacheIBC_DINtNtNtB4_3ops8function2FnuEp6OutputB28_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3D_10UnwindSafeNtB3k_4SyncEL_EEEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.f, %.body.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.w, %bb.k ], [ %.pn.i.i, %bb.f ], [ %.pn.i.i, %bb.e ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1448, i64 noundef 8) #29
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner4PoolNtNtNtB1j_4meta5regex5CacheIBC_DINtNtNtB4_3ops8function2FnuEp6OutputB28_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3D_10UnwindSafeNtB3k_4SyncEL_EEEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.h, %bb.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1448, i64 noundef 8) #29
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs7lTeezpKIYd_14regex_automata4util4pool9PoolGuardNtNtNtBI_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3v_10UnwindSafeNtB3c_4SyncEL_EEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773)
  %i.b = load i64, ptr %0, align 8, !range !28, !alias.scope !774, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !774, !noundef !11 ; 7 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !774
  store ptr inttoptr (i64 2 to ptr), ptr %i.c, align 8, !alias.scope !774
  %i.f = trunc nuw i64 %i.b to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !774
  store i64 %i.e, ptr %i.a, align 8, !noalias !774
  %i.g = icmp eq ptr %i.d, inttoptr (i64 2 to ptr)
  br i1 %i.g, label %.noexc4.i, label %bb.f, !prof !12

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i8, ptr %i.h, align 8, !range !18, !alias.scope !774, !noundef !11
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !774, !nonnull !11, !align !13, !noundef !11
  tail call fastcc void @_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE9put_valueCsibhcYuwTAtB_13typst_realize(ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull align 8 %i.d) #32, !noalias !771
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9PoolGuardNtNtNtBK_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1E_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3D_10UnwindSafeNtB3k_4SyncEL_EEECsibhcYuwTAtB_13typst_realize.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit.i.i unwind label %.body.i, !noalias !775

.body.i:                                          ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 1400, i64 noundef 8) #29, !noalias !775
  resume { ptr, i32 } %i.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %bb.e
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 1400, i64 noundef 8) #29, !noalias !775
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9PoolGuardNtNtNtBK_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1E_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3D_10UnwindSafeNtB3k_4SyncEL_EEECsibhcYuwTAtB_13typst_realize.exit

.noexc4.i:                                        ; preds = %bb.b
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #27, !noalias !771
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !774, !nonnull !11, !align !13, !noundef !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store atomic i64 %i.e, ptr %i.p release, align 8, !noalias !774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !774
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9PoolGuardNtNtNtBK_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1E_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3D_10UnwindSafeNtB3k_4SyncEL_EEECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9PoolGuardNtNtNtBK_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1E_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3D_10UnwindSafeNtB3k_4SyncEL_EEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit.i.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB2y_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 64 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.b, align 16, !alias.scope !787, !nonnull !11, !noundef !11 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !787, !noundef !11 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %i.d = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.d, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.0.08.i.i.i.i.i
  %i.f = add nuw nsw i64 %.sroa.0.08.i.i.i.i.i, 1 ; 4 uses
  %.val7.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !788, !noalias !787, !nonnull !11, !noundef !11 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %.val7.i.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i unwind label %.body.i.i.i.i.i, !noalias !789

.body.i.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i, i64 noundef 1400, i64 noundef 8) #29, !noalias !789
  %i.h = icmp eq i64 %i.f, %.val1.i.i.i
  br i1 %i.h, label %.body.i.i.i, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i, i64 noundef 1400, i64 noundef 8) #29, !noalias !789
  %i.i = icmp eq i64 %i.f, %.val1.i.i.i
  br i1 %i.i, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit.i.i.i, label %.lr.ph.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.j = add i64 %.sroa.0.1.i.i.i.i.i9, 1         ; 2 uses
  %i.k = icmp eq i64 %i.j, %.val1.i.i.i
  br i1 %i.k, label %.body.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i.i.i.i, %bb.b
  %.sroa.0.1.i.i.i.i.i9 = phi i64 [ %i.j, %bb.b ], [ %i.f, %.body.i.i.i.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.0.1.i.i.i.i.i9
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !788, !noalias !787, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize(ptr %.val.i.i.i.i.i) #31
          to label %bb.b unwind label %bb.c, !noalias !789

bb.c:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !789
  unreachable

.body.i.i.i:                                      ; preds = %bb.b, %.body.i.i.i.i.i
  %.val4.i.i.i = load i64, ptr %i.a, align 8, !range !16, !alias.scope !787, !noundef !11 ; 2 uses
  %i.n = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEECsibhcYuwTAtB_13typst_realize.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.body.i.i.i
  %i.o = shl nuw i64 %.val4.i.i.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !787
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEECsibhcYuwTAtB_13typst_realize.exit.i.i.i

end_hunk_4
begin_hunk_5_@_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsibhcYuwTAtB_13typst_realize:bb.a
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !16, !alias.scope !1718, !noundef !11 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1718
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !1718
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 16, 33) %3)
  %i.g = load i64, ptr %i.a, align 8, !range !28, !noalias !1718, !noundef !11
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !32, !noalias !1718, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !1718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1718
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #30
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !1718, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1718
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !1718
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !1718
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize10finish_par(ptr noalias nofree noundef align 8 dereferenceable(168) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [336 x i8], align 16              ; 17 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [232 x i8], align 8               ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 16 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.9 = alloca [48 x i8], align 8            ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RNvNtCsibhcYuwTAtB_13typst_realize6spaces15collapse_spaces(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x, i64 noundef %1)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !11 ; 9 uses
  %i.aa = icmp ugt i64 %1, %i.z
  br i1 %i.aa, label %bb.b, label %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %1, i64 noundef %i.z, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #27
  unreachable

_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit: ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ad = sub nuw i64 %i.z, %1                    ; 5 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.z
  %i.ag = icmp samesign eq i64 %1, %i.z
  br i1 %i.ag, label %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.af
  br i1 %i.ai, label %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit, %bb.c
  %i.aj = phi ptr [ %i.ah, %bb.c ], [ %i.ae, %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit ] ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !1828, !noalias !1829, !nonnull !11, !align !13, !noundef !11
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !14, !noalias !1830, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.al, 1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit

_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit: ; preds = %.lr.ph, %bb.c, %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit
  %i.am = phi i64 [ 1, %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit ], [ %i.al, %.lr.ph ], [ 1, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1832
  call void @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain16trunk_from_pairs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ae, i64 noundef range(i64 0, 288230376151711744) %i.ad), !noalias !1833
  %i.an = load ptr, ptr %i.t, align 8, !noalias !1832, !noundef !11 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null               ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1832
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1832
  %.sroa.5.0.i = select i1 %.not.i, ptr null, ptr %.sroa.5.0.copyload.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1832
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit
  %.sroa.6.0.i = phi ptr [ %.sroa.5.0.i, %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit ], [ %.sroa.6.8.copyload.i, %bb.d ] ; 3 uses
  %.sroa.0.012.i.i = phi i64 [ 0, %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit ], [ %i.aq, %bb.d ] ; 2 uses
  %.not16.i.i.i = icmp eq ptr %.sroa.6.0.i, null
  br i1 %.not16.i.i.i, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.ao = add i64 %.sroa.0.012.i.i, 1
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %.sroa.012.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0.i, align 8, !noalias !1834
  %.sroa.6.8..sroa.413.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 16
  %.sroa.6.8.copyload.i = load ptr, ptr %.sroa.6.8..sroa.413.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !1833
  %i.ap = icmp eq ptr %.sroa.012.0.copyload.i.i.i, null
  %i.aq = add i64 %.sroa.0.012.i.i, 1             ; 2 uses
  br i1 %i.ap, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i, label %.lr.ph.i.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.d, %.thread.i.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %i.ao, %.thread.i.i ], [ %i.aq, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1832
  %i.ar = mul nuw nsw i64 %i.ad, 24               ; 2 uses
  %i.as = icmp eq i64 %i.ad, 0
  br i1 %i.as, label %_RNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB5_10GroupByKeyTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBU_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2n_.exit.thread.thread.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB5_10GroupByKeyTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBU_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2n_.exit.thread.thread.i: ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i
  store i64 0, ptr %i.s, align 8, !noalias !1832
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.at, align 8, !noalias !1832
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %i.au, align 8, !noalias !1832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1832
  store i64 0, ptr %i.i, align 8, !noalias !1835
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.av, align 8, !noalias !1835
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %i.aw, align 8, !noalias !1835
  br label %bb.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1836
  %i.ax = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.ar, i64 noundef 8) #29, !noalias !1836 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsibhcYuwTAtB_13typst_realize.exit.i, label %.lr.ph.i

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ar) #30, !noalias !1833
  unreachable

.lr.ph.i:                                         ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  store i64 %i.ad, ptr %i.s, align 8, !noalias !1832
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 6 uses
  store ptr %i.ax, ptr %i.az, align 8, !noalias !1832
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 10 uses
  store i64 0, ptr %i.ba, align 8, !noalias !1832
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.6.0..sroa_idx.i33.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECsibhcYuwTAtB_13typst_realize.exit.i, %.lr.ph.i
  %.sroa.054.0119.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.ch, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECsibhcYuwTAtB_13typst_realize.exit.i ] ; 9 uses
  %.sroa.5.063118.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %i.ci, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECsibhcYuwTAtB_13typst_realize.exit.i ] ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %.sroa.5.063118.i, 5 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.054.0119.i, i64 %.idx.i.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.054.0119.i, i64 8
  %.sroa.0.0.copyload12.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !1837, !noalias !1838 ; 5 uses
  %.sroa.6.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %.sroa.054.0119.i, i64 16
  %.sroa.6.0.copyload14.i.i = load i64, ptr %.sroa.6.0..sroa_idx13.i.i, align 8, !alias.scope !1837, !noalias !1838 ; 3 uses
  %.sroa.7.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %.sroa.054.0119.i, i64 24
  %.sroa.7.0.copyload16.i.i = load ptr, ptr %.sroa.7.0..sroa_idx15.i.i, align 8, !alias.scope !1837, !noalias !1838
  %.sroa.7.0.copyload16.fr.i.i = freeze ptr %.sroa.7.0.copyload16.i.i ; 3 uses
  %i.bl = icmp eq i64 %.sroa.5.063118.i, 1
  br i1 %i.bl, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1H_6styles10StyleChainEENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3g_10GroupByKeyB1B_NCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtBa_6traits8iterator8Iterator4next0EB4K_4foldjNCNvYBV_B5p_5count0EB48_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload12.i.i) ]
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.054.0119.i, i64 32 ; 2 uses
  %i.bm = icmp eq ptr %.sroa.7.0.copyload16.fr.i.i, null
  %i.bn = add nsw i64 %.idx.i.i, -64
  %i.bo = lshr exact i64 %i.bn, 5
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  br i1 %i.bm, label %.lr.ph.i.i.i.split.us.i.i, label %.lr.ph.i.i.i.split.i.i

.lr.ph.i.i.i.split.us.i.i:                        ; preds = %.lr.ph.i.i.i.i.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize6repack0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.us.i.i
  %.sroa.01.019.i.i.i.us.i.i = phi i64 [ %i.bw, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize6repack0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.us.i.i ], [ 0, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.bq = phi ptr [ %i.br, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize6repack0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.us.i.i ], [ %2, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.us.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !1839, !noalias !1840, !nonnull !11, !noundef !11
  %.sroa.4.0..sroa_idx.i.i.i.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.us.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.us.i.i, align 8, !alias.scope !1839, !noalias !1840
  %i.bt = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.us.i.i, %.sroa.0.0.copyload12.i.i
  %i.bu = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.us.i.i, %.sroa.6.0.copyload14.i.i
  %i.bv = and i1 %i.bt, %i.bu
  br i1 %i.bv, label %bb.f, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1H_6styles10StyleChainEENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3g_10GroupByKeyB1B_NCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtBa_6traits8iterator8Iterator4next0EB4K_4foldjNCNvYBV_B5p_5count0EB48_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.split.us.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.sroa.5.0.copyload.i.i.i.i.i.us.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.us.i.i, align 8, !alias.scope !1839, !noalias !1840
  %.not.i.i.i.i.i.i.us.i.i = icmp eq ptr %.sroa.5.0.copyload.i.i.i.i.i.us.i.i, null
  br i1 %.not.i.i.i.i.i.i.us.i.i, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize6repack0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.us.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1H_6styles10StyleChainEENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3g_10GroupByKeyB1B_NCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtBa_6traits8iterator8Iterator4next0EB4K_4foldjNCNvYBV_B5p_5count0EB48_.exit.i.i

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize6repack0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.us.i.i: ; preds = %bb.f
  %i.bw = add nuw nsw i64 %.sroa.01.019.i.i.i.us.i.i, 1
  %i.bx = icmp eq ptr %i.br, %i.bj
  br i1 %i.bx, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1H_6styles10StyleChainEENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3g_10GroupByKeyB1B_NCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtBa_6traits8iterator8Iterator4next0EB4K_4foldjNCNvYBV_B5p_5count0EB48_.exit.i.i, label %.lr.ph.i.i.i.split.us.i.i

.lr.ph.i.i.i.split.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize6repack0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.i.i
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.ce, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize6repack0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.by = phi ptr [ %i.cd, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize6repack0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.i.i ], [ %2, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !1839, !noalias !1840, !nonnull !11, !noundef !11
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1839, !noalias !1840
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1839, !noalias !1840
  %i.ca = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload12.i.i
  %i.cb = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, %.sroa.6.0.copyload14.i.i
  %.not23.not26.i.i = and i1 %i.ca, %i.cb
  %i.cc = icmp eq ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i, %.sroa.7.0.copyload16.fr.i.i
  %or.cond20.i.i = select i1 %.not23.not26.i.i, i1 %i.cc, i1 false
  br i1 %or.cond20.i.i, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize6repack0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1H_6styles10StyleChainEENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3g_10GroupByKeyB1B_NCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtBa_6traits8iterator8Iterator4next0EB4K_4foldjNCNvYBV_B5p_5count0EB48_.exit.i.i

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize6repack0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.split.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 32 ; 2 uses
  %i.ce = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1
  %i.cf = icmp eq ptr %i.cd, %i.bj
  br i1 %i.cf, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1H_6styles10StyleChainEENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3g_10GroupByKeyB1B_NCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtBa_6traits8iterator8Iterator4next0EB4K_4foldjNCNvYBV_B5p_5count0EB48_.exit.i.i, label %.lr.ph.i.i.i.split.i.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1H_6styles10StyleChainEENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3g_10GroupByKeyB1B_NCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtBa_6traits8iterator8Iterator4next0EB4K_4foldjNCNvYBV_B5p_5count0EB48_.exit.i.i: ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize6repack0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.i.i, %.lr.ph.i.i.i.split.i.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize6repack0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.us.i.i, %bb.f, %.lr.ph.i.i.i.split.us.i.i, %bb.e
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.sroa.01.019.i.i.i.us.i.i, %.lr.ph.i.i.i.split.us.i.i ], [ %.sroa.01.019.i.i.i.us.i.i, %bb.f ], [ %i.bp, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize6repack0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.us.i.i ], [ %.sroa.01.019.i.i.i.i.i, %.lr.ph.i.i.i.split.i.i ], [ %i.bp, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize6repack0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.i.i ] ; 4 uses
  %i.cg = add i64 %.sroa.0.1.i.i.i.i, 1           ; 10 uses
  %.not.i.i.i = icmp ugt i64 %i.cg, %.sroa.5.063118.i
  br i1 %.not.i.i.i, label %bb.g, label %_RNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB5_10GroupByKeyTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBU_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2n_.exit.i, !prof !12

bb.g:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1H_6styles10StyleChainEENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3g_10GroupByKeyB1B_NCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtBa_6traits8iterator8Iterator4next0EB4K_4foldjNCNvYBV_B5p_5count0EB48_.exit.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @50, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #27
          to label %.noexc.i unwind label %.thread77.loopexit.split-lp.i, !noalias !1833

.noexc.i:                                         ; preds = %bb.g
  unreachable

.thread77.loopexit.i:                             ; preds = %.loopexit.i, %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread77.loopexit.split-lp.i:                    ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

_RNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB5_10GroupByKeyTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBU_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2n_.exit.i: ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1H_6styles10StyleChainEENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3g_10GroupByKeyB1B_NCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtBa_6traits8iterator8Iterator4next0EB4K_4foldjNCNvYBV_B5p_5count0EB48_.exit.i.i
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %.sroa.054.0119.i, i64 %i.cg
  %i.ci = sub nuw nsw i64 %.sroa.5.063118.i, %i.cg ; 2 uses
  %.not20.i = icmp eq ptr %.sroa.0.0.copyload12.i.i, null
  br i1 %.not20.i, label %_RNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB5_10GroupByKeyTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBU_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2n_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB5_10GroupByKeyTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBU_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2n_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1832
  store ptr %.sroa.0.0.copyload12.i.i, ptr %i.r, align 8, !noalias !1832
  store i64 %.sroa.6.0.copyload14.i.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1832
  store ptr %.sroa.7.0.copyload16.fr.i.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1832
  %i.cj = invoke { ptr, i64 } @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain6suffix(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.r, i64 noundef %.sroa.0.0.lcssa.i.i)
          to label %bb.p unwind label %.thread77.loopexit.i, !noalias !1833 ; 2 uses

_RNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB5_10GroupByKeyTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBU_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2n_.exit.thread.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECsibhcYuwTAtB_13typst_realize.exit.i, %_RNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB5_10GroupByKeyTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBU_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2n_.exit.i
  %.sroa.056.0.copyload.pre.i = load i64, ptr %i.s, align 8, !noalias !1832 ; 3 uses
  %.sroa.457.0.copyload.pre.i = load ptr, ptr %i.az, align 8, !noalias !1832 ; 6 uses
  %.sroa.558.0.copyload.pre.i = load i64, ptr %i.ba, align 8, !noalias !1832 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1832
  call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1832
  %i.ck = icmp ult i64 %.sroa.558.0.copyload.pre.i, 384307168202282326
  call void @llvm.assume(i1 %i.ck)
  store i64 %.sroa.056.0.copyload.pre.i, ptr %i.i, align 8, !noalias !1842
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.457.0.copyload.pre.i, ptr %i.cl, align 8, !noalias !1842
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.558.0.copyload.pre.i, ptr %i.cm, align 8, !noalias !1842
  switch i64 %.sroa.558.0.copyload.pre.i, label %bb.j [
    i64 0, label %bb.i
    i64 1, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i.i
  ]

bb.i:                                             ; preds = %_RNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB5_10GroupByKeyTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBU_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2n_.exit.thread.i, %_RNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB5_10GroupByKeyTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBU_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2n_.exit.thread.thread.i
  %.sroa.056.0.copyload144.i = phi i64 [ 0, %_RNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB5_10GroupByKeyTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBU_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2n_.exit.thread.thread.i ], [ %.sroa.056.0.copyload.pre.i, %_RNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB5_10GroupByKeyTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBU_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2n_.exit.thread.i ] ; 2 uses
  %.sroa.457.0.copyload143.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB5_10GroupByKeyTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBU_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2n_.exit.thread.thread.i ], [ %.sroa.457.0.copyload.pre.i, %_RNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB5_10GroupByKeyTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBU_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2n_.exit.thread.i ]
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB2_7Content5empty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit.i.i.i unwind label %bb.o, !noalias !1843

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %_RNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB5_10GroupByKeyTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBU_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2n_.exit.thread.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.457.0.copyload.pre.i, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1842
  store ptr %.sroa.457.0.copyload.pre.i, ptr %i.j, align 8, !noalias !1842
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.056.0.copyload.pre.i, ptr %i.co, align 8, !noalias !1842
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.cn, ptr %i.cq, align 8, !noalias !1842
  call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  store ptr %i.cn, ptr %i.cp, align 8, !alias.scope !1844, !noalias !1845
  %.sroa.0.0.copyload3.i.i = load ptr, ptr %.sroa.457.0.copyload.pre.i, align 8, !noalias !1846 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload3.i.i, null
  br i1 %.not.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread.i.i, label %.noexc23.i, !prof !15

bb.j:                                             ; preds = %_RNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB5_10GroupByKeyTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBU_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize6repack0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2n_.exit.thread.i
  call fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtB5_12SequenceElemECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.i), !noalias !1833
  br label %_RNvCsibhcYuwTAtB_13typst_realize6repack.exit

bb.k:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j) #31
          to label %common.resume unwind label %bb.m, !noalias !1847

.noexc23.i:                                       ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i.i
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.457.0.copyload.pre.i, i64 8
  store ptr %.sroa.0.0.copyload3.i.i, ptr %i.l, align 8, !alias.scope !1841, !noalias !1848
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4.i.i, i64 16, i1 false), !noalias !1843
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j), !noalias !1833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1842
  br label %_RNvCsibhcYuwTAtB_13typst_realize6repack.exit

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread.i.i: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #30
          to label %bb.l unwind label %bb.k, !noalias !1847

bb.l:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread.i.i
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.k
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !1847
  unreachable

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit.i.i.i: ; preds = %bb.i
  %i.ct = icmp eq i64 %.sroa.056.0.copyload144.i, 0
  br i1 %i.ct, label %_RNvCsibhcYuwTAtB_13typst_realize6repack.exit, label %bb.n

bb.n:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit.i.i.i
  %i.cu = mul nuw i64 %.sroa.056.0.copyload144.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.457.0.copyload143.i, i64 noundef %i.cu, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1849
  %.pre = load i64, ptr %i.y, align 8, !alias.scope !1850
  br label %_RNvCsibhcYuwTAtB_13typst_realize6repack.exit

bb.o:                                             ; preds = %bb.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #31
          to label %common.resume unwind label %bb.m, !noalias !1847

bb.p:                                             ; preds = %bb.h
  %i.cv = extractvalue { ptr, i64 } %i.cj, 0      ; 3 uses
  %i.cw = extractvalue { ptr, i64 } %i.cj, 1      ; 4 uses
  store ptr %i.cv, ptr %i.q, align 8, !noalias !1832
  store i64 %i.cw, ptr %i.bb, align 8, !noalias !1832
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cy = icmp eq i64 %.sroa.0.1.i.i.i.i, 0
  br i1 %i.cy, label %bb.v, label %bb.w

bb.r:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  %i.cz = load i64, ptr %i.ba, align 8, !alias.scope !1852, !noalias !1832, !noundef !11 ; 4 uses
  %i.da = load i64, ptr %i.s, align 8, !range !16, !alias.scope !1852, !noalias !1832, !noundef !11
  %i.db = sub i64 %i.da, %i.cz
  %i.dc = icmp ugt i64 %i.cg, %i.db
  br i1 %i.dc, label %bb.s, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCsibhcYuwTAtB_13typst_realize.exit.i.i, !prof !12

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.cz, i64 noundef %i.cg, i64 noundef 24)
end_hunk_5
begin_hunk_6_@_RNvCsibhcYuwTAtB_13typst_realize14finish_textual:bb.a
  %.sroa.824.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.824.0.copyload.i.i = load i64, ptr %.sroa.824.0..sroa_idx.i.i, align 8, !noalias !2178
  %.sroa.9.sroa.0.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2194
  %.sroa.9.sroa.5.0..sroa.7.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.9.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.9.sroa.5.0..sroa.7.0..sroa_idx.i.sroa_idx.i, i64 7, i1 false), !noalias !2177
  %.sroa.9.sroa.6.0..sroa.7.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 55
  %.sroa.9.sroa.6.0.copyload.i = load i8, ptr %.sroa.9.sroa.6.0..sroa.7.0..sroa_idx.i.sroa_idx.i, align 1, !noalias !2194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false), !noalias !2177
  %i.ee = add i64 %.sroa.6.0.copyload.i.i, %.sroa.0.0.ph51.i39.i
  br label %bb.ac

bb.ac:                                            ; preds = %.thread.i.thread.i, %.thread.i.i
  %.not50.i43.i = phi i1 [ true, %.thread.i.i ], [ false, %.thread.i.thread.i ]
  %.sroa.020.0.copyload.i41.i = phi ptr [ null, %.thread.i.i ], [ %.sroa.020.0.copyload.i40.i, %.thread.i.thread.i ]
  %.sroa.9.sroa.6.0.i = phi i8 [ undef, %.thread.i.i ], [ %.sroa.9.sroa.6.0.copyload.i, %.thread.i.thread.i ] ; 2 uses
  %.sroa.9.sroa.0.0.i = phi ptr [ undef, %.thread.i.i ], [ %.sroa.9.sroa.0.0.copyload.i, %.thread.i.thread.i ] ; 2 uses
  %.sroa.10.0.i = phi i64 [ undef, %.thread.i.i ], [ %.sroa.824.0.copyload.i.i, %.thread.i.thread.i ]
  %.sroa.8.0.i = phi i64 [ undef, %.thread.i.i ], [ %i.ee, %.thread.i.thread.i ]
  %.sroa.7.0.i = phi ptr [ undef, %.thread.i.i ], [ %.sroa.523.0.copyload.i.i, %.thread.i.thread.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  call void @llvm.experimental.noalias.scope.decl(metadata !2196)
  call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  call void @llvm.experimental.noalias.scope.decl(metadata !2198)
  call void @llvm.experimental.noalias.scope.decl(metadata !2199)
  %i.ef = load i64, ptr %.sroa.026.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2200, !noalias !2178, !noundef !11 ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %_RNvCsibhcYuwTAtB_13typst_realize25find_regex_match_in_elems.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = load ptr, ptr %.sroa.026.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2200, !noalias !2178, !nonnull !11, !align !13, !noundef !11
  %i.ei = load ptr, ptr %i.o, align 8, !alias.scope !2200, !noalias !2178, !nonnull !11, !noundef !11
  %i.ej = getelementptr i8, ptr %i.eh, i64 16
  %.val.i.i.i1.i.i.i.i = load ptr, ptr %i.ej, align 8, !noalias !2201, !nonnull !11, !noundef !11
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i.i.i, i64 32 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !2201, !nonnull !11, !noundef !11 ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.ei
  br i1 %i.em, label %bb.ae, label %_RNvCsibhcYuwTAtB_13typst_realize25find_regex_match_in_elems.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ef
  store ptr %i.en, ptr %i.ek, align 8, !noalias !2201
  br label %_RNvCsibhcYuwTAtB_13typst_realize25find_regex_match_in_elems.exit.i

bb.af:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  call void @llvm.experimental.noalias.scope.decl(metadata !2203)
  call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  %i.eo = load i64, ptr %.sroa.026.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2207, !noalias !2178, !noundef !11 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %common.resume, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eq = load ptr, ptr %.sroa.026.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2207, !noalias !2178, !nonnull !11, !align !13, !noundef !11
  %i.er = load ptr, ptr %i.o, align 8, !alias.scope !2207, !noalias !2178, !nonnull !11, !noundef !11
  %i.es = getelementptr i8, ptr %i.eq, i64 16
  %.val.i.i.i1.i.i72.i.i = load ptr, ptr %i.es, align 8, !noalias !2208, !nonnull !11, !noundef !11
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i72.i.i, i64 32 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !2208, !nonnull !11, !noundef !11 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.er
  br i1 %i.ev, label %bb.ah, label %common.resume

bb.ah:                                            ; preds = %bb.ag
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.eo
  store ptr %i.ew, ptr %i.et, align 8, !noalias !2208
  br label %common.resume

bb.ai:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %lpad.loopexit.i.i, %.loopexit.i.i ] ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsibhcYuwTAtB_13typst_realize10RegexMatchEEBZ_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.j) #31
          to label %bb.af unwind label %bb.aj, !noalias !2178

bb.aj:                                            ; preds = %bb.ai
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !2178
  unreachable

common.resume:                                    ; preds = %bb.bz, %bb.ca, %bb.cb, %bb.bf, %bb.bg, %bb.bh, %bb.af, %bb.ag, %bb.ah, %bb.au, %bb.av, %bb.aw, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %i.hh, %bb.bf ], [ %i.ft, %bb.au ], [ %.pn.i.i, %bb.af ], [ %.pn.i.i, %bb.ah ], [ %.pn.i.i, %bb.ag ], [ %eh.lpad-body.i, %.thread.i ], [ %i.ft, %bb.aw ], [ %i.ft, %bb.av ], [ %i.hh, %bb.bh ], [ %i.hh, %bb.bg ], [ %eh.lpad-body.ph, %bb.ca ], [ %eh.lpad-body.ph, %bb.cb ], [ %eh.lpad-body.ph, %bb.bz ]
  resume { ptr, i32 } %common.resume.op

_RNvCsibhcYuwTAtB_13typst_realize25find_regex_match_in_elems.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2177
  br i1 %.not50.i43.i, label %.thread, label %bb.al

.thread:                                          ; preds = %_RNvCsibhcYuwTAtB_13typst_realize25find_regex_match_in_elems.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.5.i)
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ez = load i32, ptr %i.ey, align 8, !noundef !11 ; 2 uses
  %.not.i19 = icmp eq i32 %i.ez, 0
  br i1 %.not.i19, label %.thread76, label %bb.bc

bb.ak:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %1, i64 noundef %i.t, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #27, !noalias !2177
  unreachable

bb.al:                                            ; preds = %_RNvCsibhcYuwTAtB_13typst_realize25find_regex_match_in_elems.exit.i
  invoke fastcc void @_RNvNtCsibhcYuwTAtB_13typst_realize6spaces15collapse_spaces(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q, i64 noundef %1)
          to label %bb.an unwind label %bb.am, !noalias !2175

bb.am:                                            ; preds = %bb.at, %bb.al
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.an:                                            ; preds = %bb.al
  %i.fb = load i64, ptr %i.s, align 8, !alias.scope !2174, !noalias !2175, !noundef !11 ; 5 uses
  %i.fc = icmp ugt i64 %1, %i.fb
  br i1 %i.fc, label %bb.at, label %bb.ao, !prof !12

bb.ao:                                            ; preds = %bb.an
  %i.fd = load ptr, ptr %i.r, align 8, !alias.scope !2174, !noalias !2175, !nonnull !11, !noundef !11
  %i.fe = sub nuw i64 %i.fb, %1                   ; 3 uses
  %i.ff = getelementptr inbounds nuw [32 x i8], ptr %i.fd, i64 %1
  %.val14.i = load ptr, ptr %i.y, align 8, !alias.scope !2174, !noalias !2175, !nonnull !11, !align !13, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2209
  %i.fg = getelementptr inbounds nuw i8, ptr %.val14.i, i64 112 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !noalias !2209
  %.sroa.4.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.fg, ptr %.sroa.4.0..sroa_idx.i16.i, align 8, !noalias !2209
  %.sroa.5.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2210)
  %.not.i.not.i.i = icmp eq i64 %i.fb, %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i17.i, i8 0, i64 16, i1 false), !noalias !2209
  br i1 %.not.i.not.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs2_NtNtCsaPYV88GQHqL_7bumpalo11collections7raw_vecINtB5_6RawVecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainEE25reserve_internal_or_panicCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef 0, i64 noundef range(i64 0, 288230376151711744) %i.fe, i1 noundef zeroext true) #33
          to label %.noexc.i18.i unwind label %bb.aq, !noalias !2209

.noexc.i18.i:                                     ; preds = %bb.ap
  %.pre.i.i19.i = load i64, ptr %i.fh, align 8, !alias.scope !2210, !noalias !2211
  %.pre.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2210, !noalias !2211
  %.sroa.631.0.copyload.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i16.i, align 8, !noalias !2212
  %.sroa.833.0.copyload.pre.i = load i64, ptr %.sroa.5.0..sroa_idx.i17.i, align 8, !noalias !2212
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2213)
  call void @llvm.experimental.noalias.scope.decl(metadata !2214)
  call void @llvm.experimental.noalias.scope.decl(metadata !2215)
  call void @llvm.experimental.noalias.scope.decl(metadata !2216)
  %i.fj = load i64, ptr %.sroa.5.0..sroa_idx.i17.i, align 8, !alias.scope !2217, !noalias !2209, !noundef !11 ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %.thread.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fl = load ptr, ptr %.sroa.4.0..sroa_idx.i16.i, align 8, !alias.scope !2217, !noalias !2209, !nonnull !11, !align !13, !noundef !11
  %i.fm = load ptr, ptr %i.e, align 8, !alias.scope !2217, !noalias !2209, !nonnull !11, !noundef !11
  %i.fn = getelementptr i8, ptr %i.fl, i64 16
  %.val.i.i.i1.i.i.i = load ptr, ptr %i.fn, align 8, !noalias !2218, !nonnull !11, !noundef !11
  %i.fo = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i.i, i64 32 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !2218, !nonnull !11, !noundef !11 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.fm
  br i1 %i.fq, label %bb.as, label %.thread.i

bb.as:                                            ; preds = %bb.ar
  %i.fr = shl i64 %i.fj, 5
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fr
  store ptr %i.fs, ptr %i.fo, align 8, !noalias !2218
  br label %.thread.i

bb.at:                                            ; preds = %bb.an
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %1, i64 noundef %i.fb, i64 noundef %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #30
          to label %bb.bb unwind label %bb.am, !noalias !2177

bb.au:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit.i
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fu = icmp eq i64 %.sroa.833.0.copyload.i, 0
  br i1 %i.fu, label %common.resume, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.631.0.copyload.i) ]
  %i.fv = getelementptr i8, ptr %.sroa.631.0.copyload.i, i64 16
  %.val.i.i.i1.i.i = load ptr, ptr %i.fv, align 8, !noalias !2219, !nonnull !11, !noundef !11
  %i.fw = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i, i64 32 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !2219, !nonnull !11, !noundef !11 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %.sroa.028.0.copyload.i
  br i1 %i.fy, label %bb.aw, label %common.resume

bb.aw:                                            ; preds = %bb.av
  %i.fz = shl i64 %.sroa.833.0.copyload.i, 5
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fz
  store ptr %i.ga, ptr %i.fw, align 8, !noalias !2219
  br label %common.resume

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %.noexc.i18.i, %bb.ao
  %.sroa.833.0.copyload.i = phi i64 [ 0, %bb.ao ], [ %.sroa.833.0.copyload.pre.i, %.noexc.i18.i ] ; 4 uses
  %.sroa.631.0.copyload.i = phi ptr [ %i.fg, %bb.ao ], [ %.sroa.631.0.copyload.pre.i, %.noexc.i18.i ] ; 4 uses
  %.sroa.028.0.copyload.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ao ], [ %.pre.i.i, %.noexc.i18.i ] ; 5 uses
  %i.gb = phi i64 [ 0, %bb.ao ], [ %.pre.i.i19.i, %.noexc.i18.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.028.0.copyload.i) ]
  %i.gc = getelementptr inbounds nuw [32 x i8], ptr %.sroa.028.0.copyload.i, i64 %i.gb
  %i.gd = shl nuw nsw i64 %i.fe, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gc, ptr nonnull readonly align 8 %i.ff, i64 %i.gd, i1 false), !noalias !2220
  %i.ge = add i64 %i.gb, %i.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2209
  store i64 %1, ptr %i.s, align 8, !alias.scope !2221, !noalias !2175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2177
  store ptr %.sroa.020.0.copyload.i41.i, ptr %i.p, align 8, !noalias !2177
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !2177
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %.sroa.7.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2177
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 %.sroa.8.0.i, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !2177
  %.sroa.724.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %.sroa.9.sroa.0.0.i, ptr %.sroa.724.0..sroa_idx.i, align 8, !noalias !2177
  %.sroa.925.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.925.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.9.sroa.5.i, i64 7, i1 false), !noalias !2177
  %.sroa.926.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 55
  store i8 %.sroa.9.sroa.6.0.i, ptr %.sroa.926.0..sroa_idx.i, align 1, !noalias !2177
  %.sroa.1027.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store i64 %.sroa.10.0.i, ptr %.sroa.1027.0..sroa_idx.i, align 8, !noalias !2177
  %i.gf = invoke fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize17visit_regex_match(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.028.0.copyload.i, i64 noundef %i.ge, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(64) %i.p)
          to label %bb.ax unwind label %bb.au, !noalias !2175 ; 2 uses

bb.ax:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit.i
  %i.gg = extractvalue { ptr, i64 } %i.gf, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2177
  %.not11.i = icmp eq ptr %i.gg, null
  %i.gh = extractvalue { ptr, i64 } %i.gf, 1
  %i.gi = icmp eq i64 %.sroa.833.0.copyload.i, 0
  br i1 %i.gi, label %_RNvCsibhcYuwTAtB_13typst_realize13visit_textual.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.631.0.copyload.i) ]
  %i.gj = getelementptr i8, ptr %.sroa.631.0.copyload.i, i64 16
  %.val.i.i.i1.i20.i = load ptr, ptr %i.gj, align 8, !noalias !2222, !nonnull !11, !noundef !11
  %i.gk = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i20.i, i64 32 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !noalias !2222, !nonnull !11, !noundef !11 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %.sroa.028.0.copyload.i
  br i1 %i.gm, label %bb.az, label %_RNvCsibhcYuwTAtB_13typst_realize13visit_textual.exit

bb.az:                                            ; preds = %bb.ay
  %i.gn = shl i64 %.sroa.833.0.copyload.i, 5
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gn
  store ptr %i.go, ptr %i.gk, align 8, !noalias !2222
  br label %_RNvCsibhcYuwTAtB_13typst_realize13visit_textual.exit

bb.ba:                                            ; preds = %.thread.i
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !2177
  unreachable

bb.bb:                                            ; preds = %bb.at
  unreachable

.thread.i:                                        ; preds = %bb.as, %bb.ar, %bb.aq, %bb.am
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fa, %bb.am ], [ %i.fi, %bb.as ], [ %i.fi, %bb.ar ], [ %i.fi, %bb.aq ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsibhcYuwTAtB_13typst_realize10RegexMatchEBD_(ptr %.sroa.9.sroa.0.0.i, i8 %.sroa.9.sroa.6.0.i) #31
          to label %common.resume unwind label %bb.ba, !noalias !2177

_RNvCsibhcYuwTAtB_13typst_realize13visit_textual.exit: ; preds = %bb.ax, %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.5.i)
  %spec.select = select i1 %.not11.i, i64 undef, i64 %i.gh
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit

bb.bc:                                            ; preds = %.thread
  %i.gq = zext i32 %i.ez to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.gs = getelementptr [24 x i8], ptr %i.gr, i64 %i.gq ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !alias.scope !2223, !nonnull !11, !align !13, !noundef !11
  %i.gv = icmp eq ptr %i.gu, @_RNvCsibhcYuwTAtB_13typst_realize3PAR
  br i1 %i.gv, label %_RNvCsibhcYuwTAtB_13typst_realize19in_non_par_grouping.exit, label %_RNvCsibhcYuwTAtB_13typst_realize19in_non_par_grouping.exit.thread

_RNvCsibhcYuwTAtB_13typst_realize19in_non_par_grouping.exit: ; preds = %bb.bc
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gx = load i8, ptr %i.gw, align 8, !range !18, !alias.scope !2223, !noundef !11
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %_RNvCsibhcYuwTAtB_13typst_realize19in_non_par_grouping.exit.thread, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBM_6styles10StyleChainEE16extend_desugaredINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec8IntoIterBG_EECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread.i, %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i.i.i5.i
  %.pr.pre = load i32, ptr %i.ey, align 8
  %i.gz = icmp eq i32 %.pr.pre, 0
  br i1 %i.gz, label %.thread76, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit

_RNvCsibhcYuwTAtB_13typst_realize19in_non_par_grouping.exit.thread: ; preds = %bb.bc, %_RNvCsibhcYuwTAtB_13typst_realize19in_non_par_grouping.exit
  %i.ha = load i64, ptr %i.s, align 8, !noundef !11 ; 5 uses
  %i.hb = icmp ugt i64 %1, %i.ha
  br i1 %i.hb, label %bb.bj, label %bb.bd, !prof !12

bb.bd:                                            ; preds = %_RNvCsibhcYuwTAtB_13typst_realize19in_non_par_grouping.exit.thread
  %i.hc = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11
  %i.hd = sub nuw i64 %i.ha, %1                   ; 3 uses
  %i.he = getelementptr inbounds nuw [32 x i8], ptr %i.hc, i64 %1
  %.val = load ptr, ptr %i.y, align 8, !nonnull !11, !align !13, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2224
  %i.hf = getelementptr inbounds nuw i8, ptr %.val, i64 112 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8, !noalias !2224
  %.sroa.4.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.hf, ptr %.sroa.4.0..sroa_idx.i20, align 8, !noalias !2224
  %.sroa.5.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2225)
  %.not.i.not.i = icmp eq i64 %i.ha, %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i21, i8 0, i64 16, i1 false), !noalias !2224
  br i1 %.not.i.not.i, label %_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State11store_slice.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvMs2_NtNtCsaPYV88GQHqL_7bumpalo11collections7raw_vecINtB5_6RawVecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainEE25reserve_internal_or_panicCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 0, i64 noundef range(i64 0, 288230376151711744) %i.hd, i1 noundef zeroext true) #33
          to label %.noexc.i unwind label %bb.bf, !noalias !2224

.noexc.i:                                         ; preds = %bb.be
  %.pre.i.i23 = load i64, ptr %i.hg, align 8, !alias.scope !2225, !noalias !2226
  %.pre.i = load ptr, ptr %i.d, align 8, !alias.scope !2225, !noalias !2226
  %.sroa.7.0.copyload.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i20, align 8, !noalias !2227
  %.sroa.9.0.copyload.pre = load i64, ptr %.sroa.5.0..sroa_idx.i21, align 8, !noalias !2227
  br label %_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State11store_slice.exit

bb.bf:                                            ; preds = %bb.be
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2228)
  call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  call void @llvm.experimental.noalias.scope.decl(metadata !2230)
  call void @llvm.experimental.noalias.scope.decl(metadata !2231)
  %i.hi = load i64, ptr %.sroa.5.0..sroa_idx.i21, align 8, !alias.scope !2232, !noalias !2224, !noundef !11 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %common.resume, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hk = load ptr, ptr %.sroa.4.0..sroa_idx.i20, align 8, !alias.scope !2232, !noalias !2224, !nonnull !11, !align !13, !noundef !11
  %i.hl = load ptr, ptr %i.d, align 8, !alias.scope !2232, !noalias !2224, !nonnull !11, !noundef !11
  %i.hm = getelementptr i8, ptr %i.hk, i64 16
  %.val.i.i.i1.i.i22 = load ptr, ptr %i.hm, align 8, !noalias !2233, !nonnull !11, !noundef !11
  %i.hn = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i22, i64 32 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !2233, !nonnull !11, !noundef !11 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.hl
  br i1 %i.hp, label %bb.bh, label %common.resume

bb.bh:                                            ; preds = %bb.bg
  %i.hq = shl i64 %i.hi, 5
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hq
  store ptr %i.hr, ptr %i.hn, align 8, !noalias !2233
  br label %common.resume

_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State11store_slice.exit: ; preds = %bb.bd, %.noexc.i
  %.sroa.9.0.copyload = phi i64 [ 0, %bb.bd ], [ %.sroa.9.0.copyload.pre, %.noexc.i ] ; 4 uses
  %.sroa.7.0.copyload = phi ptr [ %i.hf, %bb.bd ], [ %.sroa.7.0.copyload.pre, %.noexc.i ] ; 4 uses
  %.sroa.044.0.copyload = phi ptr [ inttoptr (i64 8 to ptr), %bb.bd ], [ %.pre.i, %.noexc.i ] ; 9 uses
  %i.hs = phi i64 [ 0, %bb.bd ], [ %.pre.i.i23, %.noexc.i ] ; 2 uses
  %i.ht = getelementptr inbounds nuw [32 x i8], ptr %.sroa.044.0.copyload, i64 %i.hs
  %i.hu = shl nuw nsw i64 %i.hd, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ht, ptr nonnull readonly align 8 %i.he, i64 %i.hu, i1 false), !noalias !2234
  %i.hv = add i64 %i.hs, %i.hd                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2224
  %i.hw = load i64, ptr %i.s, align 8, !alias.scope !2235, !noundef !11
  %i.hx = icmp ugt i64 %1, %i.hw
  br i1 %i.hx, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit, label %bb.bi

bb.bi:                                            ; preds = %_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State11store_slice.exit
  store i64 %1, ptr %i.s, align 8, !alias.scope !2235
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit

bb.bj:                                            ; preds = %_RNvCsibhcYuwTAtB_13typst_realize19in_non_par_grouping.exit.thread
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %1, i64 noundef %i.ha, i64 noundef %i.ha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #27
  unreachable

.loopexit:                                        ; preds = %_RNvYNvCsibhcYuwTAtB_13typst_realize19in_non_par_groupingINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTQNtB4_5StateEE8call_mutB4_.exit.thread.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

.loopexit.split-lp:                               ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.bi, %_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State11store_slice.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bm, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit
  %.sroa.01.0.i = phi i32 [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit ], [ %i.ij, %bb.bm ]
  %i.hy = load i32, ptr %i.ey, align 8, !alias.scope !2237, !noundef !11 ; 2 uses
  %.not.i.i.i24 = icmp eq i32 %i.hy, 0
  br i1 %.not.i.i.i24, label %.thread83, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr [24 x i8], ptr %i.gr, i64 %i.hz ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !alias.scope !2237, !nonnull !11, !align !13, !noundef !11
  %i.id = icmp eq ptr %i.ic, @_RNvCsibhcYuwTAtB_13typst_realize3PAR
  br i1 %i.id, label %_RNvYNvCsibhcYuwTAtB_13typst_realize19in_non_par_groupingINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTQNtB4_5StateEE8call_mutB4_.exit.i, label %_RNvYNvCsibhcYuwTAtB_13typst_realize19in_non_par_groupingINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTQNtB4_5StateEE8call_mutB4_.exit.thread.i

_RNvYNvCsibhcYuwTAtB_13typst_realize19in_non_par_groupingINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTQNtB4_5StateEE8call_mutB4_.exit.i: ; preds = %bb.bl
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.if = load i8, ptr %i.ie, align 8, !range !18, !alias.scope !2237, !noundef !11
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %_RNvYNvCsibhcYuwTAtB_13typst_realize19in_non_par_groupingINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTQNtB4_5StateEE8call_mutB4_.exit.thread.i, label %.thread83

_RNvYNvCsibhcYuwTAtB_13typst_realize19in_non_par_groupingINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTQNtB4_5StateEE8call_mutB4_.exit.thread.i: ; preds = %_RNvYNvCsibhcYuwTAtB_13typst_realize19in_non_par_groupingINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTQNtB4_5StateEE8call_mutB4_.exit.i, %bb.bl
  %i.ih = invoke fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize25finish_innermost_grouping(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %_RNvYNvCsibhcYuwTAtB_13typst_realize19in_non_par_groupingINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTQNtB4_5StateEE8call_mutB4_.exit.thread.i
  %i.ii = extractvalue { ptr, i64 } %i.ih, 0      ; 2 uses
  %.not.i25 = icmp eq ptr %i.ii, null
  br i1 %.not.i25, label %bb.bm, label %.thread87

bb.bm:                                            ; preds = %.noexc
  %i.ij = add nuw nsw i32 %.sroa.01.0.i, 1        ; 2 uses
  %exitcond.i = icmp eq i32 %i.ij, 513
  br i1 %exitcond.i, label %bb.bn, label %bb.bk

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2236
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !2236
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 -128, ptr %.sroa.413.0..sroa_idx.i, align 1, !noalias !2236
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 31)
          to label %bb.bp unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #31
          to label %bb.bz unwind label %bb.bs

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !2236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2236
  %i.il = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) 1)
          to label %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i unwind label %bb.br, !noalias !2238 ; 2 uses

bb.bq:                                            ; preds = %bb.br
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !2238
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.b) #31
          to label %bb.bz unwind label %bb.bq, !noalias !2239

_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.bp
  %i.io = extractvalue { i64, i64 } %i.il, 1
  %i.ip = extractvalue { i64, i64 } %i.il, 0
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !2236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2236
  store i64 %i.ip, ptr %i.c, align 8, !noalias !2236
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.io, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !2236
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !2236
  %.sroa.4.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx.i29, align 8, !noalias !2236
  %.sroa.5.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.5.0..sroa_idx.i30, align 8, !noalias !2236
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2236
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2236
  %i.iq = invoke fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.c)
          to label %bb.bt unwind label %.loopexit.split-lp ; 2 uses

bb.bs:                                            ; preds = %bb.bo
  %i.ir = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.bt:                                            ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i
  %i.is = extractvalue { ptr, i64 } %i.iq, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2236
  %.not18 = icmp eq ptr %i.is, null
  br i1 %.not18, label %.thread83, label %.thread87

.thread87:                                        ; preds = %.noexc, %bb.bt
  %.pn = phi { ptr, i64 } [ %i.iq, %bb.bt ], [ %i.ih, %.noexc ]
  %.sroa.0.1.i92 = phi ptr [ %i.is, %bb.bt ], [ %i.ii, %.noexc ] ; 3 uses
  %.sroa.4.1.i93 = extractvalue { ptr, i64 } %.pn, 1 ; 3 uses
  %i.it = icmp eq i64 %.sroa.9.0.copyload, 0
  br i1 %i.it, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit, label %bb.bu

bb.bu:                                            ; preds = %.thread87
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload), "nonnull"(ptr %.sroa.044.0.copyload) ]
  %i.iu = getelementptr i8, ptr %.sroa.7.0.copyload, i64 16
  %.val.i.i.i1.i = load ptr, ptr %i.iu, align 8, !noalias !2240, !nonnull !11, !noundef !11
  %i.iv = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i, i64 32 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !noalias !2240, !nonnull !11, !noundef !11 ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %.sroa.044.0.copyload
  br i1 %i.ix, label %bb.bv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit

bb.bv:                                            ; preds = %bb.bu
  %i.iy = shl i64 %.sroa.9.0.copyload, 5
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.iy
  store ptr %i.iz, ptr %i.iv, align 8, !noalias !2240
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit

.thread83:                                        ; preds = %bb.bk, %_RNvYNvCsibhcYuwTAtB_13typst_realize19in_non_par_groupingINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTQNtB4_5StateEE8call_mutB4_.exit.i, %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.044.0.copyload) ]
  %i.ja = load i64, ptr %i.s, align 8, !noundef !11 ; 3 uses
  %i.jb = icmp ult i64 %i.ja, 288230376151711744
  call void @llvm.assume(i1 %i.jb)
  %.idx = shl nuw nsw i64 %i.hv, 5
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.044.0.copyload, i64 %.idx ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2241)
  %i.jd = icmp eq i64 %i.hv, 0
  br i1 %i.jd, label %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread.i.preheader, label %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.lr.ph.i

_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread.i.preheader: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE7reserveCsibhcYuwTAtB_13typst_realize.exit.i, %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i, %.thread83
  %.ph = phi ptr [ %.sroa.044.0.copyload, %.thread83 ], [ %i.jg, %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.jg, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE7reserveCsibhcYuwTAtB_13typst_realize.exit.i ]
  br label %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread.i

_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.lr.ph.i: ; preds = %.thread83
  %i.je = ptrtoint ptr %i.jc to i64
  br label %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i

_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE7reserveCsibhcYuwTAtB_13typst_realize.exit.i, %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.lr.ph.i
  %i.jf = phi i64 [ %i.ja, %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.lr.ph.i ], [ %i.jp, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE7reserveCsibhcYuwTAtB_13typst_realize.exit.i ] ; 5 uses
  %.sroa.0.023.i = phi ptr [ %.sroa.044.0.copyload, %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.lr.ph.i ], [ %i.jg, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE7reserveCsibhcYuwTAtB_13typst_realize.exit.i ] ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i, i64 32 ; 5 uses
  %.sroa.011.0.copyload12.i = load ptr, ptr %.sroa.0.023.i, align 8, !noalias !2242 ; 2 uses
  %.not.i32 = icmp eq ptr %.sroa.011.0.copyload12.i, null
  br i1 %.not.i32, label %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread.i.preheader, label %bb.bw

bb.bw:                                            ; preds = %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i
  %.sroa.7.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa.0.0..sroa_idx.i, i64 24, i1 false), !noalias !2241
  %i.jh = icmp samesign ult i64 %i.jf, 288230376151711744
  call void @llvm.assume(i1 %i.jh)
  %i.ji = load i64, ptr %i.q, align 8, !range !16, !alias.scope !2241, !noundef !11
  %i.jj = icmp eq i64 %i.jf, %i.ji
  br i1 %i.jj, label %bb.bx, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE7reserveCsibhcYuwTAtB_13typst_realize.exit.i

_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread.i: ; preds = %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread.i.preheader, %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i.i.i5.i
  %i.jk = phi ptr [ %i.jm, %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i.i.i5.i ], [ %.ph, %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread.i.preheader ] ; 3 uses
  %i.jl = icmp eq ptr %i.jk, %i.jc
  br i1 %i.jl, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBM_6styles10StyleChainEE16extend_desugaredINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec8IntoIterBG_EECsibhcYuwTAtB_13typst_realize.exit, label %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i.i.i5.i

_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i.i.i5.i: ; preds = %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %.sroa.0.0.copyload1.i.i.i6.i = load ptr, ptr %i.jk, align 8, !noalias !2243
  %.not.i.i.i7.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i6.i, null
  br i1 %.not.i.i.i7.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBM_6styles10StyleChainEE16extend_desugaredINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec8IntoIterBG_EECsibhcYuwTAtB_13typst_realize.exit, label %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE7reserveCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.bx, %bb.bw
  %i.jn = load ptr, ptr %i.r, align 8, !alias.scope !2241, !nonnull !11, !noundef !11
  %i.jo = getelementptr inbounds nuw [32 x i8], ptr %i.jn, i64 %i.jf ; 2 uses
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.417.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, i64 24, i1 false), !noalias !2241
  store ptr %.sroa.011.0.copyload12.i, ptr %i.jo, align 8, !noalias !2241
  %i.jp = add nuw nsw i64 %i.jf, 1                ; 2 uses
  store i64 %i.jp, ptr %i.s, align 8, !alias.scope !2241
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %i.jq = icmp eq ptr %i.jg, %i.jc
  br i1 %i.jq, label %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread.i.preheader, label %_RNvXsz_NtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB5_8IntoIterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB17_6styles10StyleChainEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i

bb.bx:                                            ; preds = %bb.bw
  %i.jr = ptrtoint ptr %i.jg to i64
  %i.js = sub i64 %i.je, %i.jr
  %i.jt = sdiv i64 %i.js, 32
  %i.ju = call i64 @llvm.uadd.sat.i64(i64 %i.jt, i64 1)
  call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.jf, i64 noundef %i.ju, i64 noundef 32)
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE7reserveCsibhcYuwTAtB_13typst_realize.exit.i

.thread76:                                        ; preds = %.thread, %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBM_6styles10StyleChainEE16extend_desugaredINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec8IntoIterBG_EECsibhcYuwTAtB_13typst_realize.exit
  %.sroa.08.078 = phi i64 [ %i.ja, %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBM_6styles10StyleChainEE16extend_desugaredINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec8IntoIterBG_EECsibhcYuwTAtB_13typst_realize.exit ], [ %1, %.thread ]
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jw = load ptr, ptr %i.jv, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.jy = load i64, ptr %i.jx, align 8, !noundef !11 ; 2 uses
  %.idx315 = shl nuw nsw i64 %i.jy, 3
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx315
  %.not.not.not.i.not314 = icmp eq i64 %i.jy, 0
  br i1 %.not.not.not.i.not314, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

bb.by:                                            ; preds = %.lr.ph
  %i.ka = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.ka, %i.jz
  br i1 %.not.not.not.i.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.thread76, %bb.by
  %i.kb = phi ptr [ %i.ka, %bb.by ], [ %i.jw, %.thread76 ] ; 2 uses
  %.val.i = load ptr, ptr %i.kb, align 8, !noalias !2244, !nonnull !11, !align !13, !noundef !11
  %i.kc = icmp eq ptr %.val.i, @_RNvCsibhcYuwTAtB_13typst_realize3PAR
  br i1 %i.kc, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuINtNtCs4Q1BBFz20BJ_8arrayvec6errors13CapacityErrorNtCsibhcYuwTAtB_13typst_realize8GroupingEE6unwrapB1y_.exit, label %bb.by

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuINtNtCs4Q1BBFz20BJ_8arrayvec6errors13CapacityErrorNtCsibhcYuwTAtB_13typst_realize8GroupingEE6unwrapB1y_.exit: ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !2245)
  call void @llvm.experimental.noalias.scope.decl(metadata !2246)
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.08.078, ptr %i.kd, align 8, !alias.scope !2247, !noalias !2248
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr @_RNvCsibhcYuwTAtB_13typst_realize3PAR, ptr %.sroa.5.0..sroa_idx53, align 8, !alias.scope !2247, !noalias !2248
  %.sroa.655.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %.sroa.655.0..sroa_idx56, align 8, !alias.scope !2247, !noalias !2248
  %.sroa.758.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 0, ptr %.sroa.758.0..sroa_idx59, align 1, !alias.scope !2247, !noalias !2248
  store i32 1, ptr %i.ey, align 8, !alias.scope !2249, !noalias !2250
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.by, %_RNvCsibhcYuwTAtB_13typst_realize13visit_textual.exit, %.thread76, %_RNvCsibhcYuwTAtB_13typst_realize19in_non_par_grouping.exit, %bb.bv, %bb.bu, %.thread87, %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBM_6styles10StyleChainEE16extend_desugaredINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec8IntoIterBG_EECsibhcYuwTAtB_13typst_realize.exit, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuINtNtCs4Q1BBFz20BJ_8arrayvec6errors13CapacityErrorNtCsibhcYuwTAtB_13typst_realize8GroupingEE6unwrapB1y_.exit
  %.sroa.5.0 = phi i64 [ undef, %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBM_6styles10StyleChainEE16extend_desugaredINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec8IntoIterBG_EECsibhcYuwTAtB_13typst_realize.exit ], [ undef, %.thread76 ], [ %spec.select, %_RNvCsibhcYuwTAtB_13typst_realize13visit_textual.exit ], [ undef, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuINtNtCs4Q1BBFz20BJ_8arrayvec6errors13CapacityErrorNtCsibhcYuwTAtB_13typst_realize8GroupingEE6unwrapB1y_.exit ], [ %.sroa.4.1.i93, %bb.bv ], [ %.sroa.4.1.i93, %.thread87 ], [ %.sroa.4.1.i93, %bb.bu ], [ undef, %_RNvCsibhcYuwTAtB_13typst_realize19in_non_par_grouping.exit ], [ undef, %bb.by ]
  %.sroa.0.0 = phi ptr [ null, %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBM_6styles10StyleChainEE16extend_desugaredINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec8IntoIterBG_EECsibhcYuwTAtB_13typst_realize.exit ], [ null, %.thread76 ], [ %i.gg, %_RNvCsibhcYuwTAtB_13typst_realize13visit_textual.exit ], [ null, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuINtNtCs4Q1BBFz20BJ_8arrayvec6errors13CapacityErrorNtCsibhcYuwTAtB_13typst_realize8GroupingEE6unwrapB1y_.exit ], [ %.sroa.0.1.i92, %bb.bv ], [ %.sroa.0.1.i92, %.thread87 ], [ %.sroa.0.1.i92, %bb.bu ], [ null, %_RNvCsibhcYuwTAtB_13typst_realize19in_non_par_grouping.exit ], [ null, %bb.by ]
  %i.ke = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.kf = insertvalue { ptr, i64 } %i.ke, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.kf

bb.bz:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.br, %bb.bo
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.ik, %bb.bo ], [ %i.in, %bb.br ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  %i.kg = icmp eq i64 %.sroa.9.0.copyload, 0
  br i1 %i.kg, label %common.resume, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload), "nonnull"(ptr %.sroa.044.0.copyload) ]
  %i.kh = getelementptr i8, ptr %.sroa.7.0.copyload, i64 16
  %.val.i.i.i1.i38 = load ptr, ptr %i.kh, align 8, !noalias !2251, !nonnull !11, !noundef !11
  %i.ki = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i38, i64 32 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !noalias !2251, !nonnull !11, !noundef !11 ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %.sroa.044.0.copyload
  br i1 %i.kk, label %bb.cb, label %common.resume

bb.cb:                                            ; preds = %bb.ca
  %i.kl = shl i64 %.sroa.9.0.copyload, 5
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.kl
  store ptr %i.km, ptr %i.ki, align 8, !noalias !2251
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize15finish_grouping(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !11 ; 4 uses
  %i.l = icmp ugt i64 %2, %i.k
  br i1 %i.l, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.i, align 8, !nonnull !11, !noundef !11
  %i.n = sub nuw i64 %i.k, %2                     ; 3 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2546)
  %i.p = load ptr, ptr %1, align 8, !alias.scope !2546, !noalias !2545, !nonnull !11
  %.not.i634 = icmp eq i64 %i.n, 0
  br i1 %.not.i634, label %_RINvXs1_Cs6xpQEr8gLsQ_11typst_utilsSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBE_6styles10StyleChainEINtB6_8SliceExtBy_E16trim_end_matchesNCNvCsibhcYuwTAtB_13typst_realize15finish_grouping0EB2I_.exit, label %.lr.ph636

bb.c:                                             ; preds = %.lr.ph636
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %_RINvXs1_Cs6xpQEr8gLsQ_11typst_utilsSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBE_6styles10StyleChainEINtB6_8SliceExtBy_E16trim_end_matchesNCNvCsibhcYuwTAtB_13typst_realize15finish_grouping0EB2I_.exit, label %.lr.ph636

.lr.ph636:                                        ; preds = %bb.b, %bb.c
  %.sroa.0.0.i635 = phi i64 [ %i.q, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = add nsw i64 %.sroa.0.0.i635, -1          ; 4 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.q
  %.val11.i = load ptr, ptr %i.r, align 8, !alias.scope !2545, !noalias !2546, !nonnull !11, !align !13, !noundef !11
  %i.s = tail call noundef i8 %i.p(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val11.i), !noalias !2547, !inline_history !2255
  %.not12.i = icmp eq i8 %i.s, 0
  br i1 %.not12.i, label %_RINvXs1_Cs6xpQEr8gLsQ_11typst_utilsSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBE_6styles10StyleChainEINtB6_8SliceExtBy_E16trim_end_matchesNCNvCsibhcYuwTAtB_13typst_realize15finish_grouping0EB2I_.exit, label %bb.c

_RINvXs1_Cs6xpQEr8gLsQ_11typst_utilsSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBE_6styles10StyleChainEINtB6_8SliceExtBy_E16trim_end_matchesNCNvCsibhcYuwTAtB_13typst_realize15finish_grouping0EB2I_.exit: ; preds = %.lr.ph636, %bb.c, %bb.b
  %.sroa.0.0.i.lcssa = phi i64 [ %i.n, %bb.b ], [ %.sroa.0.0.i635, %.lr.ph636 ], [ %i.q, %bb.c ] ; 2 uses
  %i.t = add i64 %.sroa.0.0.i.lcssa, %2           ; 15 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.v = load i8, ptr %i.u, align 1, !range !18, !noundef !11
  %i.w = trunc nuw i8 %i.v to i1                  ; 2 uses
  br i1 %i.w, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit201

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %2, i64 noundef %i.k, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit201: ; preds = %bb.bw, %bb.bv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit199, %_RINvXs1_Cs6xpQEr8gLsQ_11typst_utilsSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBE_6styles10StyleChainEINtB6_8SliceExtBy_E16trim_end_matchesNCNvCsibhcYuwTAtB_13typst_realize15finish_grouping0EB2I_.exit
  %.sroa.010.0 = phi i64 [ %i.t, %_RINvXs1_Cs6xpQEr8gLsQ_11typst_utilsSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBE_6styles10StyleChainEINtB6_8SliceExtBy_E16trim_end_matchesNCNvCsibhcYuwTAtB_13typst_realize15finish_grouping0EB2I_.exit ], [ %.sroa.010.1.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit199 ], [ %.sroa.010.1.ph, %bb.bv ], [ %.sroa.010.1.ph, %bb.bw ] ; 10 uses
  %.sroa.0.0 = phi i64 [ %2, %_RINvXs1_Cs6xpQEr8gLsQ_11typst_utilsSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBE_6styles10StyleChainEINtB6_8SliceExtBy_E16trim_end_matchesNCNvCsibhcYuwTAtB_13typst_realize15finish_grouping0EB2I_.exit ], [ %.sroa.0.1.lcssa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit199 ], [ %.sroa.0.1.lcssa, %bb.bv ], [ %.sroa.0.1.lcssa, %bb.bw ] ; 5 uses
  %i.x = load i64, ptr %i.j, align 8, !noundef !11 ; 5 uses
  %i.y = icmp ugt i64 %.sroa.010.0, %i.x
  br i1 %i.y, label %bb.cd, label %bb.bx, !prof !12

bb.e:                                             ; preds = %_RINvXs1_Cs6xpQEr8gLsQ_11typst_utilsSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBE_6styles10StyleChainEINtB6_8SliceExtBy_E16trim_end_matchesNCNvCsibhcYuwTAtB_13typst_realize15finish_grouping0EB2I_.exit
  %i.z = icmp eq ptr %1, @_RNvCsibhcYuwTAtB_13typst_realize3PAR
  %.pre = load i64, ptr %i.j, align 8             ; 12 uses
  br i1 %i.z, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  %i.aa = icmp ult i64 %.pre, 288230376151711744
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp ugt i64 %i.t, %.pre
  br i1 %i.ab, label %bb.g, label %_RINvMNtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB3_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB13_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0E3newINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEB2x_.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.t, i64 noundef range(i64 0, 576460752303423488) %.pre, i64 noundef range(i64 0, 576460752303423488) %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #27, !noalias !2549
  unreachable

_RINvMNtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB3_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB13_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0E3newINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEB2x_.exit: ; preds = %bb.f
  store i64 0, ptr %i.j, align 8, !alias.scope !2548, !noalias !2550
  %i.ac = icmp ult i64 %i.t, %.pre
  br i1 %i.ac, label %.lr.ph.i, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB4_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB14_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2y_.exit.thread

bb.h:                                             ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec10extract_if9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1y_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0EEB32_.exit111
  %i.ad = phi i64 [ %.pre, %bb.e ], [ %i.bf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec10extract_if9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1y_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0EEB32_.exit111 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !11, !align !13, !noundef !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 112 ; 5 uses
  %.not73 = icmp ugt i64 %2, %i.ad
  br i1 %.not73, label %bb.m, label %bb.n, !prof !19

.lr.ph.i:                                         ; preds = %_RINvMNtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB3_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB13_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0E3newINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEB2x_.exit, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB4_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB14_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2y_.exit
  %.sroa.6.0640 = phi i64 [ %.us-phi.i, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB4_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB14_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2y_.exit ], [ %i.t, %_RINvMNtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB3_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB13_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0E3newINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEB2x_.exit ] ; 2 uses
  %.sroa.14.0639 = phi i64 [ %i.ax, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB4_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB14_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2y_.exit ], [ 0, %_RINvMNtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB3_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB13_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0E3newINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEB2x_.exit ] ; 4 uses
  %.not.i105 = icmp eq i64 %.sroa.14.0639, 0
  br i1 %.not.i105, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.ah = load ptr, ptr %i.i, align 8, !noalias !2551, !nonnull !11, !noundef !11
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.split.us.i
  %i.ai = phi i64 [ %.sroa.6.0640, %.lr.ph.split.us.i ], [ %i.an, %bb.j ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ai
  %.val.us.i = load ptr, ptr %i.aj, align 8, !noalias !2552
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.us.i, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !2551, !nonnull !11, !align !13, !noundef !11
  %i.am = icmp eq ptr %i.al, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4text5space1__NtB9_9SpaceElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  %i.an = add nuw nsw i64 %i.ai, 1                ; 3 uses
  br i1 %i.am, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB4_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB14_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2y_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %exitcond15.not.i = icmp eq i64 %i.an, %.pre
  br i1 %exitcond15.not.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec10extract_if9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1y_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0EEB32_.exit111, label %bb.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.k
  %i.ao = phi i64 [ %i.au, %bb.k ], [ %.sroa.6.0640, %.lr.ph.i ] ; 3 uses
  %i.ap = load ptr, ptr %i.i, align 8, !noalias !2551, !nonnull !11, !noundef !11 ; 2 uses
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %.val.i = load ptr, ptr %i.aq, align 8, !noalias !2552
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !2551, !nonnull !11, !align !13, !noundef !11
  %i.at = icmp eq ptr %i.as, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4text5space1__NtB9_9SpaceElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  %i.au = add nuw nsw i64 %i.ao, 1                ; 3 uses
  br i1 %i.at, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB4_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB14_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2y_.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.i
  %i.av = sub i64 %i.ao, %.sroa.14.0639
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false), !noalias !2551
  %exitcond.not.i = icmp eq i64 %i.au, %.pre
  br i1 %exitcond.not.i, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB4_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB14_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2y_.exit.thread, label %.lr.ph.split.i

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB4_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB14_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2y_.exit: ; preds = %.lr.ph.split.i, %bb.i
  %.us-phi.i = phi i64 [ %i.an, %bb.i ], [ %i.au, %.lr.ph.split.i ] ; 3 uses
  %i.ax = add i64 %.sroa.14.0639, 1               ; 2 uses
  %i.ay = icmp ult i64 %.us-phi.i, %.pre
  br i1 %i.ay, label %.lr.ph.i, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB4_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB14_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2y_.exit.thread

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB4_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB14_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2y_.exit.thread: ; preds = %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB4_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB14_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2y_.exit, %bb.k, %_RINvMNtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB3_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB13_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0E3newINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEB2x_.exit
  %.sroa.14.0633 = phi i64 [ %.sroa.14.0639, %bb.k ], [ 0, %_RINvMNtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB3_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB13_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0E3newINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEB2x_.exit ], [ %i.ax, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB4_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB14_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2y_.exit ] ; 3 uses
  %.sroa.6.2317 = phi i64 [ %.pre, %bb.k ], [ %i.t, %_RINvMNtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB3_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB13_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0E3newINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEB2x_.exit ], [ %.us-phi.i, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB4_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB14_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2y_.exit ] ; 3 uses
  %.not.i.i106 = icmp eq i64 %.sroa.14.0633, 0
  br i1 %.not.i.i106, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec10extract_if9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1y_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0EEB32_.exit111, label %bb.l

bb.l:                                             ; preds = %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB4_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB14_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2y_.exit.thread
  %i.az = load ptr, ptr %i.i, align 8, !noalias !2553, !nonnull !11, !noundef !11 ; 2 uses
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %.sroa.6.2317
  %i.bb = sub i64 %.sroa.6.2317, %.sroa.14.0633
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %i.bb
  %i.bd = sub i64 %.pre, %.sroa.6.2317
  %i.be = shl nuw nsw i64 %i.bd, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr nonnull align 8 %i.ba, i64 %i.be, i1 false), !noalias !2553
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec10extract_if9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1y_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0EEB32_.exit111

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec10extract_if9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1y_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0EEB32_.exit111: ; preds = %bb.j, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB4_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB14_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2y_.exit.thread, %bb.l
  %.sroa.14.1316521 = phi i64 [ %.sroa.14.0633, %bb.l ], [ 0, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec10extract_ifINtB4_9ExtractIfTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB14_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize15finish_groupings_0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2y_.exit.thread ], [ 0, %bb.j ]
  %i.bf = sub i64 %.pre, %.sroa.14.1316521        ; 2 uses
  store i64 %i.bf, ptr %i.j, align 8, !noalias !2553
  br label %bb.h

bb.m:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #27
  unreachable

bb.n:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr %i.i, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %2, 5                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2554
  store ptr inttoptr (i64 16 to ptr), ptr %i.e, align 8, !noalias !2554
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2554
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2555)
  %i.bi = icmp eq i64 %2, 0                       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !2554
  br i1 %i.bi, label %_RINvMNtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB3_3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyE12from_iter_inINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB2o_9map_while8MapWhileINtNtB2o_3rev3RevINtNtNtB2s_5slice4iter4IterTRNtNtNtB10_11foundations7content7ContentNtNtB4n_6styles10StyleChainEEENvCsibhcYuwTAtB_13typst_realize6to_tagENCINvB5s_7tag_setB37_E0EEB5s_.exit.thread.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx
  br label %.lr.ph.i.i.i

_RINvMNtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB3_3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyE12from_iter_inINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB2o_9map_while8MapWhileINtNtB2o_3rev3RevINtNtNtB2s_5slice4iter4IterTRNtNtNtB10_11foundations7content7ContentNtNtB4n_6styles10StyleChainEEENvCsibhcYuwTAtB_13typst_realize6to_tagENCINvB5s_7tag_setB37_E0EEB5s_.exit.thread.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2554
  br label %_RINvCsibhcYuwTAtB_13typst_realize7tag_setINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_while8MapWhileINtNtBI_3rev3RevINtNtNtBM_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2o_6styles10StyleChainEEENvB2_6to_tagEEB2_.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_RNvMNtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB2_3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyE4pushCsibhcYuwTAtB_13typst_realize.exit.i.i.i
  %i.bk = phi ptr [ %i.bt, %_RNvMNtNtCsaPYV88GQHqL_7bumpalo11collections3vecINtB2_3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyE4pushCsibhcYuwTAtB_13typst_realize.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %.lr.ph.i.i.i.preheader ]
end_hunk_6
begin_hunk_7_@_RNvCsibhcYuwTAtB_13typst_realize15finish_grouping:bb.a
  %.idx668 = shl nuw nsw i64 %.sroa.7.0.copyload15.i, 4
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload16.i, i64 %.idx668
  %.not.not.not.i.not.not.not.i.not.not.i661 = icmp eq i64 %.sroa.7.0.copyload.i115, 0
  %.not.not.not.i.not.not.not.i.not.not.i223663 = icmp eq i64 %.sroa.7.0.copyload15.i, 0
  br label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338.outer

_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338.outer: ; preds = %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit.thread, %.thread
  %.sroa.15.0.ph = phi i64 [ 0, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit.thread ], [ %i.t, %.thread ]
  %.sroa.10292.0.ph = phi i64 [ %.sroa.10292.1, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit.thread ], [ 0, %.thread ]
  %.sroa.0288.0.ph = phi ptr [ %.sroa.0288.1, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit.thread ], [ %i.id, %.thread ]
  %.sroa.010.1.ph = phi i64 [ %i.pm, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit.thread ], [ %i.t, %.thread ] ; 3 uses
  br label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338

bb.bn:                                            ; preds = %bb.bm
  %i.ij = load ptr, ptr %i.hy, align 8, !nonnull !11, !noundef !11
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 96
  %i.il = invoke noundef i128 @_RNvMNtNtCsdaEETE4DqmE_13typst_library13introspection3tagNtB2_3Tag8location(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.ik)
          to label %bb.dh unwind label %.loopexit.split-lp354.loopexit ; 6 uses

_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338: ; preds = %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338.backedge, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338.outer
  %.sroa.15.0 = phi i64 [ %.sroa.15.0.ph, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338.outer ], [ 0, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338.backedge ] ; 4 uses
  %.sroa.10292.0 = phi i64 [ %.sroa.10292.0.ph, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338.outer ], [ %.sroa.10292.1, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338.backedge ] ; 2 uses
  %.sroa.0288.0 = phi ptr [ %.sroa.0288.0.ph, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338.outer ], [ %.sroa.0288.1, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338.backedge ] ; 5 uses
  %.not77 = icmp eq i64 %.sroa.15.0, 0
  br i1 %.not77, label %bb.bo, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1D_6styles10StyleChainEEENtNtNtB8_6traits8iterator8Iterator3nthCsibhcYuwTAtB_13typst_realize.exit, !prof !21

bb.bo:                                            ; preds = %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338
  %i.im = icmp eq ptr %.sroa.0288.0, %i.ie
  br i1 %i.im, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1D_6styles10StyleChainEEENtNtNtB8_6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1D_6styles10StyleChainEEENtNtNtB8_6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1D_6styles10StyleChainEEENtNtNtB8_6traits8iterator8Iterator3nthCsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0288.0) ]
  %i.in = ptrtoint ptr %.sroa.0288.0 to i64
  %i.io = sub nuw i64 %i.if, %i.in
  %i.ip = lshr exact i64 %i.io, 5
  %.not.i.not.i = icmp ult i64 %.sroa.15.0, %i.ip
  %i.iq = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0288.0, i64 %.sroa.15.0
  %i.ir = add i64 %.sroa.10292.0, %.sroa.15.0
  br i1 %.not.i.not.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1D_6styles10StyleChainEEENtNtNtB8_6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1D_6styles10StyleChainEEENtNtNtB8_6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1D_6styles10StyleChainEEENtNtNtB8_6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.bo, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1D_6styles10StyleChainEEENtNtNtB8_6traits8iterator8Iterator3nthCsibhcYuwTAtB_13typst_realize.exit
  %.sroa.0.0.i193.pn = phi i64 [ %i.ir, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1D_6styles10StyleChainEEENtNtNtB8_6traits8iterator8Iterator3nthCsibhcYuwTAtB_13typst_realize.exit ], [ %.sroa.10292.0, %bb.bo ] ; 2 uses
  %.sroa.2.0.i192.pn = phi ptr [ %i.iq, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1D_6styles10StyleChainEEENtNtNtB8_6traits8iterator8Iterator3nthCsibhcYuwTAtB_13typst_realize.exit ], [ %.sroa.0288.0, %bb.bo ] ; 3 uses
  %.sroa.0288.1 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i192.pn, i64 32 ; 2 uses
  %.sroa.10292.1 = add i64 %.sroa.0.0.i193.pn, 1  ; 2 uses
  %.not79 = icmp eq ptr %.sroa.2.0.i192.pn, null
  br i1 %.not79, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1D_6styles10StyleChainEEENtNtNtB8_6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread, label %bb.bp

bb.bp:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1D_6styles10StyleChainEEENtNtNtB8_6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit
  %i.is = load ptr, ptr %.sroa.2.0.i192.pn, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !nonnull !11, !align !13, !noundef !11
  %i.iv = icmp eq ptr %i.iu, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library13introspection3tag1__NtB9_7TagElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.iv, label %bb.bs, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1D_6styles10StyleChainEEENtNtNtB8_6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1D_6styles10StyleChainEEENtNtNtB8_6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread: ; preds = %bb.bo, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1D_6styles10StyleChainEEENtNtNtB8_6traits8iterator8Iterator3nthCsibhcYuwTAtB_13typst_realize.exit, %bb.bp, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1D_6styles10StyleChainEEENtNtNtB8_6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit
  %i.iw = icmp eq i64 %.sroa.6.0.copyload18.i153, 0
  br i1 %i.iw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit197, label %bb.bq

bb.bq:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1D_6styles10StyleChainEEENtNtNtB8_6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload17.i154) ]
  %i.ix = getelementptr i8, ptr %.sroa.5.0.copyload17.i154, i64 16
  %.val.i.i.i1.i.i196 = load ptr, ptr %i.ix, align 8, !noalias !2611, !nonnull !11, !noundef !11
  %i.iy = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i196, i64 32 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !2611, !nonnull !11, !noundef !11 ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %.sroa.0.0.copyload16.i155
  br i1 %i.ja, label %bb.br, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit197

bb.br:                                            ; preds = %bb.bq
  %i.jb = shl i64 %.sroa.6.0.copyload18.i153, 4
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.jb
  store ptr %i.jc, ptr %i.iy, align 8, !noalias !2611
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit197

bb.bs:                                            ; preds = %bb.bp
  %i.jd = load ptr, ptr %i.is, align 8, !nonnull !11, !noundef !11
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 96
  %i.jf = invoke noundef i128 @_RNvMNtNtCsdaEETE4DqmE_13typst_library13introspection3tagNtB2_3Tag8location(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.je)
          to label %bb.dg unwind label %.loopexit353 ; 6 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit197: ; preds = %bb.br, %bb.bq, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1D_6styles10StyleChainEEENtNtNtB8_6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.thread
  %i.jg = icmp eq i64 %.sroa.6.0.copyload.i127, 0
  br i1 %i.jg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit199, label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit197
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i126) ]
  %i.jh = getelementptr i8, ptr %.sroa.5.0.copyload.i126, i64 16
  %.val.i.i.i1.i.i198 = load ptr, ptr %i.jh, align 8, !noalias !2612, !nonnull !11, !noundef !11
  %i.ji = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i198, i64 32 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !noalias !2612, !nonnull !11, !noundef !11 ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %.sroa.0.0.copyload.i125
  br i1 %i.jk, label %bb.bu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit199

bb.bu:                                            ; preds = %bb.bt
  %i.jl = shl i64 %.sroa.6.0.copyload.i127, 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jl
  store ptr %i.jm, ptr %i.ji, align 8, !noalias !2612
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit199

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit199: ; preds = %bb.bu, %bb.bt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit197
  %i.jn = icmp eq i64 %.sroa.6.0.copyload18.i, 0
  br i1 %i.jn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit201, label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit199
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload17.i) ]
  %i.jo = getelementptr i8, ptr %.sroa.5.0.copyload17.i, i64 16
  %.val.i.i.i1.i.i200 = load ptr, ptr %i.jo, align 8, !noalias !2613, !nonnull !11, !noundef !11
  %i.jp = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i200, i64 32 ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !noalias !2613, !nonnull !11, !noundef !11 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %.sroa.0.0.copyload16.i
  br i1 %i.jr, label %bb.bw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit201

bb.bw:                                            ; preds = %bb.bv
  %i.js = shl i64 %.sroa.6.0.copyload18.i, 4
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.js
  store ptr %i.jt, ptr %i.jp, align 8, !noalias !2613
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit201

bb.bx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit201
  %i.ju = load ptr, ptr %i.i, align 8, !nonnull !11, !noundef !11
  %i.jv = sub nuw i64 %i.x, %.sroa.010.0          ; 3 uses
  %i.jw = getelementptr inbounds nuw [32 x i8], ptr %i.ju, i64 %.sroa.010.0
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.val = load ptr, ptr %i.jx, align 8, !nonnull !11, !align !13, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2614
  %i.jy = getelementptr inbounds nuw i8, ptr %.val, i64 112 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !noalias !2614
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.jy, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2614
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2615)
  %.not.i.not.i202 = icmp eq i64 %i.x, %.sroa.010.0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2614
  br i1 %.not.i.not.i202, label %_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State11store_slice.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvMs2_NtNtCsaPYV88GQHqL_7bumpalo11collections7raw_vecINtB5_6RawVecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainEE25reserve_internal_or_panicCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef range(i64 0, 288230376151711744) %i.jv, i1 noundef zeroext true) #33
          to label %.noexc.i unwind label %bb.bz, !noalias !2614

.noexc.i:                                         ; preds = %bb.by
  %.pre.i.i204 = load i64, ptr %i.jz, align 8, !alias.scope !2615, !noalias !2616
  %.pre.i = load ptr, ptr %i.b, align 8, !alias.scope !2615, !noalias !2616
  %.sroa.8.0.copyload.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2617
  %.sroa.11.0.copyload.pre = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2617
  br label %_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State11store_slice.exit

bb.bz:                                            ; preds = %bb.by
  %i.ka = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2621)
  %i.kb = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2622, !noalias !2614, !noundef !11 ; 2 uses
  %i.kc = icmp eq i64 %i.kb, 0
  br i1 %i.kc, label %common.resume, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2622, !noalias !2614, !nonnull !11, !align !13, !noundef !11
  %i.ke = load ptr, ptr %i.b, align 8, !alias.scope !2622, !noalias !2614, !nonnull !11, !noundef !11
  %i.kf = getelementptr i8, ptr %i.kd, i64 16
  %.val.i.i.i1.i.i203 = load ptr, ptr %i.kf, align 8, !noalias !2623, !nonnull !11, !noundef !11
  %i.kg = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i203, i64 32 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !noalias !2623, !nonnull !11, !noundef !11 ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.ke
  br i1 %i.ki, label %bb.cb, label %common.resume

bb.cb:                                            ; preds = %bb.ca
  %i.kj = shl i64 %i.kb, 5
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.kj
  store ptr %i.kk, ptr %i.kg, align 8, !noalias !2623
  br label %common.resume

_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State11store_slice.exit: ; preds = %bb.bx, %.noexc.i
  %.sroa.11.0.copyload = phi i64 [ 0, %bb.bx ], [ %.sroa.11.0.copyload.pre, %.noexc.i ] ; 6 uses
  %.sroa.8.0.copyload = phi ptr [ %i.jy, %bb.bx ], [ %.sroa.8.0.copyload.pre, %.noexc.i ] ; 6 uses
  %.sroa.0296.0.copyload = phi ptr [ inttoptr (i64 8 to ptr), %bb.bx ], [ %.pre.i, %.noexc.i ] ; 9 uses
  %i.kl = phi i64 [ 0, %bb.bx ], [ %.pre.i.i204, %.noexc.i ] ; 2 uses
  %i.km = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0296.0.copyload, i64 %i.kl
  %i.kn = shl nuw nsw i64 %i.jv, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.km, ptr nonnull readonly align 8 %i.jw, i64 %i.kn, i1 false), !noalias !2624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2614
  %i.ko = load i64, ptr %i.j, align 8, !alias.scope !2625, !noundef !11
  %i.kp = icmp ugt i64 %.sroa.010.0, %i.ko
  br i1 %i.kp, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit, label %bb.cc

bb.cc:                                            ; preds = %_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State11store_slice.exit
  store i64 %.sroa.010.0, ptr %i.j, align 8, !alias.scope !2625
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit

bb.cd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils7listset7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEEECsibhcYuwTAtB_13typst_realize.exit201
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.010.0, i64 noundef %i.x, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit207: ; preds = %bb.cj, %bb.ci, %.loopexit.split-lp
  %i.kq = icmp eq i64 %.sroa.11.0.copyload, 0
  br i1 %i.kq, label %common.resume, label %bb.ce

bb.ce:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit207
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload), "nonnull"(ptr %.sroa.0296.0.copyload) ]
  %i.kr = getelementptr i8, ptr %.sroa.8.0.copyload, i64 16
  %.val.i.i.i1.i = load ptr, ptr %i.kr, align 8, !noalias !2626, !nonnull !11, !noundef !11
  %i.ks = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i, i64 32 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !noalias !2626, !nonnull !11, !noundef !11 ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %.sroa.0296.0.copyload
  br i1 %i.ku, label %bb.cf, label %common.resume

bb.cf:                                            ; preds = %bb.ce
  %i.kv = shl i64 %.sroa.11.0.copyload, 5
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kv
  store ptr %i.kw, ptr %i.ks, align 8, !noalias !2626
  br label %common.resume

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.cc, %_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State11store_slice.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.kx = load ptr, ptr %i.jx, align 8, !nonnull !11, !align !13, !noundef !11
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr %i.ky, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.555.0..sroa_idx, i8 0, i64 16, i1 false)
  br i1 %i.w, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit205, label %.preheader

.preheader:                                       ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit
  %i.la = icmp ult i64 %.sroa.0.0, %.sroa.010.0
  br i1 %i.la, label %.lr.ph402, label %.outer._crit_edge

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit205: ; preds = %bb.cg, %.outer._crit_edge, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit
  %i.lb = phi i64 [ %i.lf, %bb.cg ], [ %i.lf, %.outer._crit_edge ], [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit ]
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !nonnull !11, !noundef !11
  %i.le = invoke { ptr, i64 } %i.ld(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0, i64 noundef %.sroa.0.0)
          to label %bb.cs unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.outer._crit_edge:                                ; preds = %.outer, %bb.cr, %.preheader
  %i.lf = phi i64 [ %i.mo, %bb.cr ], [ 0, %.preheader ], [ %i.lj, %.outer ] ; 2 uses
  %.sroa.033.0.ph.lcssa380 = phi i64 [ %.sroa.033.0.ph405, %bb.cr ], [ %.sroa.0.0, %.preheader ], [ %i.me, %.outer ] ; 2 uses
  %i.lg = load i64, ptr %i.j, align 8, !alias.scope !2627, !noundef !11
  %i.lh = icmp ugt i64 %.sroa.033.0.ph.lcssa380, %i.lg
  br i1 %i.lh, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit205, label %bb.cg

bb.cg:                                            ; preds = %.outer._crit_edge
  store i64 %.sroa.033.0.ph.lcssa380, ptr %i.j, align 8, !alias.scope !2627
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit205

bb.ch:                                            ; preds = %.lr.ph402, %bb.cr
  %i.li = phi ptr [ %i.mg, %.lr.ph402 ], [ %i.ml, %bb.cr ] ; 2 uses
  %i.lj = phi i64 [ %i.mh, %.lr.ph402 ], [ %i.mo, %bb.cr ] ; 5 uses
  %.sroa.056.0401 = phi i64 [ %.sroa.056.0.ph406, %.lr.ph402 ], [ %i.lk, %bb.cr ] ; 5 uses
  %i.lk = add nuw i64 %.sroa.056.0401, 1          ; 4 uses
  %i.ll = load i64, ptr %i.j, align 8, !noundef !11 ; 2 uses
  %i.lm = icmp ult i64 %.sroa.056.0401, %i.ll
  br i1 %i.lm, label %bb.ck, label %bb.cl

.loopexit:                                        ; preds = %bb.cw
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.cq
  %lpad.loopexit349 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.cl, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit205
  %lpad.loopexit.split-lp350 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit349, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp350, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2631)
  %i.ln = load i64, ptr %.sroa.555.0..sroa_idx, align 8, !alias.scope !2632, !noundef !11 ; 2 uses
  %i.lo = icmp eq i64 %i.ln, 0
  br i1 %i.lo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit207, label %bb.ci

bb.ci:                                            ; preds = %.loopexit.split-lp
  %i.lp = load ptr, ptr %.sroa.454.0..sroa_idx, align 8, !alias.scope !2632, !nonnull !11, !align !13, !noundef !11
  %i.lq = load ptr, ptr %i.h, align 8, !alias.scope !2632, !nonnull !11, !noundef !11
  %i.lr = getelementptr i8, ptr %i.lp, i64 16
  %.val.i.i.i1.i206 = load ptr, ptr %i.lr, align 8, !noalias !2632, !nonnull !11, !noundef !11
  %i.ls = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i206, i64 32 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !noalias !2632, !nonnull !11, !noundef !11 ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.lq
  br i1 %i.lu, label %bb.cj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit207

bb.cj:                                            ; preds = %bb.ci
  %i.lv = shl i64 %i.ln, 5
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.lv
  store ptr %i.lw, ptr %i.ls, align 8, !noalias !2632
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit207

bb.ck:                                            ; preds = %bb.ch
  %i.lx = load ptr, ptr %i.i, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ly = getelementptr inbounds nuw [32 x i8], ptr %i.lx, i64 %.sroa.056.0401 ; 3 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !nonnull !11, !align !13, !noundef !11
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8, !nonnull !11, !align !13, !noundef !11
  %i.mc = icmp eq ptr %i.mb, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library13introspection3tag1__NtB9_7TagElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.mc, label %bb.cp, label %bb.cn

bb.cl:                                            ; preds = %bb.ch
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.056.0401, i64 noundef %i.ll, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #30
          to label %bb.cm unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cm:                                            ; preds = %bb.cl, %bb.bi, %bb.be, %bb.z
  unreachable

bb.cn:                                            ; preds = %bb.ck
  %i.md = icmp ult i64 %.sroa.033.0.ph405, %.sroa.056.0401
  br i1 %i.md, label %bb.co, label %.outer

.outer:                                           ; preds = %bb.cn, %bb.co
  %i.me = add i64 %.sroa.033.0.ph405, 1           ; 2 uses
  %i.mf = icmp ult i64 %i.lk, %.sroa.010.0
  br i1 %i.mf, label %.lr.ph402, label %.outer._crit_edge

.lr.ph402:                                        ; preds = %.preheader, %.outer
  %i.mg = phi ptr [ %i.li, %.outer ], [ inttoptr (i64 8 to ptr), %.preheader ]
  %i.mh = phi i64 [ %i.lj, %.outer ], [ 0, %.preheader ]
  %.sroa.056.0.ph406 = phi i64 [ %i.lk, %.outer ], [ %.sroa.0.0, %.preheader ]
  %.sroa.033.0.ph405 = phi i64 [ %i.me, %.outer ], [ %.sroa.0.0, %.preheader ] ; 4 uses
  br label %bb.ch

bb.co:                                            ; preds = %bb.cn
  %i.mi = getelementptr inbounds nuw [32 x i8], ptr %i.lx, i64 %.sroa.033.0.ph405
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mi, ptr noundef nonnull align 8 dereferenceable(32) %i.ly, i64 32, i1 false)
  br label %.outer

bb.cp:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.ly, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2633)
  %i.mj = load i64, ptr %.sroa.555.0..sroa_idx, align 8, !alias.scope !2633, !noalias !2634, !noundef !11
  %i.mk = icmp eq i64 %i.lj, %i.mj
  br i1 %i.mk, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvMs2_NtNtCsaPYV88GQHqL_7bumpalo11collections7raw_vecINtB5_6RawVecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainEE25reserve_internal_or_panicCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.lj, i64 noundef 1, i1 noundef zeroext true) #33
          to label %.noexc unwind label %.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.cq
  %.pre.i208 = load i64, ptr %i.kz, align 8, !alias.scope !2633, !noalias !2634
  %.pre461 = load ptr, ptr %i.h, align 8, !alias.scope !2633, !noalias !2634
  br label %bb.cr

bb.cr:                                            ; preds = %.noexc, %bb.cp
  %i.ml = phi ptr [ %i.li, %bb.cp ], [ %.pre461, %.noexc ] ; 2 uses
  %i.mm = phi i64 [ %i.lj, %bb.cp ], [ %.pre.i208, %.noexc ] ; 2 uses
  %i.mn = getelementptr inbounds nuw [32 x i8], ptr %i.ml, i64 %i.mm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mn, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !2633
  %i.mo = add i64 %i.mm, 1                        ; 3 uses
  store i64 %i.mo, ptr %i.kz, align 8, !alias.scope !2633, !noalias !2634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.mp = icmp ult i64 %i.lk, %.sroa.010.0
  br i1 %i.mp, label %bb.ch, label %.outer._crit_edge

bb.cs:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit205
  %i.mq = extractvalue { ptr, i64 } %i.le, 0      ; 2 uses
  %.not80 = icmp eq ptr %i.mq, null
  br i1 %.not80, label %bb.ct, label %.loopexit669

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0296.0.copyload) ]
  %i.mr = load ptr, ptr %i.h, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.ms = getelementptr inbounds nuw [32 x i8], ptr %i.mr, i64 %i.lb
  %i.mt = getelementptr [32 x i8], ptr %.sroa.0296.0.copyload, i64 %i.kl
  %i.mu = getelementptr [32 x i8], ptr %i.mt, i64 %i.jv
  br label %bb.cu

bb.cu:                                            ; preds = %bb.db, %bb.ct
  %.sroa.0308.0 = phi ptr [ %i.mr, %bb.ct ], [ %.sroa.0308.1325.ph, %bb.db ] ; 4 uses
  %.sroa.8310.0 = phi ptr [ %.sroa.0296.0.copyload, %bb.ct ], [ %.sroa.8310.1.ph, %bb.db ] ; 4 uses
  %.not.i209 = icmp eq ptr %.sroa.0308.0, null
  %i.mv = icmp eq ptr %.sroa.0308.0, %i.ms
  %or.cond348 = select i1 %.not.i209, i1 true, i1 %i.mv
  br i1 %or.cond348, label %select.unfold, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1A_6styles10StyleChainEERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsibhcYuwTAtB_13typst_realize.exit

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1A_6styles10StyleChainEERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.cu
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.0308.0, i64 32
  br label %bb.cw

select.unfold:                                    ; preds = %bb.cu
  %i.mx = icmp eq ptr %.sroa.8310.0, %i.mu
  br i1 %i.mx, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBP_6styles10StyleChainEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2u_5ChainINtNtNtB5_5slice4iter4IterBJ_EB3a_ENtNtNtB2y_6traits8iterator8Iterator4next0ECsibhcYuwTAtB_13typst_realize.exit, label %bb.cv

bb.cv:                                            ; preds = %select.unfold
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.8310.0, i64 32
  br label %bb.cw

bb.cw:                                            ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1A_6styles10StyleChainEERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsibhcYuwTAtB_13typst_realize.exit, %bb.cv
  %.sroa.0308.1325.ph = phi ptr [ %i.mw, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1A_6styles10StyleChainEERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsibhcYuwTAtB_13typst_realize.exit ], [ null, %bb.cv ]
  %.sroa.8310.1.ph = phi ptr [ %.sroa.8310.0, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1A_6styles10StyleChainEERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsibhcYuwTAtB_13typst_realize.exit ], [ %i.my, %bb.cv ]
  %.sroa.0.0.i212.ph = phi ptr [ %.sroa.0308.0, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1A_6styles10StyleChainEERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsibhcYuwTAtB_13typst_realize.exit ], [ %.sroa.8310.0, %bb.cv ] ; 2 uses
  %i.mz = load ptr, ptr %.sroa.0.0.i212.ph, align 8, !nonnull !11, !align !13, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i212.ph, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.na, i64 24, i1 false)
  %i.nb = invoke fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize5visit(ptr noalias nofree noundef align 8 dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mz, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.db unwind label %.loopexit ; 2 uses

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBP_6styles10StyleChainEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2u_5ChainINtNtNtB5_5slice4iter4IterBJ_EB3a_ENtNtNtB2y_6traits8iterator8Iterator4next0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %select.unfold
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2638)
  %i.nc = load i64, ptr %.sroa.555.0..sroa_idx, align 8, !alias.scope !2639, !noundef !11 ; 2 uses
  %i.nd = icmp eq i64 %i.nc, 0
  br i1 %i.nd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit215, label %bb.cx

bb.cx:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBP_6styles10StyleChainEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2u_5ChainINtNtNtB5_5slice4iter4IterBJ_EB3a_ENtNtNtB2y_6traits8iterator8Iterator4next0ECsibhcYuwTAtB_13typst_realize.exit
  %i.ne = load ptr, ptr %.sroa.454.0..sroa_idx, align 8, !alias.scope !2639, !nonnull !11, !align !13, !noundef !11
  %i.nf = getelementptr i8, ptr %i.ne, i64 16
  %.val.i.i.i1.i214 = load ptr, ptr %i.nf, align 8, !noalias !2639, !nonnull !11, !noundef !11
  %i.ng = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i214, i64 32 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !noalias !2639, !nonnull !11, !noundef !11 ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.mr
  br i1 %i.ni, label %bb.cy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit215

bb.cy:                                            ; preds = %bb.cx
  %i.nj = shl i64 %i.nc, 5
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.nj
  store ptr %i.nk, ptr %i.ng, align 8, !noalias !2639
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit215

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit215: ; preds = %bb.cy, %bb.cx, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBP_6styles10StyleChainEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2u_5ChainINtNtNtB5_5slice4iter4IterBJ_EB3a_ENtNtNtB2y_6traits8iterator8Iterator4next0ECsibhcYuwTAtB_13typst_realize.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.nl = icmp eq i64 %.sroa.11.0.copyload, 0
  br i1 %i.nl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit217, label %bb.cz

bb.cz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit215
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  %i.nm = getelementptr i8, ptr %.sroa.8.0.copyload, i64 16
  %.val.i.i.i1.i216 = load ptr, ptr %i.nm, align 8, !noalias !2640, !nonnull !11, !noundef !11
  %i.nn = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i216, i64 32 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !noalias !2640, !nonnull !11, !noundef !11 ; 2 uses
  %i.np = icmp eq ptr %i.no, %.sroa.0296.0.copyload
  br i1 %i.np, label %bb.da, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit217

bb.da:                                            ; preds = %bb.cz
  %i.nq = shl i64 %.sroa.11.0.copyload, 5
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.nq
  store ptr %i.nr, ptr %i.nn, align 8, !noalias !2640
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit217

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit217: ; preds = %bb.df, %bb.de, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit219, %bb.da, %bb.cz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit215
  %.sroa.4.0 = phi i64 [ undef, %bb.da ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit215 ], [ undef, %bb.cz ], [ %.sroa.4.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit219 ], [ %.sroa.4.1, %bb.de ], [ %.sroa.4.1, %bb.df ]
  %.sroa.09.0 = phi ptr [ null, %bb.da ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit215 ], [ null, %bb.cz ], [ %.sroa.09.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit219 ], [ %.sroa.09.1, %bb.de ], [ %.sroa.09.1, %bb.df ]
  %i.ns = insertvalue { ptr, i64 } poison, ptr %.sroa.09.0, 0
  %i.nt = insertvalue { ptr, i64 } %i.ns, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.nt

bb.db:                                            ; preds = %bb.cw
  %i.nu = extractvalue { ptr, i64 } %i.nb, 0      ; 2 uses
  %.not82 = icmp eq ptr %i.nu, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %.not82, label %bb.cu, label %.loopexit669

.loopexit669:                                     ; preds = %bb.db, %bb.cs
  %.pn83 = phi { ptr, i64 } [ %i.le, %bb.cs ], [ %i.nb, %bb.db ]
  %.sroa.09.1 = phi ptr [ %i.mq, %bb.cs ], [ %i.nu, %bb.db ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2644)
  %i.nv = load i64, ptr %.sroa.555.0..sroa_idx, align 8, !alias.scope !2645, !noundef !11 ; 2 uses
  %i.nw = icmp eq i64 %i.nv, 0
  br i1 %i.nw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit219, label %bb.dc

bb.dc:                                            ; preds = %.loopexit669
  %i.nx = load ptr, ptr %.sroa.454.0..sroa_idx, align 8, !alias.scope !2645, !nonnull !11, !align !13, !noundef !11
  %i.ny = load ptr, ptr %i.h, align 8, !alias.scope !2645, !nonnull !11, !noundef !11
  %i.nz = getelementptr i8, ptr %i.nx, i64 16
  %.val.i.i.i1.i218 = load ptr, ptr %i.nz, align 8, !noalias !2645, !nonnull !11, !noundef !11
  %i.oa = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i218, i64 32 ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !noalias !2645, !nonnull !11, !noundef !11 ; 2 uses
  %i.oc = icmp eq ptr %i.ob, %i.ny
  br i1 %i.oc, label %bb.dd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit219

bb.dd:                                            ; preds = %bb.dc
  %i.od = shl i64 %i.nv, 5
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.od
  store ptr %i.oe, ptr %i.oa, align 8, !noalias !2645
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit219

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit219: ; preds = %bb.dd, %bb.dc, %.loopexit669
  %.sroa.4.1 = extractvalue { ptr, i64 } %.pn83, 1 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.of = icmp eq i64 %.sroa.11.0.copyload, 0
  br i1 %i.of, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit217, label %bb.de

bb.de:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit219
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload), "nonnull"(ptr %.sroa.0296.0.copyload) ]
  %i.og = getelementptr i8, ptr %.sroa.8.0.copyload, i64 16
  %.val.i.i.i1.i220 = load ptr, ptr %i.og, align 8, !noalias !2646, !nonnull !11, !noundef !11
  %i.oh = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i220, i64 32 ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !noalias !2646, !nonnull !11, !noundef !11 ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %.sroa.0296.0.copyload
  br i1 %i.oj, label %bb.df, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit217

bb.df:                                            ; preds = %bb.de
  %i.ok = shl i64 %.sroa.11.0.copyload, 5
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.ok
  store ptr %i.ol, ptr %i.oh, align 8, !noalias !2646
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit217

bb.dg:                                            ; preds = %bb.bs
  br i1 %i.ee, label %.lr.ph.i.i, label %.preheader411.preheader

.preheader411.preheader:                          ; preds = %bb.dg
  br i1 %.not.not.not.i.not.not.not.i.not.not.i661, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit.thread335, label %.lr.ph662

.preheader411:                                    ; preds = %.lr.ph662
  %i.om = getelementptr inbounds nuw i8, ptr %i.on, i64 16 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.not.i = icmp eq ptr %i.om, %i.ig
  br i1 %.not.not.not.i.not.not.not.i.not.not.i, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit.thread335, label %.lr.ph662

.lr.ph662:                                        ; preds = %.preheader411.preheader, %.preheader411
  %i.on = phi ptr [ %i.om, %.preheader411 ], [ %.sroa.0.0.copyload.i125, %.preheader411.preheader ] ; 2 uses
  %.val2.i.i.i = load i128, ptr %i.on, align 16, !alias.scope !2647, !noalias !2648, !noundef !11
  %i.oo = icmp eq i128 %.val2.i.i.i, %i.jf
  br i1 %i.oo, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit.thread, label %.preheader411

.lr.ph.i.i:                                       ; preds = %bb.dg, %.lr.ph.i.i
  %.sroa.01.017.i.i = phi i64 [ %i.ov, %.lr.ph.i.i ], [ %.sroa.7.0.copyload.i115, %bb.dg ] ; 2 uses
  %.sroa.05.016.i.i = phi i64 [ %i.ou, %.lr.ph.i.i ], [ 0, %bb.dg ] ; 2 uses
  %i.op = lshr i64 %.sroa.01.017.i.i, 1           ; 2 uses
  %i.oq = add nuw nsw i64 %i.op, %.sroa.05.016.i.i ; 3 uses
  %i.or = icmp ult i64 %i.oq, %.sroa.7.0.copyload.i115
  tail call void @llvm.assume(i1 %i.or)
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i125, i64 %i.oq
  %.val12.i.i = load i128, ptr %i.os, align 16, !alias.scope !2649, !noalias !2650, !noundef !11
  %i.ot = icmp ugt i128 %.val12.i.i, %i.jf
  %i.ou = select i1 %i.ot, i64 %.sroa.05.016.i.i, i64 %i.oq, !unpredictable !11 ; 2 uses
  %i.ov = sub nuw nsw i64 %.sroa.01.017.i.i, %i.op ; 2 uses
  %i.ow = icmp ugt i64 %i.ov, 1
  br i1 %i.ow, label %.lr.ph.i.i, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit

_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit: ; preds = %.lr.ph.i.i
  %i.ox = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i125, i64 %i.ou
  %.val14.i.i = load i128, ptr %i.ox, align 16, !alias.scope !2649, !noalias !2650, !noundef !11
  %i.oy = icmp eq i128 %.val14.i.i, %i.jf
  br i1 %i.oy, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit.thread, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit.thread335

_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit.thread335: ; preds = %.preheader411, %.preheader411.preheader, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit
  br i1 %i.ih, label %.lr.ph.i.i226, label %.preheader410.preheader

.preheader410.preheader:                          ; preds = %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit.thread335
  br i1 %.not.not.not.i.not.not.not.i.not.not.i223663, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338.backedge, label %.lr.ph664

_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338.backedge: ; preds = %.preheader410, %.preheader410.preheader, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232
  br label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338

.preheader410:                                    ; preds = %.lr.ph664
  %i.oz = getelementptr inbounds nuw i8, ptr %i.pa, i64 16 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.not.i223 = icmp eq ptr %i.oz, %i.ii
  br i1 %.not.not.not.i.not.not.not.i.not.not.i223, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338.backedge, label %.lr.ph664

.lr.ph664:                                        ; preds = %.preheader410.preheader, %.preheader410
  %i.pa = phi ptr [ %i.oz, %.preheader410 ], [ %.sroa.0.0.copyload16.i, %.preheader410.preheader ] ; 2 uses
  %.val2.i.i.i224 = load i128, ptr %i.pa, align 16, !alias.scope !2651, !noalias !2652, !noundef !11
  %i.pb = icmp eq i128 %.val2.i.i.i224, %i.jf
  br i1 %i.pb, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit.thread, label %.preheader410

.lr.ph.i.i226:                                    ; preds = %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit.thread335, %.lr.ph.i.i226
  %.sroa.01.017.i.i227 = phi i64 [ %i.pi, %.lr.ph.i.i226 ], [ %.sroa.7.0.copyload15.i, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit.thread335 ] ; 2 uses
  %.sroa.05.016.i.i228 = phi i64 [ %i.ph, %.lr.ph.i.i226 ], [ 0, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit.thread335 ] ; 2 uses
  %i.pc = lshr i64 %.sroa.01.017.i.i227, 1        ; 2 uses
  %i.pd = add nuw nsw i64 %i.pc, %.sroa.05.016.i.i228 ; 3 uses
  %i.pe = icmp ult i64 %i.pd, %.sroa.7.0.copyload15.i
  tail call void @llvm.assume(i1 %i.pe)
  %i.pf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload16.i, i64 %i.pd
  %.val12.i.i229 = load i128, ptr %i.pf, align 16, !alias.scope !2653, !noalias !2654, !noundef !11
  %i.pg = icmp ugt i128 %.val12.i.i229, %i.jf
  %i.ph = select i1 %i.pg, i64 %.sroa.05.016.i.i228, i64 %i.pd, !unpredictable !11 ; 2 uses
  %i.pi = sub nuw nsw i64 %.sroa.01.017.i.i227, %i.pc ; 2 uses
  %i.pj = icmp ugt i64 %i.pi, 1
  br i1 %i.pj, label %.lr.ph.i.i226, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232

_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232: ; preds = %.lr.ph.i.i226
  %i.pk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload16.i, i64 %i.ph
  %.val14.i.i231 = load i128, ptr %i.pk, align 16, !alias.scope !2653, !noalias !2654, !noundef !11
  %i.pl = icmp eq i128 %.val14.i.i231, %i.jf
  br i1 %i.pl, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit.thread, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338.backedge

_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit.thread: ; preds = %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit, %.lr.ph662, %.lr.ph664
  %i.pm = add i64 %.sroa.0.0.i193.pn, 1
  br label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit232.thread338.outer

bb.dh:                                            ; preds = %bb.bn
  br i1 %i.ee, label %.lr.ph.i.i236, label %.preheader414.preheader

.preheader414.preheader:                          ; preds = %bb.dh
  br i1 %.not.not.not.i.not.not.not.i.not.not.i233657, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread341, label %.lr.ph658

.preheader414:                                    ; preds = %.lr.ph658
  %i.pn = getelementptr inbounds nuw i8, ptr %i.po, i64 16 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.not.i233 = icmp eq ptr %i.pn, %i.hk
  br i1 %.not.not.not.i.not.not.not.i.not.not.i233, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread341, label %.lr.ph658

.lr.ph658:                                        ; preds = %.preheader414.preheader, %.preheader414
  %i.po = phi ptr [ %i.pn, %.preheader414 ], [ %.sroa.0.0.copyload.i125, %.preheader414.preheader ] ; 2 uses
  %.val2.i.i.i234 = load i128, ptr %i.po, align 16, !alias.scope !2655, !noalias !2656, !noundef !11
  %i.pp = icmp eq i128 %.val2.i.i.i234, %i.il
  br i1 %i.pp, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread, label %.preheader414

.lr.ph.i.i236:                                    ; preds = %bb.dh, %.lr.ph.i.i236
  %.sroa.01.017.i.i237 = phi i64 [ %i.pw, %.lr.ph.i.i236 ], [ %.sroa.7.0.copyload.i115, %bb.dh ] ; 2 uses
  %.sroa.05.016.i.i238 = phi i64 [ %i.pv, %.lr.ph.i.i236 ], [ 0, %bb.dh ] ; 2 uses
  %i.pq = lshr i64 %.sroa.01.017.i.i237, 1        ; 2 uses
  %i.pr = add nuw nsw i64 %i.pq, %.sroa.05.016.i.i238 ; 3 uses
  %i.ps = icmp ult i64 %i.pr, %.sroa.7.0.copyload.i115
  tail call void @llvm.assume(i1 %i.ps)
  %i.pt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i125, i64 %i.pr
  %.val12.i.i239 = load i128, ptr %i.pt, align 16, !alias.scope !2657, !noalias !2658, !noundef !11
  %i.pu = icmp ugt i128 %.val12.i.i239, %i.il
  %i.pv = select i1 %i.pu, i64 %.sroa.05.016.i.i238, i64 %i.pr, !unpredictable !11 ; 2 uses
  %i.pw = sub nuw nsw i64 %.sroa.01.017.i.i237, %i.pq ; 2 uses
  %i.px = icmp ugt i64 %i.pw, 1
  br i1 %i.px, label %.lr.ph.i.i236, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242

_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242: ; preds = %.lr.ph.i.i236
  %i.py = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i125, i64 %i.pv
  %.val14.i.i241 = load i128, ptr %i.py, align 16, !alias.scope !2657, !noalias !2658, !noundef !11
  %i.pz = icmp eq i128 %.val14.i.i241, %i.il
  br i1 %i.pz, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread341

_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread341: ; preds = %.preheader414, %.preheader414.preheader, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242
  br i1 %i.hl, label %.lr.ph.i.i246, label %.preheader413.preheader

.preheader413.preheader:                          ; preds = %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread341
  br i1 %.not.not.not.i.not.not.not.i.not.not.i243659, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit252.thread344, label %.lr.ph660

.preheader413:                                    ; preds = %.lr.ph660
  %i.qa = getelementptr inbounds nuw i8, ptr %i.qb, i64 16 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.not.i243 = icmp eq ptr %i.qa, %i.hm
  br i1 %.not.not.not.i.not.not.not.i.not.not.i243, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit252.thread344, label %.lr.ph660

.lr.ph660:                                        ; preds = %.preheader413.preheader, %.preheader413
  %i.qb = phi ptr [ %i.qa, %.preheader413 ], [ %.sroa.0.0.copyload16.i155, %.preheader413.preheader ] ; 2 uses
  %.val2.i.i.i244 = load i128, ptr %i.qb, align 16, !alias.scope !2659, !noalias !2660, !noundef !11
  %i.qc = icmp eq i128 %.val2.i.i.i244, %i.il
  br i1 %i.qc, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread, label %.preheader413

.lr.ph.i.i246:                                    ; preds = %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread341, %.lr.ph.i.i246
  %.sroa.01.017.i.i247 = phi i64 [ %i.qj, %.lr.ph.i.i246 ], [ %.sroa.7.0.copyload15.i156, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread341 ] ; 2 uses
  %.sroa.05.016.i.i248 = phi i64 [ %i.qi, %.lr.ph.i.i246 ], [ 0, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread341 ] ; 2 uses
  %i.qd = lshr i64 %.sroa.01.017.i.i247, 1        ; 2 uses
  %i.qe = add nuw nsw i64 %i.qd, %.sroa.05.016.i.i248 ; 3 uses
  %i.qf = icmp ult i64 %i.qe, %.sroa.7.0.copyload15.i156
  tail call void @llvm.assume(i1 %i.qf)
  %i.qg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload16.i155, i64 %i.qe
  %.val12.i.i249 = load i128, ptr %i.qg, align 16, !alias.scope !2661, !noalias !2662, !noundef !11
  %i.qh = icmp ugt i128 %.val12.i.i249, %i.il
  %i.qi = select i1 %i.qh, i64 %.sroa.05.016.i.i248, i64 %i.qe, !unpredictable !11 ; 2 uses
  %i.qj = sub nuw nsw i64 %.sroa.01.017.i.i247, %i.qd ; 2 uses
  %i.qk = icmp ugt i64 %i.qj, 1
  br i1 %i.qk, label %.lr.ph.i.i246, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit252

_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit252: ; preds = %.lr.ph.i.i246
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload16.i155, i64 %i.qi
  %.val14.i.i251 = load i128, ptr %i.ql, align 16, !alias.scope !2661, !noalias !2662, !noundef !11
  %i.qm = icmp eq i128 %.val14.i.i251, %i.il
  br i1 %i.qm, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit252.thread344

_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit252.thread344: ; preds = %.preheader413, %.preheader413.preheader, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit252, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread
  %.sroa.0.2 = phi i64 [ %i.hx, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread ], [ %.sroa.0.1398, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit252 ], [ %.sroa.0.1398, %.preheader413.preheader ], [ %.sroa.0.1398, %.preheader413 ] ; 2 uses
  %i.qn = icmp eq ptr %i.hh, %i.hu
  br i1 %i.qn, label %.thread.loopexit, label %bb.bm

_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242.thread: ; preds = %.lr.ph658, %.lr.ph660, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit252, %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit242
  br label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils7listsetINtB2_7ListSetINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyEE8containsCsibhcYuwTAtB_13typst_realize.exit252.thread344
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvCsibhcYuwTAtB_13typst_realize16visit_show_rules(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 10 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 10 uses
  %i.e = alloca [72 x i8], align 8                ; 12 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 16               ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [72 x i8], align 8                ; 18 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
end_hunk_7
begin_hunk_8_@_RNvCsibhcYuwTAtB_13typst_realize16visit_show_rules:bb.a
  br i1 %i.kc, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.noexc159
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.ke = load i128, ptr %i.kd, align 16, !noalias !2834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2808
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg)
          to label %.noexc160 unwind label %bb.bt

.noexc160:                                        ; preds = %bb.cl
  %.sroa.641.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.641.i, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.641.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !2808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2808
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 %.sroa.0.1.i, ptr %.sroa.444.0..sroa_idx.i, align 1, !noalias !2808
  %.sroa.545.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store i8 %.sroa.8.1.i, ptr %.sroa.545.0..sroa_idx.i, align 2, !noalias !2808
  %.sroa.646.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.646.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(29) %.sroa.641.i, i64 29, i1 false), !noalias !2808
  %.sroa.848.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store i8 1, ptr %.sroa.848.0..sroa_idx.i, align 16, !noalias !2808
  %.sroa.848.sroa.4.0..sroa.848.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 49
  store i8 %.sroa.0.1.i, ptr %.sroa.848.sroa.4.0..sroa.848.0..sroa_idx.sroa_idx.i, align 1, !noalias !2808
  %.sroa.848.sroa.5.0..sroa.848.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 50
  store i8 %.sroa.8.1.i, ptr %.sroa.848.sroa.5.0..sroa.848.0..sroa_idx.sroa_idx.i, align 2, !noalias !2808
  %.sroa.848.sroa.7.0..sroa.848.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store i128 %i.ke, ptr %.sroa.848.sroa.7.0..sroa.848.0..sroa_idx.sroa_idx.i, align 16, !noalias !2808
  %.sroa.848.sroa.8.0..sroa.848.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  store i128 %i.ie, ptr %.sroa.848.sroa.8.0..sroa.848.0..sroa_idx.sroa_idx.i, align 16, !noalias !2808
  br label %bb.cm

bb.cm:                                            ; preds = %.noexc160, %.noexc159
  %.sroa.0195.0.copyload = phi i8 [ 0, %.noexc160 ], [ 2, %.noexc159 ] ; 3 uses
  store i8 %.sroa.0195.0.copyload, ptr %i.t, align 16, !noalias !2808
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB2_7Content13mark_prepared(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %bb.cv unwind label %bb.cn, !noalias !2834

bb.cn:                                            ; preds = %bb.cm
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagBY_EEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 16 dereferenceable(96) %i.t) #31
          to label %bb.gw unwind label %bb.co, !noalias !2834

bb.co:                                            ; preds = %bb.cn
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !2834
  unreachable

bb.cp:                                            ; preds = %.noexc158
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.641.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.kh = extractvalue { ptr, i64 } %i.jt, 1
  store ptr %i.ju, ptr %0, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.kh, ptr %i.ki, align 8
  %i.kj = load i8, ptr %i.bf, align 16, !range !22, !alias.scope !2835, !noundef !11
  switch i8 %i.kj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit.i.i [
    i8 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagBY_EEECsibhcYuwTAtB_13typst_realize.exit
    i8 0, label %bb.cq
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.kk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kk)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit.i.i unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.kn = load i8, ptr %i.km, align 16, !range !18, !alias.scope !2836, !noundef !11
  %i.ko = icmp eq i8 %i.kn, 0
  br i1 %i.ko, label %bb.cs, label %.thread240

bb.cs:                                            ; preds = %bb.cr
  %i.kp = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kp)
          to label %.thread240 unwind label %bb.cu

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %bb.cq, %bb.cp
  %i.kq = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.kr = load i8, ptr %i.kq, align 16, !range !18, !alias.scope !2837, !noundef !11
  %i.ks = icmp eq i8 %i.kr, 0
  br i1 %i.ks, label %bb.ct, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagBY_EEECsibhcYuwTAtB_13typst_realize.exit

bb.ct:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kt)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagBY_EEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.dd

bb.cu:                                            ; preds = %bb.cs
  %i.ku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.cv:                                            ; preds = %bb.cm
  %.sroa.7196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7196.0..sroa_idx, i64 7, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !2838 ; 2 uses
  %.sroa.11197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.11197.0.copyload = load i64, ptr %.sroa.11197.0..sroa_idx, align 16, !noalias !2838 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.629, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.14.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2808
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.641.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.kv = load i8, ptr %i.bf, align 16, !range !22, !alias.scope !2839, !noundef !11
  switch i8 %i.kv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit.i.i165 [
    i8 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagBY_EEECsibhcYuwTAtB_13typst_realize.exit169
    i8 0, label %bb.cw
  ]

bb.cw:                                            ; preds = %bb.cv
  %i.kw = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kw)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit.i.i165 unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.kx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.kz = load i8, ptr %i.ky, align 16, !range !18, !alias.scope !2840, !noundef !11
  %i.la = icmp eq i8 %i.kz, 0
  br i1 %i.la, label %bb.cy, label %.body167

bb.cy:                                            ; preds = %bb.cx
  %i.lb = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lb)
          to label %.body167 unwind label %bb.da

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit.i.i165: ; preds = %bb.cw, %bb.cv
  %i.lc = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.ld = load i8, ptr %i.lc, align 16, !range !18, !alias.scope !2841, !noundef !11
  %i.le = icmp eq i8 %i.ld, 0
  br i1 %i.le, label %bb.cz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagBY_EEECsibhcYuwTAtB_13typst_realize.exit169

bb.cz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit.i.i165
  %i.lf = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lf)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagBY_EEECsibhcYuwTAtB_13typst_realize.exit169 unwind label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.lg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.db:                                            ; preds = %bb.cz
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %.body167

.body167:                                         ; preds = %bb.cx, %bb.cy, %bb.db
  %eh.lpad-body168 = phi { ptr, i32 } [ %i.lh, %bb.db ], [ %i.kx, %bb.cy ], [ %i.kx, %bb.cx ]
  store i8 %.sroa.0195.0.copyload, ptr %i.bf, align 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3, i64 7, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %.sroa.11197.0.copyload, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.629.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.629, i64 72, i1 false)
  br label %bb.gw

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagBY_EEECsibhcYuwTAtB_13typst_realize.exit169: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit.i.i165, %bb.cv, %bb.cz
  store i8 %.sroa.0195.0.copyload, ptr %i.bf, align 16
  %.sroa.3.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx24, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3, i64 7, i1 false)
  %.sroa.4.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.4.0..sroa_idx25, align 8
  %.sroa.5.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %.sroa.11197.0.copyload, ptr %.sroa.5.0..sroa_idx27, align 16
  %.sroa.629.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.629.0..sroa_idx30, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.629, i64 72, i1 false)
  br label %bb.bs

bb.dc:                                            ; preds = %bb.gw
  br i1 %.sroa.076.0.ph, label %.thread240, label %.thread248

bb.dd:                                            ; preds = %bb.ct
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %.thread240

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagBY_EEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit.i.i, %bb.cp, %bb.ct, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit
  %.sroa.082.2 = phi i8 [ %.sroa.082.5, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit ], [ 1, %bb.ct ], [ 1, %bb.cp ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit.i.i ] ; 2 uses
  %.sroa.077.3 = phi i1 [ %i.sf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit ], [ true, %bb.ct ], [ true, %bb.cp ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.lj = load ptr, ptr %i.bg, align 8, !noundef !11
  %i.lk = icmp ne ptr %i.lj, null
  %or.cond3 = select i1 %i.lk, i1 %.sroa.077.3, i1 false
  br i1 %or.cond3, label %bb.gq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit183

bb.de:                                            ; preds = %.thread474, %bb.bs
  %.sroa.028.2.i213465481 = phi i64 [ 0, %.thread474 ], [ %.sroa.028.2.i213465, %bb.bs ]
  %.sroa.732.2.i212466480 = phi i64 [ %i.cj, %.thread474 ], [ %.sroa.732.2.i212466, %bb.bs ] ; 2 uses
  %.sroa.8.2.i211467479 = phi ptr [ %i.bz, %.thread474 ], [ %.sroa.8.2.i211467, %bb.bs ] ; 3 uses
  %i.ll = phi ptr [ %i.cn, %.thread474 ], [ %i.gv, %bb.bs ] ; 2 uses
  %i.lm = phi ptr [ %i.co, %.thread474 ], [ %i.gu, %bb.bs ] ; 7 uses
  %i.ln = load i64, ptr %i.ll, align 8, !noundef !11 ; 2 uses
  %i.lo = icmp eq i64 %i.ln, 0
  br i1 %i.lo, label %bb.dg, label %bb.dh

bb.df:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit, %bb.bs
  %i.lp = phi ptr [ %i.ll, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit ], [ %i.gv, %bb.bs ]
  %i.lq = phi ptr [ %i.lm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit ], [ %i.gu, %bb.bs ]
  %i.lr = load ptr, ptr %i.bg, align 8, !noundef !11
  %.not114 = icmp eq ptr %i.lr, null
  br i1 %.not114, label %bb.ej, label %bb.ei

bb.dg:                                            ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.di

bb.dh:                                            ; preds = %bb.de
  %i.ls = load ptr, ptr %i.bh, align 8, !nonnull !11, !noundef !11
  store ptr %i.ls, ptr %i.be, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.ln, ptr %i.lt, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %3, ptr %i.lu, align 8
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.2.i211467479) ]
  %i.lv = trunc nuw i64 %.sroa.028.2.i213465481 to i1
  br i1 %i.lv, label %bb.dr, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.lw = load ptr, ptr %i.bg, align 8, !noundef !11
  %.not108 = icmp eq ptr %i.lw, null
  %i.lx = load ptr, ptr %i.lm, align 8, !nonnull !11, !align !13
  %.sroa.092.0 = select i1 %.not108, ptr %i.lx, ptr %i.bg
  %i.ly = load ptr, ptr %.sroa.092.0, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.lz = load i128, ptr %i.ly, align 16, !range !2804, !noundef !11
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.mb = load i128, ptr %i.ma, align 16
  %i.mc = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.mc, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false)
  store i128 %i.lz, ptr %i.bd, align 16
  %i.md = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i128 %i.mb, ptr %i.md, align 16
  %i.me = load ptr, ptr %i.bi, align 8, !nonnull !11, !align !13, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.mf = atomicrmw add ptr @_RNvNtCsloFShupyl5J_6comemo10accelerate2ID, i64 1 seq_cst, align 8
  store ptr %i.bd, ptr %i.bc, align 8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr null, ptr %i.mg, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store i64 %i.mf, ptr %i.mh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %.sroa.035.0.copyload = load ptr, ptr %i.bg, align 8 ; 2 uses
  %.sroa.537.0.copyload = load ptr, ptr %i.lm, align 8 ; 3 uses
  %.not109 = icmp eq ptr %.sroa.035.0.copyload, null
  br i1 %.not109, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %.sroa.6.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx40, align 8
  store ptr %.sroa.035.0.copyload, ptr %i.ba, align 8
  %.sroa.537.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %.sroa.537.0.copyload, ptr %.sroa.537.0..sroa_idx38, align 8
  %.sroa.6.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx41, align 8
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.537.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.537.0.copyload)
          to label %bb.dm unwind label %bb.bt

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dk
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB2_7Content7guarded(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ba, i64 noundef %.sroa.732.2.i212466480)
          to label %bb.do unwind label %bb.bt

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  invoke void @_RNvMsh_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_6Recipe5apply(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.8.2.i211467479, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.me, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bc, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bb)
          to label %bb.dp unwind label %bb.bt

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.mi = load ptr, ptr %i.bi, align 8, !nonnull !11, !align !13, !noundef !11
  invoke fastcc void @_RINvMNtCsdaEETE4DqmE_13typst_library6engineNtB3_6Engine5delayNtNtNtB5_11foundations7content7ContentECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias nofree noundef align 8 dereferenceable(200) %i.mi, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.am)
          to label %bb.dq unwind label %bb.bt

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.ef, %bb.ee, %bb.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.df

bb.dr:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.mj = inttoptr i64 %.sroa.732.2.i212466480 to ptr
  store ptr %i.mj, ptr %i.az, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.sroa.8.2.i211467479, ptr %i.mk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.ml = load ptr, ptr %i.bg, align 8, !noundef !11 ; 2 uses
  %.not110 = icmp eq ptr %i.ml, null
  %i.mm = load ptr, ptr %i.lm, align 8, !nonnull !11, !align !13 ; 2 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %.sroa.091.0.sroa.sel = select i1 %.not110, ptr %.sroa.gep, ptr %i.lm
  %i.mn = load ptr, ptr %.sroa.091.0.sroa.sel, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !nonnull !11, !noundef !11
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mq = load i64, ptr %i.mp, align 8, !noundef !11
  %i.mr = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not111 = icmp eq i8 %i.mr, 0
  br i1 %.not111, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  store ptr null, ptr %i.ay, align 8
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  invoke void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mo, i64 noundef %i.mq, i64 noundef 0)
          to label %bb.dv unwind label %bb.bt

bb.du:                                            ; preds = %bb.dv, %bb.ds
  %i.ms = phi ptr [ %.pre437, %bb.dv ], [ %i.mm, %bb.ds ]
  %i.mt = phi ptr [ %.pre, %bb.dv ], [ %i.ml, %bb.ds ]
  %.not112 = icmp eq ptr %i.mt, null
  %.sroa.093.0 = select i1 %.not112, ptr %i.ms, ptr %i.bg
  %i.mu = load ptr, ptr %i.bi, align 8, !nonnull !11, !align !13, !noundef !11
  invoke void @_RNvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles4ruleNtB2_14NativeShowRule5apply(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.093.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.mu, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.be)
          to label %bb.dy unwind label %bb.dw

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %.pre = load ptr, ptr %i.bg, align 8
  %.pre437 = load ptr, ptr %i.lm, align 8
  br label %bb.du

bb.dw:                                            ; preds = %bb.du
  %i.mv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mw = load ptr, ptr %i.ay, align 8, !alias.scope !2842, !noundef !11
  %i.mx = icmp eq ptr %i.mw, null
  br i1 %i.mx, label %bb.gw, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ay)
          to label %bb.gw unwind label %bb.eh

bb.dy:                                            ; preds = %bb.du
  %i.my = load ptr, ptr %i.am, align 8, !noundef !11
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %bb.ec, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %.sroa.4206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %.sroa.4206.0.copyload = load i64, ptr %.sroa.4206.0..sroa_idx, align 8 ; 2 uses
  %i.na = icmp eq i64 %.sroa.4206.0.copyload, 1
  br i1 %i.na, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.nb = load ptr, ptr %i.bg, align 8, !alias.scope !2843, !noalias !2844, !noundef !11
  %.not.i171 = icmp eq ptr %i.nb, null
  %i.nc = load ptr, ptr %i.lm, align 8, !alias.scope !2843, !noalias !2844, !nonnull !11, !align !13
  %.sroa.0.0.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i171, ptr %i.nc, ptr %i.bg
  %.sroa.0.0.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  %i.nd = load i64, ptr %.sroa.0.0.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !range !14, !noalias !2844, !noundef !11
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.sroa.4.0 = phi i64 [ %i.nd, %bb.ea ], [ %.sroa.4206.0.copyload, %bb.dz ]
  store i64 %.sroa.4.0, ptr %.sroa.4206.0..sroa_idx, align 8
  br label %bb.ec

bb.ec:                                            ; preds = %bb.dy, %bb.eb
  %i.ne = load ptr, ptr %i.ay, align 8, !alias.scope !2845, !noundef !11
  %i.nf = icmp eq ptr %i.ne, null
  br i1 %i.nf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECsibhcYuwTAtB_13typst_realize.exit173, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ay)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECsibhcYuwTAtB_13typst_realize.exit173 unwind label %bb.bt

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECsibhcYuwTAtB_13typst_realize.exit173: ; preds = %bb.ec, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.ng = load ptr, ptr %i.bi, align 8, !nonnull !11, !align !13, !noundef !11
  invoke fastcc void @_RINvMNtCsdaEETE4DqmE_13typst_library6engineNtB3_6Engine5delayNtNtNtB5_11foundations7content7ContentECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias nofree noundef align 8 dereferenceable(200) %i.ng, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.am)
          to label %bb.ee unwind label %bb.bt

bb.ee:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECsibhcYuwTAtB_13typst_realize.exit173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.nh = load ptr, ptr %i.bg, align 8, !noundef !11
  %.not113 = icmp eq ptr %i.nh, null
  br i1 %.not113, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ni = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  br label %bb.gw

bb.eh:                                            ; preds = %.thread248, %bb.gx, %bb.gv, %bb.gu, %bb.dx, %bb.gw
  %i.nj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ei:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val129 = load ptr, ptr %i.nk, align 8, !nonnull !11, !align !13, !noundef !11
  %i.nl = invoke fastcc noundef nonnull align 8 ptr @_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State5store(ptr nonnull %.val129, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.av)
          to label %bb.el unwind label %bb.bt

bb.ej:                                            ; preds = %bb.df
  %i.nm = load ptr, ptr %i.lq, align 8, !nonnull !11, !align !13, !noundef !11
  br label %bb.ek

bb.ek:                                            ; preds = %bb.el, %bb.ej
  %.sroa.077.5 = phi i8 [ 0, %bb.el ], [ 1, %bb.ej ] ; 3 uses
  %.sroa.043.0 = phi ptr [ %i.nl, %bb.el ], [ %i.nm, %bb.ej ]
  %.sroa.044.0.copyload = load i8, ptr %i.bf, align 16 ; 3 uses
  %.not115 = icmp eq i8 %.sroa.044.0.copyload, 2  ; 2 uses
  br i1 %.not115, label %.thread482, label %bb.em

bb.el:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.ek

.thread482:                                       ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i8 %.sroa.044.0.copyload, ptr %i.au, align 16
  %.sroa.398.0..sroa_idx99484 = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.398.0..sroa_idx99484, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4102, i64 47, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i8 2, ptr %i.at, align 16
  %.sroa.4102.0..sroa_idx103485 = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4102.0..sroa_idx103485, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4102, i64 47, i1 false)
  br label %bb.en

bb.em:                                            ; preds = %bb.ek
  %.sroa.546.sroa.5.0..sroa.546.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 49 ; 2 uses
  %.sroa.546.sroa.4.0..sroa.546.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %.sroa.546.sroa.4.0.copyload = load i8, ptr %.sroa.546.sroa.4.0..sroa.546.0..sroa_idx.sroa_idx, align 16
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4102, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.546.sroa.5.0..sroa.546.0..sroa_idx.sroa_idx, i64 47, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i8 %.sroa.044.0.copyload, ptr %i.au, align 16
  %.sroa.398.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.398.0..sroa_idx99, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.546.0..sroa_idx, i64 47, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i8 %.sroa.546.sroa.4.0.copyload, ptr %i.at, align 16
  %.sroa.4102.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4102.0..sroa_idx103, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.546.sroa.5.0..sroa.546.0..sroa_idx.sroa_idx, i64 47, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke void @_RNvMs1_NtNtCsdaEETE4DqmE_13typst_library13introspection3tagNtB5_7TagElem6packed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %i.au)
          to label %bb.ep unwind label %bb.eo

bb.en:                                            ; preds = %bb.er, %.thread482
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.no = load i8, ptr %i.nn, align 8, !range !18, !noundef !11 ; 2 uses
  %i.np = load ptr, ptr %.sroa.0.0.sroa.gep.i, align 8, !nonnull !11, !align !13, !noundef !11
  %i.nq = icmp eq ptr %i.np, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library11foundations7contexts_1__NtB9_11ContextElemNtNtNtBb_7content7element13NativeElement4ELEM6VTABLE
  %i.nr = select i1 %i.nq, i8 %i.no, i8 0
  store i8 %i.nr, ptr %i.nn, align 8
  %i.ns = load ptr, ptr %i.bi, align 8, !nonnull !11, !align !13, !noundef !11
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 176 ; 2 uses
  %i.nu = load i64, ptr %i.nt, align 8, !noundef !11
  %i.nv = add i64 %i.nu, 1
  store i64 %i.nv, ptr %i.nt, align 8
  %i.nw = load ptr, ptr %i.bi, align 8, !nonnull !11, !align !13, !noundef !11
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 144
  %i.ny = invoke { ptr, i64 } @_RNvMs2_NtCsdaEETE4DqmE_13typst_library6engineNtB5_5Route16check_show_depth(ptr noundef nonnull align 8 %i.nx)
          to label %bb.et unwind label %bb.eo     ; 2 uses

bb.eo:                                            ; preds = %bb.ga, %bb.ep, %bb.gh, %bb.gi, %bb.gf, %bb.gc, %bb.eq, %bb.en, %bb.em
  %.sroa.082.3 = phi i8 [ 1, %bb.ga ], [ 0, %bb.gi ], [ 0, %bb.gh ], [ 0, %bb.gf ], [ 0, %bb.gc ], [ 1, %bb.en ], [ 1, %bb.eq ], [ 1, %bb.ep ], [ 1, %bb.em ]
  %.sroa.080.0 = phi i1 [ true, %bb.ga ], [ false, %bb.gi ], [ false, %bb.gh ], [ false, %bb.gf ], [ true, %bb.gc ], [ true, %bb.en ], [ true, %bb.eq ], [ true, %bb.ep ], [ true, %bb.em ]
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %.body179

.body179:                                         ; preds = %.body.i.i, %.body.thread.i, %bb.eo
  %.sroa.082.3.lpad-body = phi i8 [ %.sroa.082.3, %bb.eo ], [ 1, %.body.thread.i ], [ 1, %.body.i.i ] ; 2 uses
  %.sroa.080.0.lpad-body = phi i1 [ %.sroa.080.0, %bb.eo ], [ true, %.body.thread.i ], [ true, %.body.i.i ]
  %eh.lpad-body180 = phi { ptr, i32 } [ %i.nz, %bb.eo ], [ %eh.lpad-body4.i, %.body.thread.i ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 2 uses
  %i.oa = load i8, ptr %i.at, align 16, !range !22, !noundef !11
end_hunk_8
begin_hunk_9_@_RNvCsibhcYuwTAtB_13typst_realize17visit_regex_match:bb.a
  %i.fl = load ptr, ptr %i.ah, align 8, !noalias !3016, !nonnull !11, !noundef !11 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 96 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 111
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !3032, !noalias !3015, !noundef !11 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.fo, -1               ; 2 uses
  %i.fp = and i8 %i.fo, 127
  %i.fq = zext nneg i8 %i.fp to i64
  %i.fr = load ptr, ptr %i.fm, align 8, !alias.scope !3032, !noalias !3015, !nonnull !11
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 104
  %i.ft = load i64, ptr %i.fs, align 8, !alias.scope !3032, !noalias !3015
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.ft, i64 %i.fq ; 3 uses
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.fr, ptr %i.fm ; 4 uses
  %.not.i.i19.i = icmp ult i64 %i.ec, %.sroa.3.0.i.i
  br i1 %.not.i.i19.i, label %bb.ak, label %.split.i.i20.i

.split.i.i20.i:                                   ; preds = %.noexc112
  %i.fu = icmp eq i64 %i.ec, %.sroa.3.0.i.i
  br i1 %i.fu, label %bb.am, label %bb.al

bb.ak:                                            ; preds = %.noexc112
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.ec
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !3033, !noalias !3034, !noundef !11
  %i.fx = icmp sgt i8 %i.fw, -65
  br i1 %i.fx, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.split.i.i20.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.3.0.i.i, i64 noundef 0, i64 noundef %i.ec, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #27
          to label %.noexc21.i unwind label %bb.ai, !noalias !3015

.noexc21.i:                                       ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak, %.split.i.i20.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.fy = icmp samesign ugt i64 %i.ec, 15
  br i1 %i.fy, label %.lr.ph.i.i.i26.i, label %.lr.ph.preheader.i.i24.i

.lr.ph.preheader.i.i24.i:                         ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.aa, i8 0, i64 15, i1 false), !noalias !3035
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr nonnull readonly align 1 %.sroa.0.0.i.i, i64 range(i64 0, -9223372036854775808) %i.ec, i1 false), !noalias !3036
  %.0..0..0..0..0..sroa.0.0.copyload48.pre.i = load ptr, ptr %i.aa, align 8, !noalias !3037
  %.8..8..8..8..8..sroa.5.0.copyload50.pre.i = load i56, ptr %.8..8..8..8..8..sroa_idx1066, align 8, !noalias !3037
  %i.fz = zext i56 %.8..8..8..8..8..sroa.5.0.copyload50.pre.i to i64
  %i.ga = shl nuw nsw i64 %i.ec, 56
  %.sroa.5.15.insert.shift.i = or disjoint i64 %i.ga, %i.fz
  %.sroa.5.15.insert.insert.i = or disjoint i64 %.sroa.5.15.insert.shift.i, -9223372036854775808
  br label %bb.ap

.lr.ph.i.i.i26.i:                                 ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3038
  store ptr inttoptr (i64 16 to ptr), ptr %i.z, align 8, !noalias !3038
  store i64 0, ptr %i.bm, align 8, !noalias !3038
  call void @llvm.experimental.noalias.scope.decl(metadata !3039)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z, i64 noundef range(i64 0, -9223372036854775808) %i.ec)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i28.i unwind label %bb.an, !noalias !3040

bb.an:                                            ; preds = %.lr.ph.i.i.i26.i
  %i.gb = landingpad { ptr, i32 }
          cleanup
  %.val.i.i27.i = load ptr, ptr %i.z, align 8, !noalias !3038, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val.i.i27.i) #31
          to label %.body32.i unwind label %bb.ao, !noalias !3040

bb.ao:                                            ; preds = %bb.an
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !3040
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i28.i: ; preds = %.lr.ph.i.i.i26.i
  %i.gd = load ptr, ptr %i.z, align 8, !alias.scope !3039, !noalias !3041, !nonnull !11, !noundef !11 ; 2 uses
  %.promoted.i.i.i29.i = load i64, ptr %i.bm, align 8, !alias.scope !3039, !noalias !3041 ; 2 uses
  %scevgep.i.i.i30.i = getelementptr nuw i8, ptr %i.gd, i64 %.promoted.i.i.i29.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i30.i, ptr nonnull readonly align 1 %.sroa.0.0.i.i, i64 range(i64 0, -9223372036854775808) %i.ec, i1 false), !noalias !3042
  %i.ge = add i64 %.promoted.i.i.i29.i, %i.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3038
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.preheader.i.i24.i, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i28.i
  %.sroa.5.0.i = phi i64 [ %i.ge, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i28.i ], [ %.sroa.5.15.insert.insert.i, %.lr.ph.preheader.i.i24.i ]
  %.sroa.0.0.i109 = phi ptr [ %i.gd, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i28.i ], [ %.0..0..0..0..0..sroa.0.0.copyload48.pre.i, %.lr.ph.preheader.i.i24.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store ptr %.sroa.0.0.i109, ptr %i.ag, align 8, !noalias !3016
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3016
  %i.gf = invoke noundef nonnull align 16 ptr @_RNvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB2_10RawContent10header_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.ar unwind label %bb.au, !noalias !3015

.loopexit317:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i44.i
  %lpad.loopexit319 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp318:                            ; preds = %bb.at
  %lpad.loopexit.split-lp320 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit.split-lp318, %.loopexit317
  %lpad.phi321 = phi { ptr, i32 } [ %lpad.loopexit319, %.loopexit317 ], [ %lpad.loopexit.split-lp320, %.loopexit.split-lp318 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gi, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !noalias !3015
  br label %.body32.i

bb.ar:                                            ; preds = %bb.ap
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 64
  store i128 0, ptr %i.gg, align 16, !noalias !3015
  %i.gh = load ptr, ptr %i.ah, align 8, !noalias !3016, !nonnull !11, !noundef !11 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 96 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3043)
  %.val.i35.i = load ptr, ptr %i.gi, align 8, !alias.scope !3043, !noalias !3015 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 111
  %.val1.i36.i = load i8, ptr %i.gj, align 1, !alias.scope !3043, !noalias !3015, !noundef !11
  %.not.i.i.i37.i = icmp sgt i8 %.val1.i36.i, -1
  br i1 %.not.i.i.i37.i, label %bb.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit47.i

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i35.i) ]
  %.not.i.i.i.i.i38.i = icmp eq ptr %.val.i35.i, inttoptr (i64 16 to ptr)
  %i.gk = getelementptr inbounds i8, ptr %.val.i35.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i38.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit47.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i39.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i39.i: ; preds = %bb.as
  %i.gl = atomicrmw sub ptr %i.gk, i64 1 release, align 8, !noalias !3044
  %.not.i.i.i.i40.i = icmp eq i64 %i.gl, 1
  br i1 %.not.i.i.i.i40.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i41.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit47.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i41.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i39.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3045
  %i.gm = getelementptr i8, ptr %.val.i35.i, i64 -8
  %.val.i.i.i.i.i42.i = load i64, ptr %i.gm, align 8, !noalias !3044, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i43.i = icmp ult i64 %.val.i.i.i.i.i42.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i43.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i44.i, label %bb.at, !prof !21

bb.at:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i41.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc45.i unwind label %.loopexit.split-lp318, !noalias !3015

.noexc45.i:                                       ; preds = %bb.at
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i44.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i41.i
  %i.gn = add nuw nsw i64 %.val.i.i.i.i.i42.i, 16
  store ptr %i.gk, ptr %i.bn, align 8, !noalias !3045
  store i64 8, ptr %i.y, align 8, !noalias !3045
  store i64 %i.gn, ptr %i.bo, align 8, !noalias !3045
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.noexc46.i unwind label %.loopexit317, !noalias !3015

.noexc46.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3045
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit47.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit47.i: ; preds = %.noexc46.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i39.i, %bb.as, %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gi, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !noalias !3015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !3031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3016
  br label %_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range7RangeTojEEB2_.exit

bb.au:                                            ; preds = %bb.ap
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ag) #31
          to label %.body32.i unwind label %bb.ah, !noalias !3015

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.body.i186, %.body32.i225, %.body32.i, %.body.i, %.body154.thread, %.body154
  %.pn96 = phi { ptr, i32 } [ %.pn.pn, %.body154 ], [ %.pn.pn303, %.body154.thread ], [ %.pn8.pn.i, %.body32.i ], [ %.pn.pn.i, %.body.i ], [ %.pn8.pn.i226, %.body32.i225 ], [ %.pn.pn.i187, %.body.i186 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsibhcYuwTAtB_13typst_realize10RegexMatchEEBZ_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.al) #31
          to label %bb.fm unwind label %bb.dr

.loopexit:                                        ; preds = %bb.g, %bb.p, %bb.av, %bb.fb, %_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEB2_.exit, %_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range7RangeTojEEB2_.exit, %bb.v, %bb.aj, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, %bb.dx, %bb.en
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke793, %.invoke, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i177
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range7RangeTojEEB2_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit47.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i
  %.val106 = load ptr, ptr %i.bp, align 8, !nonnull !11, !align !13, !noundef !11
  %i.gp = invoke fastcc noundef nonnull align 8 ptr @_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State5store(ptr nonnull %.val106, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ax)
          to label %bb.av unwind label %.loopexit

bb.av:                                            ; preds = %_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range7RangeTojEEB2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.gq = invoke fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize5visit(ptr noalias nofree noundef align 8 dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gp, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cs)
          to label %bb.aw unwind label %.loopexit ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.gr = extractvalue { ptr, i64 } %i.gq, 0      ; 2 uses
  %.not87 = icmp eq ptr %i.gr, null
  br i1 %.not87, label %bb.r, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gs = extractvalue { ptr, i64 } %i.gq, 1
  br label %bb.fg

bb.ay:                                            ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.729.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.633, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  %.not89 = icmp ugt i64 %i.bg, %i.dp
  br i1 %.not89, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ba, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtNtB9_4text8TextElemECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %i.cp)
          to label %bb.cp unwind label %.loopexit322

bb.ba:                                            ; preds = %bb.ay
  %i.gt = load ptr, ptr %i.ct, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE ; 2 uses
  %i.gv = icmp eq ptr %i.gt, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol1__NtB9_10SymbolElemNtNtNtBb_7content7element13NativeElement4ELEM6VTABLE ; 2 uses
  %or.cond99 = or i1 %i.gu, %i.gv
  br i1 %or.cond99, label %bb.bb, label %bb.az

bb.bb:                                            ; preds = %bb.ba
  %i.gw = sub i64 %i.az, %.sroa.02.0481           ; 12 uses
  %i.gx = sub nuw i64 %i.bg, %.sroa.02.0481       ; 12 uses
  br i1 %i.gu, label %bb.by, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.gv, label %bb.bf, label %bb.bd, !prof !21

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 63 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #27
          to label %.noexc151 unwind label %.body154.thread662

.noexc151:                                        ; preds = %bb.bd
  unreachable

.body.i116:                                       ; preds = %bb.bv, %bb.br, %bb.bn, %bb.be
  %.pn.pn.i117 = phi { ptr, i32 } [ %i.ik, %bb.bv ], [ %lpad.phi331, %bb.br ], [ %i.gy, %bb.be ], [ %i.hx, %bb.bn ]
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body154.thread unwind label %bb.bw, !noalias !3046

bb.be:                                            ; preds = %bb.bk
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i116

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3047
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr)
          to label %.noexc152 unwind label %.loopexit322

.noexc152:                                        ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3047
  %i.gz = load ptr, ptr %i.v, align 8, !noalias !3047, !nonnull !11, !noundef !11 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 96 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 111
  %i.hc = load i8, ptr %i.hb, align 1, !alias.scope !3048, !noalias !3046, !noundef !11 ; 2 uses
  %.not.i12.i113 = icmp sgt i8 %i.hc, -1          ; 2 uses
  %i.hd = and i8 %i.hc, 127
  %i.he = zext nneg i8 %i.hd to i64
  %i.hf = load ptr, ptr %i.ha, align 8, !alias.scope !3048, !noalias !3046, !nonnull !11
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gz, i64 104
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !3048, !noalias !3046
  %.sroa.3.0.i13.i114 = select i1 %.not.i12.i113, i64 %i.hh, i64 %i.he ; 4 uses
  %.sroa.0.0.i14.i115 = select i1 %.not.i12.i113, ptr %i.hf, ptr %i.ha ; 4 uses
  %i.hi = icmp ugt i64 %i.gw, %i.gx
  %i.hj = icmp ugt i64 %i.gx, %.sroa.3.0.i13.i114
  %or.cond.i.i.i.i.i = or i1 %i.hi, %i.hj
  br i1 %or.cond.i.i.i.i.i, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %.noexc152
  %i.hk = icmp eq i64 %i.gw, %.sroa.3.0.i13.i114
  br i1 %i.hk, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hl = icmp eq i64 %i.az, %.sroa.02.0481
  br i1 %i.hl, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bj, %bb.bh
  %i.hm = icmp eq i64 %i.gx, %.sroa.3.0.i13.i114
  br i1 %i.hm, label %bb.bl, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i14.i115, i64 %i.gw
  %i.ho = load i8, ptr %i.hn, align 1, !alias.scope !3049, !noalias !3050, !noundef !11
  %i.hp = icmp sgt i8 %i.ho, -65
  br i1 %i.hp, label %bb.bi, label %bb.bk

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i: ; preds = %bb.bi
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i14.i115, i64 %i.gx
  %i.hr = load i8, ptr %i.hq, align 1, !alias.scope !3049, !noalias !3050, !noundef !11
  %i.hs = icmp sgt i8 %i.hr, -65
  br i1 %i.hs, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i, %bb.bj, %.noexc152
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i14.i115, i64 noundef %.sroa.3.0.i13.i114, i64 noundef %i.gw, i64 noundef %i.gx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc.i120 unwind label %bb.be, !noalias !3046

.noexc.i120:                                      ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i, %bb.bi, %bb.bg
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i14.i115, i64 %i.gw ; 2 uses
  %i.hu = sub nuw i64 %i.gx, %i.gw                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.hv = icmp samesign ugt i64 %i.hu, 15
  br i1 %i.hv, label %.lr.ph.i.i.i.i136, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.t, i8 0, i64 15, i1 false), !noalias !3051
  br i1 %.not.i.i.i121, label %bb.bp, label %.lr.ph.preheader.i.i.i122

.lr.ph.preheader.i.i.i122:                        ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull readonly align 1 %i.ht, i64 range(i64 0, -9223372036854775808) %i.hu, i1 false), !noalias !3052
  %.0..0..0..0..0..sroa.050.0.copyload51.pre.i = load ptr, ptr %i.t, align 8, !noalias !3053
  %.8..8..8..8..8..sroa.552.0.copyload54.pre.i = load i56, ptr %.8..8..8..8..8..sroa_idx1067, align 8, !noalias !3053
  %i.hw = zext i56 %.8..8..8..8..8..sroa.552.0.copyload54.pre.i to i64
  br label %bb.bp

.lr.ph.i.i.i.i136:                                ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3054
  store ptr inttoptr (i64 16 to ptr), ptr %i.s, align 8, !noalias !3054
  store i64 0, ptr %i.bq, align 8, !noalias !3054
  call void @llvm.experimental.noalias.scope.decl(metadata !3055)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s, i64 noundef range(i64 0, -9223372036854775808) %i.hu)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i138 unwind label %bb.bn, !noalias !3056

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i136
  %i.hx = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i137 = load ptr, ptr %i.s, align 8, !noalias !3054, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val.i.i.i137) #31
          to label %.body.i116 unwind label %bb.bo, !noalias !3056

bb.bo:                                            ; preds = %bb.bn
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !3056
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i138: ; preds = %.lr.ph.i.i.i.i136
  %i.hz = load ptr, ptr %i.s, align 8, !alias.scope !3055, !noalias !3057, !nonnull !11, !noundef !11 ; 2 uses
  %.promoted.i.i.i.i139 = load i64, ptr %i.bq, align 8, !alias.scope !3055, !noalias !3057 ; 2 uses
  %scevgep.i.i.i.i140 = getelementptr nuw i8, ptr %i.hz, i64 %.promoted.i.i.i.i139
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i.i140, ptr nonnull readonly align 1 %i.ht, i64 range(i64 0, -9223372036854775808) %i.hu, i1 false), !noalias !3058
  %i.ia = add i64 %.promoted.i.i.i.i139, %i.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3054
  br label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.preheader.i.i.i122, %bb.bm
  %.8..8..sroa.552.0.copyload54.i = phi i64 [ %i.hw, %.lr.ph.preheader.i.i.i122 ], [ 0, %bb.bm ]
  %.0..0..sroa.050.0.copyload51.i = phi ptr [ %.0..0..0..0..0..sroa.050.0.copyload51.pre.i, %.lr.ph.preheader.i.i.i122 ], [ null, %bb.bm ]
  %.sroa.552.15.insert.ext.i = shl nuw nsw i64 %i.hu, 56
  %.sroa.552.15.insert.shift.i = or disjoint i64 %.8..8..sroa.552.0.copyload54.i, %.sroa.552.15.insert.ext.i
  %.sroa.552.15.insert.insert.i = or disjoint i64 %.sroa.552.15.insert.shift.i, -9223372036854775808
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i138
  %.sroa.552.0.i = phi i64 [ %i.ia, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i138 ], [ %.sroa.552.15.insert.insert.i, %bb.bp ]
  %.sroa.050.0.i = phi ptr [ %i.hz, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i138 ], [ %.0..0..sroa.050.0.copyload51.i, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store ptr %.sroa.050.0.i, ptr %i.u, align 8, !noalias !3047
  store i64 %.sroa.552.0.i, ptr %.sroa.552.0..sroa_idx.i, align 8, !noalias !3047
  %i.ib = invoke noundef nonnull align 16 ptr @_RNvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB2_10RawContent10header_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.bs unwind label %bb.bv, !noalias !3046

.loopexit327:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i134
  %lpad.loopexit329 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp328:                            ; preds = %bb.bu
  %lpad.loopexit.split-lp330 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.br:                                            ; preds = %.loopexit.split-lp328, %.loopexit327
  %lpad.phi331 = phi { ptr, i32 } [ %lpad.loopexit329, %.loopexit327 ], [ %lpad.loopexit.split-lp330, %.loopexit.split-lp328 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ie, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !noalias !3046
  br label %.body.i116

bb.bs:                                            ; preds = %bb.bq
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 64
  store i128 0, ptr %i.ic, align 16, !noalias !3046
  %i.id = load ptr, ptr %i.v, align 8, !noalias !3047, !nonnull !11, !noundef !11 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 96 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3059)
  %.val.i.i124 = load ptr, ptr %i.ie, align 8, !alias.scope !3059, !noalias !3046 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 111
  %.val1.i.i125 = load i8, ptr %i.if, align 1, !alias.scope !3059, !noalias !3046, !noundef !11
  %.not.i.i.i.i126 = icmp sgt i8 %.val1.i.i125, -1
  br i1 %.not.i.i.i.i126, label %bb.bt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i127

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i124) ]
  %.not.i.i.i.i.i.i128 = icmp eq ptr %.val.i.i124, inttoptr (i64 16 to ptr)
  %i.ig = getelementptr inbounds i8, ptr %.val.i.i124, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i128, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i127, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i129

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i129: ; preds = %bb.bt
  %i.ih = atomicrmw sub ptr %i.ig, i64 1 release, align 8, !noalias !3060
  %.not.i.i.i.i.i130 = icmp eq i64 %i.ih, 1
  br i1 %.not.i.i.i.i.i130, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i131, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i127

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i131: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i129
  fence acquire
end_hunk_9
begin_hunk_10_@_RNvCsibhcYuwTAtB_13typst_realize23find_regex_match_in_str:bb.a
_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE3getCsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SendNtNtNtB3j_5panic11unwind_safe13RefUnwindSafeNtB4s_10UnwindSafeNtB48_4SyncEL_EE3get0jECsibhcYuwTAtB_13typst_realize.exit.i.i.i
  invoke fastcc void @_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE8get_slowCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %.val49, i64 noundef %.val.i.i.i.i.i, i64 noundef %i.cg)
          to label %.noexc54 unwind label %.loopexit85.loopexit.split-lp

.noexc54:                                         ; preds = %_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE3getCsibhcYuwTAtB_13typst_realize.exit.i.i
  %.pre.i = load i64, ptr %i.b, align 8, !range !28, !noalias !3250
  %i.ct = trunc nuw i64 %.pre.i to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !3250, !nonnull !11, !noundef !11
  %i.cw = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !3250, !nonnull !11, !align !13, !noundef !11 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !range !24, !invariant.load !11, !noalias !3251
  %i.da = add nsw i64 %i.cz, -1
  %i.db = and i64 %i.da, -16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  br i1 %i.ct, label %.noexc54._crit_edge, label %bb.ah

.noexc54._crit_edge:                              ; preds = %.noexc54
  %.pre = load ptr, ptr %i.m, align 8, !noalias !3250
  br label %bb.ag

_RNvMs4_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i.i: ; preds = %_RNvMs4_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i, %bb.aa
  store i64 0, ptr %i.c, align 8, !alias.scope !3243, !noalias !3252
  br label %_RNvMs0_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_5Regex6search.exit.i

bb.ag:                                            ; preds = %.noexc54._crit_edge, %_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE3getCsibhcYuwTAtB_13typst_realize.exit.i.thread.i
  %i.de = phi ptr [ %.val49, %_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE3getCsibhcYuwTAtB_13typst_realize.exit.i.thread.i ], [ %.pre, %.noexc54._crit_edge ]
  %i.df = phi ptr [ %i.cs, %_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE3getCsibhcYuwTAtB_13typst_realize.exit.i.thread.i ], [ %i.dd, %.noexc54._crit_edge ]
  %i.dg = phi ptr [ %i.cm, %_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE3getCsibhcYuwTAtB_13typst_realize.exit.i.thread.i ], [ %i.cx, %.noexc54._crit_edge ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  br label %bb.ai

bb.ah:                                            ; preds = %.noexc54
  %i.di = load ptr, ptr %i.l, align 8, !noalias !3250, !nonnull !11, !noundef !11
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dj = phi ptr [ %i.df, %bb.ag ], [ %i.dd, %bb.ah ]
  %i.dk = phi ptr [ %i.dg, %bb.ag ], [ %i.cx, %bb.ah ]
  %i.dl = phi i1 [ true, %bb.ag ], [ false, %bb.ah ]
  %.sroa.0.0.i.i = phi ptr [ %i.dh, %bb.ag ], [ %i.di, %bb.ah ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  %i.dn = load ptr, ptr %i.dm, align 8, !invariant.load !11, !noalias !3251, !nonnull !11
  invoke void %i.dn(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noundef nonnull %i.dj, ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %.sroa.0.0.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d)
          to label %bb.aj unwind label %bb.ao, !noalias !3253

bb.aj:                                            ; preds = %bb.ai
  %.sroa.46.0.copyload.i.i = load ptr, ptr %i.l, align 8, !noalias !3250 ; 7 uses
  %.sroa.57.0.copyload.i.i = load ptr, ptr %i.m, align 8, !noalias !3250 ; 4 uses
  %i.do = ptrtoint ptr %.sroa.46.0.copyload.i.i to i64 ; 2 uses
  br i1 %i.dl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3254
  store i64 %i.do, ptr %i.a, align 8, !noalias !3254
  %i.dp = icmp eq ptr %.sroa.46.0.copyload.i.i, inttoptr (i64 2 to ptr)
  br i1 %i.dp, label %.noexc6.i.i, label %.noexc7.i.i, !prof !12

bb.al:                                            ; preds = %bb.aj
  %.sroa.68.0.copyload.i.i = load i8, ptr %i.n, align 8, !noalias !3250
  %i.dq = trunc nuw i8 %.sroa.68.0.copyload.i.i to i1
  br i1 %i.dq, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i.i) ]
  invoke fastcc void @_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE9put_valueCsibhcYuwTAtB_13typst_realize(ptr noundef nonnull align 8 %.sroa.57.0.copyload.i.i, ptr noalias noundef nonnull align 8 %.sroa.46.0.copyload.i.i) #32
          to label %_RNvMs0_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_5Regex6search.exit.i unwind label %.loopexit85.loopexit.split-lp

bb.an:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.46.0.copyload.i.i) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %.sroa.46.0.copyload.i.i)
          to label %.noexc5.i.i unwind label %.body.thread.i.i, !noalias !3255

.body.thread.i.i:                                 ; preds = %bb.an
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload.i.i, i64 noundef 1400, i64 noundef 8) #29, !noalias !3255
  br label %.body

.noexc5.i.i:                                      ; preds = %bb.an
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload.i.i, i64 noundef 1400, i64 noundef 8) #29, !noalias !3255
  br label %_RNvMs0_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_5Regex6search.exit.i

.noexc6.i.i:                                      ; preds = %bb.ak
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #27
          to label %.noexc56 unwind label %.loopexit.split-lp

.noexc56:                                         ; preds = %.noexc6.i.i
  unreachable

.noexc7.i.i:                                      ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i.i) ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.57.0.copyload.i.i, i64 40
  store atomic i64 %i.do, ptr %i.ds release, align 8, !noalias !3255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3254
  br label %_RNvMs0_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_5Regex6search.exit.i

bb.ao:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs7lTeezpKIYd_14regex_automata4util4pool9PoolGuardNtNtNtBI_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3v_10UnwindSafeNtB3c_4SyncEL_EEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #31
          to label %.body unwind label %bb.ap, !noalias !3255

bb.ap:                                            ; preds = %bb.ao
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !3255
  unreachable

_RNvMs0_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_5Regex6search.exit.i: ; preds = %bb.am, %.noexc7.i.i, %.noexc5.i.i, %_RNvMs4_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3242
  %i.du = load i64, ptr %i.c, align 8, !range !28, !noalias !3242, !noundef !11
  %i.dv = trunc nuw i64 %i.du to i1
  br i1 %i.dv, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_RNvMs0_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_5Regex6search.exit.i
  %i.dw = load i64, ptr %i.o, align 8, !noalias !3242, !noundef !11 ; 3 uses
  %i.dx = load i64, ptr %i.p, align 8, !noalias !3242, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3242
  %.not48 = icmp uge i64 %i.dw, %i.dx
  %i.dy = icmp ule i64 %.sroa.624.0.ph, %i.dw
  %or.cond = and i1 %i.r, %i.dy
  %or.cond192 = or i1 %.not48, %or.cond
  br i1 %or.cond192, label %.outer518.backedge, label %bb.as

bb.ar:                                            ; preds = %_RNvMs0_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_5Regex6search.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3242
  br label %.outer518.backedge

bb.as:                                            ; preds = %bb.aq
  %i.dz = load i64, ptr %i.g, align 8, !range !26, !noundef !11
  switch i64 %i.dz, label %default.unreachable305 [
    i64 0, label %bb.at
    i64 1, label %bb.av
    i64 2, label %bb.au
  ], !prof !3256

bb.at:                                            ; preds = %bb.as
  %i.ea = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtNtCs3oUPovFnLWP_4core4cell4lazyINtB2_8LazyCelljNCNvCsibhcYuwTAtB_13typst_realize23find_regex_match_in_str0E11really_initBT_(ptr noundef nonnull align 8 %i.g)
          to label %bb.av unwind label %.loopexit85.loopexit.split-lp

bb.au:                                            ; preds = %bb.as
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core4cell4lazy14panic_poisoned() #30
          to label %bb.ax unwind label %.loopexit.split-lp

bb.av:                                            ; preds = %bb.at, %bb.as
  %.sroa.018.0 = phi ptr [ %i.i, %bb.as ], [ %i.ea, %bb.at ]
  %i.eb = load i64, ptr %.sroa.018.0, align 8, !noundef !11
  %i.ec = sub i64 %i.eb, %.sroa.0.0.ph524         ; 2 uses
  %i.ed = invoke noundef zeroext i1 @_RNvMs1_NtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB5_11SmallBitSet8contains(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, i64 noundef %i.ec)
          to label %bb.aw unwind label %.loopexit85.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  br i1 %i.ed, label %.outer518.backedge, label %.outer.loopexit

bb.ax:                                            ; preds = %bb.au
  unreachable

bb.ay:                                            ; preds = %bb.f
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6xpQEr8gLsQ_11typst_utils6bitset11SmallBitSetECsibhcYuwTAtB_13typst_realize.exit: ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize25finish_innermost_grouping(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3324)
  %.val1.i = load i32, ptr %i.d, align 8, !alias.scope !3325, !noalias !3324, !noundef !11 ; 2 uses
  %i.e = icmp eq i32 %.val1.i, 0
  br i1 %i.e, label %_RNvYINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8ArrayVecNtCsibhcYuwTAtB_13typst_realize8GroupingKj3_ENtNtB7_13arrayvec_impl12ArrayVecImpl3popBO_.exit.thread, label %_RNvYINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8ArrayVecNtCsibhcYuwTAtB_13typst_realize8GroupingKj3_ENtNtB7_13arrayvec_impl12ArrayVecImpl3popBO_.exit

_RNvYINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8ArrayVecNtCsibhcYuwTAtB_13typst_realize8GroupingKj3_ENtNtB7_13arrayvec_impl12ArrayVecImpl3popBO_.exit: ; preds = %bb.a
  %i.f = zext i32 %.val1.i to i64
  %i.g = add nsw i64 %i.f, -1                     ; 2 uses
  %i.h = trunc nuw i64 %i.g to i32
  store i32 %i.h, ptr %i.d, align 8, !alias.scope !3326, !noalias !3324
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 8, !alias.scope !3327 ; 8 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3327 ; 6 uses
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 17
  %.sroa.551.0.copyload = load i8, ptr %.sroa.551.0..sroa_idx, align 1, !alias.scope !3327 ; 2 uses
  %.not = icmp eq i8 %.sroa.551.0.copyload, 2
  br i1 %.not, label %_RNvYINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8ArrayVecNtCsibhcYuwTAtB_13typst_realize8GroupingKj3_ENtNtB7_13arrayvec_impl12ArrayVecImpl3popBO_.exit.thread, label %bb.b, !prof !15

bb.b:                                             ; preds = %_RNvYINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8ArrayVecNtCsibhcYuwTAtB_13typst_realize8GroupingKj3_ENtNtB7_13arrayvec_impl12ArrayVecImpl3popBO_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %1 = trunc nuw i8 %.sroa.551.0.copyload to i1
  br i1 %1, label %bb.d, label %bb.c

_RNvYINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8ArrayVecNtCsibhcYuwTAtB_13typst_realize8GroupingKj3_ENtNtB7_13arrayvec_impl12ArrayVecImpl3popBO_.exit.thread: ; preds = %bb.a, %_RNvYINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8ArrayVecNtCsibhcYuwTAtB_13typst_realize8GroupingKj3_ENtNtB7_13arrayvec_impl12ArrayVecImpl3popBO_.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #27
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = tail call fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize15finish_grouping(ptr noalias nofree noundef align 8 dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.copyload, i64 noundef %.sroa.0.0.copyload) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaPYV88GQHqL_7bumpalo11collections3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1v_6styles10StyleChainEEECsibhcYuwTAtB_13typst_realize.exit44

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !11 ; 5 uses
  %i.q = icmp ugt i64 %.sroa.0.0.copyload, %i.p
  br i1 %i.q, label %bb.k, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11
  %i.t = sub nuw i64 %i.p, %.sroa.0.0.copyload    ; 3 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %.sroa.0.0.copyload
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.v, align 8, !nonnull !11, !align !13, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3328
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 112 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8, !noalias !3328
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3328
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3329)
  %.not.i.not.i = icmp eq i64 %i.p, %.sroa.0.0.copyload
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !3328
  br i1 %.not.i.not.i, label %_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State11store_slice.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs2_NtNtCsaPYV88GQHqL_7bumpalo11collections7raw_vecINtB5_6RawVecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainEE25reserve_internal_or_panicCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef range(i64 0, 288230376151711744) %i.t, i1 noundef zeroext true) #33
          to label %.noexc.i unwind label %bb.g, !noalias !3328

.noexc.i:                                         ; preds = %bb.f
  %.pre.i.i = load i64, ptr %i.x, align 8, !alias.scope !3329, !noalias !3330
  %.pre.i = load ptr, ptr %i.a, align 8, !alias.scope !3329, !noalias !3330
  %.sroa.8.0.copyload.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3331
  %.sroa.11.0.copyload.pre = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3331
  br label %_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State11store_slice.exit

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3335)
  %i.z = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3336, !noalias !3328, !noundef !11 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3336, !noalias !3328, !nonnull !11, !align !13, !noundef !11
  %i.ac = load ptr, ptr %i.a, align 8, !alias.scope !3336, !noalias !3328, !nonnull !11, !noundef !11
  %i.ad = getelementptr i8, ptr %i.ab, i64 16
  %.val.i.i.i1.i.i = load ptr, ptr %i.ad, align 8, !noalias !3337, !nonnull !11, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i, i64 32 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !3337, !nonnull !11, !noundef !11 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.ac
  br i1 %i.ag, label %bb.i, label %common.resume

bb.i:                                             ; preds = %bb.h
  %i.ah = shl i64 %i.z, 5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  store ptr %i.ai, ptr %i.ae, align 8, !noalias !3337
  br label %common.resume

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.l, %bb.m, %bb.g, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.y, %bb.i ], [ %i.y, %bb.h ], [ %lpad.phi, %bb.m ], [ %lpad.phi, %bb.l ], [ %lpad.phi, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State11store_slice.exit: ; preds = %bb.e, %.noexc.i
  %.sroa.11.0.copyload = phi i64 [ 0, %bb.e ], [ %.sroa.11.0.copyload.pre, %.noexc.i ] ; 6 uses
  %.sroa.8.0.copyload = phi ptr [ %i.w, %bb.e ], [ %.sroa.8.0.copyload.pre, %.noexc.i ] ; 6 uses
  %.sroa.052.0.copyload = phi ptr [ inttoptr (i64 8 to ptr), %bb.e ], [ %.pre.i, %.noexc.i ] ; 6 uses
  %i.aj = phi i64 [ 0, %bb.e ], [ %.pre.i.i, %.noexc.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %.sroa.052.0.copyload, i64 %i.aj
  %i.al = shl nuw nsw i64 %i.t, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull readonly align 8 %i.u, i64 %i.al, i1 false), !noalias !3338
  %i.am = add i64 %i.aj, %i.t                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3328
  %i.an = load i64, ptr %i.o, align 8, !alias.scope !3339, !noundef !11
  %i.ao = icmp ugt i64 %.sroa.0.0.copyload, %i.an
  br i1 %i.ao, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit, label %bb.j

bb.j:                                             ; preds = %_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State11store_slice.exit
  store i64 %.sroa.0.0.copyload, ptr %i.o, align 8, !alias.scope !3339
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.copyload, i64 noundef %i.p, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #27
  unreachable

.loopexit78:                                      ; preds = %.lr.ph108
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph
  %lpad.loopexit79 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.r
  %lpad.loopexit82 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit85 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE7reserveCsibhcYuwTAtB_13typst_realize.exit.thread.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE7reserveCsibhcYuwTAtB_13typst_realize.exit.i, %.lr.ph111
  %lpad.loopexit88 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit78
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit78 ], [ %lpad.loopexit79, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit82, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit85, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit88, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %i.ap = icmp eq i64 %.sroa.11.0.copyload, 0
  br i1 %i.ap, label %common.resume, label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  %i.aq = getelementptr i8, ptr %.sroa.8.0.copyload, i64 16
  %.val.i.i.i1.i = load ptr, ptr %i.aq, align 8, !noalias !3340, !nonnull !11, !noundef !11
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i, i64 32 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !3340, !nonnull !11, !noundef !11 ; 2 uses
  %i.at = icmp eq ptr %i.as, %.sroa.052.0.copyload
  br i1 %i.at, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  %i.au = shl i64 %.sroa.11.0.copyload, 5
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au
  store ptr %i.av, ptr %i.ar, align 8, !noalias !3340
  br label %common.resume

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.j, %_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State11store_slice.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.052.0.copyload) ]
  %i.aw = icmp eq i64 %i.am, 0
  br i1 %i.aw, label %_RNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB5_10GroupByKeyTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBU_6styles10StyleChainENCNvCsibhcYuwTAtB_13typst_realize25finish_innermost_grouping0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB2n_.exit.thread, label %.lr.ph111

.lr.ph111:                                        ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit, %.loopexit
  %.sroa.060.0110 = phi ptr [ %i.bp, %.loopexit ], [ %.sroa.052.0.copyload, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit ] ; 10 uses
  %.sroa.6.066109 = phi i64 [ %i.bq, %.loopexit ], [ %i.am, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit ] ; 4 uses
  %.idx.i = shl i64 %.sroa.6.066109, 5            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.060.0110, i64 %.idx.i
  %.val10.i = load ptr, ptr %.sroa.060.0110, align 8, !noalias !3341, !nonnull !11, !align !13, !noundef !11
  %i.ay = load ptr, ptr %.sroa.4.0.copyload, align 8, !noalias !3341, !nonnull !11, !noundef !11
  %i.az = invoke noundef i8 %i.ay(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val10.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !3289

.noexc:                                           ; preds = %.lr.ph111
  %i.ba = icmp eq i8 %i.az, 2                     ; 2 uses
  %i.bb = icmp eq i64 %.sroa.6.066109, 1
  br i1 %i.bb, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1H_6styles10StyleChainEENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3g_10GroupByKeyB1B_NCNvCsibhcYuwTAtB_13typst_realize25finish_innermost_grouping0ENtNtNtBa_6traits8iterator8Iterator4next0EB54_4foldjNCNvYBV_B5J_5count0EB48_.exit.i, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %.noexc
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.060.0110, i64 32
  %i.bd = add i64 %.idx.i, -64
  %i.be = lshr exact i64 %i.bd, 5
  %i.bf = add nuw nsw i64 %i.be, 1
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize25finish_innermost_grouping0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.i, %.lr.ph.i.i.i.preheader.i
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.bm, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize25finish_innermost_grouping0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  %i.bg = phi ptr [ %i.bl, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize25finish_innermost_grouping0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.i ], [ %i.bc, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3342)
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !3342, !noalias !3343, !nonnull !11, !align !13, !noundef !11
  %i.bh = load ptr, ptr %.sroa.4.0.copyload, align 8, !noalias !3344, !nonnull !11, !noundef !11
  %i.bi = invoke noundef i8 %i.bh(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val1.i.i.i.i.i.i)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !3289

.noexc41:                                         ; preds = %.lr.ph.i.i.i.i
  %i.bj = icmp ne i8 %i.bi, 2
  %i.bk = xor i1 %i.ba, %i.bj
  br i1 %i.bk, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize25finish_innermost_grouping0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1H_6styles10StyleChainEENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3g_10GroupByKeyB1B_NCNvCsibhcYuwTAtB_13typst_realize25finish_innermost_grouping0ENtNtNtBa_6traits8iterator8Iterator4next0EB54_4foldjNCNvYBV_B5J_5count0EB48_.exit.loopexit.i

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize25finish_innermost_grouping0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.i: ; preds = %.noexc41
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 2 uses
  %i.bm = add nuw nsw i64 %.sroa.01.019.i.i.i.i, 1
  %i.bn = icmp eq ptr %i.bl, %i.ax
  br i1 %i.bn, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1H_6styles10StyleChainEENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3g_10GroupByKeyB1B_NCNvCsibhcYuwTAtB_13typst_realize25finish_innermost_grouping0ENtNtNtBa_6traits8iterator8Iterator4next0EB54_4foldjNCNvYBV_B5J_5count0EB48_.exit.loopexit.i, label %.lr.ph.i.i.i.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1H_6styles10StyleChainEENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3g_10GroupByKeyB1B_NCNvCsibhcYuwTAtB_13typst_realize25finish_innermost_grouping0ENtNtNtBa_6traits8iterator8Iterator4next0EB54_4foldjNCNvYBV_B5J_5count0EB48_.exit.loopexit.i: ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB2c_6styles10StyleChainEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB4u_10GroupByKeyB26_NCNvCsibhcYuwTAtB_13typst_realize25finish_innermost_grouping0EB1i_4next0NCINvMB3G_B3D_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4m_EB1i_5count0E0E0B5m_.exit.i.i.i.i, %.noexc41
end_hunk_10
begin_hunk_11_@_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4growCsibhcYuwTAtB_13typst_realize:bb.a
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCsibhcYuwTAtB_13typst_realize.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.g, %bb.e ], [ %i.o, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCsibhcYuwTAtB_13typst_realize.exit37 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.q, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4growCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %narrow.i.not.i = icmp samesign ugt i64 %1, 128102389400760774
  br i1 %narrow.i.not.i, label %bb.d, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.c
  %i.b = mul nuw nsw i64 %1, 72
  %i.c = add nuw nsw i64 %i.b, 16                 ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %.not = icmp eq ptr %i.d, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.e = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef 8) #29 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.g, label %bb.h, !prof !12

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit
  %i.g = getelementptr i8, ptr %i.d, i64 -8
  %.val.i = load i64, ptr %i.g, align 8, !noundef !11 ; 2 uses
  %narrow.i.not.i34 = icmp ugt i64 %.val.i, 128102389400760774
  br i1 %narrow.i.not.i34, label %bb.f, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit37, !prof !12

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.i = mul nuw nsw i64 %.val.i, 72
  %i.j = add nuw nsw i64 %i.i, 16
  %i.k = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.h, i64 noundef %i.j, i64 noundef 8, i64 noundef %i.c) #29 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.c) #30
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.e, %bb.e ], [ %i.k, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit37 ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.m, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4growCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %narrow.i.i = icmp samesign ult i64 %1, 9223372036854775783
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.c
  %i.b = add nuw nsw i64 %1, 16                   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %.not = icmp eq ptr %i.c, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.d = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef 8) #29 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %bb.h, !prof !12

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit
  %i.f = getelementptr i8, ptr %i.c, i64 -8
  %.val.i = load i64, ptr %i.f, align 8, !noundef !11 ; 2 uses
  %narrow.i.i34 = icmp ult i64 %.val.i, 9223372036854775783
  br i1 %narrow.i.i34, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit37, label %bb.f, !prof !21

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.h = add nuw nsw i64 %.val.i, 16
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.g, i64 noundef %i.h, i64 noundef 8, i64 noundef %i.b) #29 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.b) #30
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.d, %bb.e ], [ %i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit37 ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.k, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs2_NtNtCsaPYV88GQHqL_7bumpalo11collections7raw_vecINtB5_6RawVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyE25reserve_internal_or_panicCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3498)
  %i.a = add i64 %2, %1                           ; 3 uses
  %i.b = icmp ult i64 %i.a, %1                    ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.u, label %bb.e, !prof !12

bb.c:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.u, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.013.0.i = phi i64 [ %..i.i.i, %bb.e ], [ %i.a, %bb.c ] ; 3 uses
  %i.c = icmp ugt i64 %.sroa.013.0.i, 576460752303423487
  br i1 %i.c, label %bb.u, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !3498
  %i.e = shl i64 %.val.i, 1
  %..i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.a, i64 %i.e)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.f = shl nuw nsw i64 %.sroa.013.0.i, 4        ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !3498, !noundef !11 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3498, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !3498, !nonnull !11, !noundef !11 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !3498, !nonnull !11, !noundef !11 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !noalias !3498, !nonnull !11, !noundef !11 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = and i64 %i.q, 15
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr i8, ptr %i.o, i64 %i.s     ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult ptr %i.t, %i.p
  %i.y = icmp ugt i64 %i.f, %i.w
  %or.cond.i.i = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond.i.i, label %bb.s, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.g
  %i.z = sub nsw i64 0, %i.f
  %i.aa = getelementptr i8, ptr %i.t, i64 %i.z    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  store ptr %i.aa, ptr %i.n, align 8, !noalias !3498
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.ab = shl i64 %i.h, 4                         ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !3498, !nonnull !11, !noundef !11 ; 7 uses
  %.val35.i = load ptr, ptr %i.ac, align 8, !alias.scope !3498, !nonnull !11, !noundef !11 ; 5 uses
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.val35.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !3498, !nonnull !11, !noundef !11 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !3498, !nonnull !11, !noundef !11 ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !noalias !3498, !nonnull !11, !noundef !11
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = and i64 %i.ak, 15
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr i8, ptr %i.ai, i64 %i.am  ; 4 uses
  %i.ao = icmp ult ptr %i.an, %i.aj
  br i1 %i.ao, label %bb.k, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i.i

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  store ptr %i.an, ptr %i.ah, align 8, !noalias !3498
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %.not.i.i = icmp ugt i64 %i.f, %i.ab
  br i1 %.not.i.i, label %bb.l, label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.ap = tail call noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %.val35.i, i64 noundef 16, i64 noundef 0) #33, !noalias !3498
  br label %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i

bb.l:                                             ; preds = %bb.j
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val35.i, i64 16
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !3498 ; 3 uses
  %.phi.trans.insert30.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 32 ; 3 uses
  %.pre31.i.i.i = load ptr, ptr %.phi.trans.insert30.i.i.i, align 8, !noalias !3498 ; 4 uses
  %i.aq = icmp eq ptr %.pre31.i.i.i, %i.ad
  br i1 %i.aq, label %bb.m, label %._RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i_crit_edge.i.i

._RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i_crit_edge.i.i: ; preds = %bb.l
  %.pre.i.i = load ptr, ptr %.pre.i.i.i, align 8, !noalias !3498 ; 2 uses
  %.pre7.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i: ; preds = %bb.m, %._RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i_crit_edge.i.i
  %.pre-phi8.i.i = phi i64 [ %.pre7.i.i, %._RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i_crit_edge.i.i ], [ %i.bj, %bb.m ]
  %i.ar = phi ptr [ %.pre.i.i, %._RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i_crit_edge.i.i ], [ %i.bd, %bb.m ]
  %i.as = ptrtoint ptr %.pre31.i.i.i to i64
  %i.at = and i64 %i.as, 15
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr i8, ptr %.pre31.i.i.i, i64 %i.au ; 3 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %.pre-phi8.i.i
  %i.ay = icmp ult ptr %i.av, %i.ar
  %i.az = icmp ugt i64 %i.f, %i.ax
  %or.cond.i23.i.i.i = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond.i23.i.i.i, label %bb.o, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit25.i.i.i

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit25.i.i.i: ; preds = %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i
  %i.ba = sub nsw i64 0, %i.f
  %i.bb = getelementptr i8, ptr %i.av, i64 %i.ba  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  store ptr %i.bb, ptr %.phi.trans.insert30.i.i.i, align 8, !noalias !3498
  br label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bc = sub nuw nsw i64 %i.f, %i.ab             ; 2 uses
  %i.bd = load ptr, ptr %.pre.i.i.i, align 8, !noalias !3498, !nonnull !11, !noundef !11 ; 3 uses
  %i.be = ptrtoint ptr %i.ad to i64
  %i.bf = and i64 %i.be, 15
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr i8, ptr %.pre31.i.i.i, i64 %i.bg ; 3 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = icmp ult ptr %i.bh, %i.bd
  %i.bm = icmp ugt i64 %i.bc, %i.bk
  %or.cond.i.i.i.i = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %or.cond.i.i.i.i, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = sub nsw i64 0, %i.bc
  %i.bo = getelementptr i8, ptr %i.bh, i64 %i.bn  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  store ptr %i.bo, ptr %.phi.trans.insert30.i.i.i, align 8, !noalias !3498
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bo, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ad, i64 range(i64 1, 9223372036854775792) %i.ab, i1 false), !noalias !3498
  br label %bb.t

bb.o:                                             ; preds = %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i
  %i.bp = tail call noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %.val35.i, i64 noundef range(i64 8, 17) 16, i64 noundef range(i64 2, 9223372036854775793) %i.f) #33, !noalias !3498 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not22.i.i.i, label %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.thread43.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit25.i.i.i
  %.sroa.013.0.i.i.i = phi ptr [ %i.bb, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit25.i.i.i ], [ %i.bp, %bb.o ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.013.0.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ad, i64 range(i64 1, 9223372036854775792) %i.ab, i1 false), !noalias !3498
  br label %bb.t

bb.q:                                             ; preds = %bb.j
  %i.bq = sub nuw i64 %i.ab, %i.f                 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val35.i, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !3498, !nonnull !11, !noundef !11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !3498, !nonnull !11, !noundef !11 ; 2 uses
  %i.bv = icmp ne ptr %i.bu, %i.ad
  %i.bw = lshr exact i64 %i.ab, 1
  %.not.i.i.i = icmp ult i64 %i.bq, %i.bw
  %or.cond.i = select i1 %i.bv, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bq ; 3 uses
  store ptr %i.bx, ptr %i.bt, align 8, !noalias !3498
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull align 1 %i.ad, i64 range(i64 0, 9223372036854775793) %i.f, i1 false), !noalias !3498
  br label %bb.t

bb.s:                                             ; preds = %bb.g
  %i.by = tail call noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %i.k, i64 noundef 16, i64 noundef %i.f) #33, !noalias !3498
  br label %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i

_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.s, %bb.k
  %.sroa.022.2.i = phi ptr [ %i.ap, %bb.k ], [ %i.by, %bb.s ] ; 2 uses
  %i.bz = icmp eq ptr %.sroa.022.2.i, null
  br i1 %i.bz, label %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.thread43.i, label %bb.t

_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.thread43.i: ; preds = %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i, %bb.o
  tail call void @_RNvNtCsaPYV88GQHqL_7bumpalo5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.f) #30, !noalias !3498
  unreachable

bb.t:                                             ; preds = %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i, %bb.r, %bb.q, %bb.p, %bb.n, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i.i, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i
  %.sroa.022.242.i = phi ptr [ %.sroa.022.2.i, %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.ad, %bb.q ], [ %i.bo, %bb.n ], [ %.sroa.013.0.i.i.i, %bb.p ], [ %i.bx, %bb.r ], [ %i.aa, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.an, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i.i ]
  store ptr %.sroa.022.242.i, ptr %0, align 8, !alias.scope !3498
  store i64 %.sroa.013.0.i, ptr %i.g, align 8, !alias.scope !3498
  ret void

bb.u:                                             ; preds = %bb.d, %bb.c, %bb.b
  tail call void @_RNvNtNtCsaPYV88GQHqL_7bumpalo11collections7raw_vec17capacity_overflow() #30
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs2_NtNtCsaPYV88GQHqL_7bumpalo11collections7raw_vecINtB5_6RawVecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainEE25reserve_internal_or_panicCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3501)
  %i.a = add i64 %2, %1                           ; 3 uses
  %i.b = icmp ult i64 %i.a, %1                    ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.u, label %bb.e, !prof !12

bb.c:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.u, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.013.0.i = phi i64 [ %..i.i.i, %bb.e ], [ %i.a, %bb.c ] ; 3 uses
  %i.c = icmp ugt i64 %.sroa.013.0.i, 288230376151711743
  br i1 %i.c, label %bb.u, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val35.i = load i64, ptr %i.d, align 8, !alias.scope !3501
  %i.e = shl i64 %.val35.i, 1
  %..i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.a, i64 %i.e)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.f = shl nuw nsw i64 %.sroa.013.0.i, 5        ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !3501, !noundef !11 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3501, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !3501, !nonnull !11, !noundef !11 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !3501, !nonnull !11, !noundef !11 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !noalias !3501, !nonnull !11, !noundef !11 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = and i64 %i.q, 7
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr i8, ptr %i.o, i64 %i.s     ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult ptr %i.t, %i.p
  %i.y = icmp ugt i64 %i.f, %i.w
  %or.cond.i.i = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond.i.i, label %bb.s, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.g
  %i.z = sub nsw i64 0, %i.f
  %i.aa = getelementptr i8, ptr %i.t, i64 %i.z    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  store ptr %i.aa, ptr %i.n, align 8, !noalias !3501
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.ab = shl i64 %i.h, 5                         ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !3501, !nonnull !11, !noundef !11 ; 7 uses
  %.val.i = load ptr, ptr %i.ac, align 8, !alias.scope !3501, !nonnull !11, !noundef !11 ; 5 uses
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !3501, !nonnull !11, !noundef !11 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !3501, !nonnull !11, !noundef !11 ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !noalias !3501, !nonnull !11, !noundef !11
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = and i64 %i.ak, 7
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr i8, ptr %i.ai, i64 %i.am  ; 4 uses
  %i.ao = icmp ult ptr %i.an, %i.aj
  br i1 %i.ao, label %bb.k, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i.i

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  store ptr %i.an, ptr %i.ah, align 8, !noalias !3501
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %.not.i.i = icmp ugt i64 %i.f, %i.ab
  br i1 %.not.i.i, label %bb.l, label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.ap = tail call noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %.val.i, i64 noundef 8, i64 noundef 0) #33, !noalias !3501
  br label %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i

bb.l:                                             ; preds = %bb.j
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !3501 ; 3 uses
  %.phi.trans.insert30.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 32 ; 3 uses
  %.pre31.i.i.i = load ptr, ptr %.phi.trans.insert30.i.i.i, align 8, !noalias !3501 ; 4 uses
  %i.aq = icmp eq ptr %.pre31.i.i.i, %i.ad
  br i1 %i.aq, label %bb.m, label %._RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i_crit_edge.i.i

._RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i_crit_edge.i.i: ; preds = %bb.l
  %.pre.i.i = load ptr, ptr %.pre.i.i.i, align 8, !noalias !3501 ; 2 uses
  %.pre7.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i: ; preds = %bb.m, %._RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i_crit_edge.i.i
  %.pre-phi8.i.i = phi i64 [ %.pre7.i.i, %._RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i_crit_edge.i.i ], [ %i.bj, %bb.m ]
  %i.ar = phi ptr [ %.pre.i.i, %._RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i_crit_edge.i.i ], [ %i.bd, %bb.m ]
  %i.as = ptrtoint ptr %.pre31.i.i.i to i64
  %i.at = and i64 %i.as, 7
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr i8, ptr %.pre31.i.i.i, i64 %i.au ; 3 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %.pre-phi8.i.i
  %i.ay = icmp ult ptr %i.av, %i.ar
  %i.az = icmp ugt i64 %i.f, %i.ax
  %or.cond.i23.i.i.i = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond.i23.i.i.i, label %bb.o, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit25.i.i.i

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit25.i.i.i: ; preds = %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i
  %i.ba = sub nsw i64 0, %i.f
  %i.bb = getelementptr i8, ptr %i.av, i64 %i.ba  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  store ptr %i.bb, ptr %.phi.trans.insert30.i.i.i, align 8, !noalias !3501
  br label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bc = sub nuw nsw i64 %i.f, %i.ab             ; 2 uses
  %i.bd = load ptr, ptr %.pre.i.i.i, align 8, !noalias !3501, !nonnull !11, !noundef !11 ; 3 uses
  %i.be = ptrtoint ptr %i.ad to i64
  %i.bf = and i64 %i.be, 7
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr i8, ptr %.pre31.i.i.i, i64 %i.bg ; 3 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = icmp ult ptr %i.bh, %i.bd
  %i.bm = icmp ugt i64 %i.bc, %i.bk
  %or.cond.i.i.i.i = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %or.cond.i.i.i.i, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = sub nsw i64 0, %i.bc
  %i.bo = getelementptr i8, ptr %i.bh, i64 %i.bn  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  store ptr %i.bo, ptr %.phi.trans.insert30.i.i.i, align 8, !noalias !3501
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bo, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ad, i64 range(i64 1, 9223372036854775792) %i.ab, i1 false), !noalias !3501
  br label %bb.t

bb.o:                                             ; preds = %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.thread.i.i.i
  %i.bp = tail call noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %.val.i, i64 noundef range(i64 8, 17) 8, i64 noundef range(i64 2, 9223372036854775793) %i.f) #33, !noalias !3501 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not22.i.i.i, label %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.thread43.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit25.i.i.i
  %.sroa.013.0.i.i.i = phi ptr [ %i.bb, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit25.i.i.i ], [ %i.bp, %bb.o ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.013.0.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ad, i64 range(i64 1, 9223372036854775792) %i.ab, i1 false), !noalias !3501
  br label %bb.t

bb.q:                                             ; preds = %bb.j
  %i.bq = sub nuw i64 %i.ab, %i.f                 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !3501, !nonnull !11, !noundef !11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !3501, !nonnull !11, !noundef !11 ; 2 uses
  %i.bv = icmp ne ptr %i.bu, %i.ad
  %i.bw = lshr exact i64 %i.ab, 1
  %.not.i.i.i = icmp ult i64 %i.bq, %i.bw
  %or.cond.i = select i1 %i.bv, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bq ; 3 uses
  store ptr %i.bx, ptr %i.bt, align 8, !noalias !3501
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull align 1 %i.ad, i64 range(i64 0, 9223372036854775793) %i.f, i1 false), !noalias !3501
  br label %bb.t

bb.s:                                             ; preds = %bb.g
  %i.by = tail call noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %i.k, i64 noundef 8, i64 noundef %i.f) #33, !noalias !3501
  br label %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i

_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.s, %bb.k
  %.sroa.022.2.i = phi ptr [ %i.ap, %bb.k ], [ %i.by, %bb.s ] ; 2 uses
  %i.bz = icmp eq ptr %.sroa.022.2.i, null
  br i1 %i.bz, label %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.thread43.i, label %bb.t

_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.thread43.i: ; preds = %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i, %bb.o
  tail call void @_RNvNtCsaPYV88GQHqL_7bumpalo5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.f) #30, !noalias !3501
  unreachable

bb.t:                                             ; preds = %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i, %bb.r, %bb.q, %bb.p, %bb.n, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i.i, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i
  %.sroa.022.242.i = phi ptr [ %.sroa.022.2.i, %_RNvXsc_CsaPYV88GQHqL_7bumpaloRNtB5_4BumpNtNtB5_5alloc5Alloc7reallocCsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.ad, %bb.q ], [ %i.bo, %bb.n ], [ %.sroa.013.0.i.i.i, %bb.p ], [ %i.bx, %bb.r ], [ %i.aa, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.an, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCsibhcYuwTAtB_13typst_realize.exit.i.i ]
  store ptr %.sroa.022.242.i, ptr %0, align 8, !alias.scope !3501
  store i64 %.sroa.013.0.i, ptr %i.g, align 8, !alias.scope !3501
  ret void

bb.u:                                             ; preds = %bb.d, %bb.c, %bb.b
  tail call void @_RNvNtNtCsaPYV88GQHqL_7bumpalo11collections7raw_vec17capacity_overflow() #30
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE8get_slowCsibhcYuwTAtB_13typst_realize(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 5 uses
  %i.b = alloca [1400 x i8], align 8              ; 5 uses
  %i.c = alloca [1400 x i8], align 8              ; 5 uses
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = cmpxchg ptr %i.e, i64 0, i64 1 acq_rel acquire, align 8
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !11 ; 3 uses
  %i.j = icmp ult i64 %i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.g, label %bb.k

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val13 = load ptr, ptr %i.l, align 8, !nonnull !11, !noundef !11
  %i.m = getelementptr i8, ptr %1, i64 32
  %.val14 = load ptr, ptr %i.m, align 8, !nonnull !11, !align !13, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %.val14, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !11, !noalias !3519, !nonnull !11
  call void %i.o(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.c, ptr noundef nonnull %.val13) #32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !range !27, !alias.scope !3520, !noundef !11
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.p, ptr noundef nonnull align 8 dereferenceable(1400) %i.c, i64 1400, i1 false)
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.p, ptr noundef nonnull align 8 dereferenceable(1400) %i.c, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.t = inttoptr i64 %2 to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.u, align 8
  store i64 1, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.w, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit28

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit28: ; preds = %bb.y, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i27, %bb.u, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheE3newCsibhcYuwTAtB_13typst_realize.exit9, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit
  ret void

common.resume:                                    ; preds = %bb.i, %bb.f, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.w ], [ %i.s, %bb.f ], [ %i.x, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #27
  unreachable

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsibhcYuwTAtB_13typst_realize.exit39
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #30
          to label %.noexc21 unwind label %bb.i

.noexc21:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.a) #31
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_11
begin_hunk_12_@_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE9put_valueCsibhcYuwTAtB_13typst_realize:bb.a
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsibhcYuwTAtB_13typst_realize.exit28.7 unwind label %.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsibhcYuwTAtB_13typst_realize.exit28.7: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit.sink.split.i22.7, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.7, %bb.bn
  %i.gr = load i64, ptr %i.g, align 8, !noundef !11 ; 2 uses
  %i.gs = icmp ult i64 %i.l, %i.gr
  br i1 %i.gs, label %bb.bu, label %bb.j

bb.bu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsibhcYuwTAtB_13typst_realize.exit28.7
  %i.gt = load ptr, ptr %i.m, align 8, !nonnull !11, !noundef !11
  %i.gu = getelementptr inbounds nuw [64 x i8], ptr %i.gt, i64 %i.l ; 5 uses
  %i.gv = cmpxchg ptr %i.gu, i32 0, i32 1 acquire monotonic, align 4, !noalias !3544
  %i.gw = extractvalue { i32, i1 } %i.gv, 1
  br i1 %i.gw, label %bb.bv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsibhcYuwTAtB_13typst_realize.exit28.8

bb.bv:                                            ; preds = %bb.bu
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 4 ; 2 uses
  %i.gy = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3544
  %i.gz = and i64 %i.gy, 9223372036854775807
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEE8try_lockCsibhcYuwTAtB_13typst_realize.exit.8, label %bb.bw, !prof !21

bb.bw:                                            ; preds = %bb.bv
  %i.hb = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #33
          to label %.noexc12.8 unwind label %.loopexit

.noexc12.8:                                       ; preds = %bb.bw
  %i.hc = xor i1 %i.hb, true
  %i.hd = zext i1 %i.hc to i8
  br label %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEE8try_lockCsibhcYuwTAtB_13typst_realize.exit.8

_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEE8try_lockCsibhcYuwTAtB_13typst_realize.exit.8: ; preds = %.noexc12.8, %bb.bv
  %.sroa.01.0.i.i.8 = phi i8 [ %i.hd, %.noexc12.8 ], [ 0, %bb.bv ] ; 2 uses
  %i.he = load atomic i8, ptr %i.gx monotonic, align 1, !noalias !3544
  %.not.i.not.i.not.8 = icmp eq i8 %i.he, 0
  br i1 %.not.i.not.i.not.8, label %bb.k, label %bb.bx

bb.bx:                                            ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEE8try_lockCsibhcYuwTAtB_13typst_realize.exit.8
  %i.hf = trunc nuw i8 %.sroa.01.0.i.i.8 to i1
  br i1 %i.hf, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.8, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hg = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3547
  %i.hh = and i64 %i.hg, 9223372036854775807
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.8, label %bb.bz, !prof !21

bb.bz:                                            ; preds = %bb.by
  %i.hj = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #33
          to label %.noexc26.8 unwind label %.loopexit

.noexc26.8:                                       ; preds = %bb.bz
  br i1 %i.hj, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.8, label %bb.ca

bb.ca:                                            ; preds = %.noexc26.8
  store atomic i8 1, ptr %i.gx monotonic, align 1, !noalias !3547
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.8

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.8: ; preds = %bb.ca, %.noexc26.8, %bb.by, %bb.bx
  %i.hk = atomicrmw xchg ptr %i.gu, i32 0 release, align 4, !noalias !3547
  %i.hl = icmp eq i32 %i.hk, 2
  br i1 %i.hl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit.sink.split.i22.8, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsibhcYuwTAtB_13typst_realize.exit28.8, !prof !12

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit.sink.split.i22.8: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.8
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.gu)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsibhcYuwTAtB_13typst_realize.exit28.8 unwind label %.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsibhcYuwTAtB_13typst_realize.exit28.8: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit.sink.split.i22.8, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.8, %bb.bu
  %i.hm = load i64, ptr %i.g, align 8, !noundef !11 ; 2 uses
  %i.hn = icmp ult i64 %i.l, %i.hm
  br i1 %i.hn, label %bb.cb, label %bb.j

bb.cb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsibhcYuwTAtB_13typst_realize.exit28.8
  %i.ho = load ptr, ptr %i.m, align 8, !nonnull !11, !noundef !11
  %i.hp = getelementptr inbounds nuw [64 x i8], ptr %i.ho, i64 %i.l ; 5 uses
  %i.hq = cmpxchg ptr %i.hp, i32 0, i32 1 acquire monotonic, align 4, !noalias !3544
  %i.hr = extractvalue { i32, i1 } %i.hq, 1
  br i1 %i.hr, label %bb.cc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsibhcYuwTAtB_13typst_realize.exit28.9

bb.cc:                                            ; preds = %bb.cb
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 4 ; 2 uses
  %i.ht = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3544
  %i.hu = and i64 %i.ht, 9223372036854775807
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEE8try_lockCsibhcYuwTAtB_13typst_realize.exit.9, label %bb.cd, !prof !21

bb.cd:                                            ; preds = %bb.cc
  %i.hw = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #33
          to label %.noexc12.9 unwind label %.loopexit

.noexc12.9:                                       ; preds = %bb.cd
  %i.hx = xor i1 %i.hw, true
  %i.hy = zext i1 %i.hx to i8
  br label %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEE8try_lockCsibhcYuwTAtB_13typst_realize.exit.9

_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEE8try_lockCsibhcYuwTAtB_13typst_realize.exit.9: ; preds = %.noexc12.9, %bb.cc
  %.sroa.01.0.i.i.9 = phi i8 [ %i.hy, %.noexc12.9 ], [ 0, %bb.cc ] ; 2 uses
  %i.hz = load atomic i8, ptr %i.hs monotonic, align 1, !noalias !3544
  %.not.i.not.i.not.9 = icmp eq i8 %i.hz, 0
  br i1 %.not.i.not.i.not.9, label %bb.k, label %bb.ce

bb.ce:                                            ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEE8try_lockCsibhcYuwTAtB_13typst_realize.exit.9
  %i.ia = trunc nuw i8 %.sroa.01.0.i.i.9 to i1
  br i1 %i.ia, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.9, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ib = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3547
  %i.ic = and i64 %i.ib, 9223372036854775807
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.9, label %bb.cg, !prof !21

bb.cg:                                            ; preds = %bb.cf
  %i.ie = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #33
          to label %.noexc26.9 unwind label %.loopexit

.noexc26.9:                                       ; preds = %bb.cg
  br i1 %i.ie, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.9, label %bb.ch

bb.ch:                                            ; preds = %.noexc26.9
  store atomic i8 1, ptr %i.hs monotonic, align 1, !noalias !3547
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.9

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.9: ; preds = %bb.ch, %.noexc26.9, %bb.cf, %bb.ce
  %i.if = atomicrmw xchg ptr %i.hp, i32 0 release, align 4, !noalias !3547
  %i.ig = icmp eq i32 %i.if, 2
  br i1 %i.ig, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit.sink.split.i22.9, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsibhcYuwTAtB_13typst_realize.exit28.9, !prof !12

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit.sink.split.i22.9: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.9
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.hp)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsibhcYuwTAtB_13typst_realize.exit28.9 unwind label %.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsibhcYuwTAtB_13typst_realize.exit28.9: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit.sink.split.i22.9, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.9, %bb.cb
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.f

.loopexit:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit.sink.split.i22.9, %bb.cg, %bb.cd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit.sink.split.i22.8, %bb.bz, %bb.bw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit.sink.split.i22.7, %bb.bs, %bb.bp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit.sink.split.i22.6, %bb.bl, %bb.bi, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit.sink.split.i22.5, %bb.be, %bb.bb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit.sink.split.i22.4, %bb.ax, %bb.au, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit.sink.split.i22.3, %bb.aq, %bb.an, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit.sink.split.i22.2, %bb.aj, %bb.ag, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit.sink.split.i22.1, %bb.ac, %bb.z, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit.sink.split.i22, %bb.i, %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.loopexit.split-lp:                               ; preds = %bb.d, %bb.j, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ci:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize(ptr %1) #31
          to label %common.resume unwind label %bb.s
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBS_6styles10StyleChainEE8grow_oneCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !16, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3550)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3550
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !3550
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 32)
  %i.f = load i64, ptr %i.a, align 8, !range !28, !noalias !3550, !noundef !11
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !32, !noalias !3550, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !3550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3550
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !3550, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3550
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !3550
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !3550
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsibhcYuwTAtB_13typst_realize(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 16, 33) %2) unnamed_addr #9 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = icmp ugt i64 %i.b, 9223372036854775800
  %or.cond.not = or i1 %i.c, %i.d
  br i1 %or.cond.not, label %bb.f, label %bb.b, !prof !3551

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %3 = mul nuw i64 %2, %.0.val                    ; 2 uses
  %i.f = icmp uge i64 %i.b, %3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %3, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.b) #29
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.b, i64 noundef 8) #29
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.i, %bb.d ] ; 2 uses
  %i.j = icmp eq ptr %.pn8, null
  br i1 %i.j, label %bb.e, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.k, align 8
  br label %bb.f

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.m, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128CsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8 ; 3 uses
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.32.0.copyload = load i64, ptr %.sroa.32.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !11
  %i.c = shl i64 %i.b, 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !noundef !11
  %i.f = or i64 %i.c, %i.e                        ; 2 uses
  %i.g = xor i64 %i.f, %.sroa.32.0.copyload       ; 3 uses
  %i.h = add i64 %.sroa.23.0.copyload, %.sroa.0.0.copyload ; 3 uses
  %i.i = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.23.0.copyload, i64 %.sroa.23.0.copyload, i64 13)
  %i.j = xor i64 %i.i, %i.h                       ; 3 uses
  %i.k = tail call noundef i64 @llvm.fshl.i64(i64 %i.h, i64 %i.h, i64 32)
  %i.l = add i64 %i.g, %.sroa.13.0.copyload       ; 2 uses
  %i.m = tail call noundef i64 @llvm.fshl.i64(i64 %i.g, i64 %i.g, i64 16)
  %i.n = xor i64 %i.m, %i.l                       ; 3 uses
  %i.o = add i64 %i.n, %i.k                       ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 21)
  %i.q = xor i64 %i.p, %i.o                       ; 3 uses
  %i.r = add i64 %i.l, %i.j                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 17)
  %i.t = xor i64 %i.r, %i.s                       ; 3 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 32)
  %i.v = xor i64 %i.o, %i.f
  %i.w = xor i64 %i.u, 238
  %i.x = add i64 %i.v, %i.t                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 13)
  %i.z = xor i64 %i.x, %i.y                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ab = add i64 %i.q, %i.w                      ; 2 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 16)
  %i.ad = xor i64 %i.ac, %i.ab                    ; 3 uses
  %i.ae = add i64 %i.ad, %i.aa                    ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 21)
  %i.ag = xor i64 %i.af, %i.ae                    ; 3 uses
  %i.ah = add i64 %i.z, %i.ab                     ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 17)
  %i.aj = xor i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 32)
  %i.al = add i64 %i.aj, %i.ae                    ; 3 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 13)
  %i.an = xor i64 %i.am, %i.al                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.ap = add i64 %i.ag, %i.ak                    ; 2 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 16)
  %i.ar = xor i64 %i.aq, %i.ap                    ; 3 uses
  %i.as = add i64 %i.ar, %i.ao                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21)
  %i.au = xor i64 %i.at, %i.as                    ; 3 uses
  %i.av = add i64 %i.an, %i.ap                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 17)
  %i.ax = xor i64 %i.aw, %i.av                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 32)
  %i.az = add i64 %i.ax, %i.as                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 13)
  %i.bb = xor i64 %i.ba, %i.az                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bd = add i64 %i.au, %i.ay                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 16)
  %i.bf = xor i64 %i.be, %i.bd                    ; 3 uses
  %i.bg = add i64 %i.bf, %i.bc                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 21) ; 2 uses
  %i.bi = xor i64 %i.bh, %i.bg                    ; 3 uses
  %i.bj = add i64 %i.bb, %i.bd                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 17)
  %i.bl = xor i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 32) ; 2 uses
  %i.bn = xor i64 %i.bm, %i.bh
  %i.bo = xor i64 %i.bn, %i.bl
  %i.bp = xor i64 %i.bl, 221                      ; 3 uses
  %i.bq = add i64 %i.bp, %i.bg                    ; 3 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 13)
  %i.bs = xor i64 %i.br, %i.bq                    ; 3 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 32)
  %i.bu = add i64 %i.bi, %i.bm                    ; 2 uses
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 16)
  %i.bw = xor i64 %i.bv, %i.bu                    ; 3 uses
  %i.bx = add i64 %i.bt, %i.bw                    ; 2 uses
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 21)
  %i.bz = xor i64 %i.bx, %i.by                    ; 3 uses
  %i.ca = add i64 %i.bs, %i.bu                    ; 3 uses
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 17)
  %i.cc = xor i64 %i.ca, %i.cb                    ; 3 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 32)
  %i.ce = add i64 %i.cc, %i.bx                    ; 3 uses
  %i.cf = tail call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 13)
  %i.cg = xor i64 %i.cf, %i.ce                    ; 3 uses
  %i.ch = tail call noundef i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 32)
  %i.ci = add i64 %i.bz, %i.cd                    ; 2 uses
  %i.cj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 16)
  %i.ck = xor i64 %i.cj, %i.ci                    ; 3 uses
  %i.cl = add i64 %i.ck, %i.ch                    ; 2 uses
  %i.cm = tail call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 21)
  %i.cn = xor i64 %i.cm, %i.cl                    ; 3 uses
  %i.co = add i64 %i.cg, %i.ci                    ; 3 uses
  %i.cp = tail call noundef i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 17)
  %i.cq = xor i64 %i.cp, %i.co                    ; 3 uses
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 32)
  %i.cs = add i64 %i.cq, %i.cl
  %i.ct = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 13)
  %i.cu = xor i64 %i.ct, %i.cs                    ; 3 uses
  %i.cv = add i64 %i.cn, %i.cr                    ; 2 uses
  %i.cw = tail call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 16)
  %i.cx = xor i64 %i.cw, %i.cv                    ; 2 uses
  %i.cy = tail call noundef i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 21)
  %i.cz = add i64 %i.cu, %i.cv                    ; 3 uses
  %i.da = tail call noundef i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 17)
  %i.db = tail call noundef i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 32)
  %i.dc = xor i64 %i.cy, %i.da
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = xor i64 %i.dd, %i.cz
  %i.df = insertvalue { i64, i64 } poison, i64 %i.bo, 0
  %i.dg = insertvalue { i64, i64 } %i.df, i64 %i.de, 1
  ret { i64, i64 } %i.dg
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %.val10 = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %.not.i = icmp eq ptr %.val10, inttoptr (i64 16 to ptr) ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.val10, i64 -16
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val10, i64 -8
  %.val.i = load i64, ptr %i.d, align 8, !noundef !11
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 3 uses
  %i.g = sub i64 %.sroa.02.0.i, %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  %i.i = add i64 %i.f, %1                         ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.f
  br i1 %i.j, label %bb.f, label %bb.e, !prof !12

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %..i20, %bb.e ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit ] ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.d
  %i.k = load atomic i64, ptr %i.c acquire, align 8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit.thread, label %bb.g
end_hunk_12
begin_hunk_13_@_RNvNtCsibhcYuwTAtB_13typst_realize6spaces15collapse_spaces:bb.a

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !3633)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !3633, !noalias !3634, !nonnull !11, !noundef !11 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !3633, !noalias !3634, !nonnull !11, !align !13, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !invariant.load !11, !noalias !3635, !nonnull !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3636
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !11, !noalias !3635, !nonnull !11
  call void %i.bc(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.aw) #32, !noalias !3635, !inline_history !3620
  %i.bd = load i128, ptr %i.a, align 16, !noalias !3636, !noundef !11
  %i.be = icmp eq i128 %i.bd, 74484837202795168974482589160156483361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3636
  br i1 %i.be, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i, label %bb.s, !prof !21

bb.s:                                             ; preds = %bb.r
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout7spacing1__NtB9_5HElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef range(i8 0, 3) 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.av) #30, !noalias !3637
  unreachable

_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.r
  %i.bf = load i8, ptr %i.aw, align 1, !range !18, !alias.scope !3638, !noalias !3639, !noundef !11
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.loopexit, label %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread

.loopexit:                                        ; preds = %bb.m, %.split.us, %bb.p, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i, %.split93.us
  %i.bh = phi i64 [ %.us-phi94, %.split93.us ], [ %.us-phi83, %.split.us ], [ %.us-phi83, %bb.p ], [ %.us-phi83, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.af, %bb.m ] ; 2 uses
  %i.bi = phi ptr [ %.us-phi96, %.split93.us ], [ %.us-phi85, %.split.us ], [ %.us-phi85, %bb.p ], [ %.us-phi85, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.ag, %bb.m ] ; 2 uses
  %.sroa.0.038 = phi i64 [ %.us-phi98, %.split93.us ], [ %.us-phi87, %.split.us ], [ %.us-phi87, %bb.p ], [ %.us-phi87, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i ], [ %.sroa.0.072, %bb.m ] ; 2 uses
  %i.bj = icmp eq i8 %.sroa.013.0.ph101, 3
  br i1 %i.bj, label %bb.t, label %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread

_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bk = icmp ult i64 %i.af, %i.d
  br i1 %i.bk, label %.lr.ph.split, label %.outer._crit_edge

_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread: ; preds = %bb.o, %.lr.ph.split, %bb.c, %bb.e, %.lr.ph.split.us, %.split93.us, %bb.q, %bb.p, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i, %.loopexit, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit26
  %i.bl = phi i64 [ %.us-phi83, %bb.q ], [ %i.bh, %.loopexit ], [ %.us-phi83, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.bh, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit26 ], [ %.us-phi83, %bb.p ], [ %.us-phi94, %.split93.us ], [ %i.i, %.lr.ph.split.us ], [ %i.i, %bb.e ], [ %i.i, %bb.c ], [ %i.af, %.lr.ph.split ], [ %i.af, %bb.o ] ; 2 uses
  %i.bm = phi ptr [ %.us-phi85, %bb.q ], [ %i.bi, %.loopexit ], [ %.us-phi85, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.bi, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit26 ], [ %.us-phi85, %bb.p ], [ %.us-phi96, %.split93.us ], [ %i.j, %.lr.ph.split.us ], [ %i.j, %bb.e ], [ %i.j, %bb.c ], [ %i.ag, %.lr.ph.split ], [ %i.ag, %bb.o ]
  %.sroa.0.037 = phi i64 [ %.us-phi87, %bb.q ], [ %.sroa.0.038, %.loopexit ], [ %.us-phi87, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i ], [ %.sroa.0.038, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit26 ], [ %.us-phi87, %bb.p ], [ %.us-phi98, %.split93.us ], [ %.sroa.0.0.ph106, %.lr.ph.split.us ], [ %.sroa.0.0.ph106, %bb.e ], [ %.sroa.0.0.ph106, %bb.c ], [ %.sroa.0.072, %.lr.ph.split ], [ %.sroa.0.072, %bb.o ]
  %.sroa.017.1 = phi i64 [ %.sroa.017.0.ph99, %bb.q ], [ %.sroa.017.0.ph99, %.loopexit ], [ %.sroa.017.0.ph99, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i ], [ %.sroa.017.0.ph99, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit26 ], [ %.sroa.017.0.ph99, %bb.p ], [ %.sroa.017.0.ph99, %.split93.us ], [ %.sroa.017.0.ph99, %.lr.ph.split.us ], [ %spec.select, %bb.e ], [ %.sroa.017.0.ph99, %bb.c ], [ %.sroa.017.0.ph99, %.lr.ph.split ], [ %.sroa.017.0.ph99, %bb.o ] ; 2 uses
  %.sroa.013.1 = phi i8 [ %.sroa.013.0.ph101, %bb.q ], [ 1, %.loopexit ], [ %.sroa.013.0.ph101, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i ], [ 1, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit26 ], [ %.sroa.013.0.ph101, %bb.p ], [ 2, %.split93.us ], [ 2, %.lr.ph.split.us ], [ %spec.select110, %bb.e ], [ 1, %bb.c ], [ 2, %bb.o ], [ %.sroa.013.0.ph101, %.lr.ph.split ] ; 2 uses
  %.sroa.03.2 = phi i64 [ %.sroa.03.0.ph103, %bb.q ], [ %.sroa.03.0.ph103, %.loopexit ], [ %.sroa.03.0.ph103, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.bw, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit26 ], [ %.sroa.03.0.ph103, %bb.p ], [ %.sroa.03.0.ph103, %.split93.us ], [ %.sroa.03.0.ph103, %.lr.ph.split.us ], [ %.sroa.03.0.ph103, %bb.e ], [ %.sroa.03.0.ph103, %bb.c ], [ %.sroa.03.0.ph103, %.lr.ph.split ], [ %.sroa.03.0.ph103, %bb.o ] ; 3 uses
  %i.bn = icmp ult i64 %.sroa.03.2, %.sroa.0.037
  br i1 %i.bn, label %bb.y, label %.outer

bb.t:                                             ; preds = %.loopexit
  %i.bo = add i64 %.sroa.017.0.ph99, 1            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3640)
  %i.bp = icmp ugt i64 %.sroa.03.0.ph103, %i.d
  br i1 %i.bp, label %bb.u, label %bb.v, !prof !12

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.03.0.ph103, i64 noundef range(i64 0, 288230376151711744) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #27, !noalias !3641
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bq = icmp ugt i64 %i.bo, %.sroa.03.0.ph103
  br i1 %i.bq, label %bb.w, label %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit.i24, !prof !12

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.bo, i64 noundef %.sroa.03.0.ph103, i64 noundef range(i64 0, 288230376151711744) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #27, !noalias !3641
  unreachable

_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit.i24: ; preds = %bb.v
  %i.br = sub nuw nsw i64 %.sroa.03.0.ph103, %i.bo ; 2 uses
  %i.bs = sub nuw nsw i64 %i.d, %i.br
  %.not.i25 = icmp ugt i64 %.sroa.017.0.ph99, %i.bs
  br i1 %.not.i25, label %bb.x, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit26, !prof !12

bb.x:                                             ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit.i24
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #27, !noalias !3640
  unreachable

_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit26: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit.i24
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.bo
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.sroa.017.0.ph99
  %i.bv = shl nuw nsw i64 %i.br, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr nonnull align 8 %i.bt, i64 %i.bv, i1 false), !alias.scope !3640, !noalias !3642
  %i.bw = add nsw i64 %.sroa.03.0.ph103, -1
  br label %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread

.outer:                                           ; preds = %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread, %bb.y
  %i.bx = add i64 %.sroa.03.2, 1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.by = icmp ult i64 %i.bl, %i.d
  br i1 %i.by, label %.lr.ph, label %.outer._crit_edge

bb.y:                                             ; preds = %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.sroa.03.2
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false)
  br label %.outer
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs4Q1BBFz20BJ_8arrayvec6errorsINtB5_13CapacityErrorNtCsibhcYuwTAtB_13typst_realize8GroupingENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtBY_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @80, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsibhcYuwTAtB_13typst_realize, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !align !13, !noundef !11
  %i.e = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @81, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val4 = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %.not.i = icmp eq ptr %.val4, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.val4, i64 -16 ; 2 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not = icmp eq i64 %i.c, 1
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.val4, i64 -8
  %.val.i = load i64, ptr %i.d, align 8, !noundef !11 ; 2 uses
  %i.e = icmp ult i64 %.val.i, 144115188075855872
  %i.f = shl nuw i64 %.val.i, 7
  %i.g = or disjoint i64 %i.f, 16                 ; 2 uses
  %i.h = icmp ult i64 %i.g, 9223372036854775791
  %narrow.i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE4sizeCsibhcYuwTAtB_13typst_realize.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE4sizeCsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  store i64 16, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !11 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE4sizeCsibhcYuwTAtB_13typst_realize.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit
  %.sroa.0.0.i1027 = phi i64 [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE4sizeCsibhcYuwTAtB_13typst_realize.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [128 x i8], ptr %.val4, i64 %.sroa.0.0.i1027 ; 6 uses
  %i.o = add nuw i64 %.sroa.0.0.i1027, 1          ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 16, !range !23, !alias.scope !3672, !noundef !11 ; 4 uses
  %i.r = icmp ne i64 %i.q, 4
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nsw i64 %i.q, -3
  %i.t = icmp samesign ugt i64 %i.q, 2
  %i.u = select i1 %i.t, i64 %i.s, i64 1
  switch i64 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit [
    i64 0, label %bb.c
    i64 1, label %bb.g
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.val.i.i = load ptr, ptr %i.v, align 8, !alias.scope !3672 ; 5 uses
  %i.w = getelementptr i8, ptr %i.n, i64 32
  %.val1.i.i = load ptr, ptr %i.w, align 16, !alias.scope !3672, !nonnull !11, !align !13, !noundef !11 ; 5 uses
  %i.x = load ptr, ptr %.val1.i.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.x(ptr noundef nonnull %.val.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !16, !invariant.load !11 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !24, !invariant.load !11
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) %i.ac) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !16, !invariant.load !11 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.body17, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !24, !invariant.load !11
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) %i.ai) #29
  br label %.body17

bb.g:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 16, !range !25, !alias.scope !3673, !noundef !11
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.aj)
          to label %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i_crit_edge unwind label %bb.i, !inline_history !3651

._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i_crit_edge: ; preds = %bb.h
  %.pre = load i64, ptr %i.p, align 16, !range !26, !alias.scope !3674
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i_crit_edge, %bb.g
  %i.am = phi i64 [ %.pre, %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i_crit_edge ], [ %i.q, %bb.g ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  switch i64 %i.am, label %bb.j [
    i64 0, label %bb.k
    i64 1, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles14TransformationECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(112) %i.p) #31
          to label %.body17 unwind label %bb.s, !inline_history !3654

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.u, !inline_history !3654

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.u, !inline_history !3654

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3676)
  %i.ap = load i64, ptr %i.an, align 8, !range !17, !alias.scope !3677, !noundef !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 6 uses
  switch i64 %i.ap, label %bb.m [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit
    i64 2, label %bb.o
    i64 3, label %bb.q
  ]

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3679)
  %i.ar = load ptr, ptr %i.aq, align 16, !alias.scope !3680, !nonnull !11, !noundef !11
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !3681
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcTNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncNtNtBL_4args4ArgsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.u, !inline_history !3654

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3683)
  %i.au = load ptr, ptr %i.aq, align 16, !alias.scope !3684, !nonnull !11, !noundef !11
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !3685
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func7ClosureEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.u, !inline_history !3654

bb.q:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3687)
  %i.ax = load ptr, ptr %i.aq, align 16, !alias.scope !3688, !nonnull !11, !noundef !11
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !3689
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_10PluginFuncE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.u, !inline_history !3654

bb.s:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !inline_history !3654
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.l, %bb.l, %bb.m, %bb.o, %bb.q, %bb.n, %bb.p, %bb.r, %bb.k, %bb.j, %bb.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %.lr.ph
  %i.bb = icmp eq i64 %i.o, %i.l
  br i1 %i.bb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

bb.t:                                             ; preds = %.lr.ph55
  %i.bc = add i64 %.sroa.0.1.i54, 1               ; 2 uses
  %i.bd = icmp eq i64 %i.bc, %i.l
  br i1 %i.bd, label %.body, label %.lr.ph55

bb.u:                                             ; preds = %bb.r, %bb.p, %bb.n, %bb.k, %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body17

.body17:                                          ; preds = %bb.u, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.f, %bb.i
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %i.be, %bb.u ], [ %i.ad, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.ad, %bb.f ]
  %i.bf = icmp eq i64 %i.o, %i.l
  br i1 %i.bf, label %.body, label %.lr.ph55

.lr.ph55:                                         ; preds = %.body17, %bb.t
  %.sroa.0.1.i54 = phi i64 [ %i.bc, %bb.t ], [ %i.o, %.body17 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [128 x i8], ptr %.val4, i64 %.sroa.0.1.i54
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 16 dereferenceable(128) %i.bg) #31
          to label %bb.t unwind label %bb.v, !inline_history !3671

bb.v:                                             ; preds = %.lr.ph55
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !inline_history !3671
  unreachable

.body:                                            ; preds = %bb.t, %.body17
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.w

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE4sizeCsibhcYuwTAtB_13typst_realize.exit
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit
  ret void

bb.w:                                             ; preds = %.body
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body18
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val4 = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %.not.i = icmp eq ptr %.val4, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.val4, i64 -16 ; 2 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not = icmp eq i64 %i.c, 1
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.val4, i64 -8
  %.val.i = load i64, ptr %i.d, align 8, !noundef !11 ; 2 uses
  %i.e = icmp ult i64 %.val.i, 288230376151711744
  %i.f = shl nuw i64 %.val.i, 6
  %i.g = or disjoint i64 %i.f, 16                 ; 2 uses
  %i.h = icmp ult i64 %i.g, 9223372036854775791
  %narrow.i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCsibhcYuwTAtB_13typst_realize.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  store i64 16, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_13
