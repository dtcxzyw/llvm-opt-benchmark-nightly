Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.15?download=true
inline.NumInlined: 9427
inline.NumDeleted: 4812
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort13par_mergesortTmxENCINvYSBQ_INtB4_16ParallelSliceMutBQ_E11par_sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implxE0E0ECskY9G75ZWc4U_11polars_expr:bb.a
  %i.ci = getelementptr i8, ptr %i.cg, i64 8, !dbg !67066
  %.val50 = load i64, ptr %i.ci, align 8, !dbg !67066, !alias.scope !3198, !noalias !3197, !noundef !2531
  %i.cj = icmp slt i64 %.val, %.val50, !dbg !67067
  %i.ck = xor i1 %i.bo, %i.cj, !dbg !67068
  br i1 %i.ck, label %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52, label %.loopexit94, !dbg !67068, !llvm.loop !66842

bb.ag:                                            ; preds = %.loopexit94
  %i.cl = icmp ult i64 %.sroa.07.1.lcssa, %.sroa.0.0, !dbg !67075
  %.not42 = icmp ugt i64 %.sroa.07.1.lcssa, %1
  %or.cond49 = or i1 %i.cl, %.not42, !dbg !67075
  br i1 %or.cond49, label %bb.ai, label %bb.aj, !dbg !67075, !prof !3013

_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i
  %i.cm = and i64 %i.cw, 2, !dbg !67076
  %lcmp.mod.not = icmp eq i64 %i.cm, 0, !dbg !67076
  br i1 %lcmp.mod.not, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.epil.preheader, !dbg !67076

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.epil.preheader: ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i
  %.sroa.0.016.i.epil.init = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i ], [ %i.dq, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod171 = trunc i64 %i.cy to i1, !dbg !67076
  call void @llvm.assume(i1 %lcmp.mod171), !dbg !67076
  %i.cn = xor i64 %.sroa.0.016.i.epil.init, -1, !dbg !67077
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.0.016.i.epil.init, !dbg !67078 ; 3 uses
  %i.cp = getelementptr [16 x i8], ptr %i.cz, i64 %i.cn, !dbg !67079 ; 3 uses
  %i.cq = load i32, ptr %i.co, align 8, !dbg !67080, !alias.scope !66963, !noalias !66964, !noundef !2531
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !67080
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !67080, !alias.scope !66963, !noalias !66964, !noundef !2531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false), !dbg !67080, !alias.scope !66965
  store i32 %i.cq, ptr %i.cp, align 8, !dbg !67080, !alias.scope !66964, !noalias !66963
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 8, !dbg !67080
  store i64 %i.cs, ptr %i.ct, align 8, !dbg !67080, !alias.scope !66964, !noalias !66963
  br label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit, !dbg !67081

_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.epil.preheader, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit, %bb.aj, %.loopexit94
  %.sroa.07.078 = phi i64 [ %.sroa.6.0, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit ], [ %.sroa.07.1.lcssa, %.loopexit94 ], [ %.sroa.07.1.lcssa, %bb.aj ], [ %.sroa.07.1.lcssa, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %.sroa.07.1.lcssa, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.epil.preheader ]
  %i.cu = load i64, ptr %i.c, align 8, !dbg !67081, !range !2668, !alias.scope !66967, !noundef !2531
  %i.cv = icmp eq i64 %i.at, %i.cu, !dbg !67082
  br i1 %i.cv, label %bb.ah, label %bb.ak, !dbg !67082

bb.ah:                                            ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.ak unwind label %.loopexit, !dbg !67083

bb.ai:                                            ; preds = %bb.ag
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0, i64 noundef %.sroa.07.1.lcssa, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #36
          to label %bb.l unwind label %.loopexit.split-lp, !dbg !67084

bb.aj:                                            ; preds = %bb.ag
  %i.cw = sub nuw i64 %.sroa.07.1.lcssa, %.sroa.0.0, !dbg !67085 ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.0, !dbg !67086 ; 3 uses
  %i.cy = lshr i64 %i.cw, 1, !dbg !67087          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66963), !dbg !67088
  call void @llvm.experimental.noalias.scope.decl(metadata !66964), !dbg !67088
  %.not.i51 = icmp eq i64 %i.cy, 0, !dbg !67076
  br i1 %.not.i51, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i, !dbg !67076

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i: ; preds = %bb.aj
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.07.1.lcssa, !dbg !67089 ; 3 uses
  %i.da = icmp eq i64 %i.cy, 1, !dbg !67076
  br i1 %i.da, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.epil.preheader, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new, !dbg !67076

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i
  %unroll_iter = and i64 %i.cy, 9223372036854775806, !dbg !67076
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i, !dbg !67076

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new
  %.sroa.0.016.i = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new ], [ %i.dq, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new ], [ %niter.next.1, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i ]
  %i.db = xor i64 %.sroa.0.016.i, -1, !dbg !67077
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.0.016.i, !dbg !67078 ; 3 uses
  %i.dd = getelementptr [16 x i8], ptr %i.cz, i64 %i.db, !dbg !67079 ; 3 uses
  %i.de = load i32, ptr %i.dc, align 8, !dbg !67080, !alias.scope !66963, !noalias !66964, !noundef !2531
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8, !dbg !67080
  %i.dg = load i64, ptr %i.df, align 8, !dbg !67080, !alias.scope !66963, !noalias !66964, !noundef !2531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i64 16, i1 false), !dbg !67080, !alias.scope !66965
  store i32 %i.de, ptr %i.dd, align 8, !dbg !67080, !alias.scope !66964, !noalias !66963
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8, !dbg !67080
  store i64 %i.dg, ptr %i.dh, align 8, !dbg !67080, !alias.scope !66964, !noalias !66963
  %i.di = xor i64 %.sroa.0.016.i, -2, !dbg !67077
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.0.016.i, !dbg !67078 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16, !dbg !67078 ; 2 uses
  %i.dl = getelementptr [16 x i8], ptr %i.cz, i64 %i.di, !dbg !67079 ; 3 uses
  %i.dm = load i32, ptr %i.dk, align 8, !dbg !67080, !alias.scope !66963, !noalias !66964, !noundef !2531
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 24, !dbg !67080
  %i.do = load i64, ptr %i.dn, align 8, !dbg !67080, !alias.scope !66963, !noalias !66964, !noundef !2531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i64 16, i1 false), !dbg !67080, !alias.scope !66965
  store i32 %i.dm, ptr %i.dl, align 8, !dbg !67080, !alias.scope !66964, !noalias !66963
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8, !dbg !67080
  store i64 %i.do, ptr %i.dp, align 8, !dbg !67080, !alias.scope !66964, !noalias !66963
  %i.dq = add nuw nsw i64 %.sroa.0.016.i, 2, !dbg !67090 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !67076  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !67076
  br i1 %niter.ncmp.1, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i, !dbg !67076

bb.ak:                                            ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit, %bb.ah
  %i.dr = load ptr, ptr %i.ar, align 8, !dbg !67091, !alias.scope !66967, !nonnull !2531, !noundef !2531
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.at, !dbg !67092 ; 2 uses
  store i64 %.sroa.0.0, ptr %i.ds, align 8, !dbg !67093
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8, !dbg !67093
  store i64 %.sroa.07.078, ptr %i.dt, align 8, !dbg !67093
  %i.du = add i64 %i.at, 1, !dbg !67094
  br label %bb.p, !dbg !67023

bb.al:                                            ; preds = %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTjjEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.an unwind label %bb.am, !dbg !67095

bb.am:                                            ; preds = %bb.al
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.ao, !dbg !67096

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTjjEEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.j, !dbg !67097

bb.ao:                                            ; preds = %bb.am
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !67095
  unreachable, !dbg !67095

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTjjEEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !67037
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEEEECskY9G75ZWc4U_11polars_expr.exit55 unwind label %bb.h, !dbg !67098

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEEEECskY9G75ZWc4U_11polars_expr.exit55: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTjjEEECskY9G75ZWc4U_11polars_expr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !67099
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTmxEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmxEEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.ap, !dbg !67100

bb.ap:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEEEECskY9G75ZWc4U_11polars_expr.exit55
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmxEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.aq, !dbg !67101

bb.aq:                                            ; preds = %bb.ap
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !67100
  unreachable, !dbg !67100

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmxEEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEEEECskY9G75ZWc4U_11polars_expr.exit55
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmxEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !67102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !66999
  br label %bb.ar, !dbg !67103

bb.ar:                                            ; preds = %bb.aw, %bb.c, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmxEEECskY9G75ZWc4U_11polars_expr.exit63, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmxEEECskY9G75ZWc4U_11polars_expr.exit
  ret void, !dbg !67104

bb.as:                                            ; preds = %.body, %bb.s, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEEEECskY9G75ZWc4U_11polars_expr.exit
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !67105
  unreachable, !dbg !67105

bb.at:                                            ; preds = %bb.g
  %i.ea = icmp eq i8 %i.w, 1, !dbg !67106
  br i1 %i.ea, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61, !dbg !67106

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57: ; preds = %bb.at
  %i.eb = lshr i64 %1, 1, !dbg !67107             ; 3 uses
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1, !dbg !67108 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66976), !dbg !67109
  call void @llvm.experimental.noalias.scope.decl(metadata !66977), !dbg !67109
  %i.ed = icmp eq i64 %i.eb, 1, !dbg !67110
  br i1 %i.ed, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58.epil.preheader, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57.new, !dbg !67110

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57.new: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57
  %unroll_iter175 = and i64 %i.eb, 1022, !dbg !67110
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58, !dbg !67110

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57.new
  %.sroa.0.016.i59 = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57.new ], [ %i.et, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58 ] ; 5 uses
  %niter176 = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57.new ], [ %niter176.next.1, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58 ]
  %i.ee = xor i64 %.sroa.0.016.i59, -1, !dbg !67111
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i59, !dbg !67112 ; 3 uses
  %i.eg = getelementptr [16 x i8], ptr %i.ec, i64 %i.ee, !dbg !67113 ; 3 uses
  %i.eh = load i32, ptr %i.ef, align 8, !dbg !67114, !alias.scope !66976, !noalias !66977, !noundef !2531
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8, !dbg !67114
  %i.ej = load i64, ptr %i.ei, align 8, !dbg !67114, !alias.scope !66976, !noalias !66977, !noundef !2531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i64 16, i1 false), !dbg !67114, !alias.scope !66978
  store i32 %i.eh, ptr %i.eg, align 8, !dbg !67114, !alias.scope !66977, !noalias !66976
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !67114
  store i64 %i.ej, ptr %i.ek, align 8, !dbg !67114, !alias.scope !66977, !noalias !66976
  %i.el = xor i64 %.sroa.0.016.i59, -2, !dbg !67111
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i59, !dbg !67112 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16, !dbg !67112 ; 2 uses
  %i.eo = getelementptr [16 x i8], ptr %i.ec, i64 %i.el, !dbg !67113 ; 3 uses
  %i.ep = load i32, ptr %i.en, align 8, !dbg !67114, !alias.scope !66976, !noalias !66977, !noundef !2531
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 24, !dbg !67114
  %i.er = load i64, ptr %i.eq, align 8, !dbg !67114, !alias.scope !66976, !noalias !66977, !noundef !2531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false), !dbg !67114, !alias.scope !66978
  store i32 %i.ep, ptr %i.eo, align 8, !dbg !67114, !alias.scope !66977, !noalias !66976
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !67114
  store i64 %i.er, ptr %i.es, align 8, !dbg !67114, !alias.scope !66977, !noalias !66976
  %i.et = add nuw nsw i64 %.sroa.0.016.i59, 2, !dbg !67115 ; 2 uses
  %niter176.next.1 = add nuw nsw i64 %niter176, 2, !dbg !67110 ; 2 uses
  %niter176.ncmp.1 = icmp eq i64 %niter176.next.1, %unroll_iter175, !dbg !67110
  br i1 %niter176.ncmp.1, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61.loopexit.unr-lcssa, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58, !dbg !67110

_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61.loopexit.unr-lcssa: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58
  %i.eu = and i64 %1, 2, !dbg !67110
  %lcmp.mod173.not = icmp eq i64 %i.eu, 0, !dbg !67110
  br i1 %lcmp.mod173.not, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58.epil.preheader, !dbg !67110

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58.epil.preheader: ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61.loopexit.unr-lcssa, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57
  %.sroa.0.016.i59.epil.init = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57 ], [ %i.et, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod174 = trunc i64 %i.eb to i1, !dbg !67110
  call void @llvm.assume(i1 %lcmp.mod174), !dbg !67110
  %i.ev = xor i64 %.sroa.0.016.i59.epil.init, -1, !dbg !67111
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i59.epil.init, !dbg !67112 ; 3 uses
  %i.ex = getelementptr [16 x i8], ptr %i.ec, i64 %i.ev, !dbg !67113 ; 3 uses
  %i.ey = load i32, ptr %i.ew, align 8, !dbg !67114, !alias.scope !66976, !noalias !66977, !noundef !2531
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8, !dbg !67114
  %i.fa = load i64, ptr %i.ez, align 8, !dbg !67114, !alias.scope !66976, !noalias !66977, !noundef !2531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %i.ex, i64 16, i1 false), !dbg !67114, !alias.scope !66978
  store i32 %i.ey, ptr %i.ex, align 8, !dbg !67114, !alias.scope !66977, !noalias !66976
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 8, !dbg !67114
  store i64 %i.fa, ptr %i.fb, align 8, !dbg !67114, !alias.scope !66977, !noalias !66976
  br label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61, !dbg !67116

_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58.epil.preheader, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61.loopexit.unr-lcssa, %bb.at
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTmxEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmxEEECskY9G75ZWc4U_11polars_expr.exit63 unwind label %bb.au, !dbg !67116

bb.au:                                            ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmxEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.av, !dbg !67117

bb.av:                                            ; preds = %bb.au
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !67116
  unreachable, !dbg !67116

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmxEEECskY9G75ZWc4U_11polars_expr.exit63: ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmxEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !67118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !66999
  br label %bb.ar, !dbg !67119

bb.aw:                                            ; preds = %bb.c
  call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftTmxENCINvYSB12_INtB4_16ParallelSliceMutB12_E11par_sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implxE0E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i), !dbg !67120
  br label %bb.ar, !dbg !67120
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort13par_mergesortTmxENCINvYSBQ_INtB4_16ParallelSliceMutBQ_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchBQ_NCINvNtB1Q_8arg_sort9sort_implxE0E00E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !67121 {
bb.a:
  %.sroa.0.i = alloca [16 x i8], align 8          ; 8 uses
  %.sroa.5.i = alloca [7 x i8], align 1           ; 8 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %2, ptr %i.i, align 8
  %i.j = icmp samesign ult i64 %1, 21, !dbg !67351
  br i1 %i.j, label %bb.c, label %bb.b, !dbg !67351

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !67352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !67353
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !67353
  %i.k = load i64, ptr %i.b, align 8, !dbg !67353, !range !2686, !noundef !2531
  %i.l = trunc nuw i64 %i.k to i1, !dbg !67354
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !67355
  %i.n = load i64, ptr %i.m, align 8, !dbg !67355, !range !2687, !noundef !2531 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !67355 ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e, !dbg !67354, !prof !2688

bb.c:                                             ; preds = %bb.a
  %i.p = icmp samesign ugt i64 %1, 1, !dbg !67356
  br i1 %i.p, label %bb.aw, label %bb.ar, !dbg !67356

common.resume:                                    ; preds = %bb.au, %bb.ap, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEEEECskY9G75ZWc4U_11polars_expr.exit
  %common.resume.op = phi { ptr, i32 } [ %i.dx, %bb.ap ], [ %.pn45, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEEEECskY9G75ZWc4U_11polars_expr.exit ], [ %i.fc, %bb.au ]
  resume { ptr, i32 } %common.resume.op, !dbg !67357

bb.d:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !dbg !67358
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.q) #36, !dbg !67359
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.o, align 8, !dbg !67360, !nonnull !2531, !noundef !2531 ; 4 uses
  %i.s = icmp samesign ule i64 %1, %i.n, !dbg !67361
  tail call void @llvm.assume(i1 %i.s), !dbg !67362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !67363
  store i64 %i.n, ptr %i.h, align 8, !dbg !67364
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !67364
  store ptr %i.r, ptr %i.t, align 8, !dbg !67364
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !67364
  store i64 0, ptr %i.u, align 8, !dbg !67364
  %i.v = icmp samesign ult i64 %1, 2001, !dbg !67365
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !67365

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !67366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !67367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !67367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !67367
  invoke void @_RNvYSTmxEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB3_E14par_chunks_mutCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 %0, i64 noundef %1, i64 noundef 2000, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
          to label %bb.i unwind label %bb.h, !dbg !67368

bb.g:                                             ; preds = %bb.e
  %i.w = invoke fastcc noundef i8 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort10merge_sortTmxENCINvYSBN_INtB4_16ParallelSliceMutBN_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchBN_NCINvNtB1N_8arg_sort9sort_implxE0E00E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.at unwind label %bb.h, !dbg !67369

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEEEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.body, %bb.h
  %.pn45 = phi { ptr, i32 } [ %i.x, %bb.h ], [ %.pn, %.body ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmxEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.h) #38
          to label %common.resume unwind label %bb.as, !dbg !67370

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTjjEEECskY9G75ZWc4U_11polars_expr.exit, %bb.i, %bb.g, %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEEEECskY9G75ZWc4U_11polars_expr.exit

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !67371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !67372
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !67373
  store i64 1, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !67373
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !67373
  store ptr %i.i, ptr %i.y, align 8, !dbg !67373
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !67373
  store ptr %i.r, ptr %i.z, align 8, !dbg !67373
  invoke void @_RINvNtNtCse67t6KqNqGQ_5rayon4iter13from_par_iter16collect_extendedINtNtCsgZ49sUHp3tW_5alloc3vec3VecTjjNtNtNtB6_5slice4sort15MergeSortResultEEINtNtB4_3map3MapINtNtB4_9enumerate9EnumerateINtNtB4_3len6MaxLenINtNtB1G_6chunks9ChunksMutTmxEEEENCINvB1E_13par_mergesortB3G_NCINvYSB3G_INtB1G_16ParallelSliceMutB3G_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchB3G_NCINvNtB5e_8arg_sort9sort_implxE0E00E0E0EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e)
          to label %bb.k unwind label %bb.h, !dbg !67374

.body:                                            ; preds = %bb.am, %bb.j, %bb.s
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.s ], [ %i.aa, %bb.j ], [ %i.dv, %bb.am ]
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEEEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.as, !dbg !67375

bb.j:                                             ; preds = %bb.an, %bb.n, %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !67376
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !67377
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !67377, !nonnull !2531, !noundef !2531 ; 3 uses
  %i.ad = load i64, ptr %i.f, align 8, !dbg !67377, !range !2668, !noundef !2531
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !67377
  %i.af = load i64, ptr %i.ae, align 8, !dbg !67377, !noundef !2531 ; 4 uses
  %i.ag = icmp ult i64 %i.af, 384307168202282326, !dbg !67378
  call void @llvm.assume(i1 %i.ag), !dbg !67379
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.af, !dbg !67380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !67381
  store ptr %i.ac, ptr %i.g, align 8, !dbg !67382
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !67382 ; 6 uses
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !67382
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !67382
  store i64 %i.ad, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !67382
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !67382 ; 3 uses
  store ptr %i.ah, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !67382
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !67382 ; 5 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48, !dbg !67382 ; 6 uses
  store i8 4, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !67382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !67383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !67384
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.af, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.m unwind label %bb.j, !dbg !67384

bb.l:                                             ; preds = %bb.ai, %bb.n
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.aj = load i64, ptr %i.a, align 8, !dbg !67384, !range !2686, !noundef !2531
  %i.ak = trunc nuw i64 %i.aj to i1, !dbg !67385
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !67386
  %i.am = load i64, ptr %i.al, align 8, !dbg !67386, !range !2687, !noundef !2531 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !67386 ; 2 uses
  br i1 %i.ak, label %bb.n, label %bb.o, !dbg !67385, !prof !2688

bb.n:                                             ; preds = %bb.m
  %i.ao = load i64, ptr %i.an, align 8, !dbg !67387
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.am, i64 %i.ao) #36
          to label %bb.l unwind label %bb.j, !dbg !67388

bb.o:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.an, align 8, !dbg !67389, !nonnull !2531, !noundef !2531
  %i.aq = icmp samesign ule i64 %i.af, %i.am, !dbg !67390
  call void @llvm.assume(i1 %i.aq), !dbg !67391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !67392
  store i64 %i.am, ptr %i.c, align 8, !dbg !67393
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !67393 ; 3 uses
  store ptr %i.ap, ptr %i.ar, align 8, !dbg !67393
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !67393
end_hunk_0
begin_hunk_1_@_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort13par_mergesortTmxENCINvYSBQ_INtB4_16ParallelSliceMutBQ_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchBQ_NCINvNtB1Q_8arg_sort9sort_implxE0E00E0ECskY9G75ZWc4U_11polars_expr:bb.a
  %i.ci = getelementptr i8, ptr %i.cg, i64 8, !dbg !67437
  %.val50 = load i64, ptr %i.ci, align 8, !dbg !67437, !alias.scope !3197, !noalias !3198, !noundef !2531
  %i.cj = icmp slt i64 %.val50, %.val, !dbg !67438
  %i.ck = xor i1 %i.bo, %i.cj, !dbg !67439
  br i1 %i.ck, label %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52, label %.loopexit94, !dbg !67439, !llvm.loop !67213

bb.ag:                                            ; preds = %.loopexit94
  %i.cl = icmp ult i64 %.sroa.07.1.lcssa, %.sroa.0.0, !dbg !67446
  %.not42 = icmp ugt i64 %.sroa.07.1.lcssa, %1
  %or.cond49 = or i1 %i.cl, %.not42, !dbg !67446
  br i1 %or.cond49, label %bb.ai, label %bb.aj, !dbg !67446, !prof !3013

_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i
  %i.cm = and i64 %i.cw, 2, !dbg !67447
  %lcmp.mod.not = icmp eq i64 %i.cm, 0, !dbg !67447
  br i1 %lcmp.mod.not, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.epil.preheader, !dbg !67447

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.epil.preheader: ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i
  %.sroa.0.016.i.epil.init = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i ], [ %i.dq, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod171 = trunc i64 %i.cy to i1, !dbg !67447
  call void @llvm.assume(i1 %lcmp.mod171), !dbg !67447
  %i.cn = xor i64 %.sroa.0.016.i.epil.init, -1, !dbg !67448
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.0.016.i.epil.init, !dbg !67449 ; 3 uses
  %i.cp = getelementptr [16 x i8], ptr %i.cz, i64 %i.cn, !dbg !67450 ; 3 uses
  %i.cq = load i32, ptr %i.co, align 8, !dbg !67451, !alias.scope !67334, !noalias !67335, !noundef !2531
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !67451
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !67451, !alias.scope !67334, !noalias !67335, !noundef !2531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false), !dbg !67451, !alias.scope !67336
  store i32 %i.cq, ptr %i.cp, align 8, !dbg !67451, !alias.scope !67335, !noalias !67334
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 8, !dbg !67451
  store i64 %i.cs, ptr %i.ct, align 8, !dbg !67451, !alias.scope !67335, !noalias !67334
  br label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit, !dbg !67452

_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.epil.preheader, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit, %bb.aj, %.loopexit94
  %.sroa.07.078 = phi i64 [ %.sroa.6.0, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit ], [ %.sroa.07.1.lcssa, %.loopexit94 ], [ %.sroa.07.1.lcssa, %bb.aj ], [ %.sroa.07.1.lcssa, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %.sroa.07.1.lcssa, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.epil.preheader ]
  %i.cu = load i64, ptr %i.c, align 8, !dbg !67452, !range !2668, !alias.scope !67338, !noundef !2531
  %i.cv = icmp eq i64 %i.at, %i.cu, !dbg !67453
  br i1 %i.cv, label %bb.ah, label %bb.ak, !dbg !67453

bb.ah:                                            ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.ak unwind label %.loopexit, !dbg !67454

bb.ai:                                            ; preds = %bb.ag
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0, i64 noundef %.sroa.07.1.lcssa, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #36
          to label %bb.l unwind label %.loopexit.split-lp, !dbg !67455

bb.aj:                                            ; preds = %bb.ag
  %i.cw = sub nuw i64 %.sroa.07.1.lcssa, %.sroa.0.0, !dbg !67456 ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.0, !dbg !67457 ; 3 uses
  %i.cy = lshr i64 %i.cw, 1, !dbg !67458          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67334), !dbg !67459
  call void @llvm.experimental.noalias.scope.decl(metadata !67335), !dbg !67459
  %.not.i51 = icmp eq i64 %i.cy, 0, !dbg !67447
  br i1 %.not.i51, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i, !dbg !67447

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i: ; preds = %bb.aj
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.07.1.lcssa, !dbg !67460 ; 3 uses
  %i.da = icmp eq i64 %i.cy, 1, !dbg !67447
  br i1 %i.da, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.epil.preheader, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new, !dbg !67447

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i
  %unroll_iter = and i64 %i.cy, 9223372036854775806, !dbg !67447
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i, !dbg !67447

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new
  %.sroa.0.016.i = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new ], [ %i.dq, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new ], [ %niter.next.1, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i ]
  %i.db = xor i64 %.sroa.0.016.i, -1, !dbg !67448
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.0.016.i, !dbg !67449 ; 3 uses
  %i.dd = getelementptr [16 x i8], ptr %i.cz, i64 %i.db, !dbg !67450 ; 3 uses
  %i.de = load i32, ptr %i.dc, align 8, !dbg !67451, !alias.scope !67334, !noalias !67335, !noundef !2531
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8, !dbg !67451
  %i.dg = load i64, ptr %i.df, align 8, !dbg !67451, !alias.scope !67334, !noalias !67335, !noundef !2531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i64 16, i1 false), !dbg !67451, !alias.scope !67336
  store i32 %i.de, ptr %i.dd, align 8, !dbg !67451, !alias.scope !67335, !noalias !67334
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8, !dbg !67451
  store i64 %i.dg, ptr %i.dh, align 8, !dbg !67451, !alias.scope !67335, !noalias !67334
  %i.di = xor i64 %.sroa.0.016.i, -2, !dbg !67448
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.0.016.i, !dbg !67449 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16, !dbg !67449 ; 2 uses
  %i.dl = getelementptr [16 x i8], ptr %i.cz, i64 %i.di, !dbg !67450 ; 3 uses
  %i.dm = load i32, ptr %i.dk, align 8, !dbg !67451, !alias.scope !67334, !noalias !67335, !noundef !2531
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 24, !dbg !67451
  %i.do = load i64, ptr %i.dn, align 8, !dbg !67451, !alias.scope !67334, !noalias !67335, !noundef !2531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i64 16, i1 false), !dbg !67451, !alias.scope !67336
  store i32 %i.dm, ptr %i.dl, align 8, !dbg !67451, !alias.scope !67335, !noalias !67334
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8, !dbg !67451
  store i64 %i.do, ptr %i.dp, align 8, !dbg !67451, !alias.scope !67335, !noalias !67334
  %i.dq = add nuw nsw i64 %.sroa.0.016.i, 2, !dbg !67461 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !67447  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !67447
  br i1 %niter.ncmp.1, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i, !dbg !67447

bb.ak:                                            ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit, %bb.ah
  %i.dr = load ptr, ptr %i.ar, align 8, !dbg !67462, !alias.scope !67338, !nonnull !2531, !noundef !2531
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.at, !dbg !67463 ; 2 uses
  store i64 %.sroa.0.0, ptr %i.ds, align 8, !dbg !67464
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8, !dbg !67464
  store i64 %.sroa.07.078, ptr %i.dt, align 8, !dbg !67464
  %i.du = add i64 %i.at, 1, !dbg !67465
  br label %bb.p, !dbg !67394

bb.al:                                            ; preds = %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTjjEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.an unwind label %bb.am, !dbg !67466

bb.am:                                            ; preds = %bb.al
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.ao, !dbg !67467

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTjjEEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.j, !dbg !67468

bb.ao:                                            ; preds = %bb.am
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !67466
  unreachable, !dbg !67466

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTjjEEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !67408
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEEEECskY9G75ZWc4U_11polars_expr.exit55 unwind label %bb.h, !dbg !67469

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEEEECskY9G75ZWc4U_11polars_expr.exit55: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTjjEEECskY9G75ZWc4U_11polars_expr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !67470
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTmxEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmxEEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.ap, !dbg !67471

bb.ap:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEEEECskY9G75ZWc4U_11polars_expr.exit55
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmxEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.aq, !dbg !67472

bb.aq:                                            ; preds = %bb.ap
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !67471
  unreachable, !dbg !67471

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmxEEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEEEECskY9G75ZWc4U_11polars_expr.exit55
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmxEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !67473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !67370
  br label %bb.ar, !dbg !67474

bb.ar:                                            ; preds = %bb.aw, %bb.c, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmxEEECskY9G75ZWc4U_11polars_expr.exit63, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmxEEECskY9G75ZWc4U_11polars_expr.exit
  ret void, !dbg !67475

bb.as:                                            ; preds = %.body, %bb.s, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEEEECskY9G75ZWc4U_11polars_expr.exit
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !67476
  unreachable, !dbg !67476

bb.at:                                            ; preds = %bb.g
  %i.ea = icmp eq i8 %i.w, 1, !dbg !67477
  br i1 %i.ea, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61, !dbg !67477

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57: ; preds = %bb.at
  %i.eb = lshr i64 %1, 1, !dbg !67478             ; 3 uses
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1, !dbg !67479 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67347), !dbg !67480
  call void @llvm.experimental.noalias.scope.decl(metadata !67348), !dbg !67480
  %i.ed = icmp eq i64 %i.eb, 1, !dbg !67481
  br i1 %i.ed, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58.epil.preheader, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57.new, !dbg !67481

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57.new: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57
  %unroll_iter175 = and i64 %i.eb, 1022, !dbg !67481
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58, !dbg !67481

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57.new
  %.sroa.0.016.i59 = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57.new ], [ %i.et, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58 ] ; 5 uses
  %niter176 = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57.new ], [ %niter176.next.1, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58 ]
  %i.ee = xor i64 %.sroa.0.016.i59, -1, !dbg !67482
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i59, !dbg !67483 ; 3 uses
  %i.eg = getelementptr [16 x i8], ptr %i.ec, i64 %i.ee, !dbg !67484 ; 3 uses
  %i.eh = load i32, ptr %i.ef, align 8, !dbg !67485, !alias.scope !67347, !noalias !67348, !noundef !2531
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8, !dbg !67485
  %i.ej = load i64, ptr %i.ei, align 8, !dbg !67485, !alias.scope !67347, !noalias !67348, !noundef !2531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i64 16, i1 false), !dbg !67485, !alias.scope !67349
  store i32 %i.eh, ptr %i.eg, align 8, !dbg !67485, !alias.scope !67348, !noalias !67347
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !67485
  store i64 %i.ej, ptr %i.ek, align 8, !dbg !67485, !alias.scope !67348, !noalias !67347
  %i.el = xor i64 %.sroa.0.016.i59, -2, !dbg !67482
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i59, !dbg !67483 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16, !dbg !67483 ; 2 uses
  %i.eo = getelementptr [16 x i8], ptr %i.ec, i64 %i.el, !dbg !67484 ; 3 uses
  %i.ep = load i32, ptr %i.en, align 8, !dbg !67485, !alias.scope !67347, !noalias !67348, !noundef !2531
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 24, !dbg !67485
  %i.er = load i64, ptr %i.eq, align 8, !dbg !67485, !alias.scope !67347, !noalias !67348, !noundef !2531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false), !dbg !67485, !alias.scope !67349
  store i32 %i.ep, ptr %i.eo, align 8, !dbg !67485, !alias.scope !67348, !noalias !67347
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !67485
  store i64 %i.er, ptr %i.es, align 8, !dbg !67485, !alias.scope !67348, !noalias !67347
  %i.et = add nuw nsw i64 %.sroa.0.016.i59, 2, !dbg !67486 ; 2 uses
  %niter176.next.1 = add nuw nsw i64 %niter176, 2, !dbg !67481 ; 2 uses
  %niter176.ncmp.1 = icmp eq i64 %niter176.next.1, %unroll_iter175, !dbg !67481
  br i1 %niter176.ncmp.1, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61.loopexit.unr-lcssa, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58, !dbg !67481

_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61.loopexit.unr-lcssa: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58
  %i.eu = and i64 %1, 2, !dbg !67481
  %lcmp.mod173.not = icmp eq i64 %i.eu, 0, !dbg !67481
  br i1 %lcmp.mod173.not, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58.epil.preheader, !dbg !67481

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58.epil.preheader: ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61.loopexit.unr-lcssa, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57
  %.sroa.0.016.i59.epil.init = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i57 ], [ %i.et, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod174 = trunc i64 %i.eb to i1, !dbg !67481
  call void @llvm.assume(i1 %lcmp.mod174), !dbg !67481
  %i.ev = xor i64 %.sroa.0.016.i59.epil.init, -1, !dbg !67482
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i59.epil.init, !dbg !67483 ; 3 uses
  %i.ex = getelementptr [16 x i8], ptr %i.ec, i64 %i.ev, !dbg !67484 ; 3 uses
  %i.ey = load i32, ptr %i.ew, align 8, !dbg !67485, !alias.scope !67347, !noalias !67348, !noundef !2531
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8, !dbg !67485
  %i.fa = load i64, ptr %i.ez, align 8, !dbg !67485, !alias.scope !67347, !noalias !67348, !noundef !2531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %i.ex, i64 16, i1 false), !dbg !67485, !alias.scope !67349
  store i32 %i.ey, ptr %i.ex, align 8, !dbg !67485, !alias.scope !67348, !noalias !67347
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 8, !dbg !67485
  store i64 %i.fa, ptr %i.fb, align 8, !dbg !67485, !alias.scope !67348, !noalias !67347
  br label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61, !dbg !67487

_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i58.epil.preheader, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61.loopexit.unr-lcssa, %bb.at
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTmxEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmxEEECskY9G75ZWc4U_11polars_expr.exit63 unwind label %bb.au, !dbg !67487

bb.au:                                            ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmxEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.av, !dbg !67488

bb.av:                                            ; preds = %bb.au
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !67487
  unreachable, !dbg !67487

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmxEEECskY9G75ZWc4U_11polars_expr.exit63: ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit61
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmxEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !67489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !67370
  br label %bb.ar, !dbg !67490

bb.aw:                                            ; preds = %bb.c
  call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftTmxENCINvYSB12_INtB4_16ParallelSliceMutB12_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchB12_NCINvNtB24_8arg_sort9sort_implxE0E00E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i), !dbg !67491
  br label %bb.ar, !dbg !67491
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort9par_mergeTmxENCINvYSBL_INtB4_16ParallelSliceMutBL_E11par_sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implxE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !67492 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %.idx90 = shl nuw nsw i64 %1, 4, !dbg !67579    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx90, !dbg !67579 ; 2 uses
  %.idx91 = shl nuw nsw i64 %3, 4, !dbg !67580    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %.idx91, !dbg !67580 ; 2 uses
  %i.d = icmp eq i64 %1, 0, !dbg !67581           ; 2 uses
  %i.e = icmp eq i64 %3, 0                        ; 2 uses
  %i.f = add nuw nsw i64 %3, %1
  %i.g = icmp samesign ult i64 %i.f, 5000
  %i.h = or i1 %i.e, %i.g, !dbg !67581
  %or.cond2 = or i1 %i.h, %i.d, !dbg !67581
  br i1 %or.cond2, label %.preheader, label %bb.b, !dbg !67581

.preheader:                                       ; preds = %bb.a
  %or.cond7884.demorgan = or i1 %i.d, %i.e, !dbg !67582
  br i1 %or.cond7884.demorgan, label %._crit_edge, label %.lr.ph, !dbg !67582

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67565), !dbg !67583
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67566), !dbg !67583
  %.not.i = icmp samesign ult i64 %1, %3, !dbg !67584
  br i1 %.not.i, label %bb.c, label %bb.d, !dbg !67584

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i64 %3, 1, !dbg !67585              ; 2 uses
  %i.j = lshr i64 %1, 1, !dbg !67586              ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.i
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.j, !dbg !67587
  %.val21.peel.i = load i64, ptr %i.l, align 8, !dbg !67588, !alias.scope !67567, !noalias !67568, !noundef !2531 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8, !dbg !67588
  %.val22.peel.i = load i64, ptr %i.n, align 8, !dbg !67588, !alias.scope !67568, !noalias !67567, !noundef !2531
  %i.o = icmp slt i64 %.val21.peel.i, %.val22.peel.i, !dbg !67589 ; 2 uses
  %i.p = add nuw nsw i64 %i.j, 1, !dbg !67588
  %.sroa.011.1.peel.i = select i1 %i.o, i64 %i.j, i64 %1, !dbg !67588 ; 2 uses
  %.sroa.07.1.peel.i = select i1 %i.o, i64 0, i64 %i.p, !dbg !67588 ; 3 uses
  %i.q = icmp samesign ult i64 %.sroa.07.1.peel.i, %.sroa.011.1.peel.i, !dbg !67590
  br i1 %i.q, label %.peel.next16.i, label %.loopexit, !dbg !67590

bb.d:                                             ; preds = %bb.b
  %i.r = lshr i64 %1, 1, !dbg !67591              ; 2 uses
  %i.s = lshr i64 %3, 1, !dbg !67592              ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.s, !dbg !67593
  %i.w = getelementptr i8, ptr %i.v, i64 8, !dbg !67594
  %.val.peel.i = load i64, ptr %i.w, align 8, !dbg !67594, !alias.scope !67567, !noalias !67568, !noundef !2531
  %.val20.peel.i = load i64, ptr %i.u, align 8, !dbg !67594, !alias.scope !67568, !noalias !67567, !noundef !2531 ; 2 uses
  %i.x = icmp slt i64 %.val.peel.i, %.val20.peel.i, !dbg !67595 ; 2 uses
  %i.y = add nuw nsw i64 %i.s, 1, !dbg !67594
  %.sroa.05.1.peel.i = select i1 %i.x, i64 %3, i64 %i.s, !dbg !67594 ; 2 uses
  %.sroa.01.1.peel.i = select i1 %i.x, i64 %i.y, i64 0, !dbg !67594 ; 3 uses
  %i.z = icmp samesign ult i64 %.sroa.01.1.peel.i, %.sroa.05.1.peel.i, !dbg !67596
  br i1 %i.z, label %.peel.next.i, label %.loopexit80, !dbg !67596

.peel.next16.i:                                   ; preds = %bb.c, %bb.e
  %.sroa.07.08.i = phi i64 [ %.sroa.07.1.i, %bb.e ], [ %.sroa.07.1.peel.i, %bb.c ] ; 3 uses
  %.sroa.011.07.i = phi i64 [ %.sroa.011.1.i, %bb.e ], [ %.sroa.011.1.peel.i, %bb.c ] ; 2 uses
  %i.aa = sub nuw nsw i64 %.sroa.011.07.i, %.sroa.07.08.i, !dbg !67586
  %i.ab = lshr i64 %i.aa, 1, !dbg !67586
  %i.ac = add nuw nsw i64 %i.ab, %.sroa.07.08.i, !dbg !67597 ; 5 uses
  %i.ad = icmp ult i64 %i.ac, %1, !dbg !67598
  br i1 %i.ad, label %bb.e, label %.loopexit19.i.invoke, !dbg !67598

bb.e:                                             ; preds = %.peel.next16.i
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ac, !dbg !67587
  %i.af = getelementptr i8, ptr %i.ae, i64 8, !dbg !67588
  %.val22.i = load i64, ptr %i.af, align 8, !dbg !67588, !alias.scope !67568, !noalias !67567, !noundef !2531
  %i.ag = icmp slt i64 %.val21.peel.i, %.val22.i, !dbg !67589 ; 2 uses
  %i.ah = add nuw nsw i64 %i.ac, 1, !dbg !67588
  %.sroa.011.1.i = select i1 %i.ag, i64 %i.ac, i64 %.sroa.011.07.i, !dbg !67588 ; 2 uses
  %.sroa.07.1.i = select i1 %i.ag, i64 %.sroa.07.08.i, i64 %i.ah, !dbg !67588 ; 3 uses
  %i.ai = icmp ult i64 %.sroa.07.1.i, %.sroa.011.1.i, !dbg !67590
  br i1 %i.ai, label %.peel.next16.i, label %.loopexit, !dbg !67590, !llvm.loop !67519

.loopexit19.i.invoke:                             ; preds = %.peel.next.i, %.peel.next16.i
  %i.aj = phi i64 [ %i.ac, %.peel.next16.i ], [ %i.ao, %.peel.next.i ]
  %i.ak = phi i64 [ %1, %.peel.next16.i ], [ %3, %.peel.next.i ]
  %i.al = phi ptr [ @61, %.peel.next16.i ], [ @62, %.peel.next.i ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.aj, i64 noundef range(i64 1, 576460752303423488) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al) #35
          to label %.loopexit19.i.cont unwind label %bb.h, !dbg !67599

.loopexit19.i.cont:                               ; preds = %.loopexit19.i.invoke
  unreachable

.peel.next.i:                                     ; preds = %bb.d, %bb.f
  %.sroa.01.06.i = phi i64 [ %.sroa.01.1.i, %bb.f ], [ %.sroa.01.1.peel.i, %bb.d ] ; 3 uses
  %.sroa.05.05.i = phi i64 [ %.sroa.05.1.i, %bb.f ], [ %.sroa.05.1.peel.i, %bb.d ] ; 2 uses
  %i.am = sub nuw nsw i64 %.sroa.05.05.i, %.sroa.01.06.i, !dbg !67592
  %i.an = lshr i64 %i.am, 1, !dbg !67592
  %i.ao = add nuw nsw i64 %i.an, %.sroa.01.06.i, !dbg !67600 ; 5 uses
  %i.ap = icmp ult i64 %i.ao, %3, !dbg !67601
  br i1 %i.ap, label %bb.f, label %.loopexit19.i.invoke, !dbg !67601

bb.f:                                             ; preds = %.peel.next.i
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ao, !dbg !67593
  %i.ar = getelementptr i8, ptr %i.aq, i64 8, !dbg !67594
  %.val.i = load i64, ptr %i.ar, align 8, !dbg !67594, !alias.scope !67567, !noalias !67568, !noundef !2531
  %i.as = icmp slt i64 %.val.i, %.val20.peel.i, !dbg !67595 ; 2 uses
  %i.at = add nuw nsw i64 %i.ao, 1, !dbg !67594
  %.sroa.05.1.i = select i1 %i.as, i64 %.sroa.05.05.i, i64 %i.ao, !dbg !67594 ; 2 uses
  %.sroa.01.1.i = select i1 %i.as, i64 %i.at, i64 %.sroa.01.06.i, !dbg !67594 ; 3 uses
  %i.au = icmp ult i64 %.sroa.01.1.i, %.sroa.05.1.i, !dbg !67596
  br i1 %i.au, label %.peel.next.i, label %.loopexit80, !dbg !67596, !llvm.loop !67520

.loopexit:                                        ; preds = %bb.e, %bb.c
  %.sroa.0.0.i = phi i64 [ %.sroa.07.1.peel.i, %bb.c ], [ %.sroa.07.1.i, %bb.e ], !dbg !67599 ; 2 uses
  %.not.i32 = icmp ugt i64 %.sroa.0.0.i, %1, !dbg !67602
  br i1 %.not.i32, label %.invoke, label %.thread72, !dbg !67602, !prof !3200

.loopexit80:                                      ; preds = %bb.f, %bb.d
  %.sroa.3.0.i.ph = phi i64 [ %.sroa.01.1.peel.i, %bb.d ], [ %.sroa.01.1.i, %bb.f ] ; 2 uses
  %.not.i34 = icmp ugt i64 %.sroa.3.0.i.ph, %3, !dbg !67603
  br i1 %.not.i34, label %.invoke, label %.thread72, !dbg !67603, !prof !3201

.invoke:                                          ; preds = %.loopexit80, %.loopexit
  %i.av = phi ptr [ @65, %.loopexit ], [ @66, %.loopexit80 ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av) #35
          to label %.cont unwind label %bb.h, !dbg !67604

.cont:                                            ; preds = %.invoke
  unreachable

.thread72:                                        ; preds = %.loopexit, %.loopexit80
  %.sroa.3.0.i7077 = phi i64 [ %.sroa.3.0.i.ph, %.loopexit80 ], [ %i.i, %.loopexit ] ; 4 uses
  %.sroa.0.0.i7176 = phi i64 [ %i.r, %.loopexit80 ], [ %.sroa.0.0.i, %.loopexit ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.0.i7176, !dbg !67605
  %i.ax = sub nuw nsw i64 %1, %.sroa.0.0.i7176, !dbg !67606
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.3.0.i7077, !dbg !67607
  %i.az = sub nuw nsw i64 %3, %.sroa.3.0.i7077, !dbg !67608
  %i.ba = getelementptr [16 x i8], ptr %4, i64 %.sroa.0.0.i7176, !dbg !67609
  %i.bb = getelementptr [16 x i8], ptr %i.ba, i64 %.sroa.3.0.i7077, !dbg !67609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !67610
  store ptr %i.aw, ptr %i.a, align 8, !dbg !67610
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !67610
  store i64 %i.ax, ptr %.sroa.419.0..sroa_idx, align 8, !dbg !67610
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !67610
  store ptr %i.ay, ptr %.sroa.520.0..sroa_idx, align 8, !dbg !67610
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !67610
  store i64 %i.az, ptr %.sroa.621.0..sroa_idx, align 8, !dbg !67610
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !67610
  store ptr %5, ptr %.sroa.722.0..sroa_idx, align 8, !dbg !67610
  %.sroa.823.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !67610
  store ptr %i.bb, ptr %.sroa.823.0..sroa_idx, align 8, !dbg !67610
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !67610
  store ptr %0, ptr %i.bc, align 8, !dbg !67610
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !67610
end_hunk_1
