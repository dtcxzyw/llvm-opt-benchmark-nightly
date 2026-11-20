Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.029?download=true
inline.NumInlined: 1389
inline.NumDeleted: 677
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNCINvNtNtCsPYQCUnoTxQ_10collection6common14stoppable_task15spawn_stoppableNCINvMNtNtBQ_14update_workers19optimization_workerNtB21_13UpdateWorkers19launch_optimizationNCNCNvB1Y_20process_optimization00Es1_0bE0EINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBQ_:bb.a
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCsPYQCUnoTxQ_10collection6common14stoppable_task15spawn_stoppableNCINvMNtNtBK_14update_workers19optimization_workerNtB1V_13UpdateWorkers19launch_optimizationNCNCNvB1S_20process_optimization00Es1_0bE0EBK_.exit.i unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsPYQCUnoTxQ_10collection.exit3.i.i: ; preds = %bb.i, %bb.g, %bb.f
  %.pn.i.i = phi { ptr, i32 } [ %i.bd, %bb.i ], [ %i.au, %bb.g ], [ %i.au, %bb.f ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsPYQCUnoTxQ_10collection14update_workers19optimization_workerNtBJ_13UpdateWorkers19launch_optimizationNCNCNvBG_20process_optimization00Es1_0EBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %0) #26
          to label %bb.dg unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsPYQCUnoTxQ_10collection.exit3.i.i

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsPYQCUnoTxQ_10collection.exit3.i.i, %bb.g
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCsPYQCUnoTxQ_10collection6common14stoppable_task15spawn_stoppableNCINvMNtNtBK_14update_workers19optimization_workerNtB1V_13UpdateWorkers19launch_optimizationNCNCNvB1S_20process_optimization00Es1_0bE0EBK_.exit.i: ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsPYQCUnoTxQ_10collection.exit.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsPYQCUnoTxQ_10collection14update_workers19optimization_workerNtBJ_13UpdateWorkers19launch_optimizationNCNCNvBG_20process_optimization00Es1_0EBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %0)
          to label %_RNCINvNtNtCsPYQCUnoTxQ_10collection6common14stoppable_task15spawn_stoppableNCINvMNtNtB8_14update_workers19optimization_workerNtB1j_13UpdateWorkers19launch_optimizationNCNCNvB1g_20process_optimization00Es1_0bE0B8_.exit unwind label %bb.df

bb.k:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 7 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !1876, !nonnull !5, !noundef !5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store atomic i8 1, ptr %i.bh monotonic, align 1, !noalias !1876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(328) %i.aj, ptr noundef nonnull align 8 dereferenceable(344) %0, i64 328, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1891
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 144 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 160 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 256
  %i.bl = load <2 x ptr>, ptr %i.aj, align 16, !alias.scope !1890, !noalias !1876
  %.sroa.06.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.bm = load i64, ptr %.sroa.06.sroa.5.0..sroa_idx.i.i, align 16, !alias.scope !1890, !noalias !1876
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aj, i64 272
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 176
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.6.i.i)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 32, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.aj, i64 208
  %i.bs = load ptr, ptr %i.br, align 16, !alias.scope !1890, !noalias !1876, !nonnull !5, !noundef !5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.7.i.i)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.10.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.bu, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1891
  %i.bv = load ptr, ptr %i.bi, align 16, !alias.scope !1890, !noalias !1892, !nonnull !5, !noundef !5
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aj, i64 152
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !1890, !noalias !1892, !nonnull !5, !align !19, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1893
  %.val.i.i.i.i.i = load ptr, ptr %i.bj, align 16, !alias.scope !1890, !noalias !1892, !nonnull !5, !noundef !5 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.aj, i64 168 ; 5 uses
  %.val22.i.i.i.i.i = load ptr, ptr %i.by, align 8, !alias.scope !1890, !noalias !1892 ; 4 uses
  %i.bz = atomicrmw add ptr %.val.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !1893
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val22.i.i.i.i.i) ]
  %i.cb = atomicrmw add ptr %.val22.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !1892
  %i.cc = icmp slt i64 %i.cb, 0
  br i1 %i.cc, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.l
  store ptr %.val.i.i.i.i.i, ptr %i.h, align 8, !noalias !1893
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.val22.i.i.i.i.i, ptr %i.cd, align 8, !noalias !1893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1893
  store <2 x ptr> %i.bl, ptr %i.g, align 16, !noalias !1894
  %.sroa.0.i.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.bm, ptr %.sroa.0.i.sroa.5.0..sroa_idx.i.i, align 16, !noalias !1894
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) %i.bk, i64 16, i1 false), !noalias !1892
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 16 dereferenceable(56) %i.bn, i64 56, i1 false), !noalias !1876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 16 dereferenceable(32) %i.bo, i64 32, i1 false), !noalias !1876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 32, i1 false), !noalias !1876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1893
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.bs, ptr %i.ce, align 8, !noalias !1893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %i.bt, i64 88, i1 false), !noalias !1876
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1895
  %i.cf = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1697) 96, i64 noundef range(i64 1, 17) 8) #24, !noalias !1895 ; 3 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.p, label %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvMNtNtCsPYQCUnoTxQ_10collection14update_workers19optimization_workerNtB1j_13UpdateWorkers19launch_optimizationNCNCNvB1g_20process_optimization00Es1_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB1l_.exit.i.i.i, !prof !21

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #27
          to label %.noexc.i.i.i.i.i unwind label %bb.q, !noalias !1892

.noexc.i.i.i.i.i:                                 ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ch = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNCINvMNtNtCsPYQCUnoTxQ_10collection14update_workers19optimization_workerNtBN_13UpdateWorkers19launch_optimizationNCNCNvBK_20process_optimization00Es1_000EBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.b) #26
          to label %bb.s unwind label %bb.r, !noalias !1892

bb.r:                                             ; preds = %bb.q
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !1892
  unreachable

bb.s:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common16progress_tracker15ProgressTrackerECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #26
          to label %bb.u unwind label %bb.t, !noalias !1892

bb.t:                                             ; preds = %.critedge14.i.i.i.i.i, %.critedge13.i.i.i.i.i, %.critedge.i.i.i.i.i, %bb.u, %bb.s
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !1892
  unreachable

bb.u:                                             ; preds = %bb.s
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common6budget14ResourceBudgetECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #26
          to label %.critedge.i.i.i.i.i unwind label %bb.t, !noalias !1892

.critedge.i.i.i.i.i:                              ; preds = %bb.u
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common6budget14ResourcePermitECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e) #26
          to label %.critedge13.i.i.i.i.i unwind label %bb.t, !noalias !1892

.critedge13.i.i.i.i.i:                            ; preds = %.critedge.i.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #26
          to label %.critedge14.i.i.i.i.i unwind label %bb.t, !noalias !1892

.critedge14.i.i.i.i.i:                            ; preds = %.critedge13.i.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard14segment_holder6locked19LockedSegmentHolderECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h) #26
          to label %.body141.i.i unwind label %bb.t, !noalias !1892

_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvMNtNtCsPYQCUnoTxQ_10collection14update_workers19optimization_workerNtB1j_13UpdateWorkers19launch_optimizationNCNCNvB1g_20process_optimization00Es1_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB1l_.exit.i.i.i: ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !range !7, !invariant.load !5, !noalias !1892
  %i.cm = add nsw i64 %i.cl, -1
  %i.cn = and i64 %i.cm, -16
  %i.co = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cf, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !1892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1893
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bx, i64 112
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !5, !noalias !1892, !nonnull !5
  invoke void %i.cr(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.i, ptr noundef nonnull %i.cp, ptr noundef nonnull %.val.i.i.i.i.i, ptr noundef nonnull %.val22.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull %i.am, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noundef nonnull %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
          to label %bb.x unwind label %bb.v, !noalias !1876, !inline_history !1790

bb.v:                                             ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvMNtNtCsPYQCUnoTxQ_10collection14update_workers19optimization_workerNtB1j_13UpdateWorkers19launch_optimizationNCNCNvB1g_20process_optimization00Es1_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB1l_.exit.i.i.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body141.i.i

.body141.i.i:                                     ; preds = %bb.v, %.critedge14.i.i.i.i.i
  %eh.lpad-body142.i.i = phi { ptr, i32 } [ %i.cs, %bb.v ], [ %i.ch, %.critedge14.i.i.i.i.i ]
  %i.ct = extractvalue { ptr, i32 } %eh.lpad-body142.i.i, 0
  %i.cu = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ct)
          to label %.thread232.i.i.a unwind label %bb.w, !noalias !1876 ; 2 uses

bb.w:                                             ; preds = %.body141.i.i
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #23, !noalias !1876
  unreachable

.thread232.i.i.a:                                 ; preds = %.body141.i.i
  %i.cw = extractvalue { ptr, ptr } %i.cu, 0      ; 3 uses
  %i.cx = extractvalue { ptr, ptr } %i.cu, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cw), "nonnull"(ptr %i.cx) ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.cw, ptr %i.cy, align 8, !noalias !1891
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.cx, ptr %i.cz, align 8, !noalias !1891
  store i64 -2, ptr %i.ai, align 8, !noalias !1891
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1891
  br label %bb.y

bb.x:                                             ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvMNtNtCsPYQCUnoTxQ_10collection14update_workers19optimization_workerNtB1j_13UpdateWorkers19launch_optimizationNCNCNvB1g_20process_optimization00Es1_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB1l_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1893
  %.sroa.0145.0.copyload148.i.i = load ptr, ptr %i.i, align 8, !noalias !1891 ; 3 uses
  %.sroa.8.0..sroa_idx151.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.8.0.copyload152.i.i = load ptr, ptr %.sroa.8.0..sroa_idx151.i.i, align 8, !noalias !1891 ; 4 uses
  %.sroa.10.0..sroa_idx153.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.10.sroa.0.0.copyload221.i.i = load i64, ptr %.sroa.10.0..sroa_idx153.i.i, align 8, !noalias !1891 ; 2 uses
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx153.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx153.sroa_idx.i.i, i64 32, i1 false), !noalias !1891
  %.sroa.10.sroa.7.0..sroa.10.0..sroa_idx153.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.7.0..sroa.10.0..sroa_idx153.sroa_idx.i.i, i64 40, i1 false), !noalias !1891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1891
  %.sroa.5159.sroa.4.0..sroa.5159.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5159.sroa.4.0..sroa.5159.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.sroa.6.i.i, i64 32, i1 false), !noalias !1891
  %.sroa.5159.sroa.5.0..sroa.5159.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5159.sroa.5.0..sroa.5159.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.7.i.i, i64 40, i1 false), !noalias !1891
  store ptr %.sroa.0145.0.copyload148.i.i, ptr %i.ai, align 8, !noalias !1891
  %.sroa.4158.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  store ptr %.sroa.8.0.copyload152.i.i, ptr %.sroa.4158.0..sroa_idx.i.i, align 8, !noalias !1891
  %.sroa.5159.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.10.sroa.0.0.copyload221.i.i, ptr %.sroa.5159.0..sroa_idx.i.i, align 8, !noalias !1891
  %i.da = ptrtoint ptr %.sroa.0145.0.copyload148.i.i to i64
  %i.db = inttoptr i64 %.sroa.10.sroa.0.0.copyload221.i.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1891
  switch i64 %i.da, label %bb.ad [
    i64 -2, label %bb.y
    i64 -1, label %bb.z
    i64 -9223372036854775798, label %bb.aj
  ]

bb.y:                                             ; preds = %bb.x, %.thread232.i.i.a
  %i.dc = phi ptr [ %i.cw, %.thread232.i.i.a ], [ %.sroa.8.0.copyload152.i.i, %bb.x ] ; 5 uses
  %i.dd = phi ptr [ %i.cx, %.thread232.i.i.a ], [ %i.db, %bb.x ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1891
  store ptr %i.dc, ptr %i.z, align 8, !noalias !1891
  %i.de = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.dd, ptr %i.de, align 8, !noalias !1891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1891
  %i.df = invoke { ptr, i64 } @_RNvNtCslmvYCXbQjWR_6common5panic12downcast_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.z)
          to label %bb.av unwind label %bb.au, !noalias !1876 ; 2 uses

bb.z:                                             ; preds = %bb.x
  %i.dg = ptrtoint ptr %.sroa.8.0.copyload152.i.i to i64
  %i.dh = icmp ne ptr %.sroa.8.0.copyload152.i.i, null
  store i64 1, ptr %i.ah, align 8, !noalias !1891
  store i64 -1, ptr %i.ag, align 8, !noalias !1891
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 216
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !1890, !noalias !1876, !nonnull !5, !noundef !5
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = atomicrmw add ptr %i.dk, i64 %i.dg monotonic, align 8, !noalias !1876 ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  %i.dn = invoke noundef zeroext i1 @_RNvMs5_NtNtCsjZG7hsAZr3B_5tokio4sync5watchINtB5_6SenderuE4sendCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dm)
          to label %.noexc.i.i unwind label %bb.ab, !noalias !1876 ; 0 uses

.noexc.i.i:                                       ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1896
  %i.do = getelementptr inbounds nuw i8, ptr %i.aj, i64 232
  invoke void @_RNvMs1_NtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7boundedINtB5_6SenderNtNtCsPYQCUnoTxQ_10collection14update_handler15OptimizerSignalE8try_sendB14_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.do, i64 noundef 2, i64 undef)
          to label %_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers19optimization_workerNtB8_13UpdateWorkers20process_optimization00Ba_.exit.i.i unwind label %bb.ab, !noalias !1876

_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers19optimization_workerNtB8_13UpdateWorkers20process_optimization00Ba_.exit.i.i: ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1896
  %i.dp = zext i1 %i.dh to i8
  br label %bb.ac

.thread181.i.i:                                   ; preds = %.body.i.i
  br i1 %.sroa.035.2.lpad-body.i.i, label %bb.cr, label %.thread181.thread.thread.i.i

bb.aa:                                            ; preds = %bb.at
  br i1 %.sroa.034.3.i.i, label %.thread.i.i, label %bb.cp

bb.ab:                                            ; preds = %bb.ac, %.noexc.i.i, %bb.z
  %.sroa.029.1.i.i = phi i8 [ %.sroa.029.2.i.i, %bb.ac ], [ 1, %bb.z ], [ 1, %.noexc.i.i ]
  %.sroa.035.1.i.i = phi i1 [ false, %bb.ac ], [ true, %bb.z ], [ true, %.noexc.i.i ]
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsPYQCUnoTxQ_10collection.exit.i.i, %bb.ar, %bb.al, %_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers19optimization_workerNtB8_13UpdateWorkers20process_optimization00Ba_.exit.i.i
  %.sroa.029.2.i.i = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsPYQCUnoTxQ_10collection.exit.i.i ], [ 1, %bb.al ], [ 0, %bb.ar ], [ 1, %_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers19optimization_workerNtB8_13UpdateWorkers20process_optimization00Ba_.exit.i.i ] ; 5 uses
  %.sroa.0.0.i.i = phi i8 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsPYQCUnoTxQ_10collection.exit.i.i ], [ 0, %bb.al ], [ 0, %bb.ar ], [ %i.dp, %_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers19optimization_workerNtB8_13UpdateWorkers20process_optimization00Ba_.exit.i.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aj, i64 240 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !noalias !1891
  invoke void @_RNvMs1_NtCs5QaNqjAn6vc_5shard7trackerNtB5_13TrackerHandle6update(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dr, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.o)
          to label %bb.bh unwind label %bb.ab, !noalias !1876

bb.ad:                                            ; preds = %bb.x
  %1 = icmp ne ptr %.sroa.0145.0.copyload148.i.i, inttoptr (i64 -9223372036854775791 to ptr)
  call void @llvm.assume(i1 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ac, ptr noundef nonnull align 8 dereferenceable(96) %i.ai, i64 96, i1 false), !noalias !1891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1897
  store i64 0, ptr %i.k, align 8, !noalias !1897
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1897
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1897
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 1610612768, ptr %i.ds, align 8, !noalias !1897
  store ptr %i.k, ptr %i.j, align 8, !noalias !1897
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @92, ptr %i.dt, align 8, !noalias !1897
  %i.du = invoke noundef zeroext i1 @_RNvXsh_NtNtCs607s0NAIaWN_7segment6common15operation_errorNtB5_14OperationErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.af unwind label %bb.ae, !noalias !1898

bb.ae:                                            ; preds = %bb.ag, %bb.ad
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #26
          to label %.body.i.i unwind label %bb.ah, !noalias !1898

bb.af:                                            ; preds = %bb.ad
  br i1 %i.du, label %bb.ag, label %bb.ap, !prof !13

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #29
          to label %.noexc.i.i.i unwind label %bb.ae, !noalias !1898

.noexc.i.i.i:                                     ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !1898
  unreachable

bb.ai:                                            ; preds = %bb.ak
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #26
          to label %.thread181.thread.i.i unwind label %bb.an, !noalias !1876

bb.aj:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4158.0..sroa_idx.i.i, i64 24, i1 false), !noalias !1891
  %i.dy = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1891 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 6
  call void @llvm.assume(i1 %i.dz)
  %i.ea = icmp samesign ugt i64 %i.dy, 3
  br i1 %i.ea, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1891
  store ptr %i.af, ptr %i.ae, align 8, !noalias !1891
  %.sroa.457.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.457.0..sroa_idx.i.i, align 8, !noalias !1891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1891
  store ptr @4, ptr %i.ad, align 8, !noalias !1891
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 47, ptr %i.eb, align 8, !noalias !1891
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr @4, ptr %i.ec, align 8, !noalias !1891
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 47, ptr %i.ed, align 8, !noalias !1891
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr @3, ptr %i.ee, align 8, !noalias !1891
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsPYQCUnoTxQ_10collection(ptr noundef nonnull @1, ptr noundef nonnull %i.ae, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ad)
          to label %bb.am unwind label %bb.ai, !noalias !1876

bb.al:                                            ; preds = %bb.am, %bb.aj
  %.sroa.418.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.418.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !1891
  store i64 2, ptr %i.ah, align 8, !noalias !1891
  store i64 -1, ptr %i.ag, align 8, !noalias !1891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1891
  br label %bb.ac

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1891
  br label %bb.al

bb.an:                                            ; preds = %bb.cy, %bb.cx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECsPYQCUnoTxQ_10collection.exit136.i.i, %bb.cv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtB4_6marker4SendNtB2p_4SyncEL_EECsPYQCUnoTxQ_10collection.exit123.i.i, %bb.ct, %bb.cr, %bb.cq, %bb.co, %bb.cl, %bb.ch, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECsPYQCUnoTxQ_10collection.exit.i.i, %bb.cc, %bb.bw, %bb.bu, %bb.bp, %bb.bl, %bb.at, %.body.i.i, %bb.ai
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !1876
  unreachable

bb.ao:                                            ; preds = %bb.aq
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ao, %bb.ae
  %.sroa.035.2.lpad-body.i.i = phi i1 [ true, %bb.ao ], [ false, %bb.ae ]
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.eg, %bb.ao ], [ %i.dv, %bb.ae ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(96) %i.ac) #26
          to label %.thread181.i.i unwind label %bb.an, !noalias !1876

bb.ap:                                            ; preds = %bb.af
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.422.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !1891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1897
  store i64 3, ptr %i.ah, align 8, !noalias !1891
  %i.eh = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1891 ; 2 uses
  %i.ei = icmp ult i64 %i.eh, 6
  call void @llvm.assume(i1 %i.ei)
  %.not81.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not81.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1891
  store ptr %i.ac, ptr %i.ab, align 8, !noalias !1891
  %.sroa.461.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXsh_NtNtCs607s0NAIaWN_7segment6common15operation_errorNtB5_14OperationErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.461.0..sroa_idx.i.i, align 8, !noalias !1891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1891
  store ptr @4, ptr %i.aa, align 8, !noalias !1891
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 47, ptr %i.ej, align 8, !noalias !1891
  %i.ek = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr @4, ptr %i.ek, align 8, !noalias !1891
  %i.el = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 47, ptr %i.el, align 8, !noalias !1891
  %i.em = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr @6, ptr %i.em, align 8, !noalias !1891
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsPYQCUnoTxQ_10collection(ptr noundef nonnull @5, ptr noundef nonnull %i.ab, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aa)
          to label %bb.as unwind label %bb.ao, !noalias !1876

bb.ar:                                            ; preds = %bb.as, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ag, ptr noundef nonnull align 8 dereferenceable(96) %i.ac, i64 96, i1 false), !noalias !1891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1891
  br label %bb.ac

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1891
  br label %bb.ar

bb.at:                                            ; preds = %bb.co, %.thread188.i.i, %bb.au
  %.sroa.034.3.i.i = phi i1 [ false, %bb.co ], [ %.sroa.034.4.ph.i.i, %.thread188.i.i ], [ false, %bb.au ]
  %.sroa.035.3.i.i = phi i1 [ false, %bb.co ], [ true, %.thread188.i.i ], [ false, %bb.au ] ; 2 uses
  %.pn.i4.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.co ], [ %lpad.thr_comm.i.i, %.thread188.i.i ], [ %i.en, %bb.au ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsPYQCUnoTxQ_10collection(ptr nonnull %i.dc, ptr nonnull %i.dd) #26
          to label %bb.aa unwind label %bb.an, !noalias !1876

bb.au:                                            ; preds = %bb.ay, %bb.y
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.av:                                            ; preds = %bb.y
  %i.eo = extractvalue { ptr, i64 } %i.df, 0      ; 2 uses
  %.not82.i.i = icmp eq ptr %i.eo, null
  br i1 %.not82.i.i, label %.thread233.i.i, label %bb.aw

.thread233.i.i:                                   ; preds = %bb.av
  store ptr inttoptr (i64 1 to ptr), ptr %i.y, align 8, !noalias !1891, !captures !1899
  %i.ep = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 0, ptr %i.ep, align 8, !noalias !1891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1891
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.eq = extractvalue { ptr, i64 } %i.df, 1      ; 2 uses
  store ptr %i.eo, ptr %i.y, align 8, !noalias !1891, !captures !1899
  %i.er = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.eq, ptr %i.er, align 8, !noalias !1891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1891
  %i.es = icmp eq i64 %i.eq, 0
  br i1 %i.es, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %.thread233.i.i
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.sink225.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.ax ], [ @7, %bb.aw ]
  %.sink224.i.i = phi i64 [ 0, %bb.ax ], [ 2, %bb.aw ]
  store ptr %.sink225.i.i, ptr %i.x, align 8, !noalias !1891, !captures !1899
  %i.et = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sink224.i.i, ptr %i.et, align 8, !noalias !1891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1891
  store ptr %i.x, ptr %i.u, align 8, !noalias !1891
  %.sroa.465.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsPYQCUnoTxQ_10collection, ptr %.sroa.465.0..sroa_idx.i.i, align 8, !noalias !1891
  %i.eu = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.y, ptr %i.eu, align 8, !noalias !1891
  %.sroa.469.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsPYQCUnoTxQ_10collection, ptr %.sroa.469.0..sroa_idx.i.i, align 8, !noalias !1891
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @8, ptr noundef nonnull %i.u)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsPYQCUnoTxQ_10collection.exit.i.i unwind label %bb.au, !noalias !1876

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsPYQCUnoTxQ_10collection.exit.i.i: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !1891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1891
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %bb.az unwind label %bb.co, !noalias !1876

.thread188.i.i:                                   ; preds = %bb.bb, %bb.az
  %.sroa.034.4.ph.i.i = phi i1 [ false, %bb.az ], [ true, %bb.bb ]
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.az:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsPYQCUnoTxQ_10collection.exit.i.i
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.428.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !1891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1891
  store i64 3, ptr %i.ah, align 8, !noalias !1891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !1891
  invoke void @_RINvMNtNtCs607s0NAIaWN_7segment6common15operation_errorNtB3_14OperationError13service_errorNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.ba unwind label %.thread188.i.i, !noalias !1876

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ag, ptr noundef nonnull align 8 dereferenceable(96) %i.s, i64 96, i1 false), !noalias !1891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1891
  %i.ev = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1891 ; 2 uses
  %i.ew = icmp ult i64 %i.ev, 6
  call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp samesign ugt i64 %i.ev, 1
  br i1 %i.ex, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1891
  store ptr %i.x, ptr %i.q, align 8, !noalias !1891
  %.sroa.475.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsPYQCUnoTxQ_10collection, ptr %.sroa.475.0..sroa_idx.i.i, align 8, !noalias !1891
  %i.ey = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.y, ptr %i.ey, align 8, !noalias !1891
  %.sroa.479.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsPYQCUnoTxQ_10collection, ptr %.sroa.479.0..sroa_idx.i.i, align 8, !noalias !1891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1891
  store ptr @4, ptr %i.p, align 8, !noalias !1891
  %i.ez = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 47, ptr %i.ez, align 8, !noalias !1891
  %i.fa = getelementptr inbounds nuw i8, ptr %i.p, i64 16
end_hunk_0
