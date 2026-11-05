Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.15?download=true
inline.NumInlined: 9427
inline.NumDeleted: 4812
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute5utils27combine_validities_and_manyNtNtNtB6_6bitmap9immutable6BitmapECskY9G75ZWc4U_11polars_expr:bb.a
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iterator17FastU64BitmapIterENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iterator17FastU64BitmapIterEECskY9G75ZWc4U_11polars_expr.exit77 unwind label %.thread103.loopexit.split-lp.loopexit.split-lp, !dbg !67051

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iterator17FastU64BitmapIterEECskY9G75ZWc4U_11polars_expr.exit77: ; preds = %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iterator17FastU64BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !67054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !67055
  store i64 0, ptr %i.d, align 8, !dbg !67056
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !67056
  store i64 8, ptr %.sroa.451.0..sroa_idx, align 8, !dbg !67056
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !67056
  store i64 %.sroa.0.2, ptr %.sroa.552.0..sroa_idx, align 8, !dbg !67056
  invoke void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCscgRAwXFJnXP_4core5array4iter8IntoIterhKj8_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.w unwind label %.thread103.loopexit.split-lp.loopexit.split-lp, !dbg !67057

bb.w:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iterator17FastU64BitmapIterEECskY9G75ZWc4U_11polars_expr.exit77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !67058
  br i1 %.sroa.015.0.lcssa.ph, label %bb.x, label %bb.y, !dbg !67050

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !67059
  store i64 0, ptr %i.c, align 8, !dbg !67060
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !67060
  store i64 8, ptr %.sroa.461.0..sroa_idx, align 8, !dbg !67060
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !67060
  store i64 %.sroa.6146.3, ptr %.sroa.562.0..sroa_idx, align 8, !dbg !67060
  invoke void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCscgRAwXFJnXP_4core5array4iter8IntoIterhKj8_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.z unwind label %.thread103.loopexit.split-lp.loopexit.split-lp, !dbg !67061

bb.y:                                             ; preds = %bb.w, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !67062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !67063
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !67063
  %i.cz = load i64, ptr %i.q, align 8, !dbg !67064, !noundef !2532
  %.not69 = icmp eq i64 %i.cz, 0, !dbg !67065
  br i1 %.not69, label %bb.ab, label %bb.aa, !dbg !67065

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !67066
  br label %bb.y, !dbg !67067

bb.aa:                                            ; preds = %bb.y
  %i.da = load ptr, ptr %i.t, align 8, !dbg !67068, !nonnull !2532, !noundef !2532
  %i.db = load ptr, ptr %i.da, align 8, !dbg !67069, !nonnull !2532, !align !2690, !noundef !2532
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16, !dbg !67070
  %i.dd = load i64, ptr %i.dc, align 8, !dbg !67070, !noundef !2532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !67071
  invoke fastcc void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap7try_new(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %i.dd)
          to label %bb.ac unwind label %.body, !dbg !67071

bb.ab:                                            ; preds = %bb.y
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #36
          to label %bb.p unwind label %bb.an, !dbg !67065

.body:                                            ; preds = %bb.al, %bb.b, %bb.j, %bb.k, %bb.aa
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.thread121, !dbg !67072

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !66940), !dbg !67073
  call void @llvm.experimental.noalias.scope.decl(metadata !66941), !dbg !67073
  %i.df = load i64, ptr %i.b, align 8, !dbg !67074, !range !3035, !alias.scope !66941, !noundef !2532
  %.not.i = icmp eq i64 %i.df, 18, !dbg !67074
  br i1 %.not.i, label %bb.ah, label %bb.ad, !dbg !67075, !prof !2819

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !67076, !noalias !66942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.b, i64 72, i1 false), !dbg !67076, !noalias !66943
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @250, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @252, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #36
          to label %bb.af unwind label %bb.ae, !dbg !67077, !noalias !66944

bb.ae:                                            ; preds = %bb.ad
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #38
          to label %.thread121 unwind label %bb.ag, !dbg !67078, !noalias !66944

bb.af:                                            ; preds = %bb.ad
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !67079, !noalias !66944
  unreachable, !dbg !67079

bb.ah:                                            ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !67080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.di, i64 32, i1 false), !dbg !67080, !alias.scope !66944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !67081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !67072
  %i.dj = invoke noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.h)
          to label %bb.aj unwind label %bb.ai, !dbg !67082

bb.ai:                                            ; preds = %bb.ah
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.thread121 unwind label %bb.am, !dbg !67083

bb.aj:                                            ; preds = %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !67084
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !67084, !noundef !2532
  %i.dn = icmp eq i64 %i.dj, %i.dm, !dbg !67085
  br i1 %i.dn, label %bb.al, label %bb.ak, !dbg !67085

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !67086
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECskY9G75ZWc4U_11polars_expr.exit78, !dbg !67087

bb.al:                                            ; preds = %bb.aj
  store ptr null, ptr %0, align 8, !dbg !67088
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECskY9G75ZWc4U_11polars_expr.exit78 unwind label %.body, !dbg !67089

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECskY9G75ZWc4U_11polars_expr.exit78: ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !67087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !67090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !67004
  br label %bb.d, !dbg !67004

bb.am:                                            ; preds = %bb.ai, %bb.v, %bb.aq, %.thread96, %bb.an, %.thread121
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !67091
  unreachable, !dbg !67091

bb.an:                                            ; preds = %bb.ab
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g) #38
          to label %.thread121 unwind label %bb.am, !dbg !67072

bb.ao:                                            ; preds = %.lr.ph163
  %i.dq = load <2 x i64>, ptr %i.i, align 16, !dbg !67092
  %i.dr = load i64, ptr %i.cq, align 16, !dbg !67093, !noundef !2532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !67094
  %i.ds = and <2 x i64> %i.cv, %i.dq, !dbg !67095 ; 3 uses
  %i.dt = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !67096, !alias.scope !66946, !nonnull !2532, !noundef !2532
  %i.du = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !67097, !alias.scope !66946, !nonnull !2532, !noundef !2532 ; 4 uses
  %i.dv = icmp eq ptr %i.du, %i.dt, !dbg !67097
  br i1 %i.dv, label %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iterator17FastU64BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.loopexit, label %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iterator17FastU64BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit, !dbg !67098

bb.ap:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !67099
  br label %.lr.ph.backedge, !dbg !67015

.thread96:                                        ; preds = %.thread103.loopexit.split-lp.loopexit.split-lp, %bb.v
  %i.dw = phi i1 [ false, %bb.v ], [ %i.bs, %.thread103.loopexit.split-lp.loopexit.split-lp ]
  %.pn72101 = phi { ptr, i32 } [ %i.cs, %bb.v ], [ %lpad.loopexit.split-lp171, %.thread103.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.l) #38
          to label %bb.o unwind label %bb.am, !dbg !67090

bb.aq:                                            ; preds = %.thread, %bb.o
  %.pn7491 = phi { ptr, i32 } [ %i.bd, %.thread ], [ %.pn72101, %bb.o ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iterator17FastU64BitmapIterEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.m) #38
          to label %.thread121 unwind label %bb.am, !dbg !67004
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort10merge_sortTmxENCINvYSBN_INtB4_16ParallelSliceMutBN_E11par_sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implxE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !67100 !guid !67252 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !67304
  store i64 0, ptr %i.a, align 8, !dbg !67305
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !67305 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !dbg !67305
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !67305 ; 4 uses
  store i64 0, ptr %i.c, align 8, !dbg !67305
  %.not102 = icmp eq i64 %1, 0, !dbg !67306
  br i1 %.not102, label %.loopexit50, label %.lr.ph101, !dbg !67306

.loopexit50:                                      ; preds = %._crit_edge, %bb.a, %bb.j
  %.sroa.0.0 = phi i8 [ %., %bb.j ], [ 2, %bb.a ], [ 2, %._crit_edge ], !dbg !67307
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.b, !dbg !67308

bb.b:                                             ; preds = %.loopexit50
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.c, !dbg !67309

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !67308
  unreachable, !dbg !67308

common.resume:                                    ; preds = %bb.h, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %lpad.loopexit.split-lp267, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !67310

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.loopexit50
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !67311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !67312
  ret i8 %.sroa.0.0, !dbg !67313

.lr.ph101:                                        ; preds = %bb.a, %._crit_edge
  %i.f = phi i64 [ %i.cm, %._crit_edge ], [ 0, %bb.a ]
  %.sroa.02.099 = phi i64 [ %.sroa.0.0.i31, %._crit_edge ], [ 0, %bb.a ] ; 10 uses
  %i.g = sub nuw nsw i64 %1, %.sroa.02.099, !dbg !67314 ; 7 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.099, !dbg !67315 ; 9 uses
  %i.i = icmp samesign ult i64 %i.g, 2, !dbg !67316
  br i1 %i.i, label %.loopexit47, label %bb.d, !dbg !67316

bb.d:                                             ; preds = %.lr.ph101
  %i.j = getelementptr i8, ptr %i.h, i64 24, !dbg !67317
  %.val14.i = load i64, ptr %i.j, align 8, !dbg !67317, !alias.scope !67257, !noundef !2532 ; 3 uses
  %i.k = getelementptr i8, ptr %i.h, i64 8, !dbg !67317
  %.val15.i = load i64, ptr %i.k, align 8, !dbg !67317, !alias.scope !67258, !noundef !2532
  %i.l = icmp slt i64 %.val14.i, %.val15.i, !dbg !67318
  %.not11.i = icmp eq i64 %i.g, 2, !dbg !67319    ; 2 uses
  br i1 %i.l, label %.preheader.i, label %.preheader1.i, !dbg !67320

.preheader1.i:                                    ; preds = %bb.d
  br i1 %.not11.i, label %.loopexit47, label %.lr.ph.i, !dbg !67321

.preheader.i:                                     ; preds = %bb.d
  br i1 %.not11.i, label %.loopexit47, label %.lr.ph7.i, !dbg !67322

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.e
  %.val13.i = phi i64 [ %.val12.i, %bb.e ], [ %.val14.i, %.preheader1.i ], !dbg !67323
  %.sroa.01.03.i = phi i64 [ %i.p, %bb.e ], [ 2, %.preheader1.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.01.03.i, !dbg !67324
  %i.n = getelementptr i8, ptr %i.m, i64 8, !dbg !67323
  %.val12.i = load i64, ptr %i.n, align 8, !dbg !67323, !alias.scope !67257, !noundef !2532 ; 2 uses
  %i.o = icmp slt i64 %.val12.i, %.val13.i, !dbg !67325
  br i1 %i.o, label %.loopexit47, label %bb.e, !dbg !67323

bb.e:                                             ; preds = %.lr.ph.i
  %i.p = add nuw nsw i64 %.sroa.01.03.i, 1, !dbg !67326 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, %i.g, !dbg !67321
  br i1 %exitcond.not.i, label %.loopexit47, label %.lr.ph.i, !dbg !67321

.lr.ph7.i:                                        ; preds = %.preheader.i, %bb.f
  %.val11.i = phi i64 [ %.val.i, %bb.f ], [ %.val14.i, %.preheader.i ], !dbg !67327
  %.sroa.01.16.i = phi i64 [ %i.t, %bb.f ], [ 2, %.preheader.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.01.16.i, !dbg !67328
  %i.r = getelementptr i8, ptr %i.q, i64 8, !dbg !67327
  %.val.i = load i64, ptr %i.r, align 8, !dbg !67327, !alias.scope !67257, !noundef !2532 ; 2 uses
  %i.s = icmp slt i64 %.val.i, %.val11.i, !dbg !67329
  br i1 %i.s, label %bb.f, label %.loopexit47, !dbg !67327

bb.f:                                             ; preds = %.lr.ph7.i
  %i.t = add nuw nsw i64 %.sroa.01.16.i, 1, !dbg !67330 ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.t, %i.g, !dbg !67322
  br i1 %exitcond14.not.i, label %.loopexit47, label %.lr.ph7.i, !dbg !67322

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit, %bb.q, %bb.n, %.invoke220, %.invoke, %bb.l
  %lpad.loopexit.split-lp267 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g, !dbg !67331

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.i, !dbg !67332

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.ae, !dbg !67333

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !67331
  unreachable, !dbg !67331

.loopexit47:                                      ; preds = %bb.e, %.lr.ph.i, %bb.f, %.lr.ph7.i, %.preheader.i, %.preheader1.i, %.lr.ph101
  %.sroa.4.0.i = phi i1 [ false, %.lr.ph101 ], [ true, %.preheader.i ], [ true, %bb.f ], [ false, %.preheader1.i ], [ true, %.lr.ph7.i ], [ false, %.lr.ph.i ], [ false, %bb.e ], !dbg !67334 ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.g, %.lr.ph101 ], [ 2, %.preheader.i ], [ %i.g, %bb.f ], [ 2, %.preheader1.i ], [ %.sroa.01.16.i, %.lr.ph7.i ], [ %i.g, %bb.e ], [ %.sroa.01.03.i, %.lr.ph.i ], !dbg !67334 ; 7 uses
  %i.w = add i64 %.sroa.0.0.i, %.sroa.02.099, !dbg !67335 ; 8 uses
  %i.x = icmp eq i64 %.sroa.02.099, 0, !dbg !67336
  %i.y = icmp eq i64 %i.w, %1
  %or.cond = and i1 %i.x, %i.y, !dbg !67336
  br i1 %or.cond, label %bb.j, label %bb.k, !dbg !67336

bb.j:                                             ; preds = %.loopexit47
  %. = zext i1 %.sroa.4.0.i to i8, !dbg !67337
  br label %.loopexit50, !dbg !67337

bb.k:                                             ; preds = %.loopexit47
  br i1 %.sroa.4.0.i, label %bb.o, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit, !dbg !67338

_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i
  %i.z = and i64 %.sroa.0.0.i, 2, !dbg !67339
  %lcmp.mod.not = icmp eq i64 %i.z, 0, !dbg !67339
  br i1 %lcmp.mod.not, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.epil.preheader, !dbg !67339

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.epil.preheader: ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i
  %.sroa.0.016.i.epil.init = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i ], [ %i.bd, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod302 = trunc i64 %i.al to i1, !dbg !67339
  call void @llvm.assume(i1 %lcmp.mod302), !dbg !67339
  %i.aa = xor i64 %.sroa.0.016.i.epil.init, -1, !dbg !67340
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.0.016.i.epil.init, !dbg !67341 ; 3 uses
  %i.ac = getelementptr [16 x i8], ptr %i.am, i64 %i.aa, !dbg !67342 ; 3 uses
  %i.ad = load i32, ptr %i.ab, align 8, !dbg !67343, !alias.scope !67262, !noundef !2532
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !67343
  %i.af = load i64, ptr %i.ae, align 8, !dbg !67343, !alias.scope !67262, !noundef !2532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !dbg !67343, !alias.scope !67263
  store i32 %i.ad, ptr %i.ac, align 8, !dbg !67343, !alias.scope !67264
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !67343
  store i64 %i.af, ptr %i.ag, align 8, !dbg !67343, !alias.scope !67264
  br label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit, !dbg !67344

_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.epil.preheader, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.p, %bb.k
  %4 = icmp uge i64 %i.w, %.sroa.02.099, !dbg !67344
  %5 = icmp ule i64 %i.w, %1
  %or.cond.i = and i1 %4, %5, !dbg !67344
  br i1 %or.cond.i, label %bb.m, label %bb.l, !dbg !67344, !prof !3054

bb.l:                                             ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #35
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !67345

.noexc:                                           ; preds = %bb.l
  unreachable, !dbg !67345

bb.m:                                             ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit
  %i.ah = icmp samesign ult i64 %.sroa.0.0.i, 10, !dbg !67346
  %i.ai = icmp samesign ult i64 %i.w, %1
  %or.cond3.i = and i1 %i.ah, %i.ai, !dbg !67346
  br i1 %or.cond3.i, label %bb.n, label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implxE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !67346

bb.n:                                             ; preds = %bb.m
  %i.aj = add nuw nsw i64 %.sroa.02.099, 10, !dbg !67347
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 1, 576460752303423488) %1, i64 %i.aj), !dbg !67348 ; 2 uses
  %.sroa.0.0.i14.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1), !dbg !67349
  %i.ak = sub nsw i64 %.sroa.0.0.i.i, %.sroa.02.099, !dbg !67350 ; 2 uses
  invoke void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftTmxENCINvYSB12_INtB4_16ParallelSliceMutB12_E11par_sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implxE0E0EB2a_(ptr noalias noundef nonnull align 8 %i.h, i64 noundef %i.ak, i64 noundef %.sroa.0.0.i14.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) #40
          to label %._RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implxE0E0ECskY9G75ZWc4U_11polars_expr.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !67351

._RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implxE0E0ECskY9G75ZWc4U_11polars_expr.exit_crit_edge: ; preds = %bb.n
  %.pre = load i64, ptr %i.c, align 8, !dbg !67352, !alias.scope !67265
  br label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implxE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !67351

bb.o:                                             ; preds = %bb.k
  %6 = icmp ult i64 %i.w, %.sroa.02.099, !dbg !67353
  %.not = icmp ugt i64 %i.w, %1
  %or.cond27 = or i1 %6, %.not, !dbg !67353
  br i1 %or.cond27, label %.invoke, label %bb.p, !dbg !67353, !prof !3014

bb.p:                                             ; preds = %bb.o
  %i.al = lshr i64 %.sroa.0.0.i, 1, !dbg !67354   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67262), !dbg !67355
  call void @llvm.experimental.noalias.scope.decl(metadata !67264), !dbg !67355
  %.not.i = icmp eq i64 %i.al, 0, !dbg !67339
  br i1 %.not.i, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i, !dbg !67339

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i: ; preds = %bb.p
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !67356 ; 3 uses
  %i.an = icmp eq i64 %i.al, 1, !dbg !67339
  br i1 %i.an, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.epil.preheader, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new, !dbg !67339

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i
  %unroll_iter = and i64 %i.al, 9223372036854775806, !dbg !67339
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i, !dbg !67339

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new
  %.sroa.0.016.i = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new ], [ %i.bd, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new ], [ %niter.next.1, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i ]
  %i.ao = xor i64 %.sroa.0.016.i, -1, !dbg !67340
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.0.016.i, !dbg !67341 ; 3 uses
  %i.aq = getelementptr [16 x i8], ptr %i.am, i64 %i.ao, !dbg !67342 ; 3 uses
  %i.ar = load i32, ptr %i.ap, align 8, !dbg !67343, !alias.scope !67262, !noundef !2532
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8, !dbg !67343
  %i.at = load i64, ptr %i.as, align 8, !dbg !67343, !alias.scope !67262, !noundef !2532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !dbg !67343, !alias.scope !67263
  store i32 %i.ar, ptr %i.aq, align 8, !dbg !67343, !alias.scope !67264
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8, !dbg !67343
  store i64 %i.at, ptr %i.au, align 8, !dbg !67343, !alias.scope !67264
  %i.av = xor i64 %.sroa.0.016.i, -2, !dbg !67340
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.0.016.i, !dbg !67341 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !67341 ; 2 uses
  %i.ay = getelementptr [16 x i8], ptr %i.am, i64 %i.av, !dbg !67342 ; 3 uses
  %i.az = load i32, ptr %i.ax, align 8, !dbg !67343, !alias.scope !67262, !noundef !2532
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24, !dbg !67343
  %i.bb = load i64, ptr %i.ba, align 8, !dbg !67343, !alias.scope !67262, !noundef !2532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !dbg !67343, !alias.scope !67263
  store i32 %i.az, ptr %i.ay, align 8, !dbg !67343, !alias.scope !67264
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8, !dbg !67343
  store i64 %i.bb, ptr %i.bc, align 8, !dbg !67343, !alias.scope !67264
  %i.bd = add nuw nsw i64 %.sroa.0.016.i, 2, !dbg !67357 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !67339  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !67339
  br i1 %niter.ncmp.1, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i, !dbg !67339

_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implxE0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.m, %._RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implxE0E0ECskY9G75ZWc4U_11polars_expr.exit_crit_edge
  %.pre-phi = phi i64 [ %i.ak, %._RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implxE0E0ECskY9G75ZWc4U_11polars_expr.exit_crit_edge ], [ %.sroa.0.0.i, %bb.m ], !dbg !67358
  %i.be = phi i64 [ %.pre, %._RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implxE0E0ECskY9G75ZWc4U_11polars_expr.exit_crit_edge ], [ %i.f, %bb.m ], !dbg !67352 ; 3 uses
  %.sroa.0.0.i31 = phi i64 [ %.sroa.0.0.i.i, %._RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implxE0E0ECskY9G75ZWc4U_11polars_expr.exit_crit_edge ], [ %i.w, %bb.m ] ; 2 uses
  %i.bf = load i64, ptr %i.a, align 8, !dbg !67359, !range !2669, !alias.scope !67265, !noundef !2532
  %i.bg = icmp eq i64 %i.be, %i.bf, !dbg !67360
  br i1 %i.bg, label %bb.q, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunE8push_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !67360

bb.q:                                             ; preds = %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implxE0E0ECskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunE8push_mutCskY9G75ZWc4U_11polars_expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !67361

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunE8push_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.q, %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implxE0E0ECskY9G75ZWc4U_11polars_expr.exit
  %i.bh = load ptr, ptr %i.b, align 8, !dbg !67362, !alias.scope !67265, !nonnull !2532, !noundef !2532
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.be, !dbg !67363 ; 2 uses
  store i64 %.pre-phi, ptr %i.bi, align 8, !dbg !67364
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8, !dbg !67364
  store i64 %.sroa.02.099, ptr %i.bj, align 8, !dbg !67364
  %i.bk = add i64 %i.be, 1, !dbg !67365           ; 4 uses
  store i64 %i.bk, ptr %i.c, align 8, !dbg !67365, !alias.scope !67265
  %i.bl = icmp samesign ugt i64 %i.bk, 1, !dbg !67366
  br i1 %i.bl, label %.lr.ph.preheader, label %._crit_edge, !dbg !67366

.lr.ph.preheader:                                 ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunE8push_mutCskY9G75ZWc4U_11polars_expr.exit
  %i.bm = load ptr, ptr %i.b, align 8, !dbg !67367, !nonnull !2532, !noundef !2532
  br label %.lr.ph, !dbg !67368

thread-pre-split:                                 ; preds = %.loopexit
  %.pr = load i64, ptr %i.c, align 8, !dbg !67369 ; 3 uses
  %i.bn = load ptr, ptr %i.b, align 8, !dbg !67367, !nonnull !2532, !noundef !2532
  %i.bo = icmp samesign ugt i64 %.pr, 1, !dbg !67366
  br i1 %i.bo, label %.lr.ph, label %._crit_edge, !dbg !67366

.lr.ph:                                           ; preds = %.lr.ph.preheader, %thread-pre-split
  %i.bp = phi ptr [ %i.bn, %thread-pre-split ], [ %i.bm, %.lr.ph.preheader ] ; 4 uses
  %i.bq = phi i64 [ %.pr, %thread-pre-split ], [ %i.bk, %.lr.ph.preheader ] ; 10 uses
  %i.br = getelementptr [16 x i8], ptr %i.bp, i64 %i.bq, !dbg !67368 ; 5 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 -16, !dbg !67368
  %i.bt = getelementptr i8, ptr %i.br, i64 -8, !dbg !67368
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !67368, !alias.scope !67277, !noundef !2532
  %i.bv = load i64, ptr %i.bs, align 8, !dbg !67370, !alias.scope !67277, !noundef !2532 ; 4 uses
  %i.bw = add i64 %i.bv, %i.bu, !dbg !67368
  %i.bx = icmp eq i64 %i.bw, %1, !dbg !67368
  br i1 %i.bx, label %bb.t, label %bb.r, !dbg !67368

bb.r:                                             ; preds = %.lr.ph
  %i.by = getelementptr i8, ptr %i.br, i64 -32, !dbg !67371
  %i.bz = load i64, ptr %i.by, align 8, !dbg !67371, !alias.scope !67277, !noundef !2532 ; 3 uses
  %.not.i37 = icmp ugt i64 %i.bz, %i.bv, !dbg !67371
  br i1 %.not.i37, label %bb.s, label %bb.t, !dbg !67371

bb.s:                                             ; preds = %bb.r
  %.not14.i = icmp eq i64 %i.bq, 2, !dbg !67372
  br i1 %.not14.i, label %._crit_edge, label %bb.v, !dbg !67372

bb.t:                                             ; preds = %bb.r, %.lr.ph
  %.not17.i = icmp eq i64 %i.bq, 2, !dbg !67373
  br i1 %.not17.i, label %bb.x, label %.thread.i, !dbg !67373

bb.u:                                             ; preds = %bb.v
  %i.ca = icmp samesign ugt i64 %i.bq, 3, !dbg !67374
  br i1 %i.ca, label %bb.w, label %._crit_edge, !dbg !67374

bb.v:                                             ; preds = %bb.s
  %i.cb = getelementptr i8, ptr %i.br, i64 -48, !dbg !67375
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !67375, !alias.scope !67277, !noundef !2532 ; 2 uses
  %i.cd = add i64 %i.bz, %i.bv, !dbg !67376
  %.not15.i = icmp ugt i64 %i.cc, %i.cd, !dbg !67375
  br i1 %.not15.i, label %bb.u, label %.thread.i, !dbg !67375

bb.w:                                             ; preds = %bb.u
  %i.ce = getelementptr i8, ptr %i.br, i64 -64, !dbg !67377
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !67377, !alias.scope !67277, !noundef !2532
  %i.cg = add i64 %i.cc, %i.bz, !dbg !67378
  %.not16.i = icmp ugt i64 %i.cf, %i.cg, !dbg !67377
  br i1 %.not16.i, label %._crit_edge, label %.thread.i, !dbg !67377

bb.x:                                             ; preds = %.thread.i, %bb.t
  %i.ch = add nsw i64 %i.bq, -2, !dbg !67379
  br label %bb.y, !dbg !67380

.thread.i:                                        ; preds = %bb.t, %bb.w, %bb.v
  %i.ci = add nsw i64 %i.bq, -3, !dbg !67381      ; 2 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ci, !dbg !67382
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !67382, !alias.scope !67277, !noundef !2532
  %i.cl = icmp ult i64 %i.ck, %i.bv, !dbg !67382
  br i1 %i.cl, label %bb.y, label %bb.x, !dbg !67382

._crit_edge:                                      ; preds = %thread-pre-split, %bb.s, %bb.u, %bb.w, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunE8push_mutCskY9G75ZWc4U_11polars_expr.exit
  %i.cm = phi i64 [ %i.bk, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunE8push_mutCskY9G75ZWc4U_11polars_expr.exit ], [ %.pr, %thread-pre-split ], [ 2, %bb.s ], [ 3, %bb.u ], [ %i.bq, %bb.w ]
  %i.cn = icmp samesign ult i64 %.sroa.0.0.i31, %1, !dbg !67306
  br i1 %i.cn, label %.lr.ph101, label %.loopexit50, !dbg !67306

bb.y:                                             ; preds = %bb.x, %.thread.i
  %.sroa.4.0.i35.ph = phi i64 [ %i.ci, %.thread.i ], [ %i.ch, %bb.x ] ; 5 uses
  %i.co = icmp ult i64 %.sroa.4.0.i35.ph, %i.bq, !dbg !67383
  br i1 %i.co, label %bb.z, label %.invoke220, !dbg !67383

bb.z:                                             ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.sroa.4.0.i35.ph, !dbg !67384 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !dbg !67385, !noundef !2532 ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8, !dbg !67385
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !67385, !noundef !2532 ; 5 uses
  %i.ct = add nuw nsw i64 %.sroa.4.0.i35.ph, 1, !dbg !67386 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, %i.bq, !dbg !67387
  br i1 %i.cu, label %bb.aa, label %.invoke220, !dbg !67387

bb.aa:                                            ; preds = %bb.z
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ct, !dbg !67388 ; 3 uses
  %i.cw = load i64, ptr %i.cv, align 8, !dbg !67389, !noundef !2532 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !67389 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !67389, !noundef !2532
  %i.cz = add i64 %i.cy, %i.cw, !dbg !67390       ; 5 uses
  %i.da = icmp ult i64 %i.cz, %i.cs, !dbg !67391
  %.not26 = icmp ugt i64 %i.cz, %1
  %or.cond28 = or i1 %i.da, %.not26, !dbg !67391
  br i1 %or.cond28, label %.invoke, label %bb.ab, !dbg !67391, !prof !3014

.invoke220:                                       ; preds = %bb.z, %bb.y
  %i.db = phi i64 [ %.sroa.4.0.i35.ph, %bb.y ], [ %i.ct, %bb.z ]
  %i.dc = phi ptr [ @51, %bb.y ], [ @52, %bb.z ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.db, i64 noundef %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dc) #36
          to label %.cont221 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !67392

.cont221:                                         ; preds = %.invoke220
  unreachable

.invoke:                                          ; preds = %bb.o, %bb.aa
  %i.dd = phi i64 [ %i.cs, %bb.aa ], [ %.sroa.02.099, %bb.o ]
  %i.de = phi i64 [ %i.cz, %bb.aa ], [ %i.w, %bb.o ]
  %i.df = phi ptr [ @54, %bb.aa ], [ @55, %bb.o ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dd, i64 noundef %i.de, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.df) #36
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !67393

.cont:                                            ; preds = %.invoke
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.dg = sub nuw i64 %i.cz, %i.cs, !dbg !67394   ; 3 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cs, !dbg !67395 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67298), !dbg !67396
  %.idx29.i = shl i64 %i.cq, 4, !dbg !67397       ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx29.i, !dbg !67397 ; 4 uses
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cz, !dbg !67398 ; 2 uses
  %i.dk = sub i64 %i.dg, %i.cq, !dbg !67399       ; 2 uses
  %.not.i38 = icmp ugt i64 %i.cq, %i.dk, !dbg !67400
  br i1 %.not.i38, label %bb.ac, label %bb.ad, !dbg !67400

bb.ac:                                            ; preds = %bb.ab
  %i.dl = shl i64 %i.dk, 4, !dbg !67401           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr nonnull align 8 %i.di, i64 %i.dl, i1 false), !dbg !67401
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 %i.dl, !dbg !67402 ; 2 uses
  %.not31.i = icmp eq i64 %i.dg, %i.cq
  br i1 %.not31.i, label %.loopexit, label %.lr.ph26.i, !dbg !67403

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr nonnull align 8 %i.dh, i64 %.idx29.i, i1 false), !dbg !67404
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 %.idx29.i, !dbg !67405 ; 3 uses
  %i.do = icmp ne i64 %i.cq, 0, !dbg !67406
  %i.dp = icmp samesign ult i64 %i.cq, %i.dg
  %or.cond3017.i = select i1 %i.do, i1 %i.dp, i1 false, !dbg !67406
  br i1 %or.cond3017.i, label %.lr.ph.i39, label %.loopexit, !dbg !67406

.lr.ph26.i:                                       ; preds = %bb.ac, %.lr.ph26.i
  %.sroa.08.025.i = phi ptr [ %i.dw, %.lr.ph26.i ], [ %i.dj, %bb.ac ]
  %.sroa.10.024.i = phi ptr [ %i.dv, %.lr.ph26.i ], [ %i.dm, %bb.ac ] ; 2 uses
  %.sroa.18.023.i = phi ptr [ %i.dt, %.lr.ph26.i ], [ %i.di, %bb.ac ] ; 2 uses
  %i.dq = getelementptr i8, ptr %.sroa.10.024.i, i64 -8, !dbg !67407
  %.val31.i = load i64, ptr %i.dq, align 8, !dbg !67407, !alias.scope !67299, !noalias !67298, !noundef !2532
  %i.dr = getelementptr i8, ptr %.sroa.18.023.i, i64 -8, !dbg !67407
  %.val32.i = load i64, ptr %i.dr, align 8, !dbg !67407, !alias.scope !67300, !noundef !2532
  %i.ds = icmp slt i64 %.val31.i, %.val32.i, !dbg !67408 ; 3 uses
  %.neg.i = sext i1 %i.ds to i64, !dbg !67409
  %i.dt = getelementptr inbounds [16 x i8], ptr %.sroa.18.023.i, i64 %.neg.i, !dbg !67410 ; 4 uses
  %i.du = xor i1 %i.ds, true, !dbg !67411
  %.neg29.i = sext i1 %i.du to i64, !dbg !67411
  %i.dv = getelementptr inbounds [16 x i8], ptr %.sroa.10.024.i, i64 %.neg29.i, !dbg !67412 ; 4 uses
  %.sroa.020.0.i = select i1 %i.ds, ptr %i.dt, ptr %i.dv, !dbg !67413
  %i.dw = getelementptr inbounds i8, ptr %.sroa.08.025.i, i64 -16, !dbg !67414 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.020.0.i, i64 16, i1 false), !dbg !67415
  %i.dx = icmp ult ptr %i.dh, %i.dt, !dbg !67403
  %i.dy = icmp ult ptr %2, %i.dv
  %or.cond.i41 = select i1 %i.dx, i1 %i.dy, i1 false, !dbg !67403
  br i1 %or.cond.i41, label %.lr.ph26.i, label %.loopexit, !dbg !67403

.lr.ph.i39:                                       ; preds = %bb.ad, %.lr.ph.i39
  %.sroa.0.020.i = phi ptr [ %i.ee, %.lr.ph.i39 ], [ %i.di, %bb.ad ] ; 3 uses
  %.sroa.0.119.i = phi ptr [ %i.eh, %.lr.ph.i39 ], [ %2, %bb.ad ] ; 3 uses
  %.sroa.18.218.i = phi ptr [ %i.ec, %.lr.ph.i39 ], [ %i.dh, %bb.ad ] ; 2 uses
  %i.dz = getelementptr i8, ptr %.sroa.0.020.i, i64 8, !dbg !67416
  %.sroa.0.0.val.i = load i64, ptr %i.dz, align 8, !dbg !67416, !alias.scope !67301, !noundef !2532
  %i.ea = getelementptr i8, ptr %.sroa.0.119.i, i64 8, !dbg !67416
  %.val.i40 = load i64, ptr %i.ea, align 8, !dbg !67416, !alias.scope !67302, !noalias !67298, !noundef !2532
  %i.eb = icmp slt i64 %.sroa.0.0.val.i, %.val.i40, !dbg !67417 ; 3 uses
  %.sroa.012.0.i = select i1 %i.eb, ptr %.sroa.0.020.i, ptr %.sroa.0.119.i, !dbg !67418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.218.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.0.i, i64 16, i1 false), !dbg !67419
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.18.218.i, i64 16, !dbg !67420 ; 2 uses
  %i.ed = zext i1 %i.eb to i64, !dbg !67421
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.020.i, i64 %i.ed, !dbg !67422 ; 2 uses
  %i.ef = xor i1 %i.eb, true, !dbg !67423
  %i.eg = zext i1 %i.ef to i64, !dbg !67423
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.119.i, i64 %i.eg, !dbg !67424 ; 3 uses
  %i.ei = icmp ult ptr %i.eh, %i.dn, !dbg !67406
  %i.ej = icmp ult ptr %i.ee, %i.dj
  %or.cond30.i = select i1 %i.ei, i1 %i.ej, i1 false, !dbg !67406
  br i1 %or.cond30.i, label %.lr.ph.i39, label %.loopexit, !dbg !67406

.loopexit:                                        ; preds = %.lr.ph.i39, %.lr.ph26.i, %bb.ac, %bb.ad
  %.sroa.18.1.i = phi ptr [ %i.dt, %.lr.ph26.i ], [ %i.di, %bb.ac ], [ %i.dh, %bb.ad ], [ %i.ec, %.lr.ph.i39 ], !dbg !67425
  %.sroa.10.1.i = phi ptr [ %i.dv, %.lr.ph26.i ], [ %i.dm, %bb.ac ], [ %i.dn, %bb.ad ], [ %i.dn, %.lr.ph.i39 ], !dbg !67425
  %.sroa.0.015.i = phi ptr [ %2, %.lr.ph26.i ], [ %2, %bb.ac ], [ %2, %bb.ad ], [ %i.eh, %.lr.ph.i39 ], !dbg !67425 ; 2 uses
  %i.ek = ptrtoint ptr %.sroa.10.1.i to i64, !dbg !67426
  %i.el = ptrtoint ptr %.sroa.0.015.i to i64, !dbg !67426
  %i.em = sub i64 %i.ek, %i.el, !dbg !67426
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.18.1.i, ptr align 8 %.sroa.0.015.i, i64 %i.em, i1 false), !dbg !67427, !noalias !67303
  %i.en = add i64 %i.cw, %i.cq, !dbg !67428
  store i64 %i.en, ptr %i.cv, align 8, !dbg !67429
  store i64 %i.cs, ptr %i.cx, align 8, !dbg !67429
  %i.eo = invoke { i64, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunE6removeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.i35.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53)
          to label %thread-pre-split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !67430 ; 0 uses

bb.ae:                                            ; preds = %bb.h
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body, !dbg !67431

.body:                                            ; preds = %bb.g, %bb.ae
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !67431
  unreachable, !dbg !67431
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort10merge_sortTmxENCINvYSBN_INtB4_16ParallelSliceMutBN_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchBN_NCINvNtB1N_8arg_sort9sort_implxE0E00E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !67432 !guid !67584 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !67636
  store i64 0, ptr %i.a, align 8, !dbg !67637
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !67637 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !dbg !67637
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !67637 ; 4 uses
  store i64 0, ptr %i.c, align 8, !dbg !67637
  %.not102 = icmp eq i64 %1, 0, !dbg !67638
  br i1 %.not102, label %.loopexit50, label %.lr.ph101, !dbg !67638

.loopexit50:                                      ; preds = %._crit_edge, %bb.a, %bb.j
  %.sroa.0.0 = phi i8 [ %., %bb.j ], [ 2, %bb.a ], [ 2, %._crit_edge ], !dbg !67639
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.b, !dbg !67640

bb.b:                                             ; preds = %.loopexit50
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.c, !dbg !67641

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !67640
  unreachable, !dbg !67640

common.resume:                                    ; preds = %bb.h, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %lpad.loopexit.split-lp267, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !67642

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.loopexit50
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !67643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !67644
  ret i8 %.sroa.0.0, !dbg !67645

.lr.ph101:                                        ; preds = %bb.a, %._crit_edge
  %i.f = phi i64 [ %i.cm, %._crit_edge ], [ 0, %bb.a ]
  %.sroa.02.099 = phi i64 [ %.sroa.0.0.i31, %._crit_edge ], [ 0, %bb.a ] ; 10 uses
  %i.g = sub nuw nsw i64 %1, %.sroa.02.099, !dbg !67646 ; 7 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.099, !dbg !67647 ; 9 uses
  %i.i = icmp samesign ult i64 %i.g, 2, !dbg !67648
  br i1 %i.i, label %.loopexit47, label %bb.d, !dbg !67648

bb.d:                                             ; preds = %.lr.ph101
  %i.j = getelementptr i8, ptr %i.h, i64 24, !dbg !67649
  %.val14.i = load i64, ptr %i.j, align 8, !dbg !67649, !alias.scope !67589, !noundef !2532 ; 3 uses
  %i.k = getelementptr i8, ptr %i.h, i64 8, !dbg !67649
  %.val15.i = load i64, ptr %i.k, align 8, !dbg !67649, !alias.scope !67590, !noundef !2532
  %i.l = icmp slt i64 %.val15.i, %.val14.i, !dbg !67650
  %.not11.i = icmp eq i64 %i.g, 2, !dbg !67651    ; 2 uses
  br i1 %i.l, label %.preheader.i, label %.preheader1.i, !dbg !67652

.preheader1.i:                                    ; preds = %bb.d
  br i1 %.not11.i, label %.loopexit47, label %.lr.ph.i, !dbg !67653

.preheader.i:                                     ; preds = %bb.d
  br i1 %.not11.i, label %.loopexit47, label %.lr.ph7.i, !dbg !67654

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.e
  %.val13.i = phi i64 [ %.val12.i, %bb.e ], [ %.val14.i, %.preheader1.i ], !dbg !67655
  %.sroa.01.03.i = phi i64 [ %i.p, %bb.e ], [ 2, %.preheader1.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.01.03.i, !dbg !67656
  %i.n = getelementptr i8, ptr %i.m, i64 8, !dbg !67655
  %.val12.i = load i64, ptr %i.n, align 8, !dbg !67655, !alias.scope !67589, !noundef !2532 ; 2 uses
  %i.o = icmp slt i64 %.val13.i, %.val12.i, !dbg !67657
  br i1 %i.o, label %.loopexit47, label %bb.e, !dbg !67655

bb.e:                                             ; preds = %.lr.ph.i
  %i.p = add nuw nsw i64 %.sroa.01.03.i, 1, !dbg !67658 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, %i.g, !dbg !67653
  br i1 %exitcond.not.i, label %.loopexit47, label %.lr.ph.i, !dbg !67653

.lr.ph7.i:                                        ; preds = %.preheader.i, %bb.f
  %.val11.i = phi i64 [ %.val.i, %bb.f ], [ %.val14.i, %.preheader.i ], !dbg !67659
  %.sroa.01.16.i = phi i64 [ %i.t, %bb.f ], [ 2, %.preheader.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.01.16.i, !dbg !67660
  %i.r = getelementptr i8, ptr %i.q, i64 8, !dbg !67659
  %.val.i = load i64, ptr %i.r, align 8, !dbg !67659, !alias.scope !67589, !noundef !2532 ; 2 uses
  %i.s = icmp slt i64 %.val11.i, %.val.i, !dbg !67661
  br i1 %i.s, label %bb.f, label %.loopexit47, !dbg !67659

bb.f:                                             ; preds = %.lr.ph7.i
  %i.t = add nuw nsw i64 %.sroa.01.16.i, 1, !dbg !67662 ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.t, %i.g, !dbg !67654
  br i1 %exitcond14.not.i, label %.loopexit47, label %.lr.ph7.i, !dbg !67654

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit, %bb.q, %bb.n, %.invoke220, %.invoke, %bb.l
  %lpad.loopexit.split-lp267 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g, !dbg !67663

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.i, !dbg !67664

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.ae, !dbg !67665

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !67663
  unreachable, !dbg !67663

.loopexit47:                                      ; preds = %bb.e, %.lr.ph.i, %bb.f, %.lr.ph7.i, %.preheader.i, %.preheader1.i, %.lr.ph101
  %.sroa.4.0.i = phi i1 [ false, %.lr.ph101 ], [ true, %.preheader.i ], [ true, %bb.f ], [ false, %.preheader1.i ], [ true, %.lr.ph7.i ], [ false, %.lr.ph.i ], [ false, %bb.e ], !dbg !67666 ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.g, %.lr.ph101 ], [ 2, %.preheader.i ], [ %i.g, %bb.f ], [ 2, %.preheader1.i ], [ %.sroa.01.16.i, %.lr.ph7.i ], [ %i.g, %bb.e ], [ %.sroa.01.03.i, %.lr.ph.i ], !dbg !67666 ; 7 uses
  %i.w = add i64 %.sroa.0.0.i, %.sroa.02.099, !dbg !67667 ; 8 uses
  %i.x = icmp eq i64 %.sroa.02.099, 0, !dbg !67668
  %i.y = icmp eq i64 %i.w, %1
  %or.cond = and i1 %i.x, %i.y, !dbg !67668
  br i1 %or.cond, label %bb.j, label %bb.k, !dbg !67668

bb.j:                                             ; preds = %.loopexit47
  %. = zext i1 %.sroa.4.0.i to i8, !dbg !67669
  br label %.loopexit50, !dbg !67669

bb.k:                                             ; preds = %.loopexit47
  br i1 %.sroa.4.0.i, label %bb.o, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit, !dbg !67670

_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i
  %i.z = and i64 %.sroa.0.0.i, 2, !dbg !67671
  %lcmp.mod.not = icmp eq i64 %i.z, 0, !dbg !67671
  br i1 %lcmp.mod.not, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.epil.preheader, !dbg !67671

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.epil.preheader: ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i
  %.sroa.0.016.i.epil.init = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i ], [ %i.bd, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod302 = trunc i64 %i.al to i1, !dbg !67671
  call void @llvm.assume(i1 %lcmp.mod302), !dbg !67671
  %i.aa = xor i64 %.sroa.0.016.i.epil.init, -1, !dbg !67672
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.0.016.i.epil.init, !dbg !67673 ; 3 uses
  %i.ac = getelementptr [16 x i8], ptr %i.am, i64 %i.aa, !dbg !67674 ; 3 uses
  %i.ad = load i32, ptr %i.ab, align 8, !dbg !67675, !alias.scope !67594, !noundef !2532
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !67675
  %i.af = load i64, ptr %i.ae, align 8, !dbg !67675, !alias.scope !67594, !noundef !2532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !dbg !67675, !alias.scope !67595
  store i32 %i.ad, ptr %i.ac, align 8, !dbg !67675, !alias.scope !67596
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !67675
  store i64 %i.af, ptr %i.ag, align 8, !dbg !67675, !alias.scope !67596
  br label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit, !dbg !67676

_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.epil.preheader, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.p, %bb.k
  %4 = icmp uge i64 %i.w, %.sroa.02.099, !dbg !67676
  %5 = icmp ule i64 %i.w, %1
  %or.cond.i = and i1 %4, %5, !dbg !67676
  br i1 %or.cond.i, label %bb.m, label %bb.l, !dbg !67676, !prof !3054

bb.l:                                             ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #35
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !67677

.noexc:                                           ; preds = %bb.l
  unreachable, !dbg !67677

bb.m:                                             ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit
  %i.ah = icmp samesign ult i64 %.sroa.0.0.i, 10, !dbg !67678
  %i.ai = icmp samesign ult i64 %i.w, %1
  %or.cond3.i = and i1 %i.ah, %i.ai, !dbg !67678
  br i1 %or.cond3.i, label %bb.n, label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchBX_NCINvNtB1X_8arg_sort9sort_implxE0E00E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !67678

bb.n:                                             ; preds = %bb.m
  %i.aj = add nuw nsw i64 %.sroa.02.099, 10, !dbg !67679
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 1, 576460752303423488) %1, i64 %i.aj), !dbg !67680 ; 2 uses
  %.sroa.0.0.i14.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1), !dbg !67681
  %i.ak = sub nsw i64 %.sroa.0.0.i.i, %.sroa.02.099, !dbg !67682 ; 2 uses
  invoke void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftTmxENCINvYSB12_INtB4_16ParallelSliceMutB12_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchB12_NCINvNtB24_8arg_sort9sort_implxE0E00E0EB2a_(ptr noalias noundef nonnull align 8 %i.h, i64 noundef %i.ak, i64 noundef %.sroa.0.0.i14.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) #40
          to label %._RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchBX_NCINvNtB1X_8arg_sort9sort_implxE0E00E0ECskY9G75ZWc4U_11polars_expr.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !67683

._RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchBX_NCINvNtB1X_8arg_sort9sort_implxE0E00E0ECskY9G75ZWc4U_11polars_expr.exit_crit_edge: ; preds = %bb.n
  %.pre = load i64, ptr %i.c, align 8, !dbg !67684, !alias.scope !67597
  br label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchBX_NCINvNtB1X_8arg_sort9sort_implxE0E00E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !67683

bb.o:                                             ; preds = %bb.k
  %6 = icmp ult i64 %i.w, %.sroa.02.099, !dbg !67685
  %.not = icmp ugt i64 %i.w, %1
  %or.cond27 = or i1 %6, %.not, !dbg !67685
  br i1 %or.cond27, label %.invoke, label %bb.p, !dbg !67685, !prof !3014

bb.p:                                             ; preds = %bb.o
  %i.al = lshr i64 %.sroa.0.0.i, 1, !dbg !67686   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67594), !dbg !67687
  call void @llvm.experimental.noalias.scope.decl(metadata !67596), !dbg !67687
  %.not.i = icmp eq i64 %i.al, 0, !dbg !67671
  br i1 %.not.i, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i, !dbg !67671

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i: ; preds = %bb.p
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !67688 ; 3 uses
  %i.an = icmp eq i64 %i.al, 1, !dbg !67671
  br i1 %i.an, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.epil.preheader, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new, !dbg !67671

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i
  %unroll_iter = and i64 %i.al, 9223372036854775806, !dbg !67671
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i, !dbg !67671

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new
  %.sroa.0.016.i = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new ], [ %i.bd, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.new ], [ %niter.next.1, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i ]
  %i.ao = xor i64 %.sroa.0.016.i, -1, !dbg !67672
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.0.016.i, !dbg !67673 ; 3 uses
  %i.aq = getelementptr [16 x i8], ptr %i.am, i64 %i.ao, !dbg !67674 ; 3 uses
  %i.ar = load i32, ptr %i.ap, align 8, !dbg !67675, !alias.scope !67594, !noundef !2532
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8, !dbg !67675
  %i.at = load i64, ptr %i.as, align 8, !dbg !67675, !alias.scope !67594, !noundef !2532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !dbg !67675, !alias.scope !67595
  store i32 %i.ar, ptr %i.aq, align 8, !dbg !67675, !alias.scope !67596
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8, !dbg !67675
  store i64 %i.at, ptr %i.au, align 8, !dbg !67675, !alias.scope !67596
  %i.av = xor i64 %.sroa.0.016.i, -2, !dbg !67672
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.0.016.i, !dbg !67673 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !67673 ; 2 uses
  %i.ay = getelementptr [16 x i8], ptr %i.am, i64 %i.av, !dbg !67674 ; 3 uses
  %i.az = load i32, ptr %i.ax, align 8, !dbg !67675, !alias.scope !67594, !noundef !2532
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24, !dbg !67675
  %i.bb = load i64, ptr %i.ba, align 8, !dbg !67675, !alias.scope !67594, !noundef !2532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !dbg !67675, !alias.scope !67595
  store i32 %i.az, ptr %i.ay, align 8, !dbg !67675, !alias.scope !67596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8, !dbg !67675
  store i64 %i.bb, ptr %i.bc, align 8, !dbg !67675, !alias.scope !67596
  %i.bd = add nuw nsw i64 %.sroa.0.016.i, 2, !dbg !67689 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !67671  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !67671
  br i1 %niter.ncmp.1, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapTmxEECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i, !dbg !67671

_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchBX_NCINvNtB1X_8arg_sort9sort_implxE0E00E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.m, %._RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchBX_NCINvNtB1X_8arg_sort9sort_implxE0E00E0ECskY9G75ZWc4U_11polars_expr.exit_crit_edge
  %.pre-phi = phi i64 [ %i.ak, %._RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchBX_NCINvNtB1X_8arg_sort9sort_implxE0E00E0ECskY9G75ZWc4U_11polars_expr.exit_crit_edge ], [ %.sroa.0.0.i, %bb.m ], !dbg !67690
  %i.be = phi i64 [ %.pre, %._RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchBX_NCINvNtB1X_8arg_sort9sort_implxE0E00E0ECskY9G75ZWc4U_11polars_expr.exit_crit_edge ], [ %i.f, %bb.m ], !dbg !67684 ; 3 uses
  %.sroa.0.0.i31 = phi i64 [ %.sroa.0.0.i.i, %._RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchBX_NCINvNtB1X_8arg_sort9sort_implxE0E00E0ECskY9G75ZWc4U_11polars_expr.exit_crit_edge ], [ %i.w, %bb.m ] ; 2 uses
  %i.bf = load i64, ptr %i.a, align 8, !dbg !67691, !range !2669, !alias.scope !67597, !noundef !2532
  %i.bg = icmp eq i64 %i.be, %i.bf, !dbg !67692
  br i1 %i.bg, label %bb.q, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunE8push_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !67692

bb.q:                                             ; preds = %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchBX_NCINvNtB1X_8arg_sort9sort_implxE0E00E0ECskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunE8push_mutCskY9G75ZWc4U_11polars_expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !67693

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunE8push_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.q, %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort20provide_sorted_batchTmxENCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchBX_NCINvNtB1X_8arg_sort9sort_implxE0E00E0ECskY9G75ZWc4U_11polars_expr.exit
  %i.bh = load ptr, ptr %i.b, align 8, !dbg !67694, !alias.scope !67597, !nonnull !2532, !noundef !2532
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.be, !dbg !67695 ; 2 uses
  store i64 %.pre-phi, ptr %i.bi, align 8, !dbg !67696
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8, !dbg !67696
  store i64 %.sroa.02.099, ptr %i.bj, align 8, !dbg !67696
  %i.bk = add i64 %i.be, 1, !dbg !67697           ; 4 uses
  store i64 %i.bk, ptr %i.c, align 8, !dbg !67697, !alias.scope !67597
  %i.bl = icmp samesign ugt i64 %i.bk, 1, !dbg !67698
  br i1 %i.bl, label %.lr.ph.preheader, label %._crit_edge, !dbg !67698

.lr.ph.preheader:                                 ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunE8push_mutCskY9G75ZWc4U_11polars_expr.exit
  %i.bm = load ptr, ptr %i.b, align 8, !dbg !67699, !nonnull !2532, !noundef !2532
  br label %.lr.ph, !dbg !67700

thread-pre-split:                                 ; preds = %.loopexit
  %.pr = load i64, ptr %i.c, align 8, !dbg !67701 ; 3 uses
  %i.bn = load ptr, ptr %i.b, align 8, !dbg !67699, !nonnull !2532, !noundef !2532
  %i.bo = icmp samesign ugt i64 %.pr, 1, !dbg !67698
  br i1 %i.bo, label %.lr.ph, label %._crit_edge, !dbg !67698

.lr.ph:                                           ; preds = %.lr.ph.preheader, %thread-pre-split
  %i.bp = phi ptr [ %i.bn, %thread-pre-split ], [ %i.bm, %.lr.ph.preheader ] ; 4 uses
  %i.bq = phi i64 [ %.pr, %thread-pre-split ], [ %i.bk, %.lr.ph.preheader ] ; 10 uses
  %i.br = getelementptr [16 x i8], ptr %i.bp, i64 %i.bq, !dbg !67700 ; 5 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 -16, !dbg !67700
  %i.bt = getelementptr i8, ptr %i.br, i64 -8, !dbg !67700
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !67700, !alias.scope !67609, !noundef !2532
  %i.bv = load i64, ptr %i.bs, align 8, !dbg !67702, !alias.scope !67609, !noundef !2532 ; 4 uses
  %i.bw = add i64 %i.bv, %i.bu, !dbg !67700
  %i.bx = icmp eq i64 %i.bw, %1, !dbg !67700
  br i1 %i.bx, label %bb.t, label %bb.r, !dbg !67700

bb.r:                                             ; preds = %.lr.ph
  %i.by = getelementptr i8, ptr %i.br, i64 -32, !dbg !67703
  %i.bz = load i64, ptr %i.by, align 8, !dbg !67703, !alias.scope !67609, !noundef !2532 ; 3 uses
  %.not.i37 = icmp ugt i64 %i.bz, %i.bv, !dbg !67703
  br i1 %.not.i37, label %bb.s, label %bb.t, !dbg !67703

bb.s:                                             ; preds = %bb.r
  %.not14.i = icmp eq i64 %i.bq, 2, !dbg !67704
  br i1 %.not14.i, label %._crit_edge, label %bb.v, !dbg !67704

bb.t:                                             ; preds = %bb.r, %.lr.ph
  %.not17.i = icmp eq i64 %i.bq, 2, !dbg !67705
  br i1 %.not17.i, label %bb.x, label %.thread.i, !dbg !67705

bb.u:                                             ; preds = %bb.v
  %i.ca = icmp samesign ugt i64 %i.bq, 3, !dbg !67706
  br i1 %i.ca, label %bb.w, label %._crit_edge, !dbg !67706

bb.v:                                             ; preds = %bb.s
  %i.cb = getelementptr i8, ptr %i.br, i64 -48, !dbg !67707
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !67707, !alias.scope !67609, !noundef !2532 ; 2 uses
  %i.cd = add i64 %i.bz, %i.bv, !dbg !67708
  %.not15.i = icmp ugt i64 %i.cc, %i.cd, !dbg !67707
  br i1 %.not15.i, label %bb.u, label %.thread.i, !dbg !67707

bb.w:                                             ; preds = %bb.u
  %i.ce = getelementptr i8, ptr %i.br, i64 -64, !dbg !67709
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !67709, !alias.scope !67609, !noundef !2532
  %i.cg = add i64 %i.cc, %i.bz, !dbg !67710
  %.not16.i = icmp ugt i64 %i.cf, %i.cg, !dbg !67709
  br i1 %.not16.i, label %._crit_edge, label %.thread.i, !dbg !67709

bb.x:                                             ; preds = %.thread.i, %bb.t
  %i.ch = add nsw i64 %i.bq, -2, !dbg !67711
  br label %bb.y, !dbg !67712

.thread.i:                                        ; preds = %bb.t, %bb.w, %bb.v
  %i.ci = add nsw i64 %i.bq, -3, !dbg !67713      ; 2 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ci, !dbg !67714
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !67714, !alias.scope !67609, !noundef !2532
  %i.cl = icmp ult i64 %i.ck, %i.bv, !dbg !67714
  br i1 %i.cl, label %bb.y, label %bb.x, !dbg !67714

._crit_edge:                                      ; preds = %thread-pre-split, %bb.s, %bb.u, %bb.w, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunE8push_mutCskY9G75ZWc4U_11polars_expr.exit
  %i.cm = phi i64 [ %i.bk, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunE8push_mutCskY9G75ZWc4U_11polars_expr.exit ], [ %.pr, %thread-pre-split ], [ 2, %bb.s ], [ 3, %bb.u ], [ %i.bq, %bb.w ]
  %i.cn = icmp samesign ult i64 %.sroa.0.0.i31, %1, !dbg !67638
  br i1 %i.cn, label %.lr.ph101, label %.loopexit50, !dbg !67638

bb.y:                                             ; preds = %bb.x, %.thread.i
  %.sroa.4.0.i35.ph = phi i64 [ %i.ci, %.thread.i ], [ %i.ch, %bb.x ] ; 5 uses
  %i.co = icmp ult i64 %.sroa.4.0.i35.ph, %i.bq, !dbg !67715
  br i1 %i.co, label %bb.z, label %.invoke220, !dbg !67715

bb.z:                                             ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.sroa.4.0.i35.ph, !dbg !67716 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !dbg !67717, !noundef !2532 ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8, !dbg !67717
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !67717, !noundef !2532 ; 5 uses
  %i.ct = add nuw nsw i64 %.sroa.4.0.i35.ph, 1, !dbg !67718 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, %i.bq, !dbg !67719
  br i1 %i.cu, label %bb.aa, label %.invoke220, !dbg !67719

bb.aa:                                            ; preds = %bb.z
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ct, !dbg !67720 ; 3 uses
  %i.cw = load i64, ptr %i.cv, align 8, !dbg !67721, !noundef !2532 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !67721 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !67721, !noundef !2532
  %i.cz = add i64 %i.cy, %i.cw, !dbg !67722       ; 5 uses
  %i.da = icmp ult i64 %i.cz, %i.cs, !dbg !67723
  %.not26 = icmp ugt i64 %i.cz, %1
  %or.cond28 = or i1 %i.da, %.not26, !dbg !67723
  br i1 %or.cond28, label %.invoke, label %bb.ab, !dbg !67723, !prof !3014

.invoke220:                                       ; preds = %bb.z, %bb.y
  %i.db = phi i64 [ %.sroa.4.0.i35.ph, %bb.y ], [ %i.ct, %bb.z ]
  %i.dc = phi ptr [ @51, %bb.y ], [ @52, %bb.z ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.db, i64 noundef %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dc) #36
          to label %.cont221 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !67724

.cont221:                                         ; preds = %.invoke220
  unreachable

.invoke:                                          ; preds = %bb.o, %bb.aa
  %i.dd = phi i64 [ %i.cs, %bb.aa ], [ %.sroa.02.099, %bb.o ]
  %i.de = phi i64 [ %i.cz, %bb.aa ], [ %i.w, %bb.o ]
  %i.df = phi ptr [ @54, %bb.aa ], [ @55, %bb.o ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dd, i64 noundef %i.de, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.df) #36
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !67725

.cont:                                            ; preds = %.invoke
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.dg = sub nuw i64 %i.cz, %i.cs, !dbg !67726   ; 3 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cs, !dbg !67727 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67630), !dbg !67728
  %.idx29.i = shl i64 %i.cq, 4, !dbg !67729       ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx29.i, !dbg !67729 ; 4 uses
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cz, !dbg !67730 ; 2 uses
  %i.dk = sub i64 %i.dg, %i.cq, !dbg !67731       ; 2 uses
  %.not.i38 = icmp ugt i64 %i.cq, %i.dk, !dbg !67732
  br i1 %.not.i38, label %bb.ac, label %bb.ad, !dbg !67732

bb.ac:                                            ; preds = %bb.ab
  %i.dl = shl i64 %i.dk, 4, !dbg !67733           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr nonnull align 8 %i.di, i64 %i.dl, i1 false), !dbg !67733
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 %i.dl, !dbg !67734 ; 2 uses
  %.not31.i = icmp eq i64 %i.dg, %i.cq
  br i1 %.not31.i, label %.loopexit, label %.lr.ph26.i, !dbg !67735
end_hunk_0
