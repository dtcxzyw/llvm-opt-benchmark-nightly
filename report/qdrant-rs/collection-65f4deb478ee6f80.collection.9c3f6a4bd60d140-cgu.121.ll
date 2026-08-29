Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.121?download=true
inline.NumInlined: 273
inline.NumDeleted: 130
begin_hunk_0_@_RNSNvYNCNvNtCsPYQCUnoTxQ_10collection18optimizers_builder26live_vector_names_provider0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableBa_:bb.a
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.body.i unwind label %bb.d, !noalias !300

bb.c:                                             ; preds = %.noexc.i
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.e, !noalias !297

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !300
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.k, %bb.b ]
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %i.n = load ptr, ptr %i.c, align 8, !alias.scope !314, !noalias !297, !nonnull !5, !noundef !5
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !315
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtCsPYQCUnoTxQ_10collection18optimizers_builder26live_vector_names_provider0EBH_.exit.i

bb.f:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEE9drop_slowB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtCsPYQCUnoTxQ_10collection18optimizers_builder26live_vector_names_provider0EBH_.exit.i unwind label %bb.i, !noalias !297

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !300
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.q = load ptr, ptr %i.c, align 8, !alias.scope !325, !noalias !297, !nonnull !5, !noundef !5
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !326
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %_RNvYNCNvNtCsPYQCUnoTxQ_10collection18optimizers_builder26live_vector_names_provider0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceB8_.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEE9drop_slowB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #22, !noalias !297
  br label %_RNvYNCNvNtCsPYQCUnoTxQ_10collection18optimizers_builder26live_vector_names_provider0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceB8_.exit

bb.i:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !297
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtCsPYQCUnoTxQ_10collection18optimizers_builder26live_vector_names_provider0EBH_.exit.i: ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RNvYNCNvNtCsPYQCUnoTxQ_10collection18optimizers_builder26live_vector_names_provider0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceB8_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMNtCsPYQCUnoTxQ_10collection18optimizers_builderNtB2_16OptimizersConfig19get_number_segments(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = tail call noundef i64 @_RNvNtNtCs5QaNqjAn6vc_5shard10optimizers6config19get_number_segments(i64 noundef %i.b)
  ret i64 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvNtCsPYQCUnoTxQ_10collection18optimizers_builder16build_optimizers(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %6, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [384 x i8], align 8               ; 6 uses
  %i.e = alloca [344 x i8], align 8               ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [336 x i8], align 8               ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [336 x i8], align 8               ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [216 x i8], align 8               ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [368 x i8], align 8               ; 4 uses
  %i.r = alloca [216 x i8], align 8               ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [328 x i8], align 8               ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [216 x i8], align 8               ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [320 x i8], align 8               ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = alloca [216 x i8], align 8              ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 5 uses
  %i.ae = alloca [320 x i8], align 8              ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %i.ag = alloca [216 x i8], align 8              ; 5 uses
  %i.ah = alloca [216 x i8], align 8              ; 9 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [24 x i8], align 8               ; 8 uses
  %i.ak = alloca [8 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path4joinReECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 8)
          to label %bb.c unwind label %.thread

bb.b:                                             ; preds = %bb.ce
  br i1 %.sroa.017.1.ph, label %._crit_edge, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEEB1X_.exit

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.ak, align 8, !alias.scope !327
  br label %bb.cf

.thread:                                          ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  invoke void @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path4joinReECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 13)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_RNvNtCsPYQCUnoTxQ_10collection18optimizers_builder30build_segment_optimizer_config(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(address) dereferenceable(216) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %5, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %7)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %2, ptr %i.ap, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !332
  %i.aq = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 385) 24, i64 noundef range(i64 1, 9) 8) #19, !noalias !332 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.h, label %bb.l, !prof !335

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !336
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.j, label %bb.cc

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEE9drop_slowB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #22
          to label %bb.cc unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

.body70:                                          ; preds = %bb.l
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.l:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtNtCs5QaNqjAn6vc_5shard10optimizers6configNtB5_22SegmentOptimizerConfig22with_live_vector_names(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.ah, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(216) %i.ag, ptr noundef nonnull %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @30)
          to label %bb.m unwind label %.body70

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.ax = invoke noundef i64 @_RNvNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer24max_num_indexing_threads(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.ah)
          to label %bb.n unwind label %.body.thread ; 2 uses

.body.thread147:                                  ; preds = %bb.ai, %bb.aa, %bb.ca, %bb.ae
  %.pn52.pn.pn.ph = phi { ptr, i32 } [ %i.ci, %bb.aa ], [ %.pn.ph, %bb.ca ], [ %i.ck, %bb.ae ], [ %i.cq, %bb.ai ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cd, i64 noundef 64, i64 noundef 8) #19
  br label %bb.cb

.body:                                            ; preds = %bb.al, %.body66
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cd, i64 noundef 64, i64 noundef 8) #19
  br i1 %.sroa.013.3, label %bb.cb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEEB1X_.exit

.body.thread:                                     ; preds = %bb.m, %bb.s, %bb.y
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ba = load i8, ptr %i.az, align 8, !range !296, !noundef !5
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !range !345, !noundef !5
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.be = load i64, ptr %i.bd, align 8            ; 4 uses
  %i.bf = trunc nuw i64 %i.bc to i1               ; 2 uses
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bg = icmp eq i64 %i.be, 0
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.q
  %.sroa.020.0 = phi { i64, i1 } [ { i64 10240000, i1 false }, %bb.n ], [ %i.bi, %bb.q ], [ { i64 -1024, i1 true }, %bb.o ] ; 2 uses
  %i.bh = and i8 %i.ba, 1
  %or.cond5.not = icmp eq i8 %i.bh, 0
  br i1 %or.cond5.not, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bi = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.be, i64 1024)
  br label %bb.p

bb.r:                                             ; preds = %bb.p
  %i.bj = extractvalue { i64, i1 } %.sroa.020.0, 0
  %i.bk = extractvalue { i64, i1 } %.sroa.020.0, 1
  br i1 %i.bk, label %bb.t, label %bb.s, !prof !335

bb.s:                                             ; preds = %bb.t, %bb.r, %bb.p
  %.sroa.0.0 = phi i64 [ 0, %bb.p ], [ -1, %bb.t ], [ %i.bj, %bb.r ]
  %i.bl = invoke { i32, i32 } @_RNvMs1_NtCsPYQCUnoTxQ_10collection6configNtB5_16CollectionParams21get_deferred_point_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %5, i64 noundef %.sroa.0.0)
          to label %bb.u unwind label %.body.thread ; 2 uses

bb.t:                                             ; preds = %bb.r
  br label %bb.s

bb.u:                                             ; preds = %bb.s
  %i.bm = extractvalue { i32, i32 } %i.bl, 0
  %i.bn = extractvalue { i32, i32 } %i.bl, 1
  %i.bo = icmp eq i64 %i.be, 0
  %. = select i1 %i.bo, i64 -1, i64 %i.be
  %.sroa.028.0 = select i1 %i.bf, i64 %., i64 10000
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !range !345, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bs = trunc nuw i64 %i.bq to i1
  %i.bt = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bu = icmp ne i64 %i.bt, 0
  %or.cond.not = select i1 %i.bs, i1 %i.bu, i1 false
  %.61 = select i1 %or.cond.not, i64 %i.bt, i64 -1
  %i.bv = load i64, ptr %4, align 8, !range !345, !noundef !5
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = load i64, ptr %i.bx, align 8
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %8 = mul nuw i64 %i.ax, 256000
  %9 = icmp ugt i64 %i.ax, 72057594037927
  br i1 %9, label %bb.z, label %bb.x, !prof !335

bb.x:                                             ; preds = %bb.w, %bb.z, %bb.v
  %.sroa.030.0 = phi i64 [ %i.by, %bb.v ], [ -1, %bb.z ], [ %8, %bb.w ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.030.0, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.61, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.028.0, ptr %i.cb, align 8
  store i32 %i.bm, ptr %i.b, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.bn, ptr %i.cc, align 4
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.cd = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 385) 64, i64 noundef range(i64 1, 9) 8) #19 ; 12 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.y, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !335

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #23
          to label %.noexc unwind label %.body.thread

.noexc:                                           ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.w
  br label %bb.x

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !346, !noundef !5 ; 2 uses
  %i.ch = invoke noundef i64 @_RNvNtNtCs5QaNqjAn6vc_5shard10optimizers6config19get_number_segments(i64 noundef %i.cg)
          to label %_RNvMNtCsPYQCUnoTxQ_10collection18optimizers_builderNtB2_16OptimizersConfig19get_number_segments.exit unwind label %bb.aa

bb.aa:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, %_RNvMNtCsPYQCUnoTxQ_10collection18optimizers_builderNtB2_16OptimizersConfig19get_number_segments.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread147

_RNvMNtCsPYQCUnoTxQ_10collection18optimizers_builderNtB2_16OptimizersConfig19get_number_segments.exit: ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
          to label %bb.ab unwind label %bb.aa

bb.ab:                                            ; preds = %_RNvMNtCsPYQCUnoTxQ_10collection18optimizers_builderNtB2_16OptimizersConfig19get_number_segments.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke fastcc void @_RNvXsd_NtNtCs5QaNqjAn6vc_5shard10optimizers6configNtB5_22SegmentOptimizerConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(216) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.ah)
          to label %bb.af unwind label %bb.bz

bb.ae:                                            ; preds = %bb.af
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread147

bb.af:                                            ; preds = %bb.ad
  %i.cl = load double, ptr %6, align 8, !noundef !5 ; 4 uses
  invoke void @_RNvMNtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB2_14MergeOptimizer3new(ptr noalias nofree noundef nonnull sret([320 x i8]) align 8 captures(none) dereferenceable(320) %i.ae, i64 noundef %i.ch, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %i.ab, double noundef %i.cl)
          to label %bb.ag unwind label %bb.ae

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 1, ptr %i.k, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.cn, ptr noundef nonnull align 8 dereferenceable(320) %i.ae, i64 320, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !349
  %i.co = call noundef align 8 dereferenceable_or_null(336) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 385) 336, i64 noundef range(i64 1, 9) 8) #19, !noalias !349 ; 4 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.ah, label %bb.ak, !prof !335

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 336) #23
          to label %.noexc73 unwind label %bb.ai

.noexc73:                                         ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizer14MergeOptimizerECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(320) %i.cn)
          to label %.body.thread147 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.co, ptr noundef nonnull align 8 dereferenceable(336) %i.k, i64 336, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store ptr %i.co, ptr %i.af, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @21, ptr %i.cs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ct = invoke noundef i64 @_RNvNtNtCs5QaNqjAn6vc_5shard10optimizers6config19get_number_segments(i64 noundef %i.cg)
          to label %_RNvMNtCsPYQCUnoTxQ_10collection18optimizers_builderNtB2_16OptimizersConfig19get_number_segments.exit77 unwind label %bb.am

.body66:                                          ; preds = %.body64, %bb.ax, %bb.au, %bb.aq, %bb.am, %bb.by
  %.pn52.pn = phi { ptr, i32 } [ %i.de, %bb.au ], [ %i.cz, %bb.aq ], [ %.pn48.ph, %bb.by ], [ %i.cx, %bb.am ], [ %.pn52, %bb.ax ], [ %.pn52, %.body64 ] ; 2 uses
  %.sroa.013.3 = phi i1 [ true, %bb.au ], [ true, %bb.aq ], [ true, %bb.by ], [ true, %bb.am ], [ %.sroa.013.4, %bb.ax ], [ %.sroa.013.4, %.body64 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.cu = load ptr, ptr %i.af, align 8, !alias.scope !358, !nonnull !5, !noundef !5
  %i.cv = atomicrmw sub ptr %i.cu, i64 1 release, align 8, !noalias !358
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %bb.al, label %.body

bb.al:                                            ; preds = %.body66
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtCskKLDkoKarTP_4core6marker4SendNtB1W_4SyncEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.af) #22
          to label %.body unwind label %bb.bu

bb.am:                                            ; preds = %bb.ak, %_RNvMNtCsPYQCUnoTxQ_10collection18optimizers_builderNtB2_16OptimizersConfig19get_number_segments.exit77
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body66

_RNvMNtCsPYQCUnoTxQ_10collection18optimizers_builderNtB2_16OptimizersConfig19get_number_segments.exit77: ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
          to label %bb.an unwind label %bb.am

bb.an:                                            ; preds = %_RNvMNtCsPYQCUnoTxQ_10collection18optimizers_builderNtB2_16OptimizersConfig19get_number_segments.exit77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke fastcc void @_RNvXsd_NtNtCs5QaNqjAn6vc_5shard10optimizers6configNtB5_22SegmentOptimizerConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(216) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.ah)
          to label %bb.ar unwind label %bb.bx

bb.aq:                                            ; preds = %bb.ar
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body66

bb.ar:                                            ; preds = %bb.ap
  invoke void @_RNvMNtNtCs5QaNqjAn6vc_5shard10optimizers18indexing_optimizerNtB2_17IndexingOptimizer3new(ptr noalias nofree noundef nonnull sret([320 x i8]) align 8 captures(none) dereferenceable(320) %i.z, i64 noundef %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %i.w, double noundef %i.cl)
          to label %bb.as unwind label %bb.aq

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 1, ptr %i.h, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.db, ptr noundef nonnull align 8 dereferenceable(320) %i.z, i64 320, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !359
  %i.dc = call noundef align 8 dereferenceable_or_null(336) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 385) 336, i64 noundef range(i64 1, 9) 8) #19, !noalias !359 ; 4 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.at, label %bb.aw, !prof !335

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 336) #23
          to label %.noexc79 unwind label %bb.au

.noexc79:                                         ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.at
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10optimizers18indexing_optimizer17IndexingOptimizerECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(320) %i.db)
end_hunk_0
