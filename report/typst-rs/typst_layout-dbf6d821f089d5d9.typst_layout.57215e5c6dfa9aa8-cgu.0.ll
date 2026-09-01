Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_RNvYNCNvNtCs7tN9tvpkfrg_12typst_layout5rules8RAW_RULE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1L_4text3raw7RawElemEQNtNtB1L_6engine6EngineNtNtB1J_6styles10StyleChainEE9call_onceB8_:bb.a
  %i.am = icmp eq i64 %i.ad, 0
  br i1 %i.am, label %.thread19.i, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE13with_capacityCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !57438
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %bb.g unwind label %.thread16.loopexit.split-lp.i, !noalias !57438

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !57438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !57438
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57463)
  %.not.i.i49.peel.i = icmp eq ptr %.val.i48.peel.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i49.peel.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i51.peel.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr i8, ptr %.val.i48.peel.i, i64 -8
  %.val.i.i50.peel.i = load i64, ptr %i.ao, align 8, !noalias !57466, !noundef !10
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i51.peel.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i51.peel.i: ; preds = %bb.h, %bb.g
  %.sroa.02.0.i.i52.peel.i = phi i64 [ %.val.i.i50.peel.i, %bb.h ], [ 0, %bb.g ]
  %i.ap = icmp eq i64 %i.aj, %.sroa.02.0.i.i52.peel.i
  %i.aq = zext i1 %i.ap to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef %i.aq)
          to label %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs7tN9tvpkfrg_12typst_layout.exit57.peel.i unwind label %.loopexit.split-lp65.i, !noalias !57468, !inline_history !18490

_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs7tN9tvpkfrg_12typst_layout.exit57.peel.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i51.peel.i
  %i.ar = load ptr, ptr %i.t, align 8, !alias.scope !57463, !noalias !57468, !nonnull !10, !noundef !10 ; 3 uses
  %i.as = load i64, ptr %i.ak, align 8, !alias.scope !57463, !noalias !57468, !noundef !10 ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !57469
  %i.au = add i64 %i.as, 1                        ; 3 uses
  store i64 %i.au, ptr %i.ak, align 8, !alias.scope !57463, !noalias !57468
  %i.av = icmp eq i64 %i.ad, 1
  br i1 %i.av, label %.thread19.i, label %.lr.ph.peel.next.i

.thread16.loopexit.i:                             ; preds = %bb.av, %.lr.ph.peel.next.i, %bb.au
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread8.i

.thread16.loopexit.split-lp.i:                    ; preds = %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread8.i

.thread19.i:                                      ; preds = %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs7tN9tvpkfrg_12typst_layout.exit57.i, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs7tN9tvpkfrg_12typst_layout.exit57.peel.i, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE13with_capacityCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.aw = phi i64 [ %i.au, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs7tN9tvpkfrg_12typst_layout.exit57.peel.i ], [ %i.aj, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE13with_capacityCs7tN9tvpkfrg_12typst_layout.exit.i ], [ %i.fj, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs7tN9tvpkfrg_12typst_layout.exit57.i ] ; 4 uses
  %i.ax = phi ptr [ %i.ar, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs7tN9tvpkfrg_12typst_layout.exit57.peel.i ], [ %.val.i48.peel.i, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE13with_capacityCs7tN9tvpkfrg_12typst_layout.exit.i ], [ %i.fg, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCs7tN9tvpkfrg_12typst_layout.exit57.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !57438
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57470)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !57438
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.thread19.i
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -16
  %i.az = load atomic i64, ptr %i.ay acquire, align 8, !noalias !57471
  %i.ba = icmp eq i64 %i.az, 1
  %i.bb = zext i1 %i.ba to i8
  br label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.i, %.thread19.i
  %.sroa.02.0.i.i.i.i.i = phi i8 [ %i.bb, %bb.i ], [ 1, %.thread19.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !57442
  store ptr %i.ax, ptr %i.i, align 8, !alias.scope !57451, !noalias !57455
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.aw, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !57451, !noalias !57455
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !57451, !noalias !57455
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %i.aw, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !57451, !noalias !57455
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i8 %.sroa.02.0.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !57451, !noalias !57455
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57476)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !57478
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57479)
  %.not14.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not14.i.i, label %_RINvYINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecBE_EECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs7tN9tvpkfrg_12typst_layout.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !57482
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !57487, !noalias !57488
  %i.bc = trunc nuw i8 %.sroa.02.0.i.i.i.i.i to i1
  br i1 %i.bc, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i unwind label %bb.m, !noalias !57478

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !noalias !57492
  br label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.copyload9.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !57493 ; 2 uses
  %.sroa.7.0..sroa_idx10.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx10.i.i.i.i.i.i, i64 16, i1 false), !noalias !57493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !57482
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload9.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_RINvYINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecBE_EECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i, label %bb.o

_RINvYINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecBE_EECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i: ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i, %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs7tN9tvpkfrg_12typst_layout.exit.i.i, %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs7tN9tvpkfrg_12typst_layout.exit.i.thread.i
  store i64 0, ptr %i.j, align 8, !noalias !57494
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.be, align 8, !noalias !57494
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.bf, align 8, !noalias !57494
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !57478
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i), !noalias !57438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !57442
  br label %bb.ac

bb.n:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ab unwind label %bb.aa, !noalias !57478

bb.o:                                             ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !57478
  store ptr %.sroa.0.0.copyload9.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !57478
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i.i.i.i, i64 16, i1 false), !noalias !57478
  %i.bh = add i64 %i.aw, -1                       ; 2 uses
  %i.bi = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 3) ; 2 uses
  %..i.i.i.i.i.i.i = add nuw i64 %i.bi, 1         ; 2 uses
  %i.bj = mul i64 %..i.i.i.i.i.i.i, 24            ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bh, 384307168202282324
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p, !prof !736

bb.p:                                             ; preds = %bb.o
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.r, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.p
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !57495
  %i.bl = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.bj, i64 noundef range(i64 1, 17) 8) #56, !noalias !57495 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i, %bb.o
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.o ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.bj) #57
          to label %.noexc6.i.i.i.i.i.i unwind label %bb.n, !noalias !57478

.noexc6.i.i.i.i.i.i:                              ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i, %bb.p
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.p ], [ %i.bl, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.p ], [ %..i.i.i.i.i.i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bn = icmp ult i64 %i.bi, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.bn)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !57478
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !57478
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !57478
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !57478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !57478
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !57478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !57498
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57507)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !57509, !noalias !57512, !noundef !10 ; 7 uses
  %.promoted.i.i.i.i.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !57514, !noalias !57515 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i)
  %i.br = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.bq
  br i1 %i.br, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bt = load i8, ptr %i.bs, align 8, !range !299, !alias.scope !57509, !noalias !57516, !noundef !10
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = load ptr, ptr %i.f, align 8, !alias.scope !57509, !noalias !57516, !nonnull !10, !noundef !10 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !57514, !noalias !57515
  %.sroa.7.0..sroa_idx7.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.bu, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.us.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.us.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.us.i.i.i.i.i.i.i.i
  %i.by = phi ptr [ %i.ch, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.us.i.i.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.bz = phi i64 [ %i.cj, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.us.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %.val1112.us.i.i.i.i.i.i.i.i = phi i64 [ %i.ca, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.us.i.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57523)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !57524
  %i.ca = add nuw i64 %.val1112.us.i.i.i.i.i.i.i.i, 1 ; 4 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %.val1112.us.i.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false), !noalias !57525
  %.sroa.0.0.copyload6.us.i.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !noalias !57526 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !57524
  %.not.us.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload6.us.i.i.i.i.i.i.i.i, null
  br i1 %.not.us.i.i.i.i.i.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs7tN9tvpkfrg_12typst_layout.exit.i.sink.split.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.us.i.i.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !57527
  store ptr %.sroa.0.0.copyload6.us.i.i.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !57527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !noalias !57527
  %i.cd = icmp samesign ult i64 %i.bz, 384307168202282326
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = load i64, ptr %i.h, align 8, !range !69, !alias.scope !57528, !noalias !57529, !noundef !10
  %i.cf = icmp eq i64 %i.bz, %i.ce
  br i1 %i.cf, label %bb.t, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.us.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.cg = sub nuw i64 %i.bq, %.val1112.us.i.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.bz, i64 noundef %i.cg, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.us.i.i_crit_edge.i.i.i.i.i.i unwind label %.split.us.i.i.i.i.i.i.i.i, !noalias !57529

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.us.i.i_crit_edge.i.i.i.i.i.i: ; preds = %bb.t
  %.pre27.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !57528, !noalias !57529
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.us.i.i.i.i.i.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.us.i.i.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.us.i.i_crit_edge.i.i.i.i.i.i, %bb.s
  %i.ch = phi ptr [ %.pre27.i.i.i.i.i.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.us.i.i_crit_edge.i.i.i.i.i.i ], [ %i.by, %bb.s ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !57527
  %i.cj = add nuw nsw i64 %i.bz, 1                ; 2 uses
  store i64 %i.cj, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !57528, !noalias !57529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !57527
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i)
  %exitcond14.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ca, %i.bq
  br i1 %exitcond14.not.i.i.i.i.i.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs7tN9tvpkfrg_12typst_layout.exit.i.sink.split.i.i.i.i.i.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.us.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i:                        ; preds = %bb.t
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.lr.ph.split.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i
  %i.cl = phi ptr [ %i.cu, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.cm = phi i64 [ %i.cw, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %.val1112.i.i.i.i.i.i.i.i = phi i64 [ %i.cn, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57523)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !57524
  %i.cn = add nuw i64 %.val1112.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.co = icmp ult i64 %.val1112.i.i.i.i.i.i.i.i, %i.bx
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %.val1112.i.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cp)
          to label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i unwind label %bb.u, !noalias !57527

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.u
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cq, %bb.u ], [ %.us-phi.i.i.i.i.i.i.i.i, %bb.w ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f) #54
          to label %.body.i.i.i.i.i.i unwind label %bb.y, !noalias !57515

bb.u:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  store i64 %i.cn, ptr %i.bo, align 8, !alias.scope !57509, !noalias !57516
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload6.i.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !noalias !57526 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx7.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !57526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !57524
  %.not.i.i7.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload6.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i7.i.i.i.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs7tN9tvpkfrg_12typst_layout.exit.i.sink.split.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !57527
  store ptr %.sroa.0.0.copyload6.i.i.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !57527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !57527
  %i.cr = icmp samesign ult i64 %i.cm, 384307168202282326
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = load i64, ptr %i.h, align 8, !range !69, !alias.scope !57528, !noalias !57529, !noundef !10
  %i.ct = icmp eq i64 %i.cm, %i.cs
  br i1 %i.ct, label %bb.x, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i_crit_edge.i.i.i.i.i.i, %bb.v
  %i.cu = phi ptr [ %.pre.i.i.i.i.i.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i_crit_edge.i.i.i.i.i.i ], [ %i.cl, %bb.v ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !57527
  %i.cw = add nuw nsw i64 %i.cm, 1                ; 2 uses
  store i64 %i.cw, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !57528, !noalias !57529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !57527
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i)
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cn, %i.bq
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs7tN9tvpkfrg_12typst_layout.exit.i.sink.split.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.x
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.split.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.cn, %.split.i.i.i.i.i.i.i.i ], [ %i.ca, %.split.us.i.i.i.i.i.i.i.i ]
  %.us-phi.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cx, %.split.i.i.i.i.i.i.i.i ], [ %i.ck, %.split.us.i.i.i.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %i.bo, align 8, !alias.scope !57509, !noalias !57516
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i unwind label %bb.y, !noalias !57527

bb.x:                                             ; preds = %bb.v
  %i.cy = sub nuw i64 %i.bq, %.val1112.i.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.cm, i64 noundef %i.cy, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i_crit_edge.i.i.i.i.i.i unwind label %.split.i.i.i.i.i.i.i.i, !noalias !57529

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i_crit_edge.i.i.i.i.i.i: ; preds = %bb.x
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !57528, !noalias !57529
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !57527
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs7tN9tvpkfrg_12typst_layout.exit.i.sink.split.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.us.i.i.i.i.i.i.i.i, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.us.i.i.i.i.i.i.i.i
  %.lcssa25.sink.i.i.i.i.i.i = phi i64 [ %i.bq, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.us.i.i.i.i.i.i.i.i ], [ %i.ca, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.us.i.i.i.i.i.i.i.i ], [ %i.cn, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ], [ %i.bq, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ]
  store i64 %.lcssa25.sink.i.i.i.i.i.i, ptr %i.bo, align 8, !alias.scope !57509, !noalias !57516
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs7tN9tvpkfrg_12typst_layout.exit.i.sink.split.i.i.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvYINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecBE_EECs7tN9tvpkfrg_12typst_layout.exit.i.i unwind label %bb.z, !noalias !57478

bb.z:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.z, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.da, %bb.z ], [ %.pn.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #54
          to label %common.resume.i unwind label %bb.aa, !noalias !57478

bb.aa:                                            ; preds = %bb.ab, %.body.i.i.i.i.i.i, %bb.n
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !57478
  unreachable

bb.ab:                                            ; preds = %bb.n, %bb.m
  %.pn.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bd, %bb.m ], [ %i.bg, %bb.n ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i) #54
          to label %common.resume.i unwind label %bb.aa, !noalias !57498

_RINvYINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecBE_EECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !57478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !57494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !57478
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.pre.i25.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !57494 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !57442
  %i.dc = icmp ult i64 %.pre.i25.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.dc)
  switch i64 %.pre.i25.i, label %bb.ad [
    i64 0, label %bb.ac
    i64 1, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i
  ]

bb.ac:                                            ; preds = %_RINvYINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecBE_EECs7tN9tvpkfrg_12typst_layout.exit.i.i, %_RINvYINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecBE_EECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB2_7Content5empty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i.i unwind label %bb.ai, !noalias !57438

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %_RINvYINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecBE_EECs7tN9tvpkfrg_12typst_layout.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !57494
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !57494, !nonnull !10, !noundef !10 ; 4 uses
  %i.df = load i64, ptr %i.j, align 8, !range !69, !noalias !57494, !noundef !10
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 24 ; 2 uses
  store ptr %i.de, ptr %i.k, align 8, !noalias !57494
  %i.dh = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.df, ptr %i.dh, align 8, !noalias !57494
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.dg, ptr %i.dj, align 8, !noalias !57494
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57530)
  store ptr %i.dg, ptr %i.di, align 8, !alias.scope !57530, !noalias !57533
  %.sroa.03.0.copyload4.i.i = load ptr, ptr %i.de, align 8, !noalias !57535 ; 2 uses
  %.not.i26.i = icmp eq ptr %.sroa.03.0.copyload4.i.i, null
  br i1 %.not.i26.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread.i.i, label %.noexc28.i, !prof !184

bb.ad:                                            ; preds = %_RINvYINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecBE_EECs7tN9tvpkfrg_12typst_layout.exit.i.i
  call fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtB5_12SequenceElemECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.j), !noalias !57438
  br label %bb.aj

bb.ae:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #54
          to label %common.resume.i unwind label %bb.ag, !noalias !57494

.noexc28.i:                                       ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.65.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %.sroa.03.0.copyload4.i.i, ptr %i.r, align 8, !alias.scope !57470, !noalias !57438
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.65.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.65.0..sroa_idx6.i.i, i64 16, i1 false), !noalias !57438
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k), !noalias !57438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !57494
  br label %bb.aj

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread.i.i: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #57
          to label %bb.af unwind label %bb.ae, !noalias !57494

bb.af:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread.i.i
  unreachable

bb.ag:                                            ; preds = %bb.ai, %bb.ae
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !57494
  unreachable

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.ac
  %.val2.i.i.i = load i64, ptr %i.j, align 8, !range !69, !noalias !57494, !noundef !10 ; 2 uses
  %i.dm = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.dm, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val.i.i.i = load ptr, ptr %i.dn, align 8, !noalias !57494, !nonnull !10, !noundef !10
  %i.do = mul nuw i64 %.val2.i.i.i, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.do, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !57536
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ac
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #54
          to label %common.resume.i unwind label %bb.ag, !noalias !57494

bb.aj:                                            ; preds = %bb.ah, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %.noexc28.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !57438
  %i.dp = getelementptr inbounds nuw i8, ptr %.val, i64 312
  %.val23.i = load i8, ptr %i.dp, align 8, !range !284, !noalias !57438, !noundef !10
  switch i8 %.val23.i, label %bb.an [
    i8 2, label %bb.ak
    i8 0, label %_RNCNvNtCs7tN9tvpkfrg_12typst_layout5rules8RAW_RULE0B5_.exit
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.dq = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4text3raw1__NtB9_7RawElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 1)
          to label %.noexc30.i unwind label %bb.at, !noalias !57539 ; 4 uses

.noexc30.i:                                       ; preds = %bb.ak
  %.not.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i, label %_RNCNvNtCs7tN9tvpkfrg_12typst_layout5rules8RAW_RULE0B5_.exit, label %bb.al

bb.al:                                            ; preds = %.noexc30.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57540)
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !57540, !noalias !57543, !nonnull !10, !noundef !10 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !57540, !noalias !57543, !nonnull !10, !align !151, !noundef !10
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !invariant.load !10, !noalias !57551, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !57552
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !invariant.load !10, !noalias !57551, !nonnull !10
  invoke void %i.dx(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.dr) #59
          to label %.noexc31.i unwind label %bb.at, !noalias !57438, !inline_history !57554

.noexc31.i:                                       ; preds = %bb.al
  %i.dy = load i128, ptr %i.b, align 16, !noalias !57552, !noundef !10
  %i.dz = icmp eq i128 %i.dy, 74484837202795168974482589160156483361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !57552
  br i1 %i.dz, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4text3raw7RawElemKh1_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.am, !prof !13

bb.am:                                            ; preds = %.noexc31.i
  invoke void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4text3raw1__NtB9_7RawElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef range(i8 0, 13) 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dq) #57
          to label %.noexc32.i unwind label %bb.at, !noalias !57438

.noexc32.i:                                       ; preds = %bb.am
  unreachable

_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4text3raw7RawElemKh1_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.noexc31.i
  %i.ea = load i8, ptr %i.dr, align 1, !range !299, !alias.scope !57555, !noalias !57558, !noundef !10
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.an, label %_RNCNvNtCs7tN9tvpkfrg_12typst_layout5rules8RAW_RULE0B5_.exit

bb.an:                                            ; preds = %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4text3raw7RawElemKh1_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !57438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !57438
  %i.ec = getelementptr inbounds nuw i8, ptr %.val, i64 313
  %.val24.i = load i8, ptr %i.ec, align 1, !range !32094, !noalias !57438, !noundef !10 ; 2 uses
  %.not.i33.i = icmp eq i8 %.val24.i, -1
  br i1 %.not.i33.i, label %bb.ao, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4text3raw7RawElemKh3_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.ed = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4text3raw1__NtB9_7RawElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 3)
          to label %.noexc37.i unwind label %bb.ar, !noalias !57539 ; 4 uses

.noexc37.i:                                       ; preds = %bb.ao
  %.not.i.i.i35.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i35.i, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4text3raw7RawElemKh3_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.ap

bb.ap:                                            ; preds = %.noexc37.i
  call void @llvm.experimental.noalias.scope.decl(metadata !57559)
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !57559, !noalias !57562, !nonnull !10, !noundef !10 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !57559, !noalias !57562, !nonnull !10, !align !151, !noundef !10
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !invariant.load !10, !noalias !57569, !nonnull !10
end_hunk_0
