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
begin_hunk_1_@_RNvXNtCs9dV2ZPf2jOH_6semver5parseNtB4_7VersionNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str:bb.a
  %.sroa.095.0.insert.insert = or i64 %.sroa.296.0.insert.insert, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.095.0.insert.insert, ptr %i.cb, align 8
  store ptr null, ptr %0, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver13BuildMetadataEBD_(ptr nonnull align 8 %i.i)
  br label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXNtCs9dV2ZPf2jOH_6semver7displayNtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr align 8 %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 134217728
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RNvXs4_NtNtCshzWfHUSfYae_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs9dV2ZPf2jOH_6semver.exit9.sink.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i16, ptr %i.e, align 4
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp ult i64 %i.i, 10
  br i1 %i.j, label %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i, label %tailrecurse.i.i.i.i

tailrecurse.i.i.i.i:                              ; preds = %bb.b, %tailrecurse.i.i.i.i
  %.tr2.i.i.i.i = phi i64 [ %i.k, %tailrecurse.i.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %accumulator.tr1.i.i.i.i = phi i64 [ %i.l, %tailrecurse.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.k = udiv i64 %.tr2.i.i.i.i, 10
  %i.l = add i64 %accumulator.tr1.i.i.i.i, 1
  %i.m = icmp ult i64 %.tr2.i.i.i.i, 100
  br i1 %i.m, label %tailrecurse._crit_edge.loopexit.i.i.i.i, label %tailrecurse.i.i.i.i

tailrecurse._crit_edge.loopexit.i.i.i.i:          ; preds = %tailrecurse.i.i.i.i
  %i.n = add i64 %accumulator.tr1.i.i.i.i, 4
  br label %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i

_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i: ; preds = %tailrecurse._crit_edge.loopexit.i.i.i.i, %bb.b
  %accumulator.tr.lcssa.i.i.i.i = phi i64 [ 3, %bb.b ], [ %i.n, %tailrecurse._crit_edge.loopexit.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp ult i64 %i.p, 10
  br i1 %i.q, label %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i, label %tailrecurse.i1.i.i.i

tailrecurse.i1.i.i.i:                             ; preds = %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i, %tailrecurse.i1.i.i.i
  %.tr2.i2.i.i.i = phi i64 [ %i.r, %tailrecurse.i1.i.i.i ], [ %i.p, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i ] ; 2 uses
  %accumulator.tr1.i3.i.i.i = phi i64 [ %i.s, %tailrecurse.i1.i.i.i ], [ 0, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i ] ; 2 uses
  %i.r = udiv i64 %.tr2.i2.i.i.i, 10
  %i.s = add i64 %accumulator.tr1.i3.i.i.i, 1
  %i.t = icmp ult i64 %.tr2.i2.i.i.i, 100
  br i1 %i.t, label %tailrecurse._crit_edge.loopexit.i4.i.i.i, label %tailrecurse.i1.i.i.i

tailrecurse._crit_edge.loopexit.i4.i.i.i:         ; preds = %tailrecurse.i1.i.i.i
  %i.u = add i64 %accumulator.tr1.i3.i.i.i, 2
  br label %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i

_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i: ; preds = %tailrecurse._crit_edge.loopexit.i4.i.i.i, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i
  %accumulator.tr.lcssa.i5.i.i.i = phi i64 [ 1, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i ], [ %i.u, %tailrecurse._crit_edge.loopexit.i4.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp ult i64 %i.w, 10
  br i1 %i.x, label %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit12.i.i.i, label %tailrecurse.i7.i.i.i

tailrecurse.i7.i.i.i:                             ; preds = %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i, %tailrecurse.i7.i.i.i
  %.tr2.i8.i.i.i = phi i64 [ %i.y, %tailrecurse.i7.i.i.i ], [ %i.w, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i ] ; 2 uses
  %accumulator.tr1.i9.i.i.i = phi i64 [ %i.z, %tailrecurse.i7.i.i.i ], [ 0, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i ] ; 2 uses
  %i.y = udiv i64 %.tr2.i8.i.i.i, 10
  %i.z = add i64 %accumulator.tr1.i9.i.i.i, 1
  %i.aa = icmp ult i64 %.tr2.i8.i.i.i, 100
  br i1 %i.aa, label %tailrecurse._crit_edge.loopexit.i10.i.i.i, label %tailrecurse.i7.i.i.i

tailrecurse._crit_edge.loopexit.i10.i.i.i:        ; preds = %tailrecurse.i7.i.i.i
  %i.ab = add i64 %accumulator.tr1.i9.i.i.i, 2
  br label %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit12.i.i.i

_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit12.i.i.i: ; preds = %tailrecurse._crit_edge.loopexit.i10.i.i.i, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i
  %accumulator.tr.lcssa.i11.i.i.i = phi i64 [ 1, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i ], [ %i.ab, %tailrecurse._crit_edge.loopexit.i10.i.i.i ]
  %.val.i.i.i.i = load ptr, ptr %0, align 8       ; 4 uses
  %i.ac = icmp ne ptr %.val.i.i.i.i, inttoptr (i64 -1 to ptr) ; 2 uses
  %i.ad = ptrtoint ptr %.val.i.i.i.i to i64       ; 2 uses
  br i1 %i.ac, label %bb.c, label %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i

bb.c:                                             ; preds = %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit12.i.i.i
  %i.ae = icmp sgt ptr %.val.i.i.i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.ae, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr i8, ptr %.val.i.i.i.i, i64 %i.ad ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i16, ptr %i.af, align 1 ; 2 uses
  %i.ag = icmp sgt i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, -1
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call fastcc i64 @_RNvNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len15decode_len_cold(ptr nonnull readonly %i.af) #29
  br label %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ai = and i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 127 ; 2 uses
  %i.aj = zext nneg i16 %i.ai to i64
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_RNvNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 @10) #30
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = lshr i32 %i.al, 3
  %narrow.i.i.i.i.i.i.i = sub nuw nsw i32 8, %i.am
  %i.an = zext nneg i32 %narrow.i.i.i.i.i.i.i to i64
  br label %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i

_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i: ; preds = %bb.h, %bb.f, %bb.e, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit12.i.i.i
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit12.i.i.i ], [ %i.an, %bb.h ], [ %i.ah, %bb.e ], [ %i.aj, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i13.i.i.i = load ptr, ptr %i.ao, align 8  ; 4 uses
  %i.ap = icmp ne ptr %.val.i13.i.i.i, inttoptr (i64 -1 to ptr) ; 2 uses
  %i.aq = ptrtoint ptr %.val.i13.i.i.i to i64     ; 2 uses
  br i1 %i.ap, label %bb.i, label %_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i

bb.i:                                             ; preds = %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i
  %i.ar = icmp sgt ptr %.val.i13.i.i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.ar, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr i8, ptr %.val.i13.i.i.i, i64 %i.aq ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i15.i.i.i = load i16, ptr %i.as, align 1 ; 2 uses
  %i.at = icmp sgt i16 %.sroa.0.0.copyload.i.i.i.i.i15.i.i.i, -1
  br i1 %i.at, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = tail call fastcc i64 @_RNvNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len15decode_len_cold(ptr nonnull readonly %i.as) #29
  br label %_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.av = and i16 %.sroa.0.0.copyload.i.i.i.i.i15.i.i.i, 127 ; 2 uses
  %i.aw = zext nneg i16 %i.av to i64
  %.not.i.i.i.i.i21.i.i.i = icmp eq i16 %i.av, 0
  br i1 %.not.i.i.i.i.i21.i.i.i, label %bb.m, label %_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_RNvNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 @10) #30
  unreachable

bb.n:                                             ; preds = %bb.i
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true)
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = lshr i32 %i.ay, 3
  %narrow.i.i.i.i22.i.i.i = sub nuw nsw i32 8, %i.az
  %i.ba = zext nneg i32 %narrow.i.i.i.i22.i.i.i to i64
  br label %_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i

_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i: ; preds = %bb.n, %bb.l, %bb.k, %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i
  %.sroa.4.0.i.i19.i.i.i = phi i64 [ 0, %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i ], [ %i.ba, %bb.n ], [ %i.au, %bb.k ], [ %i.aw, %bb.l ]
  %i.bb = zext i1 %i.ac to i64
  %i.bc = zext i1 %i.ap to i64
  %i.bd = add i64 %accumulator.tr.lcssa.i5.i.i.i, %accumulator.tr.lcssa.i.i.i.i
  %i.be = add i64 %i.bd, %accumulator.tr.lcssa.i11.i.i.i
  %i.bf = add i64 %i.be, %i.bb
  %i.bg = add i64 %i.bf, %.sroa.4.0.i.i.i.i.i
  %i.bh = add i64 %i.bg, %i.bc
  %i.bi = add i64 %i.bh, %.sroa.4.0.i.i19.i.i.i   ; 2 uses
  %.not.i = icmp ult i64 %i.bi, %i.g
  br i1 %.not.i, label %bb.o, label %_RNvXs4_NtNtCshzWfHUSfYae_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs9dV2ZPf2jOH_6semver.exit9.sink.split.i

bb.o:                                             ; preds = %_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i
  %.val.i = load i32, ptr %i.a, align 8
  %i.bj = lshr i32 %.val.i, 29
  %i.bk = and i32 %i.bj, 3
  %i.bl = sub nuw nsw i64 %i.g, %i.bi             ; 5 uses
  switch i32 %i.bk, label %default.unreachable [
    i32 0, label %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i
  ]

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  br label %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i

_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.o
  %.sroa.4.0.i = phi i64 [ %i.bp, %bb.q ], [ 0, %bb.p ], [ %i.bl, %bb.o ], [ %i.bl, %bb.o ] ; 2 uses
  %.sroa.03.0.i = phi i64 [ %i.bn, %bb.q ], [ %i.bl, %bb.p ], [ 0, %bb.o ], [ 0, %bb.o ] ; 2 uses
  %i.bm = tail call i32 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter4fill(ptr nonnull align 8 %1) ; 2 uses
  %exitcond.not.i9 = icmp eq i64 %.sroa.03.0.i, 0
  br i1 %exitcond.not.i9, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %bb.o
  %i.bn = lshr i64 %i.bl, 1
  %i.bo = add nuw nsw i64 %i.bl, 1
  %i.bp = lshr i64 %i.bo, 1
  br label %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i

bb.r:                                             ; preds = %.lr.ph
  %i.bq = add i64 %.sroa.0.0.i10, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bq, %.sroa.03.0.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i, %bb.r
  %.sroa.0.0.i10 = phi i64 [ %i.bq, %bb.r ], [ 0, %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i ]
  %i.br = tail call zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr align 8 %1, i32 %i.bm)
  br i1 %i.br, label %_RINvNtCs9dV2ZPf2jOH_6semver7display3padNCNvXB2_NtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0NCBD_s_0EB4_.exit, label %bb.r

._crit_edge:                                      ; preds = %bb.r, %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i
  %i.bs = tail call fastcc zeroext i1 @_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0INtNtNtBT_3ops8function6FnOnceTQNtBR_9FormatterEE9call_onceB9_(ptr nonnull align 8 %0, ptr align 8 %1) #28
  br i1 %i.bs, label %_RINvNtCs9dV2ZPf2jOH_6semver7display3padNCNvXB2_NtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0NCBD_s_0EB4_.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %._crit_edge
  %exitcond30.not.not.i.not11 = icmp eq i64 %.sroa.4.0.i, 0
  br i1 %exitcond30.not.not.i.not11, label %_RINvNtCs9dV2ZPf2jOH_6semver7display3padNCNvXB2_NtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0NCBD_s_0EB4_.exit, label %.lr.ph13

.lr.ph13:                                         ; preds = %.lr.ph13, %.preheader.i.preheader
  %.sroa.010.0.i12 = phi i64 [ %i.bu, %.lr.ph13 ], [ 0, %.preheader.i.preheader ]
  %i.bt = tail call zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr align 8 %1, i32 %i.bm) ; 2 uses
  %i.bu = add i64 %.sroa.010.0.i12, 1             ; 2 uses
  %exitcond30.not.not.i.not = icmp eq i64 %i.bu, %.sroa.4.0.i
  %or.cond = select i1 %i.bt, i1 true, i1 %exitcond30.not.not.i.not
  br i1 %or.cond, label %_RINvNtCs9dV2ZPf2jOH_6semver7display3padNCNvXB2_NtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0NCBD_s_0EB4_.exit, label %.lr.ph13

_RNvXs4_NtNtCshzWfHUSfYae_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs9dV2ZPf2jOH_6semver.exit9.sink.split.i: ; preds = %_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i, %bb.a
  %i.bv = tail call fastcc zeroext i1 @_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0INtNtNtBT_3ops8function6FnOnceTQNtBR_9FormatterEE9call_onceB9_(ptr align 8 %0, ptr nonnull align 8 %1) #28
  br label %_RINvNtCs9dV2ZPf2jOH_6semver7display3padNCNvXB2_NtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0NCBD_s_0EB4_.exit

_RINvNtCs9dV2ZPf2jOH_6semver7display3padNCNvXB2_NtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0NCBD_s_0EB4_.exit: ; preds = %.lr.ph, %.lr.ph13, %.preheader.i.preheader, %._crit_edge, %_RNvXs4_NtNtCshzWfHUSfYae_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs9dV2ZPf2jOH_6semver.exit9.sink.split.i
  %.sroa.0.0.shrunk.i = phi i1 [ true, %._crit_edge ], [ %i.bt, %.lr.ph13 ], [ %i.bv, %_RNvXs4_NtNtCshzWfHUSfYae_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs9dV2ZPf2jOH_6semver.exit9.sink.split.i ], [ false, %.preheader.i.preheader ], [ true, %.lr.ph ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RNvXNtNtCshzWfHUSfYae_4core5array8equalityAhj0_NtNtB6_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #4 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters9enumerate9EnumerateINtNtNtB8_5slice4iter4IterNtCs9dV2ZPf2jOH_6semver10ComparatorEENtB2_12IntoIterator9into_iterB1Q_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB8_3ops5range5RangejENtB2_12IntoIterator9into_iterCs9dV2ZPf2jOH_6semver(i64 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.b = insertvalue { i64, i64 } %i.a, i64 %1, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB8_3str4iter5SplitcENtB2_12IntoIterator9into_iterCs9dV2ZPf2jOH_6semver(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) initializes((0, 72)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXNvXs1_NtCs9dV2ZPf2jOH_6semver5serdeNtBa_7VersionNtNtCs2zr4xB4Ewz8_10serde_core2de11Deserialize11deserializeNtB2_14VersionVisitorNtBQ_7Visitor9expecting(ptr nofree readnone captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @32, i64 14)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXNvXs2_NtCs9dV2ZPf2jOH_6semver5serdeNtBa_10VersionReqNtNtCs2zr4xB4Ewz8_10serde_core2de11Deserialize11deserializeNtB2_17VersionReqVisitorNtBU_7Visitor9expecting(ptr nofree readnone captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @32, i64 14)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXNvXs3_NtCs9dV2ZPf2jOH_6semver5serdeNtBa_10ComparatorNtNtCs2zr4xB4Ewz8_10serde_core2de11Deserialize11deserializeNtB2_17ComparatorVisitorNtBU_7Visitor9expecting(ptr nofree readnone captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @33, i64 17)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs0_Cs9dV2ZPf2jOH_6semverNtB5_10VersionReqNtNtCshzWfHUSfYae_4core7default7Default7default(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @34, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs0_NtCs9dV2ZPf2jOH_6semver10identifierNtB5_10IdentifierNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier8is_empty.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %or.cond.not = icmp slt ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %or.cond.not, label %bb.a, label %_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier18is_empty_or_inline.exit.thread

bb.a:                                             ; preds = %_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier8is_empty.exit
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = getelementptr i8, ptr %i.a, i64 %i.b     ; 3 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.c, align 1 ; 2 uses
  %i.d = icmp sgt i16 %.sroa.0.0.copyload.i.i, -1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i64 @_RNvNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len15decode_len_cold(ptr nonnull readonly %i.c) #29
  br label %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit

bb.c:                                             ; preds = %bb.a
  %i.f = and i16 %.sroa.0.0.copyload.i.i, 127     ; 2 uses
  %i.g = zext nneg i16 %i.f to i64
  %.not.i.i = icmp eq i16 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RNvNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 @10) #30
  unreachable

_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i1 = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0.0.i1, i1 true)
  %i.i = trunc nuw nsw i64 %i.h to i8
  %narrow1.i = sub nuw nsw i8 70, %i.i
  %i.j = udiv i8 %narrow1.i, 7
  %i.k = zext nneg i8 %i.j to i64
  %i.l = add i64 %.sroa.0.0.i1, %i.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr %i.c, i64 %i.l, i64 2) #31
  br label %_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier18is_empty_or_inline.exit.thread

_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier18is_empty_or_inline.exit.thread: ; preds = %_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier8is_empty.exit, %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs0_NtCs9dV2ZPf2jOH_6semver5errorNtB5_8PositionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr nofree readonly captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCs9dV2ZPf2jOH_6semver5error8PositionNtB6_7Display3fmtBA_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCs9dV2ZPf2jOH_6semver5error8PositionNtB6_7Display3fmtBA_.30, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull %switch.load2, i64 %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCs9dV2ZPf2jOH_6semver5parseNtB7_10ComparatorNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i, %bb.a
  %.sroa.3.0.i = phi i64 [ 0, %bb.a ], [ %i.q, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.3.0.i
  store ptr %i.g, ptr %i.a, align 8, !noalias !52
  store ptr %i.f, ptr %i.e, align 8, !noalias !52
  %i.h = call { i32, i32 } @_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.a) #28, !noalias !52 ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.h, 0
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i: ; preds = %bb.b
  %i.k = extractvalue { i32, i32 } %i.h, 1
  %i.l = load ptr, ptr %i.e, align 8, !noalias !52
  %i.m = load ptr, ptr %i.a, align 8, !noalias !52
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %2, %i.n
  %i.q = add i64 %i.p, %i.o
  %.not.i.i = icmp eq i32 %i.k, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not.i.i, label %bb.b, label %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit

_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit: ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i
  %.sroa.0.0.i = phi i64 [ %2, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i ], [ %.sroa.3.0.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i ] ; 2 uses
  %i.r = sub nuw i64 %2, %.sroa.0.0.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.i
  call fastcc void @_RNvNtCs9dV2ZPf2jOH_6semver5parse10comparator(ptr noalias align 8 %i.c, ptr %i.s, i64 %i.r)
  %i.t = load i64, ptr %i.c, align 8              ; 2 uses
  %i.u = icmp eq i64 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.v, align 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.w, align 8
  store i64 2, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver10ComparatorEBD_.exit

bb.d:                                             ; preds = %bb.g, %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver10ComparatorEBD_(ptr nonnull align 8 %i.d) #34
  resume { ptr, i32 } %i.x

bb.e:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.02.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.02.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, i64 40, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.625.0.copyload = load i8, ptr %.sroa.625.0..sroa_idx, align 8
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.726.0.copyload = load ptr, ptr %.sroa.726.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  store i64 %i.t, ptr %i.d, align 8
  %.sroa.02.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
end_hunk_1
