Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.10?download=true
inline.NumInlined: 2534
inline.NumDeleted: 536
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster27BrotliCompareAndPushToQueueNtNtB4_9histogram17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet:bb.a

bb.af:                                            ; preds = %bb.ae
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %i.av, !dbg !28878 ; 4 uses
  store i32 %spec.select50, ptr %i.ck, align 4, !dbg !28878
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 4, !dbg !28878
  store i32 %spec.select, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !28878
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8, !dbg !28878
  store float %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 4, !dbg !28878
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 12, !dbg !28878
  store float %i.aw, ptr %.sroa.13.0..sroa_idx, align 4, !dbg !28878
  %i.cl = add nuw nsw i64 %i.av, 1, !dbg !28879
  store i64 %i.cl, ptr %10, align 8, !dbg !28882
  br label %bb.al, !dbg !28883

bb.ag:                                            ; preds = %bb.ae
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #18, !dbg !28878
  unreachable, !dbg !28878

bb.ah:                                            ; preds = %bb.ad
  %i.cm = icmp ult i64 %i.av, %9, !dbg !28884
  br i1 %i.cm, label %bb.aj, label %bb.ak, !dbg !28884

bb.ai:                                            ; preds = %bb.ad, %bb.aj
  store i32 %spec.select50, ptr %8, align 4, !dbg !28885
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %8, i64 4, !dbg !28885
  store i32 %spec.select, ptr %.sroa.5.0..sroa_idx20, align 4, !dbg !28885
  %.sroa.8.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %8, i64 8, !dbg !28885
  store float %.sroa.8.0, ptr %.sroa.8.0..sroa_idx22, align 4, !dbg !28885
  store float %i.aw, ptr %i.by, align 4, !dbg !28885
  br label %bb.al, !dbg !28886

bb.aj:                                            ; preds = %bb.ah
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %i.av, !dbg !28884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cn, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !dbg !28884
  %i.co = add nuw nsw i64 %i.av, 1, !dbg !28887
  store i64 %i.co, ptr %10, align 8, !dbg !28889
  br label %bb.ai, !dbg !28890

bb.ak:                                            ; preds = %bb.ah
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @284) #18, !dbg !28884
  unreachable, !dbg !28884

bb.al:                                            ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit, %bb.ai, %bb.z, %bb.af, %bb.a
  ret void, !dbg !28891
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock20BrotliBuildMetaBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, 4294967296) %3, i64 noundef range(i64 0, 4294967296) %4, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(112) %5, i8 noundef %6, i8 noundef %7, ptr noalias noundef nonnull align 4 %8, i64 noundef range(i64 0, 576460752303423488) %9, i64 noundef %10, i8 noundef range(i8 0, 4) %11, ptr noalias noundef nonnull %12, ptr noalias noundef nonnull %13, ptr noalias noundef nonnull %14, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(264) %15) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !28892 {
bb.a:
  %i.a = alloca [2192 x i8], align 8              ; 13 uses
  %i.b = alloca [2192 x i8], align 8              ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [1040 x i8], align 8              ; 13 uses
  %i.f = alloca [1040 x i8], align 8              ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 16               ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 11 uses
  %i.p = alloca [112 x i8], align 8               ; 8 uses
  %i.q = alloca [112 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !28893
  store i64 0, ptr %i.m, align 8, !dbg !28893
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !28893
  store ptr inttoptr (i64 1 to ptr), ptr %i.r, align 8, !dbg !28893
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !28893
  store i64 0, ptr %i.s, align 8, !dbg !28893
  %i.t = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !dbg !28902 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !28904
  %i.u = extractvalue { ptr, i64 } %i.t, 0, !dbg !28905 ; 12 uses
  %i.v = extractvalue { ptr, i64 } %i.t, 1, !dbg !28905 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 99, !dbg !28906
  %i.x = load i8, ptr %i.w, align 1, !dbg !28906, !range !383, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1, !dbg !28906
  br i1 %i.y, label %bb.c, label %bb.b, !dbg !28906

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !28912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.q, ptr noundef nonnull align 8 dereferenceable(112) %5, i64 112, i1 false), !dbg !28914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !28917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.p, ptr noundef nonnull align 8 dereferenceable(112) %5, i64 112, i1 false), !dbg !28919
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 28 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 98
  %i.ac = load i8, ptr %i.ab, align 2, !range !383
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  br label %bb.e, !dbg !28921

bb.c:                                             ; preds = %bb.s, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 48, !dbg !28929 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 96, !dbg !28930 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 72, !dbg !28931
  %.val71 = load i32, ptr %i.ao, align 8, !dbg !28931
  invoke fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 %.val71, ptr noalias noundef nonnull %12, ptr noalias noundef nonnull %13, ptr noalias noundef nonnull %14, ptr noalias noundef align 8 dereferenceable(48) %15, ptr noalias noundef align 8 dereferenceable(48) %i.am, ptr noalias noundef align 8 dereferenceable(48) %i.an)
          to label %bb.x unwind label %.thread391.loopexit.split-lp, !dbg !28931

bb.d:                                             ; preds = %.loopexit601
  br i1 %.sroa.09.2, label %bb.o, label %bb.n, !dbg !28932

bb.e:                                             ; preds = %bb.b, %.loopexit601
  %.sroa.04.0740 = phi i32 [ 0, %bb.b ], [ %i.bs, %.loopexit601 ] ; 4 uses
  %.sroa.09.0739 = phi i1 [ true, %bb.b ], [ %.sroa.09.2, %.loopexit601 ] ; 3 uses
  %.sroa.011.0738 = phi double [ f0x547D42AEA2879F2E, %bb.b ], [ %.sroa.011.1719, %.loopexit601 ] ; 3 uses
  %.sroa.025.0737 = phi i64 [ 0, %bb.b ], [ %i.ap, %.loopexit601 ] ; 3 uses
  %i.ap = add nuw nsw i64 %.sroa.025.0737, 1, !dbg !28933 ; 2 uses
  %i.aq = icmp samesign ult i32 %.sroa.04.0740, 16, !dbg !28939
  br i1 %i.aq, label %.lr.ph, label %.loopexit601, !dbg !28939

.lr.ph:                                           ; preds = %bb.e
  %i.ar = trunc nuw nsw i64 %.sroa.025.0737 to i32 ; 8 uses
  store i32 %i.ar, ptr %i.z, align 8, !alias.scope !28941
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.sroa.025.0737
  %i.at = shl nuw nsw i32 1, %i.ar
  %i.au = icmp ne i32 %i.ai, %i.ar                ; 2 uses
  br i1 %i.ad, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.pn.i.us = shl nuw nsw i32 124, %i.ar
  %invariant.op736 = add nuw nsw i32 %.pn.i.us, 16, !dbg !28939
  br label %bb.f, !dbg !28939

bb.f:                                             ; preds = %bb.m, %.lr.ph.split.us
  %.sroa.04.1725.us = phi i32 [ %.sroa.04.0740, %.lr.ph.split.us ], [ %i.bh, %bb.m ] ; 4 uses
  %.sroa.09.1724.us = phi i1 [ %.sroa.09.0739, %.lr.ph.split.us ], [ %spec.select.us, %bb.m ]
  %.sroa.011.1723.us = phi double [ %.sroa.011.0738, %.lr.ph.split.us ], [ %i.bf, %bb.m ] ; 3 uses
  %i.av = shl nuw nsw i32 %.sroa.04.1725.us, %i.ar, !dbg !28944 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !28945
  store double 0.000000e+00, ptr %i.o, align 8, !dbg !28947
  call void @llvm.experimental.noalias.scope.decl(metadata !28941), !dbg !28948
  store i32 %i.av, ptr %i.aa, align 4, !dbg !28950, !alias.scope !28941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !28956, !noalias !28941
  store <4 x i32> <i32 0, i32 4, i32 12, i32 28>, ptr %i.l, align 16, !dbg !28957, !noalias !28941
  %i.aw = load i32, ptr %i.as, align 4, !dbg !28958, !noalias !28941, !noundef !14 ; 4 uses
  %i.ax = icmp ult i32 %i.av, %i.aw, !dbg !28961
  br i1 %i.ax, label %bb.i, label %bb.g, !dbg !28961

bb.g:                                             ; preds = %bb.f
  %i.ay = add nuw nsw i32 %i.aw, %i.at, !dbg !28962
  %.not.i.us = icmp samesign ult i32 %i.av, %i.ay, !dbg !28963
  br i1 %.not.i.us, label %bb.j, label %bb.h, !dbg !28963

bb.h:                                             ; preds = %bb.g
  %i.az = add nuw nsw i32 %i.av, 1610612732, !dbg !28964
  %i.ba = sub nuw i32 %i.az, %i.aw, !dbg !28965
  br label %bb.j, !dbg !28966

bb.i:                                             ; preds = %bb.f
  %.neg6.i.us = add nuw nsw i32 %i.av, 134217724, !dbg !28967
  %i.bb = sub i32 %.neg6.i.us, %i.aw, !dbg !28968
  br label %bb.j, !dbg !28969

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.1.i.us = phi i32 [ %i.bb, %bb.i ], [ %i.ba, %bb.h ], [ 134217724, %bb.g ], !dbg !28970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !28971, !noalias !28941
  %.sroa.01.0.i.us.reass = add nuw nsw i32 %i.av, %invariant.op736
  store i32 %.sroa.01.0.i.us.reass, ptr %i.af, align 8, !dbg !28972, !alias.scope !28941
  %i.bc = zext i32 %.sroa.0.1.i.us to i64, !dbg !28973
  store i64 %i.bc, ptr %i.ae, align 8, !dbg !28973, !alias.scope !28941
  %i.bd = icmp ne i32 %i.av, %i.ak
  %or.cond.us.not = select i1 %i.au, i1 true, i1 %i.bd, !dbg !28974
  %spec.select.us = select i1 %or.cond.us.not, i1 %.sroa.09.1724.us, i1 false, !dbg !28974 ; 4 uses
  %i.be = invoke noundef zeroext i1 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae, ptr noalias noundef nonnull %14, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.k unwind label %.thread391.loopexit.split.us, !dbg !28975

bb.k:                                             ; preds = %bb.j
  br i1 %i.be, label %bb.l, label %.split729.us, !dbg !28976

bb.l:                                             ; preds = %bb.k
  %i.bf = load double, ptr %i.o, align 8, !dbg !28978, !noundef !14 ; 3 uses
  %i.bg = fcmp ogt double %i.bf, %.sroa.011.1723.us, !dbg !28979
  br i1 %i.bg, label %.split729.us, label %bb.m, !dbg !28979

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !dbg !28980
  %i.bh = add nuw i32 %.sroa.04.1725.us, 1, !dbg !28981 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !28982
  %exitcond947.not = icmp eq i32 %i.bh, 16, !dbg !28939
  br i1 %exitcond947.not, label %.loopexit601, label %bb.f, !dbg !28939

.thread391.loopexit.split.us:                     ; preds = %bb.j
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.thread350

.lr.ph.split:                                     ; preds = %.lr.ph
  %.pn.i = shl nuw nsw i32 48, %i.ar
  %invariant.op = add nuw nsw i32 %.pn.i, 16, !dbg !28939
  br label %bb.t, !dbg !28939

bb.n:                                             ; preds = %bb.r, %bb.d
  invoke void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock25RecomputeDistancePrefixes(ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef %10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %bb.s unwind label %.thread391.loopexit.split-lp, !dbg !28983

bb.o:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !28984
  store double 0.000000e+00, ptr %i.n, align 8, !dbg !28985
  %i.bi = invoke noundef zeroext i1 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, ptr noalias noundef nonnull %14, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.p unwind label %.thread391.loopexit.split-lp, !dbg !28986 ; 0 uses

.thread391.loopexit.split:                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread350

.thread391.loopexit.split-lp:                     ; preds = %.invoke, %bb.c, %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.z, %.loopexit600, %bb.af, %bb.ag, %bb.y, %bb.n, %bb.o
  %.sroa.10.0.ph.ph = phi i64 [ %.sroa.10.1, %.loopexit600 ], [ %i.v, %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ %i.v, %bb.c ], [ %i.v, %bb.y ], [ %.sroa.10.1, %.invoke ], [ %i.v, %bb.o ], [ %i.v, %bb.n ], [ %.sroa.10.1, %bb.ag ], [ %.sroa.10.1, %bb.af ], [ %i.v, %bb.z ]
  %.sroa.0311.0.ph.ph = phi ptr [ %.sroa.0311.1, %.loopexit600 ], [ %i.u, %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ %i.u, %bb.c ], [ %i.u, %bb.y ], [ %.sroa.0311.1, %.invoke ], [ %i.u, %bb.o ], [ %i.u, %bb.n ], [ %.sroa.0311.1, %bb.ag ], [ %.sroa.0311.1, %bb.af ], [ %i.u, %bb.z ]
  %.sroa.7307.1.ph.ph = phi i64 [ undef, %.loopexit600 ], [ undef, %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ undef, %bb.c ], [ undef, %bb.y ], [ %i.cv, %.invoke ], [ undef, %bb.o ], [ undef, %bb.n ], [ %i.cv, %bb.ag ], [ %i.cv, %bb.af ], [ undef, %bb.z ]
  %.sroa.0306.1.ph.ph = phi ptr [ undef, %.loopexit600 ], [ undef, %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ undef, %bb.c ], [ undef, %bb.y ], [ %i.cu, %.invoke ], [ undef, %bb.o ], [ undef, %bb.n ], [ %i.cu, %bb.ag ], [ %i.cu, %bb.af ], [ undef, %bb.z ]
  %.sroa.7.1.ph.ph = phi i64 [ undef, %.loopexit600 ], [ undef, %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ undef, %bb.c ], [ undef, %bb.y ], [ %i.db, %.invoke ], [ undef, %bb.o ], [ undef, %bb.n ], [ %i.db, %bb.ag ], [ undef, %bb.af ], [ undef, %bb.z ]
  %.sroa.0.1.ph.ph = phi ptr [ undef, %.loopexit600 ], [ undef, %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ undef, %bb.c ], [ undef, %bb.y ], [ %i.da, %.invoke ], [ undef, %bb.o ], [ undef, %bb.n ], [ %i.da, %bb.ag ], [ undef, %bb.af ], [ undef, %bb.z ]
  %.sroa.024.2.ph.ph = phi i1 [ false, %.loopexit600 ], [ false, %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ false, %bb.c ], [ false, %bb.y ], [ true, %.invoke ], [ false, %bb.o ], [ false, %bb.n ], [ true, %bb.ag ], [ false, %bb.af ], [ false, %bb.z ]
  %.sroa.023.2.ph.ph = phi i1 [ false, %.loopexit600 ], [ false, %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ false, %bb.c ], [ false, %bb.y ], [ true, %.invoke ], [ false, %bb.o ], [ false, %bb.n ], [ true, %bb.ag ], [ true, %bb.af ], [ false, %bb.z ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread350

.split461.thread:                                 ; preds = %.invoke1369, %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i114, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit119, %bb.fb, %.loopexit561, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit95.i217, %bb.fh
  %lpad.thr_comm466 = landingpad { ptr, i32 }
          cleanup
  br label %.thread427, !dbg !28988

.split461:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit, %bb.bw, %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.cb, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit95.i
  %lpad.thr_comm.split-lp467 = landingpad { ptr, i32 }
          cleanup
  br label %.thread367.thread, !dbg !28988

bb.p:                                             ; preds = %bb.o
  %i.bj = load double, ptr %i.n, align 8, !dbg !28989, !noundef !14
  %i.bk = fcmp olt double %i.bj, %.sroa.011.1719, !dbg !28989
  br i1 %i.bk, label %bb.q, label %bb.r, !dbg !28989

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !dbg !28990
  br label %bb.r, !dbg !28991

bb.r:                                             ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !28992
  br label %bb.n, !dbg !28993

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !28994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !28995
  br label %bb.c, !dbg !28996

bb.t:                                             ; preds = %.lr.ph.split, %bb.w
  %.sroa.04.1725 = phi i32 [ %.sroa.04.0740, %.lr.ph.split ], [ %16, %bb.w ] ; 5 uses
  %.sroa.09.1724 = phi i1 [ %.sroa.09.0739, %.lr.ph.split ], [ %spec.select, %bb.w ]
  %.sroa.011.1723 = phi double [ %.sroa.011.0738, %.lr.ph.split ], [ %i.bt, %bb.w ] ; 3 uses
  %i.bl = shl nuw nsw i32 %.sroa.04.1725, %i.ar, !dbg !28944 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !28945
  store double 0.000000e+00, ptr %i.o, align 8, !dbg !28947
  call void @llvm.experimental.noalias.scope.decl(metadata !28941), !dbg !28948
  store i32 %i.bl, ptr %i.aa, align 4, !dbg !28950, !alias.scope !28941
  %i.bm = add nuw nsw i32 %.sroa.04.1725, 67108860, !dbg !28997
  %i.bn = shl nuw nsw i32 %i.bm, %i.ar, !dbg !28997
  %.sroa.01.0.i.reass = add nuw nsw i32 %i.bl, %invariant.op
  store i32 %.sroa.01.0.i.reass, ptr %i.af, align 8, !dbg !28972, !alias.scope !28941
  %i.bo = zext nneg i32 %i.bn to i64, !dbg !28973
  store i64 %i.bo, ptr %i.ae, align 8, !dbg !28973, !alias.scope !28941
  %i.bp = icmp ne i32 %i.bl, %i.ak
  %or.cond = select i1 %i.au, i1 true, i1 %i.bp, !dbg !28974
  %spec.select = select i1 %or.cond, i1 %.sroa.09.1724, i1 false, !dbg !28974 ; 4 uses
  %i.bq = invoke noundef zeroext i1 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock19ComputeDistanceCost(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef %9, i64 noundef %10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae, ptr noalias noundef nonnull %14, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.u unwind label %.thread391.loopexit.split, !dbg !28975

.loopexit601:                                     ; preds = %bb.w, %bb.m, %bb.e, %.split729.us
  %.sroa.011.1719 = phi double [ %.us-phi731, %.split729.us ], [ %.sroa.011.0738, %bb.e ], [ %i.bf, %bb.m ], [ %i.bt, %bb.w ] ; 2 uses
  %.sroa.04.1714 = phi i32 [ %.us-phi732, %.split729.us ], [ %.sroa.04.0740, %bb.e ], [ 16, %bb.m ], [ 16, %bb.w ]
  %.sroa.09.2 = phi i1 [ %.us-phi730, %.split729.us ], [ %.sroa.09.0739, %bb.e ], [ %spec.select.us, %bb.m ], [ %spec.select, %bb.w ], !dbg !28998 ; 2 uses
  %i.br = call i32 @llvm.usub.sat.i32(i32 %.sroa.04.1714, i32 1), !dbg !28999
  %i.bs = lshr i32 %i.br, 1, !dbg !29002
  %exitcond948.not = icmp eq i64 %i.ap, 4, !dbg !29003
  br i1 %exitcond948.not, label %bb.d, label %bb.e, !dbg !28921

bb.u:                                             ; preds = %bb.t
  br i1 %i.bq, label %bb.v, label %.split729.us, !dbg !28976

bb.v:                                             ; preds = %bb.u
  %i.bt = load double, ptr %i.o, align 8, !dbg !28978, !noundef !14 ; 3 uses
  %i.bu = fcmp ogt double %i.bt, %.sroa.011.1723, !dbg !28979
  br i1 %i.bu, label %.split729.us, label %bb.w, !dbg !28979

.split729.us:                                     ; preds = %bb.u, %bb.v, %bb.k, %bb.l
  %.us-phi730 = phi i1 [ %spec.select.us, %bb.k ], [ %spec.select.us, %bb.l ], [ %spec.select, %bb.v ], [ %spec.select, %bb.u ], !dbg !28982
  %.us-phi731 = phi double [ %.sroa.011.1723.us, %bb.k ], [ %.sroa.011.1723.us, %bb.l ], [ %.sroa.011.1723, %bb.v ], [ %.sroa.011.1723, %bb.u ], !dbg !28982
  %.us-phi732 = phi i32 [ %.sroa.04.1725.us, %bb.k ], [ %.sroa.04.1725.us, %bb.l ], [ %.sroa.04.1725, %bb.v ], [ %.sroa.04.1725, %bb.u ], !dbg !28982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !28982
  br label %.loopexit601, !dbg !29005

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !dbg !28980
  %16 = add nuw i32 %.sroa.04.1725, 1, !dbg !28981 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !28982
  %exitcond.not = icmp eq i32 %16, 16, !dbg !28939
  br i1 %exitcond.not, label %.loopexit601, label %bb.t, !dbg !28939

bb.x:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 84, !dbg !29007 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !dbg !29007, !noundef !14
  %i.bx = icmp eq i32 %i.bw, 0, !dbg !29007
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.bz = load i64, ptr %i.by, align 8, !dbg !29008 ; 5 uses
  br i1 %i.bx, label %bb.y, label %.loopexit600, !dbg !29007

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !29009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !29014, !noalias !29020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !29023, !noalias !29020
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %i.bz, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.thread391.loopexit.split-lp, !dbg !29023

.noexc:                                           ; preds = %bb.y
  %i.ca = load i64, ptr %i.i, align 8, !dbg !29023, !range !5797, !noalias !29020, !noundef !14
  %i.cb = trunc nuw i64 %i.ca to i1, !dbg !29030
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !29031
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !29031, !range !5800, !noalias !29020, !noundef !14 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !29031 ; 2 uses
  br i1 %i.cb, label %bb.z, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !29030, !prof !168

bb.z:                                             ; preds = %.noexc
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !29032, !noalias !29020
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cd, i64 %i.cf) #20
          to label %.noexc80 unwind label %.thread391.loopexit.split-lp, !dbg !29033

.noexc80:                                         ; preds = %bb.z
  unreachable, !dbg !29033

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %.noexc
  %i.cg = load ptr, ptr %i.ce, align 8, !dbg !29035, !noalias !29020, !nonnull !14, !noundef !14
  %i.ch = icmp ule i64 %i.bz, %i.cd, !dbg !29036
  call void @llvm.assume(i1 %i.ch), !dbg !29040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !29045, !noalias !29020
  store i64 %i.cd, ptr %i.j, align 8, !dbg !29046, !noalias !29020
  %i.ci = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !29046
  store ptr %i.cg, ptr %i.ci, align 8, !dbg !29046, !noalias !29020
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !29046
  store i64 0, ptr %i.cj, align 8, !dbg !29046, !noalias !29020
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeE11extend_withCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.bz, i8 noundef 0)
          to label %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i unwind label %bb.aa, !dbg !29047, !noalias !29020

bb.aa:                                            ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %i.j) #21
          to label %.thread350 unwind label %bb.ab, !dbg !29049, !noalias !29020

bb.ab:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !29050, !noalias !29020
  unreachable, !dbg !29050

_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !29051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !29049, !noalias !29020
  %i.cm = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.ac unwind label %.thread391.loopexit.split-lp, !dbg !29052 ; 2 uses

bb.ac:                                            ; preds = %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !29057
  %i.cn = extractvalue { ptr, i64 } %i.cm, 0, !dbg !29058 ; 4 uses
  %i.co = extractvalue { ptr, i64 } %i.cm, 1, !dbg !29058 ; 3 uses
  %i.cp = icmp eq i64 %i.v, 0, !dbg !29059
  br i1 %i.cp, label %bb.ae, label %bb.ad, !dbg !29059

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef range(i64 1, 0) %i.v, i64 noundef 1) #19, !dbg !29068
  br label %bb.ae, !dbg !29073

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cn) ]
  %i.cq = icmp samesign eq i64 %i.co, 0, !dbg !29074
  br i1 %i.cq, label %.loopexit600, label %.lr.ph742.preheader, !dbg !29076

.lr.ph742.preheader:                              ; preds = %bb.ae
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cn, i8 %11, i64 %i.co, i1 false), !dbg !29083
  br label %.loopexit600, !dbg !29085

.loopexit600:                                     ; preds = %bb.x, %.lr.ph742.preheader, %bb.ae
  %.sroa.10.1 = phi i64 [ %i.co, %.lr.ph742.preheader ], [ 0, %bb.ae ], [ %i.v, %bb.x ], !dbg !29086 ; 9 uses
  %.sroa.0311.1 = phi ptr [ %i.cn, %.lr.ph742.preheader ], [ %i.cn, %bb.ae ], [ %i.u, %bb.x ], !dbg !29086 ; 7 uses
  %.sroa.0.0 = phi i64 [ 64, %.lr.ph742.preheader ], [ 64, %bb.ae ], [ 1, %bb.x ], !dbg !29087
  %i.cr = getelementptr inbounds nuw i8, ptr %15, i64 32, !dbg !29085
  %i.cs = mul i64 %i.bz, %.sroa.0.0, !dbg !29088  ; 20 uses
  %i.ct = invoke { ptr, i64 } @_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramLiteralE10alloc_cellCsfISxE4fmY1Y_14polars_parquet(ptr noalias nonnull poison, i64 noundef %i.cs)
          to label %bb.af unwind label %.thread391.loopexit.split-lp, !dbg !29091 ; 2 uses

bb.af:                                            ; preds = %.loopexit600
  %i.cu = extractvalue { ptr, i64 } %i.ct, 0, !dbg !29091 ; 20 uses
  %i.cv = extractvalue { ptr, i64 } %i.ct, 1, !dbg !29091 ; 30 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %15, i64 128, !dbg !29095 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !dbg !29095, !noundef !14
  %i.cy = shl i64 %i.cx, 2, !dbg !29095
  %i.cz = invoke { ptr, i64 } @_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram17HistogramDistanceE10alloc_cellCsfISxE4fmY1Y_14polars_parquet(ptr noalias nonnull poison, i64 noundef %i.cy)
          to label %bb.ag unwind label %.thread391.loopexit.split-lp, !dbg !29096 ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.da = extractvalue { ptr, i64 } %i.cz, 0, !dbg !29096 ; 27 uses
  %i.db = extractvalue { ptr, i64 } %i.cz, 1, !dbg !29096 ; 36 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 80, !dbg !29100
  %i.dd = load i64, ptr %i.dc, align 8, !dbg !29100, !noundef !14 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 248, !dbg !29101
  store i64 %i.dd, ptr %i.de, align 8, !dbg !29101
  %i.df = invoke fastcc { ptr, i64 } @_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramCommandE10alloc_cellCsfISxE4fmY1Y_14polars_parquet(i64 noundef %i.dd)
          to label %bb.ah unwind label %.thread391.loopexit.split-lp, !dbg !29102 ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.dg = extractvalue { ptr, i64 } %i.df, 0, !dbg !29102 ; 3 uses
  %i.dh = extractvalue { ptr, i64 } %i.df, 1, !dbg !29102 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %15, i64 192, !dbg !29105 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 200, !dbg !29105 ; 2 uses
  %.val52 = load i64, ptr %i.dj, align 8, !dbg !29105, !noundef !14 ; 2 uses
  %i.dk = icmp eq i64 %.val52, 0, !dbg !29106
  br i1 %i.dk, label %bb.aj, label %bb.ai, !dbg !29106

bb.ai:                                            ; preds = %bb.ah
  %.val51 = load ptr, ptr %i.di, align 8, !dbg !29105, !nonnull !14, !noundef !14
  %i.dl = mul nuw nsw i64 %.val52, 2832, !dbg !29110
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val51, i64 noundef range(i64 1, 0) %i.dl, i64 noundef 8) #19, !dbg !29113
  br label %bb.aj, !dbg !29118

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  store ptr %i.dg, ptr %i.di, align 8, !dbg !29105
  store i64 %i.dh, ptr %i.dj, align 8, !dbg !29105
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0311.1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cu) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dg) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.da) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !29119), !dbg !29122
  call void @llvm.experimental.noalias.scope.decl(metadata !29123), !dbg !29122
  call void @llvm.experimental.noalias.scope.decl(metadata !29125), !dbg !29122
  call void @llvm.experimental.noalias.scope.decl(metadata !29127), !dbg !29122
  call void @llvm.experimental.noalias.scope.decl(metadata !29129), !dbg !29122
  call void @llvm.experimental.noalias.scope.decl(metadata !29131), !dbg !29122
  call void @llvm.experimental.noalias.scope.decl(metadata !29133), !dbg !29122
  call void @llvm.experimental.noalias.scope.decl(metadata !29135), !dbg !29122
  call void @llvm.experimental.noalias.scope.decl(metadata !29137), !dbg !29122
  call void @llvm.experimental.noalias.scope.decl(metadata !29139), !dbg !29142
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 24, !dbg !29149
  %.val3.i.i = load i64, ptr %i.dm, align 8, !dbg !29149, !alias.scope !29153, !noalias !29154, !noundef !14 ; 5 uses
  %i.dn = icmp eq i64 %.val3.i.i, 0, !dbg !29156
  br i1 %i.dn, label %_RNvMsq_NtNtCsk4ZPsEfLtLH_6brotli3enc9histogramINtB5_18BlockSplitIteratorNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet.exit.i, label %bb.ak, !dbg !29156

bb.ak:                                            ; preds = %bb.aj
  %i.do = getelementptr inbounds nuw i8, ptr %15, i64 16, !dbg !29156
  %.val2.i.i = load ptr, ptr %i.do, align 8, !dbg !29149, !alias.scope !29153, !noalias !29154, !nonnull !14, !noundef !14
  %i.dp = load i32, ptr %.val2.i.i, align 4, !dbg !29157, !noalias !29158, !noundef !14
  %i.dq = zext i32 %i.dp to i64, !dbg !29157
  br label %_RNvMsq_NtNtCsk4ZPsEfLtLH_6brotli3enc9histogramINtB5_18BlockSplitIteratorNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !29159

_RNvMsq_NtNtCsk4ZPsEfLtLH_6brotli3enc9histogramINtB5_18BlockSplitIteratorNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.ak, %bb.aj
  %.sroa.0.0.i40.i = phi i64 [ %i.dq, %bb.ak ], [ 0, %bb.aj ], !dbg !29160
  call void @llvm.experimental.noalias.scope.decl(metadata !29161), !dbg !29164
  %i.dr = getelementptr inbounds nuw i8, ptr %15, i64 72, !dbg !29165
  %.val3.i41.i = load i64, ptr %i.dr, align 8, !dbg !29165, !alias.scope !29167, !noalias !29168, !noundef !14 ; 3 uses
  %i.ds = icmp eq i64 %.val3.i41.i, 0, !dbg !29170
  br i1 %i.ds, label %_RNvMsq_NtNtCsk4ZPsEfLtLH_6brotli3enc9histogramINtB5_18BlockSplitIteratorNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet.exit44.i, label %bb.al, !dbg !29170

bb.al:                                            ; preds = %_RNvMsq_NtNtCsk4ZPsEfLtLH_6brotli3enc9histogramINtB5_18BlockSplitIteratorNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet.exit.i
  %i.dt = getelementptr inbounds nuw i8, ptr %15, i64 64, !dbg !29170
  %.val2.i42.i = load ptr, ptr %i.dt, align 8, !dbg !29165, !alias.scope !29167, !noalias !29168, !nonnull !14, !noundef !14
  %i.du = load i32, ptr %.val2.i42.i, align 4, !dbg !29171, !noalias !29172, !noundef !14
  %i.dv = zext i32 %i.du to i64, !dbg !29171
  br label %_RNvMsq_NtNtCsk4ZPsEfLtLH_6brotli3enc9histogramINtB5_18BlockSplitIteratorNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet.exit44.i, !dbg !29173

_RNvMsq_NtNtCsk4ZPsEfLtLH_6brotli3enc9histogramINtB5_18BlockSplitIteratorNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet.exit44.i: ; preds = %bb.al, %_RNvMsq_NtNtCsk4ZPsEfLtLH_6brotli3enc9histogramINtB5_18BlockSplitIteratorNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet.exit.i
  %.sroa.0.0.i43.i = phi i64 [ %i.dv, %bb.al ], [ 0, %_RNvMsq_NtNtCsk4ZPsEfLtLH_6brotli3enc9histogramINtB5_18BlockSplitIteratorNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet.exit.i ], !dbg !29174
  call void @llvm.experimental.noalias.scope.decl(metadata !29175), !dbg !29178
  %i.dw = getelementptr inbounds nuw i8, ptr %15, i64 120, !dbg !29179
  %.val3.i45.i = load i64, ptr %i.dw, align 8, !dbg !29179, !alias.scope !29181, !noalias !29182, !noundef !14 ; 3 uses
  %i.dx = icmp eq i64 %.val3.i45.i, 0, !dbg !29184
  br i1 %i.dx, label %_RNvMsq_NtNtCsk4ZPsEfLtLH_6brotli3enc9histogramINtB5_18BlockSplitIteratorNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet.exit48.i, label %bb.am, !dbg !29184

bb.am:                                            ; preds = %_RNvMsq_NtNtCsk4ZPsEfLtLH_6brotli3enc9histogramINtB5_18BlockSplitIteratorNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet.exit44.i
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 112, !dbg !29184
  %.val2.i46.i = load ptr, ptr %i.dy, align 8, !dbg !29179, !alias.scope !29181, !noalias !29182, !nonnull !14, !noundef !14
  %i.dz = load i32, ptr %.val2.i46.i, align 4, !dbg !29185, !noalias !29186, !noundef !14
  %i.ea = zext i32 %i.dz to i64, !dbg !29185
  br label %_RNvMsq_NtNtCsk4ZPsEfLtLH_6brotli3enc9histogramINtB5_18BlockSplitIteratorNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet.exit48.i, !dbg !29187

_RNvMsq_NtNtCsk4ZPsEfLtLH_6brotli3enc9histogramINtB5_18BlockSplitIteratorNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet.exit48.i: ; preds = %bb.am, %_RNvMsq_NtNtCsk4ZPsEfLtLH_6brotli3enc9histogramINtB5_18BlockSplitIteratorNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet.exit44.i
  %.sroa.0.0.i47.i = phi i64 [ %i.ea, %bb.am ], [ 0, %_RNvMsq_NtNtCsk4ZPsEfLtLH_6brotli3enc9histogramINtB5_18BlockSplitIteratorNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet.exit44.i ], !dbg !29188
  %.not.i82 = icmp eq i64 %10, 0, !dbg !29189
  br i1 %.not.i82, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram32BrotliBuildHistogramsWithContextNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, label %.lr.ph225.i, !dbg !29198

.lr.ph225.i:                                      ; preds = %_RNvMsq_NtNtCsk4ZPsEfLtLH_6brotli3enc9histogramINtB5_18BlockSplitIteratorNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet.exit48.i
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 56
  %.val5.i.i = load i64, ptr %i.eb, align 8, !alias.scope !29125, !noalias !29199 ; 2 uses
  %.val.i.i = load ptr, ptr %i.am, align 8, !alias.scope !29125, !noalias !29199, !nonnull !14
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 64
  %.val6.i.i = load ptr, ptr %i.ec, align 8, !alias.scope !29125, !noalias !29199, !nonnull !14
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.val5.i49.i = load i64, ptr %i.ed, align 8, !alias.scope !29123, !noalias !29200 ; 4 uses
end_hunk_0
