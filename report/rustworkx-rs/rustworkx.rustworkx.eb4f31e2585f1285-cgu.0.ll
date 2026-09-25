Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67644
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RNvNtCskcxRuJ53GpR_9rustworkx10centrality38___pyfunction_digraph_degree_centrality:bb.a
  br label %.body.i

bb.l:                                             ; preds = %bb.f, %.noexc23
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.l, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.az, %bb.l ], [ %lpad.phi.i.i, %bb.k ] ; 2 uses
  %.val7.i = load i64, ptr %i.e, align 8, !noalias !95014 ; 2 uses
  %i.ba = icmp eq i64 %.val7.i, 0
  br i1 %i.ba, label %.body.thread, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %.body.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val8.i = load ptr, ptr %i.bb, align 8, !noalias !95014, !nonnull !67, !noundef !67
  %i.bc = shl nuw i64 %.val7.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.bc, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !95014
  br label %.body.thread

bb.m:                                             ; preds = %bb.g
  %.sroa.5.sroa.0.0.copyload37 = load ptr, ptr %i.d, align 8, !noalias !95013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42.0..sroa_idx.i.i.i, i64 56, i1 false), !noalias !95013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !95016
  %.val.i = load i64, ptr %i.e, align 8, !noalias !95014 ; 2 uses
  %i.bd = icmp eq i64 %.val.i, 0
  br i1 %i.bd, label %bb.n, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i10.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i10.i: ; preds = %bb.m
  %i.be = shl nuw i64 %.val.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !95014
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !95014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %.sroa.5.sroa.0.0.copyload37, ptr %i.i, align 8
  %.sroa.5.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.6, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !95021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !95022
  %i.bf = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsaW_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB8_17CentralityMappingNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 88) acquire, align 8, !noalias !95023
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_RNvXsaU_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_17CentralityMappingNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i, label %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators17CentralityMappingE15get_or_try_initB1p_.exit.i.i.i.i, !prof !77

_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators17CentralityMappingE15get_or_try_initB1p_.exit.i.i.i.i: ; preds = %bb.n
  invoke fastcc void @_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators17CentralityMappingE8try_initB1p_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
          to label %.noexc.i.i.i unwind label %bb.p, !noalias !95022

.noexc.i.i.i:                                     ; preds = %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators17CentralityMappingE15get_or_try_initB1p_.exit.i.i.i.i
  %.pre.i.i.i.i = load i64, ptr %i.a, align 8, !range !68, !noalias !95022
  %i.bh = trunc nuw i64 %.pre.i.i.i.i to i1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.bh, label %bb.o, label %.noexc._crit_edge.i.i.i, !prof !85

.noexc._crit_edge.i.i.i:                          ; preds = %.noexc.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.bi, align 8, !noalias !95022
  br label %_RNvXsaU_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_17CentralityMappingNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i

bb.o:                                             ; preds = %.noexc.i.i.i
  invoke void @_RNvNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_object23type_object_init_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @922, i64 noundef 17) #61
          to label %.noexc2.i.i.i unwind label %bb.p, !noalias !95022

.noexc2.i.i.i:                                    ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o, %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators17CentralityMappingE15get_or_try_initB1p_.exit.i.i.i.i
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo312pyclass_init18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx9iterators17CentralityMappingEEB1B_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.i) #63, !noalias !95024
  br label %.body.thread

_RNvXsaU_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_17CentralityMappingNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i: ; preds = %.noexc._crit_edge.i.i.i, %bb.n
  %i.bj = phi ptr [ %.pre.i.i.i, %.noexc._crit_edge.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvXsaW_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB8_17CentralityMappingNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 80), %bb.n ]
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !95022, !nonnull !67, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !95022
  invoke fastcc void @_RNvMNtCsi0YPOvDEjiZ_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx9iterators17CentralityMappingE27create_class_object_of_typeB15_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.i, ptr noundef %i.bk)
          to label %.noexc26 unwind label %.body

.noexc26:                                         ; preds = %_RNvXsaU_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_17CentralityMappingNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i
  %i.bl = load i64, ptr %i.b, align 8, !range !68, !noalias !95021, !noundef !67
  %i.bm = trunc nuw i64 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.530.8.copyload32 = load ptr, ptr %i.bn, align 8, !noalias !95025
  br i1 %i.bm, label %bb.q, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit27

bb.q:                                             ; preds = %.noexc26
  %.sroa.10.8..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.440.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.8..sroa_idx34, i64 56, i1 false)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit27

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit27: ; preds = %.noexc26, %bb.q
  %.sink = phi i64 [ 1, %bb.q ], [ 0, %.noexc26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !95021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.530.8.copyload32, ptr %i.bo, align 8
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.6)
  %i.bp = atomicrmw sub ptr %i.w, i64 1 release, align 8 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %.noexc18, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx10centrality39___pyfunction_graph_closeness_centrality(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [64 x i8], align 8                ; 11 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [1 x i8], align 1                 ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [64 x i8], align 8                ; 4 uses
  %i.r = alloca [72 x i8], align 8                ; 6 uses
  %i.s = alloca [64 x i8], align 8                ; 4 uses
  %i.t = alloca [72 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [72 x i8], align 8                ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = alloca [64 x i8], align 8                ; 5 uses
  %i.y = alloca [72 x i8], align 8                ; 7 uses
  %i.z = alloca [72 x i8], align 8                ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = alloca [72 x i8], align 8               ; 9 uses
  %i.ac = alloca [72 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2387, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.ad, i64 noundef 3)
  %i.ae = load i64, ptr %i.ac, align 8, !range !68, !noundef !67
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %i.ag, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit52

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.ai = load ptr, ptr %i.ad, align 8, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !95189
  call fastcc void @_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.u, ptr noundef nonnull %i.ai), !inline_history !53
  %i.aj = load ptr, ptr %i.u, align 8, !noalias !95189, !noundef !67 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !95189, !nonnull !67, !noundef !67 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !95189
  br i1 %.not.i.i.i, label %.noexc37, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @_RNvXs1_NtNtCsi0YPOvDEjiZ_4pyo33err10cast_errorNtB7_5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.am, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.al), !inline_history !53
  br label %.noexc36

.noexc37:                                         ; preds = %.noexc
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 104 ; 4 uses
  %i.ao = call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.an), !inline_history !53
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ap), !inline_history !53
  br label %.noexc36

.noexc36:                                         ; preds = %bb.d, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.w), !inline_history !53
  %.sroa.022.0.copyload = load ptr, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.022.0.copyload, ptr %i.ar, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit52

.body.thread78:                                   ; preds = %_RNvXsaU_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_17CentralityMappingNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i, %bb.o, %bb.k, %bb.j, %bb.g, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread:                                     ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i, %.thread.i.i, %.body9.i.i, %.body.sink.split.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i24.i.i, %bb.ae, %bb.an, %.body.thread78
  %eh.lpad-body75 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread78 ], [ %i.gb, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i ], [ %i.gb, %.thread.i.i ], [ %eh.lpad-body10.i.i, %.body9.i.i ], [ %i.dw, %.body.sink.split.i.i.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i ], [ %i.dx, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.fe, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i24.i.i ], [ %i.fe, %bb.ae ], [ %lpad.thr_comm.i.i.i, %bb.an ]
  %i.as = atomicrmw sub ptr %i.an, i64 1 release, align 8 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body75

bb.e:                                             ; preds = %.noexc37
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.at, ptr %i.au, align 8
  store i64 0, ptr %i.z, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !67 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !95190
  invoke void @_RNvXsc_NtNtCsi0YPOvDEjiZ_4pyo35types10boolobjectbNtNtB9_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noundef nonnull %i.aw)
          to label %.noexc40 unwind label %.body.thread78

.noexc40:                                         ; preds = %bb.f
  %i.ax = load i8, ptr %i.t, align 8, !range !69, !noalias !95190, !noundef !67
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.g, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.g:                                             ; preds = %.noexc40
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !95190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.az, i64 64, i1 false), !noalias !95190
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2384, i64 noundef range(i64 5, 17) 11, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.s)
          to label %bb.h unwind label %.body.thread78

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 1, ptr %i.bb, align 1
  store i8 0, ptr %i.y, align 8
  br label %bb.i

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.noexc40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !range !69, !noalias !95190, !noundef !67
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 %i.bd, ptr %i.be, align 1
  store i8 0, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !95190
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !95190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !95190
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bg, ptr noundef nonnull align 8 dereferenceable(64) %i.bf, i64 64, i1 false)
  br label %bb.ap

bb.i:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !range !69, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !95191)
  %.not.i42 = icmp eq ptr %i.bk, null
  br i1 %.not.i42, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !95192)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !95193
  invoke void @_RNvXsq_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numjNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noundef nonnull %i.bk)
          to label %.noexc44 unwind label %.body.thread78

.noexc44:                                         ; preds = %bb.j
  %i.bl = load i64, ptr %i.r, align 8, !range !68, !noalias !95193, !noundef !67
  %i.bm = trunc nuw i64 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  br i1 %i.bm, label %bb.k, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.k:                                             ; preds = %.noexc44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !95193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.bn, i64 64, i1 false), !noalias !95193
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2385, i64 noundef range(i64 1, 19) 18, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.q)
          to label %bb.l unwind label %.body.thread78

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 50, ptr %i.bp, align 8, !alias.scope !95191, !noalias !95194
  br label %bb.m

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.noexc44
  %i.bq = load i64, ptr %i.bn, align 8, !noalias !95193, !noundef !67
  %i.br = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !alias.scope !95195, !noalias !95196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !95193
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !95193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !95193
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.028.0.copyload = load i64, ptr %i.bs, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.431.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.429.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.028.0.copyload, ptr %i.bt, align 8
  br label %bb.ap

bb.m:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !95197)
  call void @llvm.experimental.noalias.scope.decl(metadata !95198)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !95199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !95199
  store ptr %i.at, ptr %i.p, align 8, !noalias !95200
  store i8 %i.bi, ptr %i.o, align 1, !noalias !95200
  %i.bw = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.val.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !95201, !noalias !95202, !nonnull !67, !noundef !67 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.val1.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !95201, !noalias !95202, !noundef !67 ; 2 uses
  %.idx = shl nuw nsw i64 %.val1.i.i.i, 4
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.idx ; 2 uses
  %.not.i.i.i.i124 = icmp eq i64 %.val1.i.i.i, 0
  br i1 %.not.i.i.i.i124, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, %i.ca
  br i1 %.not.i.i.i.i, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %i.bz = phi ptr [ %i.ca, %bb.n ], [ %i.by, %bb.m ]
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -16 ; 4 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !noalias !95203, !noundef !67
  %.not.i.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i, label %bb.n, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.lr.ph
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %.val.i.i.i to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = lshr i64 %i.cd, 4                       ; 3 uses
  %i.cf = and i64 %i.ce, 4294967295               ; 3 uses
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cg, 3                ; 2 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !95204
  %i.ci = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ch, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !95204 ; 5 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.o, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.o:                                             ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.ch) #61
          to label %.noexc47 unwind label %.body.thread78

.noexc47:                                         ; preds = %bb.o
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.not.i.i.i46 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i46, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %xtraiter = and i64 %i.ce, 7                    ; 3 uses
  %i.ck = icmp samesign ult i64 %i.cf, 8
  br i1 %i.ck, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ce, 4294967288
  br label %.lr.ph.i.i.i.i

._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa:    ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.022.i.i.i.i.epil.init = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.preheader ], [ %i.ct, %._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod130 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod130)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.022.i.i.i.i.epil = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.epil ], [ %.sroa.0.022.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  store i32 0, ptr %.sroa.0.022.i.i.i.i.epil, align 4, !noalias !95205
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.epil, i64 8 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !95062

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.0.lcssa29.i.i.i.i = phi ptr [ %i.ci, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.ct, %._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa ], [ %i.cl, %.lr.ph.i.i.i.i.epil ]
  store i32 0, ptr %.sroa.0.0.lcssa29.i.i.i.i, align 4, !noalias !95205
  br label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.022.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.preheader.new ], [ %i.ct, %.lr.ph.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  store i32 0, ptr %.sroa.0.022.i.i.i.i, align 4, !noalias !95205
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 8
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx10centrality39___pyfunction_graph_closeness_centrality:bb.a
  %i.fx = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.fx, label %.body9.i.i, label %.body.sink.split.i.i.i

.body.sink.split.i.i.i:                           ; preds = %bb.ak, %bb.aj
  %eh.lpad-body25.ph.i.i.i = phi { ptr, i32 } [ %i.fz, %bb.ak ], [ %i.fw, %bb.aj ]
  %i.fy = shl nuw i64 %.sroa.0.0.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i, i64 noundef %i.fy, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !95241
  br label %.body9.i.i

bb.ak:                                            ; preds = %bb.ag
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.ga, label %.body9.i.i, label %.body.sink.split.i.i.i

.body9.i.i:                                       ; preds = %bb.ak, %.body.sink.split.i.i.i, %bb.aj
  %eh.lpad-body10.i.i = phi { ptr, i32 } [ %eh.lpad-body25.ph.i.i.i, %.body.sink.split.i.i.i ], [ %i.fz, %bb.ak ], [ %i.fw, %bb.aj ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e) #63, !noalias !95239
  br label %.body.thread

.thread.i.i:                                      ; preds = %bb.af, %_RINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality20closeness_centralityRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2j_5types3any5PyAnyEB2e_NtB1e_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gc = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.gc, label %.body.thread, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i: ; preds = %.thread.i.i
  %i.gd = shl nuw i64 %.sroa.0.0.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i, i64 noundef %i.gd, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !95244
  br label %.body.thread

bb.al:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !95238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !95245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !95246
  %i.ge = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsaW_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB8_17CentralityMappingNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 88) acquire, align 8, !noalias !95247
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %_RNvXsaU_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_17CentralityMappingNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i, label %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators17CentralityMappingE15get_or_try_initB1p_.exit.i.i.i.i, !prof !77

_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators17CentralityMappingE15get_or_try_initB1p_.exit.i.i.i.i: ; preds = %bb.al
  invoke fastcc void @_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators17CentralityMappingE8try_initB1p_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.b)
          to label %.noexc.i.i.i unwind label %bb.an, !noalias !95246

.noexc.i.i.i:                                     ; preds = %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators17CentralityMappingE15get_or_try_initB1p_.exit.i.i.i.i
  %.pre.i.i.i.i = load i64, ptr %i.b, align 8, !range !68, !noalias !95246
  %i.gg = trunc nuw i64 %.pre.i.i.i.i to i1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.gg, label %bb.am, label %.noexc._crit_edge.i.i.i, !prof !85

.noexc._crit_edge.i.i.i:                          ; preds = %.noexc.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.gh, align 8, !noalias !95246
  br label %_RNvXsaU_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_17CentralityMappingNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i

bb.am:                                            ; preds = %.noexc.i.i.i
  invoke void @_RNvNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_object23type_object_init_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.gh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @922, i64 noundef 17) #61
          to label %.noexc2.i.i.i unwind label %bb.an, !noalias !95246

.noexc2.i.i.i:                                    ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.am, %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators17CentralityMappingE15get_or_try_initB1p_.exit.i.i.i.i
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo312pyclass_init18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx9iterators17CentralityMappingEEB1B_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.x) #63, !noalias !95248
  br label %.body.thread

_RNvXsaU_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_17CentralityMappingNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i: ; preds = %.noexc._crit_edge.i.i.i, %bb.al
  %i.gi = phi ptr [ %.pre.i.i.i, %.noexc._crit_edge.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvXsaW_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB8_17CentralityMappingNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 80), %bb.al ]
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !95246, !nonnull !67, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !95246
  invoke fastcc void @_RNvMNtCsi0YPOvDEjiZ_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx9iterators17CentralityMappingE27create_class_object_of_typeB15_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.x, ptr noundef %i.gj)
          to label %.noexc50 unwind label %.body.thread78

.noexc50:                                         ; preds = %_RNvXsaU_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_17CentralityMappingNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i
  %i.gk = load i64, ptr %i.c, align 8, !range !68, !noalias !95245, !noundef !67
  %i.gl = trunc nuw i64 %i.gk to i1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.454.8.copyload55 = load ptr, ptr %i.gm, align 8, !noalias !95249
  br i1 %i.gl, label %bb.ao, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit51

bb.ao:                                            ; preds = %.noexc50
  %.sroa.8.8..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.458.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.8..sroa_idx56, i64 56, i1 false)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit51

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit51: ; preds = %.noexc50, %bb.ao
  %.sink = phi i64 [ 1, %bb.ao ], [ 0, %.noexc50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !95245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.454.8.copyload55, ptr %i.gn, align 8
  store i64 %.sink, ptr %0, align 8
  %i.go = atomicrmw sub ptr %i.an, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit52

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit52: ; preds = %bb.b, %.noexc36, %bb.ap, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  ret void

bb.ap:                                            ; preds = %bb.l, %bb.h
  store i64 1, ptr %0, align 8
  %i.gp = atomicrmw sub ptr %i.an, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit52
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx10centrality41___pyfunction_digraph_closeness_centrality(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [64 x i8], align 8                ; 11 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [1 x i8], align 1                 ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [64 x i8], align 8                ; 4 uses
  %i.r = alloca [72 x i8], align 8                ; 6 uses
  %i.s = alloca [64 x i8], align 8                ; 4 uses
  %i.t = alloca [72 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [72 x i8], align 8                ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = alloca [64 x i8], align 8                ; 5 uses
  %i.y = alloca [72 x i8], align 8                ; 7 uses
  %i.z = alloca [72 x i8], align 8                ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = alloca [72 x i8], align 8               ; 9 uses
  %i.ac = alloca [72 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2389, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.ad, i64 noundef 3)
  %i.ae = load i64, ptr %i.ac, align 8, !range !68, !noundef !67
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %i.ag, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit52

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.ai = load ptr, ptr %i.ad, align 8, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !95413
  call fastcc void @_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.u, ptr noundef nonnull %i.ai), !inline_history !56
  %i.aj = load ptr, ptr %i.u, align 8, !noalias !95413, !noundef !67 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !95413, !nonnull !67, !noundef !67 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !95413
  br i1 %.not.i.i.i, label %.noexc37, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @_RNvXs1_NtNtCsi0YPOvDEjiZ_4pyo33err10cast_errorNtB7_5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.am, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.al), !inline_history !56
  br label %.noexc36

.noexc37:                                         ; preds = %.noexc
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 152 ; 4 uses
  %i.ao = call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.an), !inline_history !56
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ap), !inline_history !56
  br label %.noexc36

.noexc36:                                         ; preds = %bb.d, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.w), !inline_history !56
  %.sroa.022.0.copyload = load ptr, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.022.0.copyload, ptr %i.ar, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit52

.body.thread78:                                   ; preds = %_RNvXsaU_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_17CentralityMappingNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i, %bb.o, %bb.k, %bb.j, %bb.g, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread:                                     ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i, %.thread.i.i, %.body9.i.i, %.body.sink.split.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i24.i.i, %bb.ae, %bb.an, %.body.thread78
  %eh.lpad-body75 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread78 ], [ %i.gb, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i ], [ %i.gb, %.thread.i.i ], [ %eh.lpad-body10.i.i, %.body9.i.i ], [ %i.dw, %.body.sink.split.i.i.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i ], [ %i.dx, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.fe, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i24.i.i ], [ %i.fe, %bb.ae ], [ %lpad.thr_comm.i.i.i, %bb.an ]
  %i.as = atomicrmw sub ptr %i.an, i64 1 release, align 8 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body75

bb.e:                                             ; preds = %.noexc37
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.at, ptr %i.au, align 8
  store i64 0, ptr %i.z, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !67 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !95414
  invoke void @_RNvXsc_NtNtCsi0YPOvDEjiZ_4pyo35types10boolobjectbNtNtB9_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noundef nonnull %i.aw)
          to label %.noexc40 unwind label %.body.thread78

.noexc40:                                         ; preds = %bb.f
  %i.ax = load i8, ptr %i.t, align 8, !range !69, !noalias !95414, !noundef !67
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.g, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.g:                                             ; preds = %.noexc40
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !95414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.az, i64 64, i1 false), !noalias !95414
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2384, i64 noundef range(i64 5, 17) 11, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.s)
          to label %bb.h unwind label %.body.thread78

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 1, ptr %i.bb, align 1
  store i8 0, ptr %i.y, align 8
  br label %bb.i

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.noexc40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !range !69, !noalias !95414, !noundef !67
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 %i.bd, ptr %i.be, align 1
  store i8 0, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !95414
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !95414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !95414
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bg, ptr noundef nonnull align 8 dereferenceable(64) %i.bf, i64 64, i1 false)
  br label %bb.ap

bb.i:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !range !69, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !95415)
  %.not.i42 = icmp eq ptr %i.bk, null
  br i1 %.not.i42, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !95416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !95417
  invoke void @_RNvXsq_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numjNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noundef nonnull %i.bk)
          to label %.noexc44 unwind label %.body.thread78

.noexc44:                                         ; preds = %bb.j
  %i.bl = load i64, ptr %i.r, align 8, !range !68, !noalias !95417, !noundef !67
  %i.bm = trunc nuw i64 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  br i1 %i.bm, label %bb.k, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.k:                                             ; preds = %.noexc44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !95417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.bn, i64 64, i1 false), !noalias !95417
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2385, i64 noundef range(i64 1, 19) 18, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.q)
          to label %bb.l unwind label %.body.thread78

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 50, ptr %i.bp, align 8, !alias.scope !95415, !noalias !95418
  br label %bb.m

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.noexc44
  %i.bq = load i64, ptr %i.bn, align 8, !noalias !95417, !noundef !67
  %i.br = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !alias.scope !95419, !noalias !95420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !95417
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !95417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !95417
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.028.0.copyload = load i64, ptr %i.bs, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.431.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.429.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.028.0.copyload, ptr %i.bt, align 8
  br label %bb.ap

bb.m:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !95421)
  call void @llvm.experimental.noalias.scope.decl(metadata !95422)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !95423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !95423
  store ptr %i.at, ptr %i.p, align 8, !noalias !95424
  store i8 %i.bi, ptr %i.o, align 1, !noalias !95424
  %i.bw = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.val.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !95425, !noalias !95426, !nonnull !67, !noundef !67 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.val1.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !95425, !noalias !95426, !noundef !67 ; 2 uses
  %.idx = shl nuw nsw i64 %.val1.i.i.i, 4
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.idx ; 2 uses
  %.not.i.i.i.i124 = icmp eq i64 %.val1.i.i.i, 0
  br i1 %.not.i.i.i.i124, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, %i.ca
  br i1 %.not.i.i.i.i, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %i.bz = phi ptr [ %i.ca, %bb.n ], [ %i.by, %bb.m ]
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -16 ; 4 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !noalias !95427, !noundef !67
  %.not.i.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i, label %bb.n, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.lr.ph
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %.val.i.i.i to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = lshr i64 %i.cd, 4                       ; 3 uses
  %i.cf = and i64 %i.ce, 4294967295               ; 3 uses
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cg, 3                ; 2 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !95428
  %i.ci = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ch, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !95428 ; 5 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.o, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.o:                                             ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.ch) #61
          to label %.noexc47 unwind label %.body.thread78

.noexc47:                                         ; preds = %bb.o
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.not.i.i.i46 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i46, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %xtraiter = and i64 %i.ce, 7                    ; 3 uses
  %i.ck = icmp samesign ult i64 %i.cf, 8
  br i1 %i.ck, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ce, 4294967288
  br label %.lr.ph.i.i.i.i

._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa:    ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.022.i.i.i.i.epil.init = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.preheader ], [ %i.ct, %._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod130 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod130)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.022.i.i.i.i.epil = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.epil ], [ %.sroa.0.022.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  store i32 0, ptr %.sroa.0.022.i.i.i.i.epil, align 4, !noalias !95429
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.epil, i64 8 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !95286

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.0.lcssa29.i.i.i.i = phi ptr [ %i.ci, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.ct, %._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa ], [ %i.cl, %.lr.ph.i.i.i.i.epil ]
  store i32 0, ptr %.sroa.0.0.lcssa29.i.i.i.i, align 4, !noalias !95429
  br label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.thread.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.022.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.preheader.new ], [ %i.ct, %.lr.ph.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  store i32 0, ptr %.sroa.0.022.i.i.i.i, align 4, !noalias !95429
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 8
end_hunk_1
