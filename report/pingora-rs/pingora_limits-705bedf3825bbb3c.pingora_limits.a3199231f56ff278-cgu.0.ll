Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_limits-705bedf3825bbb3c.pingora_limits.a3199231f56ff278-cgu.0?download=true
inline.NumInlined: 176
inline.NumDeleted: 127
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtCse0aXTpwmm6W_14pingora_limits4rateNtB2_4Rate11maybe_reset:bb.a

_RNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB4_9Estimator5reset0B6_.exit.i.i13: ; preds = %.lr.ph.i.i.i.i11.prol.loopexit, %.lr.ph.i.i.i.i11, %.lr.ph.i.i6
  %i.cc = icmp eq ptr %i.bk, %i.bi
  br i1 %i.cc, label %_RNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB2_9Estimator5reset.exit14, label %.lr.ph.i.i6

bb.f:                                             ; preds = %bb.c
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23
  unreachable

_RNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB2_9Estimator5reset.exit14: ; preds = %_RNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB4_9Estimator5reset0B6_.exit.i.i13, %bb.e, %_RNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB2_9Estimator5reset.exit, %bb.c, %bb.a
  ret i64 %i.s
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef zeroext i1 @_RNvMNtCse0aXTpwmm6W_14pingora_limits4rateNtB2_4Rate11red_or_blue(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load atomic i8, ptr %i.a seq_cst, align 8
  %i.c = icmp ne i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCse0aXTpwmm6W_14pingora_limits4rateNtB2_4Rate3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.a = tail call { ptr, i64 } @_RNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB2_9Estimator3new(i64 noundef 4, i64 noundef 1024), !noalias !42 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 4 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  %i.d = invoke { ptr, i64 } @_RNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB2_9Estimator3new(i64 noundef 4, i64 noundef 1024)
          to label %bb.d unwind label %bb.c, !noalias !42 ; 2 uses

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.e, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCse0aXTpwmm6W_14pingora_limits9estimator9EstimatorEBF_(ptr nonnull %i.b, i64 %i.c) #25, !noalias !42
  resume { ptr, i32 } %.pn.i

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, i64 } %i.d, 0        ; 4 uses
  %i.g = extractvalue { ptr, i64 } %i.d, 1        ; 2 uses
  %i.h = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %_RNvMNtCse0aXTpwmm6W_14pingora_limits4rateNtB2_4Rate25new_with_estimator_config.exit unwind label %bb.e, !noalias !42 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCse0aXTpwmm6W_14pingora_limits9estimator9EstimatorEBF_(ptr nonnull %i.f, i64 %i.g) #25, !noalias !42
  br label %bb.b

_RNvMNtCse0aXTpwmm6W_14pingora_limits4rateNtB2_4Rate25new_with_estimator_config.exit: ; preds = %bb.d
  %i.j = extractvalue { i64, i32 } %i.h, 0
  %i.k = extractvalue { i64, i32 } %i.h, 1
  %i.l = mul i64 %1, 1000
  %i.m = udiv i32 %2, 1000000
  %i.n = zext nneg i32 %i.m to i64
  %i.o = add i64 %i.l, %i.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.p, align 8, !alias.scope !42
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.c, ptr %i.q, align 8, !alias.scope !42
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %i.r, align 8, !alias.scope !42
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.g, ptr %i.s, align 8, !alias.scope !42
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.t, align 8, !alias.scope !42
  store i64 %i.j, ptr %0, align 8, !alias.scope !42
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.k, ptr %i.u, align 8, !alias.scope !42
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.o, ptr %i.v, align 8, !alias.scope !42
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.w, align 8, !alias.scope !42
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.x, align 8, !alias.scope !42
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.y, align 8, !alias.scope !42
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCse0aXTpwmm6W_14pingora_limits8inflightNtB2_8Inflight3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { ptr, i64 } @_RNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB2_9Estimator3new(i64 noundef 4, i64 noundef 8192) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 3 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !51
  %i.f = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #22, !noalias !51 ; 8 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCse0aXTpwmm6W_14pingora_limits9estimator9EstimatorEE3newB14_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #24
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtCse0aXTpwmm6W_14pingora_limits9estimator9EstimatorEEB1i_(ptr nonnull %i.d, i64 %i.e) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.v, %bb.g ], [ %i.v, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCse0aXTpwmm6W_14pingora_limits9estimator9EstimatorEE3newB14_.exit: ; preds = %bb.a
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.e, ptr %.sroa.7.0..sroa_idx, align 8
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = load atomic ptr, ptr @_RNvNtCskCJvoiymbRN_5ahash12random_state11RAND_SOURCE acquire, align 8, !noalias !52 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i, !prof !5

bb.d:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCse0aXTpwmm6W_14pingora_limits9estimator9EstimatorEE3newB14_.exit
  %i.k = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvB1C_7get_src0E0ECse0aXTpwmm6W_14pingora_limits(ptr noundef nonnull align 8 @_RNvNtCskCJvoiymbRN_5ahash12random_state11RAND_SOURCE) #21
          to label %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i unwind label %bb.f

_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i: ; preds = %bb.d, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCse0aXTpwmm6W_14pingora_limits9estimator9EstimatorEE3newB14_.exit
  %.sroa.0.0.i.i = phi ptr [ %i.i, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCse0aXTpwmm6W_14pingora_limits9estimator9EstimatorEE3newB14_.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.0.0.i.i, align 8, !noalias !52, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !52, !nonnull !6, !align !7, !noundef !6
  %i.o = load atomic ptr, ptr @_RNvNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds5SEEDS acquire, align 8, !noalias !52 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i, !prof !5

bb.e:                                             ; preds = %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i
  %i.q = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0ECse0aXTpwmm6W_14pingora_limits(ptr noundef nonnull align 8 @_RNvNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds5SEEDS) #21
          to label %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i unwind label %bb.f

_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i: ; preds = %bb.e, %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i
  %.sroa.0.0.i1.i = phi ptr [ %i.o, %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i ], [ %i.q, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !6, !noalias !52, !nonnull !6
  %i.t = invoke noundef i64 %i.s(ptr noundef nonnull %i.l) #27
          to label %.noexc6 unwind label %bb.f, !inline_history !0

.noexc6:                                          ; preds = %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i, i64 32
  invoke void @_RNvMs1_NtCskCJvoiymbRN_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i1.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u, i64 noundef %i.t)
          to label %_RNvMs1_NtCskCJvoiymbRN_5ahash12random_stateNtB5_11RandomState3new.exit unwind label %bb.f

bb.f:                                             ; preds = %.noexc6, %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i, %bb.e, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !53
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCse0aXTpwmm6W_14pingora_limits9estimator9EstimatorE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #21
  br label %common.resume

_RNvMs1_NtCskCJvoiymbRN_5ahash12random_stateNtB5_11RandomState3new.exit: ; preds = %.noexc6
  store ptr %i.f, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB2_9Estimator3new(i64 noundef %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %.sroa.53.i.i.i.i.i.i.i.i.i = alloca [32 x i8], align 8 ; 12 uses
  %i.b = mul i64 %0, 48                           ; 4 uses
  %or.cond.not.i.i.i = icmp ugt i64 %0, 192153584101141162
  br i1 %or.cond.not.i.i.i, label %bb.c, label %bb.b, !prof !100

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTINtNtB6_5boxed3BoxSINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEE7reserveCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.thread, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !101
  %i.d = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.b, i64 noundef 8) #22, !noalias !101 ; 9 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %.lr.ph.i.i.i.i.i.i.i.preheader

bb.c:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.b) #24, !noalias !102
  unreachable

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.f = shl i64 %1, 3                            ; 6 uses
  %i.g = icmp ugt i64 %1, 2305843009213693951
  %i.h = icmp ugt i64 %i.f, 9223372036854775800
  %or.cond.not.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.g, %i.h
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %1, 0 ; 2 uses
  %i.i = icmp samesign ult i64 %1, 1152921504606846976 ; 3 uses
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.split, label %.lr.ph.i.i.i.i.i.i.i.preheader.split, !prof !100

.lr.ph.i.i.i.i.i.i.i.preheader.split:             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %.lr.ph.i.i.i.i.i.i.i.preheader.split.split.us, label %.lr.ph.i.i.i.i.i.i.i.preheader.split.split

.lr.ph.i.i.i.i.i.i.i.preheader.split.split.us:    ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.split
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  tail call void @llvm.assume(i1 %i.i)
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEE16into_boxed_sliceCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.us

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEE16into_boxed_sliceCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.split.split.us, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtBa_4sync6atomic6AtomiciEEuNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB24_9Estimator3new0NCIB2_BV_TINtNtB10_5boxed3BoxSB1s_ENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEuNCB21_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3e_NCINvMsk_BY_IBW_B3e_E14extend_trustedINtB4_3MapIB6d_INtNtNtBa_3ops5range5RangejEB1Z_EB4v_EE0E0E0E0B26_.exit.i.i.i.i.i.i.i.us
  %.sroa.5.0.i.i.i.i.i.i.us30 = phi i64 [ %i.k, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtBa_4sync6atomic6AtomiciEEuNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB24_9Estimator3new0NCIB2_BV_TINtNtB10_5boxed3BoxSB1s_ENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEuNCB21_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3e_NCINvMsk_BY_IBW_B3e_E14extend_trustedINtB4_3MapIB6d_INtNtNtBa_3ops5range5RangejEB1Z_EB4v_EE0E0E0E0B26_.exit.i.i.i.i.i.i.i.us ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.split.split.us ] ; 3 uses
  %i.k = add nuw i64 %.sroa.5.0.i.i.i.i.i.i.us30, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !103
  %i.l = load atomic ptr, ptr @_RNvNtCskCJvoiymbRN_5ahash12random_state11RAND_SOURCE acquire, align 8, !noalias !104 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us, !prof !5

bb.d:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEE16into_boxed_sliceCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.us
  %i.n = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvB1C_7get_src0E0ECse0aXTpwmm6W_14pingora_limits(ptr noundef nonnull align 8 @_RNvNtCskCJvoiymbRN_5ahash12random_state11RAND_SOURCE) #21
          to label %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us unwind label %.split33.us, !noalias !103

_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us: ; preds = %bb.d, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEE16into_boxed_sliceCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.us
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.us = phi ptr [ %i.l, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEE16into_boxed_sliceCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.us ], [ %i.n, %bb.d ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.us, align 8, !noalias !104, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.us, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !104, !nonnull !6, !align !7, !noundef !6
  %i.r = load atomic ptr, ptr @_RNvNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds5SEEDS acquire, align 8, !noalias !104 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us, !prof !5

bb.e:                                             ; preds = %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us
  %i.t = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0ECse0aXTpwmm6W_14pingora_limits(ptr noundef nonnull align 8 @_RNvNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds5SEEDS) #21
          to label %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us unwind label %.split33.us, !noalias !103

_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us: ; preds = %bb.e, %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us
  %.sroa.0.0.i1.i.i.i.i.i.i.i.i.i.i.i.us = phi ptr [ %i.r, %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us ], [ %i.t, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !6, !noalias !104, !nonnull !6
  %i.w = invoke noundef i64 %i.v(ptr noundef nonnull %i.o) #27
          to label %.noexc3.i.i.i.i.i.i.i.i.i.i.us unwind label %.split33.us, !noalias !103, !inline_history !0

.noexc3.i.i.i.i.i.i.i.i.i.i.us:                   ; preds = %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i.i.i.i.us, i64 32
  invoke void @_RNvMs1_NtCskCJvoiymbRN_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i1.i.i.i.i.i.i.i.i.i.i.i.us, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x, i64 noundef %i.w)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtBa_4sync6atomic6AtomiciEEuNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB24_9Estimator3new0NCIB2_BV_TINtNtB10_5boxed3BoxSB1s_ENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEuNCB21_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3e_NCINvMsk_BY_IBW_B3e_E14extend_trustedINtB4_3MapIB6d_INtNtNtBa_3ops5range5RangejEB1Z_EB4v_EE0E0E0E0B26_.exit.i.i.i.i.i.i.i.us unwind label %.split33.us, !noalias !103

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtBa_4sync6atomic6AtomiciEEuNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB24_9Estimator3new0NCIB2_BV_TINtNtB10_5boxed3BoxSB1s_ENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEuNCB21_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3e_NCINvMsk_BY_IBW_B3e_E14extend_trustedINtB4_3MapIB6d_INtNtNtBa_3ops5range5RangejEB1Z_EB4v_EE0E0E0E0B26_.exit.i.i.i.i.i.i.i.us: ; preds = %.noexc3.i.i.i.i.i.i.i.i.i.i.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !103
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %.sroa.5.0.i.i.i.i.i.i.us30 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !106
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.us, align 8, !noalias !106
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.us, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53.i.i.i.i.i.i.i.i.i)
  %exitcond.not.i.i.i.i.i.i.i.us = icmp eq i64 %i.k, %0
  br i1 %exitcond.not.i.i.i.i.i.i.i.us, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTINtNtB6_5boxed3BoxSINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEE16into_boxed_sliceCse0aXTpwmm6W_14pingora_limits.exit, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEE16into_boxed_sliceCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.us

.split33.us:                                      ; preds = %.noexc3.i.i.i.i.i.i.i.i.i.i.us, %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us, %bb.e, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.lr.ph.i.i.i.i.i.i.i.preheader.split.split:       ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.split
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.us40, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.us40:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.split.split, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtBa_4sync6atomic6AtomiciEEuNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB24_9Estimator3new0NCIB2_BV_TINtNtB10_5boxed3BoxSB1s_ENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEuNCB21_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3e_NCINvMsk_BY_IBW_B3e_E14extend_trustedINtB4_3MapIB6d_INtNtNtBa_3ops5range5RangejEB1Z_EB4v_EE0E0E0E0B26_.exit.i.i.i.i.i.i.i.us50
  %.sroa.5.0.i.i.i.i.i.i.us41 = phi i64 [ %i.aa, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtBa_4sync6atomic6AtomiciEEuNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB24_9Estimator3new0NCIB2_BV_TINtNtB10_5boxed3BoxSB1s_ENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEuNCB21_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3e_NCINvMsk_BY_IBW_B3e_E14extend_trustedINtB4_3MapIB6d_INtNtNtBa_3ops5range5RangejEB1Z_EB4v_EE0E0E0E0B26_.exit.i.i.i.i.i.i.i.us50 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.split.split ] ; 4 uses
  %i.aa = add nuw i64 %.sroa.5.0.i.i.i.i.i.i.us41, 1 ; 2 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !107
  %i.ab = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.f, i64 noundef 8) #22, !noalias !107 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.split, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEE7reserveCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i.us43

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEE7reserveCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i.us43: ; preds = %.lr.ph.i.i.i.i.i.i.i.us40
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i.i.i.i.i.i.i.i.i)
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !103
  %i.ad = load atomic ptr, ptr @_RNvNtCskCJvoiymbRN_5ahash12random_state11RAND_SOURCE acquire, align 8, !noalias !104 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.f, label %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us45, !prof !5

bb.f:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEE7reserveCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i.us43
  %i.af = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvB1C_7get_src0E0ECse0aXTpwmm6W_14pingora_limits(ptr noundef nonnull align 8 @_RNvNtCskCJvoiymbRN_5ahash12random_state11RAND_SOURCE) #21
          to label %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us45 unwind label %.split33.split.us, !noalias !103

_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us45: ; preds = %bb.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEE7reserveCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i.us43
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.us46 = phi ptr [ %i.ad, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEE7reserveCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i.us43 ], [ %i.af, %bb.f ] ; 2 uses
  %i.ag = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.us46, align 8, !noalias !104, !nonnull !6, !noundef !6
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.us46, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !104, !nonnull !6, !align !7, !noundef !6
  %i.aj = load atomic ptr, ptr @_RNvNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds5SEEDS acquire, align 8, !noalias !104 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.g, label %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us47, !prof !5

bb.g:                                             ; preds = %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us45
  %i.al = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0ECse0aXTpwmm6W_14pingora_limits(ptr noundef nonnull align 8 @_RNvNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds5SEEDS) #21
          to label %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us47 unwind label %.split33.split.us, !noalias !103

_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us47: ; preds = %bb.g, %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us45
  %.sroa.0.0.i1.i.i.i.i.i.i.i.i.i.i.i.us48 = phi ptr [ %i.aj, %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us45 ], [ %i.al, %bb.g ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !6, !noalias !104, !nonnull !6
  %i.ao = invoke noundef i64 %i.an(ptr noundef nonnull %i.ag) #27
          to label %.noexc3.i.i.i.i.i.i.i.i.i.i.us49 unwind label %.split33.split.us, !noalias !103, !inline_history !0

.noexc3.i.i.i.i.i.i.i.i.i.i.us49:                 ; preds = %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us47
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i.i.i.i.us48, i64 32
  invoke void @_RNvMs1_NtCskCJvoiymbRN_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i1.i.i.i.i.i.i.i.i.i.i.i.us48, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap, i64 noundef %i.ao)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtBa_4sync6atomic6AtomiciEEuNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB24_9Estimator3new0NCIB2_BV_TINtNtB10_5boxed3BoxSB1s_ENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEuNCB21_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3e_NCINvMsk_BY_IBW_B3e_E14extend_trustedINtB4_3MapIB6d_INtNtNtBa_3ops5range5RangejEB1Z_EB4v_EE0E0E0E0B26_.exit.i.i.i.i.i.i.i.us50 unwind label %.split33.split.us, !noalias !103

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtBa_4sync6atomic6AtomiciEEuNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB24_9Estimator3new0NCIB2_BV_TINtNtB10_5boxed3BoxSB1s_ENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEuNCB21_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3e_NCINvMsk_BY_IBW_B3e_E14extend_trustedINtB4_3MapIB6d_INtNtNtBa_3ops5range5RangejEB1Z_EB4v_EE0E0E0E0B26_.exit.i.i.i.i.i.i.i.us50: ; preds = %.noexc3.i.i.i.i.i.i.i.i.i.i.us49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !103
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %.sroa.5.0.i.i.i.i.i.i.us41 ; 3 uses
  store ptr %i.ab, ptr %i.aq, align 8, !noalias !106
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.us51 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.us51, align 8, !noalias !106
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.us52 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.us52, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53.i.i.i.i.i.i.i.i.i)
  %exitcond.not.i.i.i.i.i.i.i.us53 = icmp eq i64 %i.aa, %0
  br i1 %exitcond.not.i.i.i.i.i.i.i.us53, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTINtNtB6_5boxed3BoxSINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEE16into_boxed_sliceCse0aXTpwmm6W_14pingora_limits.exit, label %.lr.ph.i.i.i.i.i.i.i.us40

.split33.split.us:                                ; preds = %.noexc3.i.i.i.i.i.i.i.i.i.i.us49, %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.us47, %bb.g, %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTINtNtB6_5boxed3BoxSINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEE7reserveCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.thread: ; preds = %bb.b
  %i.as = icmp eq i64 %0, 0
  tail call void @llvm.assume(i1 %i.as)
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTINtNtB6_5boxed3BoxSINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEE16into_boxed_sliceCse0aXTpwmm6W_14pingora_limits.exit

bb.h:                                             ; preds = %.split
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.split.split, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtBa_4sync6atomic6AtomiciEEuNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB24_9Estimator3new0NCIB2_BV_TINtNtB10_5boxed3BoxSB1s_ENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEuNCB21_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3e_NCINvMsk_BY_IBW_B3e_E14extend_trustedINtB4_3MapIB6d_INtNtNtBa_3ops5range5RangejEB1Z_EB4v_EE0E0E0E0B26_.exit.i.i.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.au, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtBa_4sync6atomic6AtomiciEEuNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB24_9Estimator3new0NCIB2_BV_TINtNtB10_5boxed3BoxSB1s_ENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEuNCB21_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3e_NCINvMsk_BY_IBW_B3e_E14extend_trustedINtB4_3MapIB6d_INtNtNtBa_3ops5range5RangejEB1Z_EB4v_EE0E0E0E0B26_.exit.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.split.split ] ; 4 uses
  %i.au = add nuw i64 %.sroa.5.0.i.i.i.i.i.i, 1   ; 2 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !107
  %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed = tail call align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 %i.f, i64 8) ; 3 uses
  %i.av = icmp eq ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed, null
  br i1 %i.av, label %.split, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEE7reserveCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEE7reserveCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i.i.i.i.i.i.i.i.i)
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !103
  %i.aw = load atomic ptr, ptr @_RNvNtCskCJvoiymbRN_5ahash12random_state11RAND_SOURCE acquire, align 8, !noalias !104 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.i, label %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !5

.split:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.us40, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.us-phi = phi i64 [ %.sroa.5.0.i.i.i.i.i.i.us41, %.lr.ph.i.i.i.i.i.i.i.us40 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.sroa.5.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.us-phi28 = phi i64 [ 8, %.lr.ph.i.i.i.i.i.i.i.us40 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ 8, %.lr.ph.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.us-phi28, i64 %i.f) #24
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.h, !noalias !108

.noexc.i.i.i.i.i.i.i:                             ; preds = %.split
  unreachable

bb.i:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEE7reserveCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvB1C_7get_src0E0ECse0aXTpwmm6W_14pingora_limits(ptr noundef nonnull align 8 @_RNvNtCskCJvoiymbRN_5ahash12random_state11RAND_SOURCE) #21
          to label %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !103

_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEE7reserveCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEE7reserveCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ay, %bb.i ] ; 2 uses
  %i.az = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !104, !nonnull !6, !noundef !6
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !104, !nonnull !6, !align !7, !noundef !6
  %i.bc = load atomic ptr, ptr @_RNvNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds5SEEDS acquire, align 8, !noalias !104 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.j, label %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !5

bb.j:                                             ; preds = %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.be = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0ECse0aXTpwmm6W_14pingora_limits(ptr noundef nonnull align 8 @_RNvNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds5SEEDS) #21
          to label %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !103

_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i1.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bc, %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskCJvoiymbRN_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2s_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.be, %bb.j ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !6, !noalias !104, !nonnull !6
  %i.bh = invoke noundef i64 %i.bg(ptr noundef nonnull %i.az) #27
          to label %.noexc3.i.i.i.i.i.i.i.i.i.i unwind label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !103, !inline_history !0

.noexc3.i.i.i.i.i.i.i.i.i.i:                      ; preds = %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.i.i.i.i.i.i.i.i, i64 32
  invoke void @_RNvMs1_NtCskCJvoiymbRN_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i1.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bi, i64 noundef %i.bh)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtBa_4sync6atomic6AtomiciEEuNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB24_9Estimator3new0NCIB2_BV_TINtNtB10_5boxed3BoxSB1s_ENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEuNCB21_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3e_NCINvMsk_BY_IBW_B3e_E14extend_trustedINtB4_3MapIB6d_INtNtNtBa_3ops5range5RangejEB1Z_EB4v_EE0E0E0E0B26_.exit.i.i.i.i.i.i.i unwind label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !103

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc3.i.i.i.i.i.i.i.i.i.i, %_RINvMs1_NtNtCsjCbDjdVFjRH_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCskCJvoiymbRN_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECse0aXTpwmm6W_14pingora_limits.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.j, %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed, i64 noundef %i.f, i64 noundef 8) #22, !noalias !103
  br label %.body.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtBa_4sync6atomic6AtomiciEEuNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB24_9Estimator3new0NCIB2_BV_TINtNtB10_5boxed3BoxSB1s_ENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEuNCB21_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3e_NCINvMsk_BY_IBW_B3e_E14extend_trustedINtB4_3MapIB6d_INtNtNtBa_3ops5range5RangejEB1Z_EB4v_EE0E0E0E0B26_.exit.i.i.i.i.i.i.i: ; preds = %.noexc3.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !103
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %.sroa.5.0.i.i.i.i.i.i ; 3 uses
  store ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed, ptr %i.bk, align 8, !noalias !106
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %1, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !106
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53.i.i.i.i.i.i.i.i.i)
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.au, %0
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTINtNtB6_5boxed3BoxSINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEE16into_boxed_sliceCse0aXTpwmm6W_14pingora_limits.exit, label %.lr.ph.i.i.i.i.i.i.i

.body.i:                                          ; preds = %.split33.split.us, %.split33.us, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.sroa.5.0.i.i.i.i.i.i22 = phi i64 [ %.us-phi, %bb.h ], [ %.sroa.5.0.i.i.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0.i.i.i.i.i.i.us41, %.split33.split.us ], [ %.sroa.5.0.i.i.i.i.i.i.us30, %.split33.us ] ; 2 uses
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.at, %bb.h ], [ %i.bj, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ar, %.split33.split.us ], [ %i.z, %.split33.us ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109), !noalias !102
  %i.bl = icmp eq i64 %.sroa.5.0.i.i.i.i.i.i22, 0
  br i1 %i.bl, label %common.resume, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.body.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtNtNtB4_4sync6atomic6AtomiciEENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEECse0aXTpwmm6W_14pingora_limits.exit.i.i.i
  %.sroa.0.012.i.i.i = phi i64 [ %i.bn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtNtNtB4_4sync6atomic6AtomiciEENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEECse0aXTpwmm6W_14pingora_limits.exit.i.i.i ], [ 0, %.body.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %.sroa.0.012.i.i.i ; 2 uses
  %i.bn = add nuw nsw i64 %.sroa.0.012.i.i.i, 1   ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bm, i64 8
  %.val9.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !109, !noalias !110, !noundef !6 ; 2 uses
  %i.bp = icmp eq i64 %.val9.i.i.i, 0
  br i1 %i.bp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtNtNtB4_4sync6atomic6AtomiciEENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEECse0aXTpwmm6W_14pingora_limits.exit.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %.val8.i.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !109, !noalias !110, !nonnull !6, !noundef !6
  %i.bq = shl nuw nsw i64 %.val9.i.i.i, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i, i64 noundef %i.bq, i64 noundef 8) #22, !noalias !111
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtNtNtB4_4sync6atomic6AtomiciEENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEECse0aXTpwmm6W_14pingora_limits.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtNtNtB4_4sync6atomic6AtomiciEENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEECse0aXTpwmm6W_14pingora_limits.exit.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.br = icmp eq i64 %i.bn, %.sroa.5.0.i.i.i.i.i.i22
  br i1 %i.br, label %common.resume, label %.lr.ph.i.i.i

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtNtNtB4_4sync6atomic6AtomiciEENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEECse0aXTpwmm6W_14pingora_limits.exit.i.i.i, %.body.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !110
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTINtNtB6_5boxed3BoxSINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEE16into_boxed_sliceCse0aXTpwmm6W_14pingora_limits.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtBa_4sync6atomic6AtomiciEEuNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB24_9Estimator3new0NCIB2_BV_TINtNtB10_5boxed3BoxSB1s_ENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEuNCB21_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3e_NCINvMsk_BY_IBW_B3e_E14extend_trustedINtB4_3MapIB6d_INtNtNtBa_3ops5range5RangejEB1Z_EB4v_EE0E0E0E0B26_.exit.i.i.i.i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtBa_4sync6atomic6AtomiciEEuNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB24_9Estimator3new0NCIB2_BV_TINtNtB10_5boxed3BoxSB1s_ENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEuNCB21_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3e_NCINvMsk_BY_IBW_B3e_E14extend_trustedINtB4_3MapIB6d_INtNtNtBa_3ops5range5RangejEB1Z_EB4v_EE0E0E0E0B26_.exit.i.i.i.i.i.i.i.us50, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtBa_4sync6atomic6AtomiciEEuNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB24_9Estimator3new0NCIB2_BV_TINtNtB10_5boxed3BoxSB1s_ENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEuNCB21_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3e_NCINvMsk_BY_IBW_B3e_E14extend_trustedINtB4_3MapIB6d_INtNtNtBa_3ops5range5RangejEB1Z_EB4v_EE0E0E0E0B26_.exit.i.i.i.i.i.i.i.us, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTINtNtB6_5boxed3BoxSINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEE7reserveCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.thread
  %.sroa.410.0.copyload.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTINtNtB6_5boxed3BoxSINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomiciEENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEE7reserveCse0aXTpwmm6W_14pingora_limits.exit.i.i.i.thread ], [ %i.d, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtBa_4sync6atomic6AtomiciEEuNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB24_9Estimator3new0NCIB2_BV_TINtNtB10_5boxed3BoxSB1s_ENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEuNCB21_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3e_NCINvMsk_BY_IBW_B3e_E14extend_trustedINtB4_3MapIB6d_INtNtNtBa_3ops5range5RangejEB1Z_EB4v_EE0E0E0E0B26_.exit.i.i.i.i.i.i.i.us ], [ %i.d, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtBa_4sync6atomic6AtomiciEEuNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB24_9Estimator3new0NCIB2_BV_TINtNtB10_5boxed3BoxSB1s_ENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEuNCB21_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3e_NCINvMsk_BY_IBW_B3e_E14extend_trustedINtB4_3MapIB6d_INtNtNtBa_3ops5range5RangejEB1Z_EB4v_EE0E0E0E0B26_.exit.i.i.i.i.i.i.i.us50 ], [ %i.d, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtBa_4sync6atomic6AtomiciEEuNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB24_9Estimator3new0NCIB2_BV_TINtNtB10_5boxed3BoxSB1s_ENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEuNCB21_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3e_NCINvMsk_BY_IBW_B3e_E14extend_trustedINtB4_3MapIB6d_INtNtNtBa_3ops5range5RangejEB1Z_EB4v_EE0E0E0E0B26_.exit.i.i.i.i.i.i.i ]
  %i.bs = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload.i, 0
  %i.bt = insertvalue { ptr, i64 } %i.bs, i64 %0, 1
  ret { ptr, i64 } %i.bt
}

; Function Attrs: norecurse nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB2_9Estimator5reset(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %.idx = mul nuw nsw i64 %i.c, 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtNtNtBb_4sync6atomic6AtomiciEENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB3H_9Estimator5reset0EB3J_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB4_9Estimator5reset0B6_.exit.i
  %.sroa.0.03.i = phi ptr [ %i.f, %_RNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB4_9Estimator5reset0B6_.exit.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 48 ; 2 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.03.i, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.g = getelementptr i8, ptr %.sroa.0.03.i, i64 8
  %.sroa.0.0.val2.i = load i64, ptr %i.g, align 8, !noundef !6 ; 2 uses
  %.idx.i.i = shl i64 %.sroa.0.0.val2.i, 3        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 %.idx.i.i
  %i.i = icmp eq i64 %.sroa.0.0.val2.i, 0
  br i1 %i.i, label %_RNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB4_9Estimator5reset0B6_.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %i.j = add i64 %.idx.i.i, -8                    ; 2 uses
  %i.k = lshr exact i64 %i.j, 3
  %i.l = add nuw nsw i64 %i.k, 1
  %xtraiter = and i64 %i.l, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.sroa.0.02.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.prol ], [ %.sroa.0.0.val.i, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.prol, i64 8 ; 2 uses
  store atomic i64 0, ptr %.sroa.0.02.i.i.i.prol monotonic, align 8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !112

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.02.i.i.i.unr = phi ptr [ %.sroa.0.0.val.i, %.lr.ph.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.prol ]
  %i.n = icmp ult i64 %i.j, 56
  br i1 %i.n, label %_RNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB4_9Estimator5reset0B6_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.sroa.0.02.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %.sroa.0.02.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i, i64 8
  store atomic i64 0, ptr %.sroa.0.02.i.i.i monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i, i64 16
  store atomic i64 0, ptr %i.o monotonic, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i, i64 24
  store atomic i64 0, ptr %i.p monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i, i64 32
  store atomic i64 0, ptr %i.q monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i, i64 40
  store atomic i64 0, ptr %i.r monotonic, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i, i64 48
  store atomic i64 0, ptr %i.s monotonic, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i, i64 56
  store atomic i64 0, ptr %i.t monotonic, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i, i64 64 ; 2 uses
  store atomic i64 0, ptr %i.u monotonic, align 8
  %i.w = icmp eq ptr %i.v, %i.h
  br i1 %i.w, label %_RNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB4_9Estimator5reset0B6_.exit.i, label %.lr.ph.i.i.i

_RNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB4_9Estimator5reset0B6_.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %.lr.ph.i
  %i.x = icmp eq ptr %i.f, %i.d
  br i1 %i.x, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtNtNtBb_4sync6atomic6AtomiciEENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB3H_9Estimator5reset0EB3J_.exit, label %.lr.ph.i

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtNtNtBb_4sync6atomic6AtomiciEENtNtCskCJvoiymbRN_5ahash12random_state11RandomStateEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB3H_9Estimator5reset0EB3J_.exit: ; preds = %_RNCNvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB4_9Estimator5reset0B6_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMs_NtCse0aXTpwmm6W_14pingora_limits8inflightNtB4_5Guard3get(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr i8, ptr %i.a, i64 24
  %.val1 = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %i.f = icmp eq i64 %.val1, 0
  br i1 %i.f, label %_RINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB3_9Estimator3getyEB5_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %_RNCINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB5_9Estimator3getyE0B7_.exit.i.i
  %.sroa.04.0.i.i = phi i64 [ %i.aa, %_RNCINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB5_9Estimator3getyE0B7_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %..i.i.i.i, %_RNCINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB5_9Estimator3getyE0B7_.exit.i.i ], [ 9223372036854775807, %bb.a ]
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.04.0.i.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !117, !noalias !118, !noundef !6 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %_RNCINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB5_9Estimator3getyE0B7_.exit.i.i

bb.b:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !119
  unreachable

_RNCINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB5_9Estimator3getyE0B7_.exit.i.i: ; preds = %.preheader.i
  %i.k = load ptr, ptr %i.g, align 8, !alias.scope !117, !noalias !118, !nonnull !6, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val1.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !117, !noalias !118, !noundef !6
  %i.m = xor i64 %.val1.i.i.i, %i.d
  %i.n = zext i64 %i.m to i128
  %i.o = mul nuw nsw i128 %i.n, 6364136223846793005 ; 2 uses
  %i.p = lshr i128 %i.o, 64
  %.masked.i.i.i.i.i.i = and i128 %i.o, 18446744073709551615
  %i.q = xor i128 %i.p, %.masked.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !117, !noalias !118, !noundef !6
  %i.s = zext i64 %.val.i.i.i to i128
  %i.t = mul nuw i128 %i.q, %i.s                  ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = xor i128 %i.u, %i.t
  %i.w = trunc i128 %i.v to i64
  %i.x = urem i64 %i.w, %i.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.x
  %i.z = load atomic i64, ptr %i.y monotonic, align 8, !noalias !119
  %..i.i.i.i = tail call noundef i64 @llvm.smin.i64(i64 %i.z, i64 %.sroa.02.0.i.i) ; 2 uses
  %i.aa = add nuw i64 %.sroa.04.0.i.i, 1          ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %.val1
  br i1 %i.ab, label %_RINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB3_9Estimator3getyEB5_.exit, label %.preheader.i

_RINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB3_9Estimator3getyEB5_.exit: ; preds = %_RNCINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB5_9Estimator3getyE0B7_.exit.i.i, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 9223372036854775807, %bb.a ], [ %..i.i.i.i, %_RNCINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB5_9Estimator3getyE0B7_.exit.i.i ]
  ret i64 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMs_NtCse0aXTpwmm6W_14pingora_limits8inflightNtB4_5Guard4incr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr i8, ptr %i.a, i64 24
  %.val1 = load i64, ptr %i.g, align 8, !noundef !6 ; 2 uses
  %i.h = icmp eq i64 %.val1, 0
  br i1 %i.h, label %_RINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB3_9Estimator4incryEB5_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %_RNCINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB5_9Estimator4incryE0B7_.exit.i.i
  %.sroa.04.0.i.i = phi i64 [ %i.ad, %_RNCINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB5_9Estimator4incryE0B7_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %..i.i.i.i, %_RNCINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB5_9Estimator4incryE0B7_.exit.i.i ], [ 9223372036854775807, %bb.a ]
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.04.0.i.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !125, !noalias !126, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %_RNCINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB5_9Estimator4incryE0B7_.exit.i.i

bb.b:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23, !noalias !127
  unreachable

_RNCINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB5_9Estimator4incryE0B7_.exit.i.i: ; preds = %.preheader.i
  %i.m = load ptr, ptr %i.i, align 8, !alias.scope !125, !noalias !126, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.val1.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !125, !noalias !126, !noundef !6
  %i.o = xor i64 %.val1.i.i.i, %i.d
  %i.p = zext i64 %i.o to i128
  %i.q = mul nuw nsw i128 %i.p, 6364136223846793005 ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %.masked.i.i.i.i.i.i = and i128 %i.q, 18446744073709551615
  %i.s = xor i128 %i.r, %.masked.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !125, !noalias !126, !noundef !6
  %i.u = zext i64 %.val.i.i.i to i128
  %i.v = mul nuw i128 %i.s, %i.u                  ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %i.x = xor i128 %i.w, %i.v
  %i.y = trunc i128 %i.x to i64
  %i.z = urem i64 %i.y, %i.k
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.z
  %i.ab = atomicrmw add ptr %i.aa, i64 %i.f monotonic, align 8, !noalias !127
  %i.ac = add i64 %i.ab, %i.f
  %..i.i.i.i = tail call noundef i64 @llvm.smin.i64(i64 %i.ac, i64 %.sroa.02.0.i.i) ; 2 uses
  %i.ad = add nuw i64 %.sroa.04.0.i.i, 1          ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %.val1
  br i1 %i.ae, label %_RINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB3_9Estimator4incryEB5_.exit, label %.preheader.i

_RINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB3_9Estimator4incryEB5_.exit: ; preds = %_RNCINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB5_9Estimator4incryE0B7_.exit.i.i, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 9223372036854775807, %bb.a ], [ %..i.i.i.i, %_RNCINvMNtCse0aXTpwmm6W_14pingora_limits9estimatorNtB5_9Estimator4incryE0B7_.exit.i.i ]
  ret i64 %.sroa.0.0.i.i
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCse0aXTpwmm6W_14pingora_limits9estimator9EstimatorE9drop_slowBK_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_0
