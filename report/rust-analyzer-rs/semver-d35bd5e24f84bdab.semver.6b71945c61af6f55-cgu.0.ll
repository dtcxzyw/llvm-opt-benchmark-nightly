Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/semver-d35bd5e24f84bdab.semver.6b71945c61af6f55-cgu.0?download=true
inline.NumInlined: 523
inline.NumDeleted: 83
begin_hunk_0_@_RNvNtCs9dV2ZPf2jOH_6semver5parse10comparator:bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.0.0.copyload.i139 = load i64, ptr %i.ed, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver13BuildMetadataEBD_.exit147

bb.ar:                                            ; preds = %bb.aq
  %.sroa.7181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.7181.0.copyload = load i64, ptr %.sroa.7181.0..sroa_idx, align 8 ; 2 uses
  %.sroa.4180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4180.0.copyload = load i64, ptr %.sroa.4180.0..sroa_idx, align 8
  %i.ee = inttoptr i64 %.sroa.4180.0.copyload to ptr ; 2 uses
  %i.ef = icmp eq ptr %i.ea, inttoptr (i64 -1 to ptr)
  br i1 %i.ef, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver13BuildMetadataEBD_.exit147, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %or.cond.not.i.i.i = icmp slt ptr %i.ea, inttoptr (i64 -1 to ptr)
  br i1 %or.cond.not.i.i.i, label %bb.at, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver13BuildMetadataEBD_.exit

bb.at:                                            ; preds = %bb.as
  %i.eg = getelementptr i8, ptr %i.ea, i64 %i.ec  ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %i.eg, align 1 ; 2 uses
  %i.eh = icmp sgt i16 %.sroa.0.0.copyload.i.i.i.i.i, -1
  br i1 %i.eh, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ei = call fastcc i64 @_RNvNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len15decode_len_cold(ptr nonnull readonly %i.eg) #29, !inline_history !4
  br label %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.ej = and i16 %.sroa.0.0.copyload.i.i.i.i.i, 127 ; 2 uses
  %i.ek = zext nneg i16 %i.ej to i64
  %.not.i.i.i.i.i = icmp eq i16 %i.ej, 0
  br i1 %.not.i.i.i.i.i, label %bb.aw, label %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  call fastcc void @_RNvNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 @10) #30, !inline_history !4
  unreachable

_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit.i.i.i: ; preds = %bb.av, %bb.au
  %.sroa.0.0.i1.i.i.i = phi i64 [ %i.ei, %bb.au ], [ %i.ek, %bb.av ] ; 2 uses
  %i.el = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0.0.i1.i.i.i, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i8
  %narrow1.i.i.i.i = sub nuw nsw i8 70, %i.em
  %i.en = udiv i8 %narrow1.i.i.i.i, 7
  %i.eo = zext nneg i8 %i.en to i64
  %i.ep = add i64 %.sroa.0.0.i1.i.i.i, %i.eo
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr %i.eg, i64 %i.ep, i64 2) #31, !inline_history !4
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver13BuildMetadataEBD_.exit

.loopexit243:                                     ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i135, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i133
  %.sroa.0.0.i134 = phi i64 [ %.sroa.355.0, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i133 ], [ %.sroa.3.0.i132, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i135 ] ; 2 uses
  %i.eq = sub nuw i64 %.sroa.355.0, %.sroa.0.0.i134
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.054.0, i64 %.sroa.0.0.i134
  store i64 %.sroa.011.0, ptr %0, align 8
  %.sroa.275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0, ptr %.sroa.275.0..sroa_idx, align 8
  %.sroa.376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.0209233, ptr %.sroa.376.0..sroa_idx, align 8
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.422.0210231, ptr %.sroa.477.0..sroa_idx, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.073.0.copyload, ptr %.sroa.578.0..sroa_idx, align 8
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.679.0..sroa_idx, align 8
  %.sroa.780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.0.3211229, ptr %.sroa.780.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sroa.01.3, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1082.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.er, ptr %.sroa.1082.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.eq, ptr %.sroa.11.0..sroa_idx, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver10PrereleaseEBD_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver13BuildMetadataEBD_.exit147: ; preds = %bb.ar, %_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultTNtCs9dV2ZPf2jOH_6semver13BuildMetadataReENtNtBN_5parse5ErrorENtNtNtB7_3ops9try_trait3Try6branchBN_.exit.thread
  %.sink = phi i64 [ %.sroa.0.0.copyload.i139, %_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultTNtCs9dV2ZPf2jOH_6semver13BuildMetadataReENtNtBN_5parse5ErrorENtNtNtB7_3ops9try_trait3Try6branchBN_.exit.thread ], [ 1031, %bb.ar ]
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.es, align 8
  store i64 2, ptr %0, align 8
  %or.cond.not.i.i.i148 = icmp slt i64 %.sroa.038.0.ph, -1
  br i1 %or.cond.not.i.i.i148, label %bb.ax, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver10PrereleaseEBD_.exit

bb.ax:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver13BuildMetadataEBD_.exit147
  %i.et = getelementptr i8, ptr %i.df, i64 %.sroa.038.0.ph ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i149 = load i16, ptr %i.et, align 1 ; 2 uses
  %i.eu = icmp sgt i16 %.sroa.0.0.copyload.i.i.i.i.i149, -1
  br i1 %i.eu, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ev = call fastcc i64 @_RNvNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len15decode_len_cold(ptr nonnull readonly %i.et) #29, !inline_history !4
  br label %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit.i.i.i150

bb.az:                                            ; preds = %bb.ax
  %i.ew = and i16 %.sroa.0.0.copyload.i.i.i.i.i149, 127 ; 2 uses
  %i.ex = zext nneg i16 %i.ew to i64
  %.not.i.i.i.i.i153 = icmp eq i16 %i.ew, 0
  br i1 %.not.i.i.i.i.i153, label %bb.ba, label %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit.i.i.i150

bb.ba:                                            ; preds = %bb.az
  call fastcc void @_RNvNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 @10) #30, !inline_history !4
  unreachable

_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit.i.i.i150: ; preds = %bb.az, %bb.ay
  %.sroa.0.0.i1.i.i.i151 = phi i64 [ %i.ev, %bb.ay ], [ %i.ex, %bb.az ] ; 2 uses
  %i.ey = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0.0.i1.i.i.i151, i1 true)
  %i.ez = trunc nuw nsw i64 %i.ey to i8
  %narrow1.i.i.i.i152 = sub nuw nsw i8 70, %i.ez
  %i.fa = udiv i8 %narrow1.i.i.i.i152, 7
  %i.fb = zext nneg i8 %i.fa to i64
  %i.fc = add i64 %.sroa.0.0.i1.i.i.i151, %i.fb
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr %i.et, i64 %i.fc, i64 2) #31, !inline_history !4
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver10PrereleaseEBD_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver10PrereleaseEBD_.exit160: ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs9dV2ZPf2jOH_6semver.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 775, ptr %i.fd, align 8
  store i64 2, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver10PrereleaseEBD_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs9dV2ZPf2jOH_6semver5parse10identifier(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr %1, i64 %2, i8 range(i8 3, 5) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %.fr = freeze ptr %1                            ; 12 uses
  %.not63 = icmp eq ptr %.fr, null
  %i.b = icmp ne i8 %3, 3
  br i1 %.not63, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionRhENtNtB7_3cmp9PartialEq2neCs9dV2ZPf2jOH_6semver.exit.thread, label %.outer.outer.preheader

.outer.outer.preheader:                           ; preds = %bb.a
  %.not426.not = icmp eq i64 %2, 0
  br i1 %.not426.not, label %.split213.us, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.outer.outer.preheader, %.outer.outer
  %i.c = phi ptr [ %i.al, %.outer.outer ], [ %.fr, %.outer.outer.preheader ] ; 3 uses
  %.sroa.0.0.ph.ph427 = phi i64 [ %i.ak, %.outer.outer ], [ 0, %.outer.outer.preheader ] ; 8 uses
  %i.d = add nuw i64 %.sroa.0.0.ph.ph427, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.split
  %i.e = phi ptr [ %i.q, %.split ], [ %i.c, %.lr.ph.preheader ]
  %i.f = phi i64 [ %i.p, %.split ], [ %.sroa.0.0.ph.ph427, %.lr.ph.preheader ]
  %.sroa.09.0.ph132 = phi i64 [ %i.o, %.split ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.015.0.ph131 = phi i1 [ true, %.split ], [ false, %.lr.ph.preheader ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.g = phi ptr [ %i.e, %.lr.ph ], [ %i.u, %bb.e ] ; 2 uses
  %i.h = phi i64 [ %i.f, %.lr.ph ], [ %i.t, %bb.e ]
  %.sroa.09.090 = phi i64 [ %.sroa.09.0.ph132, %.lr.ph ], [ %i.s, %bb.e ] ; 3 uses
  %i.i = load i8, ptr %i.g, align 1               ; 4 uses
  %i.j = add i8 %i.i, -65
  %or.cond46 = icmp ult i8 %i.j, 26
  br i1 %or.cond46, label %.split, label %bb.c

.outer._crit_edge.loopexit.split.loop.exit387:    ; preds = %bb.e
  %i.k = add i64 %i.d, %.sroa.09.0.ph132
  %umax.le = call i64 @llvm.umax.i64(i64 %2, i64 %i.k)
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.split, %bb.d, %.outer._crit_edge.loopexit.split.loop.exit387
  %.sroa.015.0.ph.lcssa = phi i1 [ %.sroa.015.0.ph131, %bb.d ], [ %.sroa.015.0.ph131, %.outer._crit_edge.loopexit.split.loop.exit387 ], [ true, %.split ]
  %.sroa.09.0.lcssa = phi i64 [ %.sroa.09.090, %bb.d ], [ %i.s, %.outer._crit_edge.loopexit.split.loop.exit387 ], [ %i.o, %.split ] ; 2 uses
  %.lcssa78 = phi i64 [ %i.h, %bb.d ], [ %umax.le, %.outer._crit_edge.loopexit.split.loop.exit387 ], [ %i.p, %.split ] ; 7 uses
  %.lcssa73 = phi i1 [ false, %bb.d ], [ true, %.outer._crit_edge.loopexit.split.loop.exit387 ], [ true, %.split ] ; 2 uses
  %.lcssa = phi ptr [ %i.g, %bb.d ], [ %i.u, %.outer._crit_edge.loopexit.split.loop.exit387 ], [ %i.q, %.split ] ; 4 uses
  %i.l = icmp eq i64 %.sroa.09.0.lcssa, 0
  br i1 %i.l, label %.split213.us.loopexit, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = add i8 %i.i, -97
  %or.cond47 = icmp ult i8 %i.m, 26
  %i.n = icmp eq i8 %i.i, 45
  %or.cond62 = or i1 %i.n, %or.cond47
  br i1 %or.cond62, label %.split, label %bb.d

.split:                                           ; preds = %bb.c, %bb.b
  %i.o = add i64 %.sroa.09.090, 1                 ; 3 uses
  %i.p = add i64 %.sroa.0.0.ph.ph427, %i.o        ; 4 uses
  %.not320 = icmp ult i64 %i.p, %2
  %i.q = getelementptr inbounds nuw i8, ptr %.fr, i64 %i.p ; 2 uses
  br i1 %.not320, label %.lr.ph, label %.outer._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.r = add i8 %i.i, -48
  %or.cond48 = icmp ult i8 %i.r, 10
  br i1 %or.cond48, label %bb.e, label %.outer._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.s = add i64 %.sroa.09.090, 1                 ; 3 uses
  %i.t = add i64 %.sroa.0.0.ph.ph427, %i.s        ; 3 uses
  %.not319 = icmp ult i64 %i.t, %2
  %i.u = getelementptr inbounds nuw i8, ptr %.fr, i64 %i.t ; 2 uses
  br i1 %.not319, label %bb.b, label %.outer._crit_edge.loopexit.split.loop.exit387

bb.f:                                             ; preds = %.outer._crit_edge
  %i.v = icmp eq i64 %.sroa.09.0.lcssa, 1
  %or.cond = or i1 %i.b, %i.v
  %or.cond3 = or i1 %.sroa.015.0.ph.lcssa, %or.cond
  br i1 %or.cond3, label %bb.g, label %bb.h

.split213.us.loopexit:                            ; preds = %.outer.outer, %.outer._crit_edge
  %.sroa.0.0.ph.ph.lcssa.ph = phi i64 [ %.sroa.0.0.ph.ph427, %.outer._crit_edge ], [ %i.ak, %.outer.outer ]
  %.lcssa359.ph = phi ptr [ %.lcssa, %.outer._crit_edge ], [ %i.al, %.outer.outer ]
  %.lcssa73358.ph = phi i1 [ %.lcssa73, %.outer._crit_edge ], [ true, %.outer.outer ]
  %i.w = icmp eq i64 %.sroa.0.0.ph.ph.lcssa.ph, 0
  br label %.split213.us

.split213.us:                                     ; preds = %.split213.us.loopexit, %.outer.outer.preheader
  %.sroa.0.0.ph.ph.lcssa = phi i1 [ true, %.outer.outer.preheader ], [ %i.w, %.split213.us.loopexit ]
  %.lcssa359 = phi ptr [ %.fr, %.outer.outer.preheader ], [ %.lcssa359.ph, %.split213.us.loopexit ]
  %.lcssa73358 = phi i1 [ true, %.outer.outer.preheader ], [ %.lcssa73358.ph, %.split213.us.loopexit ]
  br i1 %.sroa.0.0.ph.ph.lcssa, label %bb.m, label %bb.l

bb.g:                                             ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs9dV2ZPf2jOH_6semver.exit, %bb.f
  br i1 %.lcssa73, label %_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRhENtNtB7_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit.thread, label %_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRhENtNtB7_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit

_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRhENtNtB7_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit: ; preds = %bb.g
  %.val.i.i = load i8, ptr %.lcssa, align 1
  %i.x = icmp eq i8 %.val.i.i, 46
  br i1 %i.x, label %.outer.outer, label %_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRhENtNtB7_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit.thread.thread

bb.h:                                             ; preds = %bb.f
  %i.y = icmp eq i64 %.sroa.0.0.ph.ph427, 0
  br i1 %i.y, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs9dV2ZPf2jOH_6semver.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load i8, ptr %i.c, align 1
  %i.aa = icmp slt i8 %i.z, -64
  br i1 %i.aa, label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs9dV2ZPf2jOH_6semver.exit.thread.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs9dV2ZPf2jOH_6semver.exit

_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs9dV2ZPf2jOH_6semver.exit.thread.i.i: ; preds = %bb.i
  call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr nonnull %.fr, i64 %2, i64 %.sroa.0.0.ph.ph427, i64 %2, ptr nonnull align 8 @14) #32
  unreachable

_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs9dV2ZPf2jOH_6semver.exit: ; preds = %bb.h, %bb.i
  %i.ab = sub nuw i64 %2, %.sroa.0.0.ph.ph427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 48, ptr %i.a, align 4
  %i.ac = call zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs3TiGK1alE6v_14rustc_demangle(ptr nonnull %i.c, i64 %i.ab, ptr nonnull %i.a, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ac, label %.split219, label %bb.g

.split219:                                        ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs9dV2ZPf2jOH_6semver.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 773, ptr %i.ad, align 8
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionRhENtNtB7_3cmp9PartialEq2neCs9dV2ZPf2jOH_6semver.exit.thread, %bb.l, %_RNvMNtCshzWfHUSfYae_4core3stre8split_atCs9dV2ZPf2jOH_6semver.exit, %.split219
  ret void

_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRhENtNtB7_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit.thread: ; preds = %bb.g
  %i.ae = icmp eq i64 %.lcssa78, 0
  br i1 %i.ae, label %_RNvMNtCshzWfHUSfYae_4core3stre8split_atCs9dV2ZPf2jOH_6semver.exit, label %.split3.i.i

_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRhENtNtB7_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit.thread.thread: ; preds = %_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRhENtNtB7_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit
  %i.af = icmp eq i64 %.lcssa78, 0
  br i1 %i.af, label %_RNvMNtCshzWfHUSfYae_4core3stre8split_atCs9dV2ZPf2jOH_6semver.exit, label %bb.k

.split3.i.i:                                      ; preds = %_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRhENtNtB7_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit.thread
  %i.ag = icmp eq i64 %.lcssa78, %2
  br i1 %i.ag, label %.split.i.i, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checkedCs9dV2ZPf2jOH_6semver.exit.thread.i

bb.k:                                             ; preds = %_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRhENtNtB7_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit.thread.thread
  %i.ah = load i8, ptr %.lcssa, align 1, !noalias !32
  %i.ai = icmp sgt i8 %i.ah, -65
  br i1 %i.ai, label %.split.i.i, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checkedCs9dV2ZPf2jOH_6semver.exit.thread.i

.split.i.i:                                       ; preds = %bb.k, %.split3.i.i
  %i.aj = sub i64 %2, %.lcssa78
  br label %_RNvMNtCshzWfHUSfYae_4core3stre8split_atCs9dV2ZPf2jOH_6semver.exit

_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checkedCs9dV2ZPf2jOH_6semver.exit.thread.i: ; preds = %bb.k, %.split3.i.i
  call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr nonnull %.fr, i64 %2, i64 0, i64 %.lcssa78, ptr nonnull align 8 @8) #32, !noalias !33
  unreachable

_RNvMNtCshzWfHUSfYae_4core3stre8split_atCs9dV2ZPf2jOH_6semver.exit: ; preds = %_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRhENtNtB7_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit.thread, %.split.i.i, %_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRhENtNtB7_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit.thread.thread
  %.lcssa78357 = phi i64 [ 0, %_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRhENtNtB7_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit.thread ], [ %.lcssa78, %.split.i.i ], [ 0, %_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRhENtNtB7_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit.thread.thread ]
  %.sroa.5.0.i = phi ptr [ %.fr, %_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRhENtNtB7_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit.thread ], [ %.lcssa, %.split.i.i ], [ %.fr, %_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRhENtNtB7_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit.thread.thread ]
  %.sroa.6.0.i = phi i64 [ %2, %_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRhENtNtB7_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit.thread ], [ %i.aj, %.split.i.i ], [ %2, %_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRhENtNtB7_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit.thread.thread ]
  store ptr %.fr, ptr %0, align 8
  %.sroa.2.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa78357, ptr %.sroa.2.0..sroa_idx57, align 8
  %.sroa.3.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.0.i, ptr %.sroa.3.0..sroa_idx58, align 8
  %.sroa.4.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0.i, ptr %.sroa.4.0..sroa_idx59, align 8
  br label %bb.j

.outer.outer:                                     ; preds = %_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRhENtNtB7_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver.exit
  %i.ak = add i64 %.lcssa78, 1                    ; 4 uses
  %.not = icmp ult i64 %i.ak, %2
  %i.al = getelementptr inbounds nuw i8, ptr %.fr, i64 %i.ak ; 2 uses
  br i1 %.not, label %.lr.ph.preheader, label %.split213.us.loopexit

bb.l:                                             ; preds = %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionRhENtNtB7_3cmp9PartialEq2neCs9dV2ZPf2jOH_6semver.exit, %.split213.us
  %.sroa.241.0.insert.ext = zext nneg i8 %3 to i64
  %.sroa.241.0.insert.shift = shl nuw nsw i64 %.sroa.241.0.insert.ext, 8
  %.sroa.040.0.insert.insert = or disjoint i64 %.sroa.241.0.insert.shift, 7
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.040.0.insert.insert, ptr %i.am, align 8
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.m:                                             ; preds = %.split213.us
  br i1 %.lcssa73358, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionRhENtNtB7_3cmp9PartialEq2neCs9dV2ZPf2jOH_6semver.exit.thread, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionRhENtNtB7_3cmp9PartialEq2neCs9dV2ZPf2jOH_6semver.exit

_RNvYINtNtCshzWfHUSfYae_4core6option6OptionRhENtNtB7_3cmp9PartialEq2neCs9dV2ZPf2jOH_6semver.exit: ; preds = %bb.m
  %.val.i.i.i = load i8, ptr %.lcssa359, align 1
  %.not64 = icmp eq i8 %.val.i.i.i, 46
  br i1 %.not64, label %bb.l, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionRhENtNtB7_3cmp9PartialEq2neCs9dV2ZPf2jOH_6semver.exit.thread

_RNvYINtNtCshzWfHUSfYae_4core6option6OptionRhENtNtB7_3cmp9PartialEq2neCs9dV2ZPf2jOH_6semver.exit.thread: ; preds = %bb.a, %bb.m, %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionRhENtNtB7_3cmp9PartialEq2neCs9dV2ZPf2jOH_6semver.exit
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.fr, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs9dV2ZPf2jOH_6semver5parse11version_req(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr %1, i64 %2, ptr nonnull align 8 %3, i64 %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 3 uses
  %i.k = alloca [80 x i8], align 8                ; 10 uses
  call fastcc void @_RNvNtCs9dV2ZPf2jOH_6semver5parse10comparator(ptr noalias align 8 %i.k, ptr %1, i64 %2)
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp eq i64 %i.l, 2
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.02.0.copyload = load i64, ptr %i.n, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !40
  store i32 42, ptr %i.h, align 4, !noalias !40
  %i.o = call zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs3TiGK1alE6v_14rustc_demangle(ptr %1, i64 %2, ptr nonnull %i.h, i64 range(i64 1, 5) 1), !noalias !40
  %i.p = add i64 %2, -1                           ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !40
  br i1 %i.o, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !40
  store i32 120, ptr %i.g, align 4, !noalias !40
  %i.r = call zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs3TiGK1alE6v_14rustc_demangle(ptr %1, i64 %2, ptr nonnull %i.g, i64 range(i64 1, 5) 1), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !40
  br i1 %i.r, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !40
  store i32 88, ptr %i.f, align 4, !noalias !40
  %i.s = call zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs3TiGK1alE6v_14rustc_demangle(ptr %1, i64 %2, ptr nonnull %i.f, i64 range(i64 1, 5) 1), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !40
  br i1 %i.s, label %bb.aa, label %_RNvNtCs9dV2ZPf2jOH_6semver5parse8wildcard.exit

bb.e:                                             ; preds = %bb.a
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.1.0.copyload = load ptr, ptr %.sroa.1.0..sroa_idx, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %.sroa.31.0.copyload = load ptr, ptr %.sroa.31.0..sroa_idx, align 8 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 5 uses
  %i.t = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 44, ptr %i.e, align 4
  %i.u = invoke zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs3TiGK1alE6v_14rustc_demangle(ptr %.sroa.31.0.copyload, i64 %.sroa.4.0.copyload, ptr nonnull %i.e, i64 range(i64 1, 5) 1)
          to label %bb.k unwind label %.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %bb.e
  %i.v = add i64 %4, 1                            ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = load i64, ptr %3, align 8
  %i.z = sub i64 %i.y, %i.x
  %i.aa = icmp ugt i64 %i.v, %i.z
  br i1 %i.aa, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ab = add i64 %i.x, %i.v                      ; 3 uses
  %i.ac = icmp ult i64 %i.ab, %i.x
  br i1 %i.ac, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9dV2ZPf2jOH_6semver.exit.thread7.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs57dEzb6b5A8_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %3, i64 %i.ab, i64 8, i64 56)
          to label %.noexc45 unwind label %.loopexit.split-lp

.noexc45:                                         ; preds = %bb.i
  %i.ad = load i64, ptr %i.d, align 8
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.ae, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9dV2ZPf2jOH_6semver.exit.i.i, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9dV2ZPf2jOH_6semver.exit.thread13.i.i

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9dV2ZPf2jOH_6semver.exit.thread13.i.i: ; preds = %.noexc45
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ag, ptr %i.ah, align 8
  store i64 %i.ab, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.thread

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9dV2ZPf2jOH_6semver.exit.thread7.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9dV2ZPf2jOH_6semver.exit.i.i: ; preds = %.noexc45
  %i.ai = load i64, ptr %i.af, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ak = load i64, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i = icmp eq i64 %i.ai, -1
  br i1 %.not.i.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9dV2ZPf2jOH_6semver.exit.i.i, %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9dV2ZPf2jOH_6semver.exit.thread7.i.i
  %.sroa.0.0.ph.i12.i.i = phi i64 [ 0, %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9dV2ZPf2jOH_6semver.exit.thread7.i.i ], [ %i.ai, %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9dV2ZPf2jOH_6semver.exit.i.i ]
  %.sroa.3.0.ph.i11.i.i = phi i64 [ undef, %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9dV2ZPf2jOH_6semver.exit.thread7.i.i ], [ %i.ak, %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9dV2ZPf2jOH_6semver.exit.i.i ]
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 %.sroa.0.0.ph.i12.i.i, i64 %.sroa.3.0.ph.i11.i.i) #33
          to label %.noexc46 unwind label %.loopexit.split-lp

.noexc46:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.al = add i64 %.sroa.4.0.copyload, -1         ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.31.0.copyload, i64 1
  %.sroa.0.0.i.i.i = select i1 %i.u, ptr %i.am, ptr null ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.u, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ao = getelementptr i8, ptr %.sroa.31.0.copyload, i64 %.sroa.4.0.copyload
  br label %bb.m

bb.m:                                             ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i, %bb.l
  %.sroa.3.0.i = phi i64 [ 0, %bb.l ], [ %i.az, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %.sroa.3.0.i
  store ptr %i.ap, ptr %i.c, align 8, !noalias !41
  store ptr %i.ao, ptr %i.an, align 8, !noalias !41
  %i.aq = invoke { i32, i32 } @_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.c) #28
          to label %.noexc48 unwind label %.loopexit ; 2 uses

.noexc48:                                         ; preds = %bb.m
  %i.ar = extractvalue { i32, i32 } %i.aq, 0
  %i.as = trunc i32 %i.ar to i1
  br i1 %i.as, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i: ; preds = %.noexc48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit72

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i: ; preds = %.noexc48
  %i.at = extractvalue { i32, i32 } %i.aq, 1
  %i.au = load ptr, ptr %i.an, align 8, !noalias !41
  %i.av = load ptr, ptr %i.c, align 8, !noalias !41
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.al, %i.aw
  %i.az = add i64 %i.ay, %i.ax
  %.not.i.i47 = icmp eq i32 %i.at, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not.i.i47, label %bb.m, label %.loopexit72

.loopexit72:                                      ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i
  %.sroa.0.0.i = phi i64 [ %i.al, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i ], [ %.sroa.3.0.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i ] ; 2 uses
  %i.ba = add i64 %4, 1                           ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 32
  br i1 %i.bb, label %bb.u, label %bb.n

bb.n:                                             ; preds = %.loopexit72
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %.sroa.0.0.i
  %i.bd = sub nuw i64 %i.al, %.sroa.0.0.i
  invoke fastcc void @_RNvNtCs9dV2ZPf2jOH_6semver5parse11version_req(ptr noalias align 8 %i.i, ptr %i.bc, i64 %i.bd, ptr align 8 %3, i64 %i.ba)
          to label %bb.o unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.be = load i32, ptr %i.i, align 8
  %i.bf = trunc i32 %i.be to i1
end_hunk_0
