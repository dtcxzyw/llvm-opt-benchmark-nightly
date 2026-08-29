Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/fern-7fb654c9ca500203.fern.e464f87c927157bb-cgu.05?download=true
inline.NumInlined: 150
inline.NumDeleted: 84
begin_hunk_0_@_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterNtNtB14_8builders11OutputInnerEINtNtB2h_6option6OptionB10_ENCNvMB3x_NtB3x_8Dispatch13into_dispatch0EE9from_iterB14_:bb.a
  %i.s = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.t = icmp ugt i64 %i.p, 3
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.s, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 128, i1 false)
  store i64 %i.p, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.d, ptr noundef nonnull align 8 dereferenceable(296) %1, i64 296, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  br label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputE7reserveBH_.exit.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !173
  invoke fastcc void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerEINtNtBb_6option6OptionNtNtB1V_8log_impl6OutputENCNvMB1T_NtB1T_8Dispatch13into_dispatch0ENtNtNtB9_6traits8iterator8Iterator4nextB1V_(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(296) %i.d)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.n, %bb.k
  %.pn.i.i = phi { ptr, i32 } [ %i.ad, %bb.n ], [ %i.u, %bb.k ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerEINtNtB4_6option6OptionNtNtB28_8log_impl6OutputENCNvMB26_NtB26_8Dispatch13into_dispatch0EEB28_(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.d) #16
          to label %.body unwind label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.b, align 8, !range !163, !noalias !173, !noundef !3
  %.not.i.i6 = icmp eq i64 %i.v, -1
  br i1 %.not.i.i6, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtBJ_8builders11OutputInnerEINtNtB1K_6option6OptionBF_ENCNvMB30_NtB30_8Dispatch13into_dispatch0EEBJ_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false), !noalias !173
  %i.w = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !176, !noalias !177, !noundef !3 ; 5 uses
  %i.x = icmp ult i64 %i.w, 72057594037927936
  call void @llvm.assume(i1 %i.x)
  %i.y = load i64, ptr %i.g, align 8, !range !4, !alias.scope !176, !noalias !177, !noundef !3
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerEINtNtBb_6option6OptionNtNtB1V_8log_impl6OutputENCNvMB1T_NtB1T_8Dispatch13into_dispatch0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputE7reserveBH_.exit.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerEINtNtBb_6option6OptionNtNtB1V_8log_impl6OutputENCNvMB1T_NtB1T_8Dispatch13into_dispatch0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i: ; preds = %bb.m
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjBJLkJIqpmN_4fern(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.w, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 128)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputE7reserveBH_.exit.i.i unwind label %bb.n, !noalias !177

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputE7reserveBH_.exit.i.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerEINtNtBb_6option6OptionNtNtB1V_8log_impl6OutputENCNvMB1T_NtB1T_8Dispatch13into_dispatch0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i, %bb.m
  %i.aa = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !176, !noalias !177, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw [128 x i8], ptr %i.aa, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ab, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false), !noalias !177
  %i.ac = add nuw nsw i64 %i.w, 1
  store i64 %i.ac, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !176, !noalias !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !173
  br label %bb.i

bb.n:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerEINtNtBb_6option6OptionNtNtB1V_8log_impl6OutputENCNvMB1T_NtB1T_8Dispatch13into_dispatch0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputEBF_(ptr noalias noundef align 8 dereferenceable(128) %i.a) #16
          to label %bb.j unwind label %bb.o, !noalias !177

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtBJ_8builders11OutputInnerEINtNtB1K_6option6OptionBF_ENCNvMB30_NtB30_8Dispatch13into_dispatch0EEBJ_.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !173
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerEINtNtB4_6option6OptionNtNtB28_8log_impl6OutputENCNvMB26_NtB26_8Dispatch13into_dispatch0EEB28_(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.d)
          to label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterNtNtBU_8builders11OutputInnerEINtNtB1Y_6option6OptionBQ_ENCNvMB3e_NtB3e_8Dispatch13into_dispatch0EE11spec_extendBU_.exit unwind label %bb.p

bb.p:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtBJ_8builders11OutputInnerEINtNtB1K_6option6OptionBF_ENCNvMB30_NtB30_8Dispatch13into_dispatch0EEBJ_.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %.pn.i.i, %bb.j ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.g) #16
          to label %bb.r unwind label %bb.q

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterNtNtBU_8builders11OutputInnerEINtNtB1Y_6option6OptionBQ_ENCNvMB3e_NtB3e_8Dispatch13into_dispatch0EE11spec_extendBU_.exit: ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtBJ_8builders11OutputInnerEINtNtB1K_6option6OptionBF_ENCNvMB30_NtB30_8Dispatch13into_dispatch0EEBJ_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.e

bb.q:                                             ; preds = %bb.s, %.body, %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.r:                                             ; preds = %.body, %bb.s
  %.pn10 = phi { ptr, i32 } [ %.pn.ph, %bb.s ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn10

bb.s:                                             ; preds = %bb.f, %bb.b
  %.pn.ph = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.l, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerEINtNtB4_6option6OptionNtNtB28_8log_impl6OutputENCNvMB26_NtB26_8Dispatch13into_dispatch0EEB28_(ptr noalias noundef align 8 dereferenceable(296) %1) #16
          to label %bb.r unwind label %bb.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerEINtNtBb_6option6OptionNtNtB1V_8log_impl6OutputENCNvMB1T_NtB1T_8Dispatch13into_dispatch0ENtNtNtB9_6traits8iterator8Iterator4nextB1V_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(296) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [136 x i8], align 8               ; 5 uses
  %i.d = alloca [128 x i8], align 8               ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [96 x i8], align 8                ; 11 uses
  %.sroa.36.i.i.i = alloca [72 x i8], align 8     ; 7 uses
  %.sroa.15.i = alloca [72 x i8], align 8         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !183, !noalias !186, !noundef !3
  %.not.i47.i = icmp eq ptr %i.h, null
  br i1 %.not.i47.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.15.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.25.0..sroa_idx22.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.2532.0..sroa_idx33.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.32.0..sroa_idx35.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.34.0..sroa_idx37.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.36.0..sroa_idx39.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 5 uses
  %.sroa.23.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 4 uses
  %.sroa.25.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %.sroa.559.i.sroa.5.3..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.559.i.sroa.6.3..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.promoted.i = load ptr, ptr %i.j, align 8, !alias.scope !188, !noalias !194 ; 2 uses
  %.pre.i = load ptr, ptr %i.i, align 8, !alias.scope !188, !noalias !194 ; 2 uses
  %i.o = icmp eq ptr %.promoted.i, %.pre.i
  br i1 %i.o, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i.i.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i.i.i: ; preds = %.lr.ph.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputEEB13_.exit4.i
  %i.p = phi ptr [ %i.q, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputEEB13_.exit4.i ], [ %.promoted.i, %.lr.ph.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 3 uses
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !188, !noalias !194
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.p, align 8, !noalias !200 ; 5 uses
  %.sroa.6.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, -1
  br i1 %.not.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx2.i.i.i, i64 88, i1 false), !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.36.i.i.i)
  store i64 %.sroa.0.0.copyload1.i.i.i, ptr %i.f, align 8, !noalias !201
  %.val.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !202, !noalias !203 ; 22 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !201
  %i.r = icmp ne i64 %.sroa.0.0.copyload1.i.i.i, 11
  call void @llvm.assume(i1 %i.r)
  %i.s = add nsw i64 %.sroa.0.0.copyload1.i.i.i, -6
  %i.t = icmp samesign ugt i64 %.sroa.0.0.copyload1.i.i.i, 5
  %i.u = select i1 %i.t, i64 %i.s, i64 5
  switch i64 %i.u, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.i
    i64 6, label %bb.j
    i64 7, label %bb.k
    i64 8, label %bb.l
    i64 9, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %.sroa.23.8..sroa_idx.i.i.i, align 8, !alias.scope !207, !noalias !209, !nonnull !3, !align !57, !noundef !3
  %i.w = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !210, !noalias !201
  %.sroa.25.8.copyload31.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !210, !noalias !201
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  store i64 5, ptr %.val.i.i.i, align 8, !noalias !211
  %i.x = ptrtoint ptr %i.v to i64
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread18.i

bb.e:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %.sroa.23.8..sroa_idx.i.i.i, align 8, !alias.scope !207, !noalias !209, !nonnull !3, !align !57, !noundef !3
  %i.z = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !210, !noalias !201
  %.sroa.25.8.copyload29.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !210, !noalias !201
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  store i64 5, ptr %.val.i.i.i, align 8, !noalias !211
  %i.aa = ptrtoint ptr %i.y to i64
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread18.i

bb.f:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %.sroa.23.8..sroa_idx.i.i.i, align 8, !range !81, !alias.scope !207, !noalias !209, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx2.i.i.i, i64 24, i1 false), !noalias !201
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  store i64 5, ptr %.val.i.i.i, align 8, !noalias !211
  invoke void @_RNvMNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufwriterINtB2_9BufWriterNtNtB8_2fs4FileE13with_capacityCsjBJLkJIqpmN_4fern(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, i64 noundef 8192, i32 noundef %i.ab)
          to label %bb.p unwind label %bb.n, !noalias !211

bb.g:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %.sroa.23.8..sroa_idx.i.i.i, align 8, !alias.scope !207, !noalias !209, !nonnull !3, !noundef !3
  %i.ad = load ptr, ptr %.sroa.25.8..sroa_idx.i.i.i, align 8, !alias.scope !207, !noalias !209, !nonnull !3, !align !57, !noundef !3
  %i.ae = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !210, !noalias !201
  %.sroa.25.8.copyload25.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !210, !noalias !201
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  store i64 5, ptr %.val.i.i.i, align 8, !noalias !211
  %i.af = ptrtoint ptr %i.ac to i64
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread18.i

bb.h:                                             ; preds = %bb.b
  %i.ag = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !range !97, !alias.scope !207, !noalias !209, !noundef !3
  %i.ah = load ptr, ptr %i.l, align 8, !alias.scope !207, !noalias !209, !noundef !3
  %i.ai = load <2 x ptr>, ptr %i.n, align 8, !alias.scope !210, !noalias !201
  %.sroa.25.8.copyload.i.i.i = load i64, ptr %.sroa.25.8..sroa_idx.i.i.i, align 8, !alias.scope !210, !noalias !201
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  store i64 5, ptr %.val.i.i.i, align 8, !noalias !211
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread18.i

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !211
  call void @_RNvMNtCsjBJLkJIqpmN_4fern8buildersNtB2_8Dispatch13into_dispatch(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.f), !noalias !209
  %i.aj = load i64, ptr %i.c, align 8, !range !212, !noalias !211, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.m, i64 128, i1 false), !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !211
  %.not70.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not70.i.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread36.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.i

bb.j:                                             ; preds = %bb.b
  %i.ak = load ptr, ptr %i.l, align 8, !alias.scope !207, !noalias !209, !nonnull !3, !noundef !3 ; 3 uses
  %i.al = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !range !212, !alias.scope !207, !noalias !209, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !211
  store ptr %i.ak, ptr %i.b, align 8, !noalias !211
  %.not.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.t

bb.k:                                             ; preds = %bb.b
  %i.am = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !207, !noalias !209
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  store i64 5, ptr %.val.i.i.i, align 8, !noalias !211
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread18.i

bb.l:                                             ; preds = %bb.b
  %i.an = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !207, !noalias !209
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  store i64 5, ptr %.val.i.i.i, align 8, !noalias !211
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread18.i

bb.m:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  store i64 5, ptr %.val.i.i.i, align 8, !noalias !211
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread18.i

bb.n:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load i64, ptr %i.e, align 8, !range !17, !alias.scope !213, !noalias !211, !noundef !3
  %i.aq = icmp eq i64 %i.ap, -1
  br i1 %i.aq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsjBJLkJIqpmN_4fern.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjBJLkJIqpmN_4fern(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsjBJLkJIqpmN_4fern.exit.i.i.i.i unwind label %bb.q, !noalias !211

bb.p:                                             ; preds = %bb.f
  %.sroa.559.i.sroa.3.3.copyload.i.i.i = load i64, ptr %i.a, align 8, !noalias !211
  %.sroa.559.i.sroa.5.3.copyload.i.i.i = load ptr, ptr %.sroa.559.i.sroa.5.3..sroa_idx.i.i.i, align 8, !noalias !211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.36.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.559.i.sroa.6.3..sroa_idx.i.i.i, i64 16, i1 false), !noalias !216
  %i.ar = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !210, !noalias !201
  %.sroa.25.8.copyload27.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !210, !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !211
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread18.i

bb.q:                                             ; preds = %bb.o
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !211
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsjBJLkJIqpmN_4fern.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  resume { ptr, i32 } %i.ao

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread36.i: ; preds = %bb.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjBJLkJIqpmN_4fern8log_impl8DispatchEBF_(ptr noalias noundef align 8 dereferenceable(128) %i.d), !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !201
  br label %.sink.split.i

bb.r:                                             ; preds = %bb.j
  %i.at = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !217
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsjBJLkJIqpmN_4fern8log_impl8DispatchEEB1c_.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsjBJLkJIqpmN_4fern8log_impl8DispatchE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !211
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsjBJLkJIqpmN_4fern8log_impl8DispatchEEB1c_.exit.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsjBJLkJIqpmN_4fern8log_impl8DispatchEEB1c_.exit.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.04.0.i.i.i = phi i64 [ -1, %bb.s ], [ -1, %bb.r ], [ 8, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !211
  %i.av = insertelement <2 x ptr> <ptr poison, ptr undef>, ptr %i.ak, i64 0
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread18.i

bb.t:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %i.aw = load i64, ptr %.val.i.i.i, align 8, !range !212, !noalias !211, !noundef !3
  %.sroa.0.0.i72.i.i.i.i = call noundef range(i64 0, 6) i64 @llvm.umax.i64(i64 range(i64 0, 6) %i.al, i64 range(i64 0, 6) %i.aw)
  store i64 %.sroa.0.0.i72.i.i.i.i, ptr %.val.i.i.i, align 8, !noalias !211
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsjBJLkJIqpmN_4fern8log_impl8DispatchEEB1c_.exit.i.i.i.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread18.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsjBJLkJIqpmN_4fern8log_impl8DispatchEEB1c_.exit.i.i.i.i, %bb.p, %bb.m, %bb.l, %bb.k, %bb.h, %bb.g, %bb.e, %bb.d
  %.sroa.34.1.i.i.ph.i = phi ptr [ undef, %bb.m ], [ undef, %bb.l ], [ undef, %bb.k ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsjBJLkJIqpmN_4fern8log_impl8DispatchEEB1c_.exit.i.i.i.i ], [ %i.ah, %bb.h ], [ %i.ad, %bb.g ], [ %.sroa.559.i.sroa.5.3.copyload.i.i.i, %bb.p ], [ undef, %bb.e ], [ undef, %bb.d ]
  %.sroa.2532.sroa.0.1.i.i.ph.i = phi i64 [ undef, %bb.m ], [ undef, %bb.l ], [ undef, %bb.k ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsjBJLkJIqpmN_4fern8log_impl8DispatchEEB1c_.exit.i.i.i.i ], [ %i.ag, %bb.h ], [ %i.af, %bb.g ], [ %.sroa.559.i.sroa.3.3.copyload.i.i.i, %bb.p ], [ undef, %bb.e ], [ undef, %bb.d ]
  %.sroa.32.1.i.i.ph.i = phi i64 [ undef, %bb.m ], [ undef, %bb.l ], [ undef, %bb.k ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsjBJLkJIqpmN_4fern8log_impl8DispatchEEB1c_.exit.i.i.i.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.p ], [ %i.aa, %bb.e ], [ %i.x, %bb.d ]
  %.sroa.25.1.i.i.ph.i = phi i64 [ undef, %bb.m ], [ undef, %bb.l ], [ undef, %bb.k ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsjBJLkJIqpmN_4fern8log_impl8DispatchEEB1c_.exit.i.i.i.i ], [ %.sroa.25.8.copyload.i.i.i, %bb.h ], [ %.sroa.25.8.copyload25.i.i.i, %bb.g ], [ %.sroa.25.8.copyload27.i.i.i, %bb.p ], [ %.sroa.25.8.copyload29.i.i.i, %bb.e ], [ %.sroa.25.8.copyload31.i.i.i, %bb.d ]
  %.sroa.04.2.i.i.ph.i = phi i64 [ 11, %bb.m ], [ 10, %bb.l ], [ 9, %bb.k ], [ %.sroa.04.0.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsjBJLkJIqpmN_4fern8log_impl8DispatchEEB1c_.exit.i.i.i.i ], [ 6, %bb.h ], [ 12, %bb.g ], [ 5, %bb.p ], [ 4, %bb.e ], [ 3, %bb.d ]
  %i.ax = phi <2 x ptr> [ undef, %bb.m ], [ %i.an, %bb.l ], [ %i.am, %bb.k ], [ %i.av, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsjBJLkJIqpmN_4fern8log_impl8DispatchEEB1c_.exit.i.i.i.i ], [ %i.ai, %bb.h ], [ %i.ae, %bb.g ], [ %i.ar, %bb.p ], [ %i.z, %bb.e ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.15.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.36.i.i.i, i64 72, i1 false)
  br label %.sink.split.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.i: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %i.ay = load i64, ptr %.val.i.i.i, align 8, !range !212, !noalias !211, !noundef !3
  %.sroa.0.0.i.i.i.i.i = call noundef range(i64 0, 6) i64 @llvm.umax.i64(i64 range(i64 0, 6) %i.aj, i64 range(i64 0, 6) %i.ay)
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %.val.i.i.i, align 8, !noalias !211
  %.sroa.04.0.copyload5.i.i.i = load i64, ptr %i.d, align 8, !noalias !216 ; 2 uses
  %i.az = load <2 x ptr>, ptr %.sroa.15.0..sroa_idx6.i.i.i, align 8, !noalias !216
  %.sroa.25.0.copyload23.i.i.i = load i64, ptr %.sroa.25.0..sroa_idx22.i.i.i, align 8, !noalias !216
  %.sroa.2532.0.copyload34.i.i.i = load i64, ptr %.sroa.2532.0..sroa_idx33.i.i.i, align 8, !noalias !216
  %.sroa.32.0.copyload36.i.i.i = load i64, ptr %.sroa.32.0..sroa_idx35.i.i.i, align 8, !noalias !216
  %.sroa.34.0.copyload38.i.i.i = load ptr, ptr %.sroa.34.0..sroa_idx37.i.i.i, align 8, !noalias !216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.36.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.36.0..sroa_idx39.i.i.i, i64 72, i1 false), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.15.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.36.i.i.i, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.i.i.i)
  %.not.i = icmp eq i64 %.sroa.04.0.copyload5.i.i.i, -2
  br i1 %.not.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread.i, label %bb.u

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread.i: ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputEEB13_.exit4.i, %.lr.ph.i, %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !178, !noalias !181
  br label %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB2g_NtB2g_8Dispatch13into_dispatch0EINtNtBb_6option8IntoIterNtNtB2i_8log_impl6OutputEENtNtNtB9_6traits8iterator8Iterator4nextB2i_.exit

.sink.split.i:                                    ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread18.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread36.i
  %.sroa.2532.sroa.0.0.insert.insert.i.i35.ph.i = phi i64 [ -1, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread36.i ], [ %.sroa.04.2.i.i.ph.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread18.i ]
  %.sroa.04.2.i.i34.ph.i = phi i64 [ undef, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread36.i ], [ %.sroa.25.1.i.i.ph.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread18.i ]
  %.sroa.25.1.i.i31.ph.i = phi i64 [ undef, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread36.i ], [ %.sroa.32.1.i.i.ph.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread18.i ]
  %.sroa.32.1.i.i30.ph.i = phi i64 [ undef, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread36.i ], [ %.sroa.2532.sroa.0.1.i.i.ph.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread18.i ]
  %.sroa.34.1.i.i29.ph.i = phi ptr [ undef, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread36.i ], [ %.sroa.34.1.i.i.ph.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread18.i ]
  %i.ba = phi <2 x ptr> [ undef, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread36.i ], [ %i.ax, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread18.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.i.i.i)
  br label %bb.u

bb.u:                                             ; preds = %.sink.split.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.i
  %.sroa.2532.sroa.0.0.insert.insert.i.i35.i = phi i64 [ %.sroa.04.0.copyload5.i.i.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.i ], [ %.sroa.2532.sroa.0.0.insert.insert.i.i35.ph.i, %.sink.split.i ] ; 2 uses
  %.sroa.04.2.i.i34.i = phi i64 [ %.sroa.25.0.copyload23.i.i.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.i ], [ %.sroa.04.2.i.i34.ph.i, %.sink.split.i ]
  %.sroa.25.1.i.i31.i = phi i64 [ %.sroa.2532.0.copyload34.i.i.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.i ], [ %.sroa.25.1.i.i31.ph.i, %.sink.split.i ]
  %.sroa.32.1.i.i30.i = phi i64 [ %.sroa.32.0.copyload36.i.i.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.i ], [ %.sroa.32.1.i.i30.ph.i, %.sink.split.i ]
  %.sroa.34.1.i.i29.i = phi ptr [ %.sroa.34.0.copyload38.i.i.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.i ], [ %.sroa.34.1.i.i29.ph.i, %.sink.split.i ]
  %i.bb = phi <2 x ptr> [ %i.az, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.i ], [ %i.ba, %.sink.split.i ]
  %.not1.i = icmp eq i64 %.sroa.2532.sroa.0.0.insert.insert.i.i35.i, -1
  br i1 %.not1.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputEEB13_.exit4.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputEEB13_.exit2.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputEEB13_.exit2.i: ; preds = %bb.u
  store i64 %.sroa.2532.sroa.0.0.insert.insert.i.i35.i, ptr %0, align 8, !alias.scope !178, !noalias !181
  %.sroa.6.0..sroa_idx50.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.bb, ptr %.sroa.6.0..sroa_idx50.i, align 8, !noalias !181
  %.sroa.11.8..sroa.6.0..sroa_idx50.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.04.2.i.i34.i, ptr %.sroa.11.8..sroa.6.0..sroa_idx50.i.sroa_idx, align 8, !noalias !181
  %.sroa.15.8..sroa.6.0..sroa_idx50.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.25.1.i.i31.i, ptr %.sroa.15.8..sroa.6.0..sroa_idx50.i.sroa_idx, align 8, !noalias !181
  %.sroa.19.8..sroa.6.0..sroa_idx50.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.32.1.i.i30.i, ptr %.sroa.19.8..sroa.6.0..sroa_idx50.i.sroa_idx, align 8, !noalias !181
  %.sroa.23.8..sroa.6.0..sroa_idx50.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.34.1.i.i29.i, ptr %.sroa.23.8..sroa.6.0..sroa_idx50.i.sroa_idx, align 8, !noalias !181
  %.sroa.27.8..sroa.6.0..sroa_idx50.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.27.8..sroa.6.0..sroa_idx50.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.15.i, i64 72, i1 false)
  br label %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB2g_NtB2g_8Dispatch13into_dispatch0EINtNtBb_6option8IntoIterNtNtB2i_8log_impl6OutputEENtNtNtB9_6traits8iterator8Iterator4nextB2i_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputEEB13_.exit4.i: ; preds = %bb.u
  %i.bc = icmp eq ptr %i.q, %.pre.i
  br i1 %i.bc, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i.i.i

_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB2g_NtB2g_8Dispatch13into_dispatch0EINtNtBb_6option8IntoIterNtNtB2i_8log_impl6OutputEENtNtNtB9_6traits8iterator8Iterator4nextB2i_.exit: ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENCNvMB23_NtB23_8Dispatch13into_dispatch0EEINtB5_8FuseImplBY_E4nextB25_.exit.thread.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputEEB13_.exit2.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDG0_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL1_INtCsdxG2AMukdbL_3log8MetadataL0_EEEp6OutputbNtNtB17_6marker4SendNtB2w_4SyncEL_EENtNtB15_4drop4Drop4dropCsjBJLkJIqpmN_4fern(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtCsdxG2AMukdbL_3log8MetadataL0_EEEp6OutputbNtNtB4_6marker4SendNtB2u_4SyncEL_EECsjBJLkJIqpmN_4fern.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtCsdxG2AMukdbL_3log8MetadataL0_EEEp6OutputbNtNtB4_6marker4SendNtB2t_4SyncEL_EECsjBJLkJIqpmN_4fern.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtCsdxG2AMukdbL_3log8MetadataL0_EEEp6OutputbNtNtB4_6marker4SendNtB2t_4SyncEL_EECsjBJLkJIqpmN_4fern.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.010.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  %.val8.i = load ptr, ptr %i.f, align 8, !alias.scope !222 ; 5 uses
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val9.i = load ptr, ptr %i.h, align 8, !alias.scope !222, !nonnull !3, !align !57, !noundef !3 ; 5 uses
  %i.i = load ptr, ptr %.val9.i, align 8, !invariant.load !3, !noalias !222 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  invoke void %i.i(ptr noundef nonnull %.val8.i)
          to label %bb.c unwind label %bb.e, !noalias !222

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !4, !invariant.load !3, !noalias !222 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtCsdxG2AMukdbL_3log8MetadataL0_EEEp6OutputbNtNtB4_6marker4SendNtB2t_4SyncEL_EECsjBJLkJIqpmN_4fern.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !5, !invariant.load !3, !noalias !222
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #14, !noalias !222
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtCsdxG2AMukdbL_3log8MetadataL0_EEEp6OutputbNtNtB4_6marker4SendNtB2t_4SyncEL_EECsjBJLkJIqpmN_4fern.exit.i

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !4, !invariant.load !3, !noalias !222 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.body.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !5, !invariant.load !3, !noalias !222
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #14, !noalias !222
  br label %.body.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtCsdxG2AMukdbL_3log8MetadataL0_EEEp6OutputbNtNtB4_6marker4SendNtB2t_4SyncEL_EECsjBJLkJIqpmN_4fern.exit.i: ; preds = %bb.d, %bb.c
  %i.u = icmp eq i64 %i.g, %i.d
  br i1 %i.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtCsdxG2AMukdbL_3log8MetadataL0_EEEp6OutputbNtNtB4_6marker4SendNtB2u_4SyncEL_EECsjBJLkJIqpmN_4fern.exit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph
  %i.v = add i64 %.sroa.0.1.i17, 1                ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.d
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.body.i:                                          ; preds = %bb.f, %bb.e
  %i.x = icmp eq i64 %i.g, %i.d
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i17 = phi i64 [ %i.v, %bb.g ], [ %i.g, %.body.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i17 ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8, !alias.scope !222
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val7.i = load ptr, ptr %i.z, align 8, !alias.scope !222, !nonnull !3, !align !57, !noundef !3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtCsdxG2AMukdbL_3log8MetadataL0_EEEp6OutputbNtNtB4_6marker4SendNtB2t_4SyncEL_EECsjBJLkJIqpmN_4fern(ptr %.val.i, ptr nonnull %.val7.i) #16
          to label %bb.g unwind label %bb.h, !noalias !222

._crit_edge:                                      ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !222
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtCsdxG2AMukdbL_3log8MetadataL0_EEEp6OutputbNtNtB4_6marker4SendNtB2u_4SyncEL_EECsjBJLkJIqpmN_4fern.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtCsdxG2AMukdbL_3log8MetadataL0_EEEp6OutputbNtNtB4_6marker4SendNtB2t_4SyncEL_EECsjBJLkJIqpmN_4fern.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerEBG_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerEBF_(ptr noalias noundef align 8 dereferenceable(96) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !225

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerEBF_(ptr noalias noundef align 8 dereferenceable(96) %i.m) #16
          to label %bb.c unwind label %bb.e, !inline_history !225

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !inline_history !225
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsjBJLkJIqpmN_4fern8builders11OutputInnerEBG_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputEBG_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputEBF_(ptr noalias noundef align 8 dereferenceable(128) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !226

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjBJLkJIqpmN_4fern8log_impl6OutputEBF_(ptr noalias noundef align 8 dereferenceable(128) %i.m) #16
          to label %bb.c unwind label %bb.e, !inline_history !226

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
