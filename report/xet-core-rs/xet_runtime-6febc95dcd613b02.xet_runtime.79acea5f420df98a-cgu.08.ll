Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_runtime-6febc95dcd613b02.xet_runtime.79acea5f420df98a-cgu.08?download=true
inline.NumInlined: 664
inline.NumDeleted: 341
begin_hunk_0_@_RNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2_10XetRuntime25from_external_with_config:bb.a

bb.m:                                             ; preds = %bb.l
  %i.bv = atomicrmw add ptr %i.bo, i64 -1 release, align 8, !noalias !1129
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEB1D_.exit35

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEB1D_.exit35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCsUrhh0HcRih_5tokio7runtime2id2IdINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EB28_.exit.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEB1D_.exit35: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.014.0, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvXsi_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtNtCsUrhh0HcRih_5tokio7runtime2id2IdINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB39_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCsUrhh0HcRih_5tokio7runtime2id2IdINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEEB3C_.exit37 unwind label %.split.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCsUrhh0HcRih_5tokio7runtime2id2IdINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEEB3C_.exit37: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEB1D_.exit35, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.bx = load i64, ptr %i.m, align 8, !range !12, !alias.scope !1132, !noundef !4
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCsUrhh0HcRih_5tokio7runtime2id2IdINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEEB3C_.exit37
  call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  %i.bz = load ptr, ptr %i.n, align 8, !alias.scope !1135, !nonnull !4, !noundef !4
  %i.ca = atomicrmw add ptr %i.bz, i64 -1 release, align 8, !noalias !1135
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECsarFSTFZzLuM_11xet_runtime.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECsarFSTFZzLuM_11xet_runtime.exit

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCsUrhh0HcRih_5tokio7runtime2id2IdINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEEB3C_.exit37
  call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %i.cc = load ptr, ptr %i.n, align 8, !alias.scope !1138, !nonnull !4, !noundef !4
  %i.cd = atomicrmw add ptr %i.cc, i64 -1 release, align 8, !noalias !1138
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECsarFSTFZzLuM_11xet_runtime.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECsarFSTFZzLuM_11xet_runtime.exit

bb.t:                                             ; preds = %bb.u, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCsUrhh0HcRih_5tokio7runtime2id2IdINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EB28_.exit.thread
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync9once_lock8OnceLockNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #28
          to label %.body unwind label %bb.af

bb.u:                                             ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCsUrhh0HcRih_5tokio7runtime2id2IdINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EB28_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native25system_monitor_for_config(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(976) %3)
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.59.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 1, ptr %i.c, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.ch, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.bt, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store i32 %i.bu, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.910.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  store i8 0, ptr %.sroa.910.0..sroa_idx, align 4
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1139
  %i.ci = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 145) 144, i64 noundef 8) #26, !noalias !1139 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.w, label %bb.z, !prof !6

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #27
          to label %.noexc38 unwind label %bb.x, !noalias !1139

.noexc38:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.c) #28
          to label %.body unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.z:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ci, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.ci, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cm = load ptr, ptr %i.k, align 8, !nonnull !4, !align !5, !noundef !4
  %i.cn = invoke noundef nonnull ptr @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeE9downgradeBO_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %bb.ac, %bb.z
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %i.cp = load ptr, ptr %i.h, align 8, !alias.scope !1142, !nonnull !4, !noundef !4
  %i.cq = atomicrmw add ptr %i.cp, i64 -1 release, align 8, !noalias !1142
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.ab, label %.body

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #32
          to label %.body unwind label %bb.af

bb.ac:                                            ; preds = %bb.z
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.ct = invoke noundef ptr @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtNtCsUrhh0HcRih_5tokio7runtime2id2IdINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cs, i64 noundef %.sroa.014.0, ptr noundef nonnull %i.cn)
          to label %bb.ad unwind label %bb.aa     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.ct, ptr %i.e, align 8
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEB1E_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEB1E_.exit unwind label %bb.aa

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEB1E_.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cv = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cv, ptr %i.cw, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_RNvXsi_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtNtCsUrhh0HcRih_5tokio7runtime2id2IdINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB39_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECsarFSTFZzLuM_11xet_runtime.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEB1E_.exit
  ret void

bb.af:                                            ; preds = %bb.ab, %.body, %bb.ai, %bb.t
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ag:                                            ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtNtCsUrhh0HcRih_5tokio7runtime2id2IdINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEEB3C_.exit37

bb.ah:                                            ; preds = %bb.ai, %bb.c
  %.pn2544 = phi { ptr, i32 } [ %.pn, %bb.c ], [ %.pn2545, %bb.ai ]
  resume { ptr, i32 } %.pn2544

bb.ai:                                            ; preds = %.split.thread, %bb.c
  %.pn2545 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn, %bb.c ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #28
          to label %bb.ah unwind label %bb.af
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2_10XetRuntime25handle_meets_requirements(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 10 uses
  %i.h = alloca [32 x i8], align 4                ; 6 uses
  %i.i = alloca [32 x i8], align 4                ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 15 uses
  %.sroa.6.i.i.i.i.i = alloca [24 x i8], align 8  ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 12 uses
  %i.m = alloca [56 x i8], align 8                ; 10 uses
  %i.n = alloca [112 x i8], align 8               ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = load i64, ptr %0, align 8, !range !12, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvMNtNtCsUrhh0HcRih_5tokio7runtime6handleNtB2_6Handle5enter(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr @43, ptr %i.o, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @43, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr null, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1216
  invoke void @_RNvNtNtCsUrhh0HcRih_5tokio4time5sleep5sleep(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.n, i64 noundef 0, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %.noexc unwind label %bb.e, !noalias !1216

.noexc:                                           ; preds = %bb.b
  %i.u = invoke noundef zeroext i1 @_RNvXs_NtNtCsUrhh0HcRih_5tokio4time5sleepNtB4_5SleepNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1e_10XetRuntime25handle_meets_requirements0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB1k_.exit.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNtNtNtCsUrhh0HcRih_5tokio4time5sleep5SleepEECsarFSTFZzLuM_11xet_runtime(ptr noundef nonnull align 8 %i.n) #28
          to label %.body16 unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1e_10XetRuntime25handle_meets_requirements0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB1k_.exit.i: ; preds = %.noexc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNtNtNtCsUrhh0HcRih_5tokio4time5sleep5SleepEECsarFSTFZzLuM_11xet_runtime(ptr noundef nonnull align 8 %i.n)
          to label %.thread unwind label %bb.e

bb.e:                                             ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1e_10XetRuntime25handle_meets_requirements0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB1k_.exit.i, %bb.b
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  br label %.body16

.body16:                                          ; preds = %bb.c, %bb.e
  %eh.lpad-body17 = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.v, %bb.c ]
  %i.y = extractvalue { ptr, i32 } %eh.lpad-body17, 0
  %i.z = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.y)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %.body16
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #29
  unreachable

bb.g:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle10EnterGuardECsarFSTFZzLuM_11xet_runtime.exit
  %.sroa.0.0 = phi i1 [ %spec.select, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle10EnterGuardECsarFSTFZzLuM_11xet_runtime.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

.thread:                                          ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1e_10XetRuntime25handle_meets_requirements0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB1k_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1216
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsarFSTFZzLuM_11xet_runtime.exit

bb.h:                                             ; preds = %.body16
  %i.ab = extractvalue { ptr, ptr } %i.z, 0       ; 4 uses
  %i.ac = extractvalue { ptr, ptr } %i.z, 1       ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = icmp eq ptr %i.ab, null
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsarFSTFZzLuM_11xet_runtime.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.ac, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.ae(ptr noundef nonnull %i.ab)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !7, !invariant.load !4 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsarFSTFZzLuM_11xet_runtime.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !8, !invariant.load !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef range(i64 1, 0) %i.ag, i64 noundef range(i64 1, 536870913) %i.aj) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsarFSTFZzLuM_11xet_runtime.exit

bb.m:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !7, !invariant.load !4 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !8, !invariant.load !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef range(i64 1, 0) %i.am, i64 noundef range(i64 1, 536870913) %i.ap) #26
  br label %.body

.body:                                            ; preds = %bb.bp, %bb.bq, %bb.m, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.dx, %bb.bp ], [ %i.dx, %bb.bq ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle10EnterGuardECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #28
          to label %common.resume unwind label %bb.bz

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.l, %bb.k, %bb.h, %.thread
  %i.aq = phi i1 [ true, %.thread ], [ true, %bb.h ], [ false, %bb.k ], [ false, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1217
  store ptr @27, ptr %i.m, align 8, !noalias !1217
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 11, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1217
  %.sroa.51.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 5 uses
  store i8 0, ptr %.sroa.51.0..sroa_idx.i.i.i.i, align 8, !noalias !1217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1217
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 7 uses
  invoke void @_RINvNtNtCsUrhh0HcRih_5tokio3net4addr15to_socket_addrsReECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 11)
          to label %.noexc19 unwind label %bb.bi, !noalias !1218

.noexc19:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsarFSTFZzLuM_11xet_runtime.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1219
  invoke void @_RNvXNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealedNtB2_10MaybeReadyNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %bb.q unwind label %bb.o, !noalias !1220

default.unreachable:                              ; preds = %bb.ai, %bb.bd, %bb.an
  unreachable

bb.o:                                             ; preds = %.noexc19
  %i.as = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1219
  %i.at = load i16, ptr %i.ar, align 8, !range !1221, !alias.scope !1222, !noalias !1219, !noundef !4
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.at, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %.body24

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  invoke void @_RNvXs5_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtB19_3net11socket_addr10SocketAddrENtNtNtB19_2io5error5ErrorEENtNtNtB19_3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %.body24 unwind label %bb.ar, !noalias !1220

bb.q:                                             ; preds = %.noexc19
  %i.av = load i32, ptr %i.k, align 8, !range !1223, !noalias !1219, !noundef !4 ; 3 uses
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultNtNtNtNtCsUrhh0HcRih_5tokio3net3tcp8listener11TcpListenerNtNtNtB4_2io5error5ErrorEEECsarFSTFZzLuM_11xet_runtime.exit.thread.i.i.i.i, label %bb.r

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultNtNtNtNtCsUrhh0HcRih_5tokio3net3tcp8listener11TcpListenerNtNtNtB4_2io5error5ErrorEEECsarFSTFZzLuM_11xet_runtime.exit.thread.i.i.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1219
  store i8 3, ptr %.sroa.51.0..sroa_idx.i.i.i.i, align 8, !noalias !1219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1217
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1217
  %.old.i.i.i.i = load i16, ptr %i.ar, align 8, !range !1221, !alias.scope !1224, !noalias !1217, !noundef !4
  %.not.i.i.i.i16.old.i.i.i.i = icmp eq i16 %.old.i.i.i.i, -1
  br i1 %.not.i.i.i.i16.old.i.i.i.i, label %bb.bg, label %.thread47

bb.r:                                             ; preds = %bb.q
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.3.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1219
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1219 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i.i.i, i64 24, i1 false), !noalias !1219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1219
  %i.ax = load i16, ptr %i.ar, align 8, !range !1221, !alias.scope !1225, !noalias !1219, !noundef !4
  %.not.i.i15.i.i.i.i.i = icmp eq i16 %i.ax, -1
  br i1 %.not.i.i15.i.i.i.i.i, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealed10MaybeReadyECsarFSTFZzLuM_11xet_runtime.exit17.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  invoke void @_RNvXs5_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtB19_3net11socket_addr10SocketAddrENtNtNtB19_2io5error5ErrorEENtNtNtB19_3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealed10MaybeReadyECsarFSTFZzLuM_11xet_runtime.exit17.i.i.i.i.i unwind label %bb.bi, !noalias !1220

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealed10MaybeReadyECsarFSTFZzLuM_11xet_runtime.exit17.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %i.az = icmp eq i32 %i.av, 2
  br i1 %i.az, label %bb.as, label %bb.t

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealed10MaybeReadyECsarFSTFZzLuM_11xet_runtime.exit17.i.i.i.i.i
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i.i, i64 24, i1 false), !noalias !1219
  store i32 %i.av, ptr %i.j, align 8, !noalias !1219
  %.sroa.646.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %.sroa.3.0.copyload.i.i.i.i.i, ptr %.sroa.646.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1219
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  store ptr %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1219
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i.i, %bb.t
  %.sroa.044.0.i.i.i.i.i = phi ptr [ null, %bb.t ], [ %i.br, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i.i ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1219
  invoke void @_RNvXs_NtNtNtCsUrhh0HcRih_5tokio3net4addr6sealedNtB4_9OneOrMoreNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 4 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %bb.y unwind label %bb.x, !noalias !1220

bb.v:                                             ; preds = %bb.ae, %bb.x
  %.sroa.044.1.i.i.i.i.i = phi ptr [ %.sroa.044.4.i.i.i.i.i, %bb.ae ], [ %.sroa.044.0.i.i.i.i.i, %bb.x ] ; 2 uses
  %.pn3.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn3.i.i.i.i.i, %bb.ae ], [ %i.bg, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1219
  call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  %i.bc = load i32, ptr %i.j, align 8, !range !1227, !alias.scope !1226, !noalias !1219, !noundef !4
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealed9OneOrMoreECsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1228, !noalias !1219, !nonnull !4, !noundef !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.val1.i.i.i.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !1228, !noalias !1219, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1229
  store i64 %.val1.i.i.i.i.i.i, ptr %i.f, align 8, !noalias !1229
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.val.i.i.i.i.i.i, ptr %i.bf, align 8, !noalias !1229
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %.noexc18.i.i.i.i.i unwind label %bb.ar, !noalias !1230

.noexc18.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1229
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealed9OneOrMoreECsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.u
  %i.bg = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.v

bb.y:                                             ; preds = %bb.u
  %i.bh = load i16, ptr %i.i, align 4, !range !1231, !noalias !1219, !noundef !4
  %.not.i.i.i.i.i = icmp eq i16 %i.bh, 2
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.h, ptr noundef nonnull align 4 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !1219
  invoke void @_RNvMNtNtNtCsUrhh0HcRih_5tokio3net3tcp8listenerNtB2_11TcpListener9bind_addr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(32) %i.h)
          to label %bb.ag unwind label %bb.af, !noalias !1220

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1219
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %i.bi = load i32, ptr %i.j, align 8, !range !1227, !alias.scope !1232, !noalias !1219, !noundef !4
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealed9OneOrMoreECsarFSTFZzLuM_11xet_runtime.exit22.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val.i19.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1233, !noalias !1219, !nonnull !4, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.val1.i20.i.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !1233, !noalias !1219, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1234
  store i64 %.val1.i20.i.i.i.i.i, ptr %i.e, align 8, !noalias !1234
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.val.i19.i.i.i.i.i, ptr %i.bl, align 8, !noalias !1234
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.noexc21.i.i.i.i.i unwind label %bb.ac, !noalias !1235

.noexc21.i.i.i.i.i:                               ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1234
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealed9OneOrMoreECsarFSTFZzLuM_11xet_runtime.exit22.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealed9OneOrMoreECsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i.i: ; preds = %bb.ac, %.noexc18.i.i.i.i.i, %bb.v
  %.sroa.044.2.i.i.i.i.i = phi ptr [ %.sroa.044.0.i.i.i.i.i, %bb.ac ], [ %.sroa.044.1.i.i.i.i.i, %bb.v ], [ %.sroa.044.1.i.i.i.i.i, %.noexc18.i.i.i.i.i ]
  %.pn3.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.bm, %bb.ac ], [ %.pn3.pn.i.i.i.i.i, %bb.v ], [ %.pn3.pn.i.i.i.i.i, %.noexc18.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1219
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime(ptr %.sroa.044.2.i.i.i.i.i) #28
          to label %.body24 unwind label %bb.ar, !noalias !1220

bb.ac:                                            ; preds = %bb.am, %bb.ab
  %i.bm = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealed9OneOrMoreECsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealed9OneOrMoreECsarFSTFZzLuM_11xet_runtime.exit22.i.i.i.i.i: ; preds = %.noexc21.i.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1219
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.044.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ad, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCsUrhh0HcRih_5tokio3net3tcp8listenerNtB1v_11TcpListener4bindReE00ECsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i.i

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealed9OneOrMoreECsarFSTFZzLuM_11xet_runtime.exit22.i.i.i.i.i
  %i.bn = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 32) #32
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCsUrhh0HcRih_5tokio3net3tcp8listenerNtB1v_11TcpListener4bindReE00ECsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i.i unwind label %bb.bi, !noalias !1220

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCsUrhh0HcRih_5tokio3net3tcp8listenerNtB1v_11TcpListener4bindReE00ECsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i.i: ; preds = %bb.ad, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealed9OneOrMoreECsarFSTFZzLuM_11xet_runtime.exit22.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i.i = phi ptr [ %.sroa.044.0.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealed9OneOrMoreECsarFSTFZzLuM_11xet_runtime.exit22.i.i.i.i.i ], [ %i.bn, %bb.ad ]
  store ptr %.sroa.02.0.i.i.i.i.i.i, ptr %i.ba, align 8, !noalias !1219
  store i64 2, ptr %i.g, align 8, !noalias !1219
  br label %bb.av

bb.ae:                                            ; preds = %bb.aq, %bb.af
  %.sroa.044.4.i.i.i.i.i = phi ptr [ %i.br, %bb.aq ], [ %.sroa.044.0.i.i.i.i.i, %bb.af ]
  %.pn3.i.i.i.i.i = phi { ptr, i32 } [ %i.cl, %bb.aq ], [ %i.bo, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1219
  br label %bb.v

bb.af:                                            ; preds = %bb.z
  %i.bo = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.ae

bb.ag:                                            ; preds = %bb.z
  %i.bp = load i64, ptr %i.g, align 8, !range !15, !noalias !1219, !noundef !4
  %i.bq = icmp eq i64 %i.bp, 2
  br i1 %i.bq, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.br = load ptr, ptr %i.ba, align 8, !noalias !1219, !nonnull !4, !noundef !4 ; 2 uses
  %i.bs = icmp eq ptr %.sroa.044.0.i.i.i.i.i, null
  br i1 %i.bs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1219
  %i.bt = ptrtoint ptr %.sroa.044.0.i.i.i.i.i to i64 ; 2 uses
  %i.bu = and i64 %i.bt, 3
  switch i64 %i.bu, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i.i.i
    i64 3, label %bb.aj
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i.i.i
    i64 1, label %bb.ak
  ], !prof !17

bb.aj:                                            ; preds = %bb.ai
  %i.bv = icmp ult ptr %.sroa.044.0.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.bw = and i64 %i.bt, 1095216660480
  %i.bx = icmp ne i64 %i.bw, 1095216660480
  call void @llvm.assume(i1 %i.bv)
  call void @llvm.assume(i1 %i.bx)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.by = getelementptr i8, ptr %.sroa.044.0.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  store ptr %i.by, ptr %i.bb, align 8, !alias.scope !1236, !noalias !1219
  store i8 3, ptr %i.d, align 8, !alias.scope !1236, !noalias !1219
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i.i.i unwind label %bb.aq, !noalias !1220

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1219
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.i.i.i.i.i

bb.al:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1219
  call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  %i.bz = load i32, ptr %i.j, align 8, !range !1227, !alias.scope !1237, !noalias !1219, !noundef !4
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealed9OneOrMoreECsarFSTFZzLuM_11xet_runtime.exit28.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val.i25.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1238, !noalias !1219, !nonnull !4, !noundef !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.val1.i26.i.i.i.i.i = load i64, ptr %i.cb, align 8, !alias.scope !1238, !noalias !1219, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1239
  store i64 %.val1.i26.i.i.i.i.i, ptr %i.c, align 8, !noalias !1239
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.val.i25.i.i.i.i.i, ptr %i.cc, align 8, !noalias !1239
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc27.i.i.i.i.i unwind label %bb.ac, !noalias !1240

.noexc27.i.i.i.i.i:                               ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1239
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealed9OneOrMoreECsarFSTFZzLuM_11xet_runtime.exit28.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealed9OneOrMoreECsarFSTFZzLuM_11xet_runtime.exit28.i.i.i.i.i: ; preds = %.noexc27.i.i.i.i.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1219
  %i.cd = icmp eq ptr %.sroa.044.0.i.i.i.i.i, null
  br i1 %i.cd, label %bb.av, label %bb.an

bb.an:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealed9OneOrMoreECsarFSTFZzLuM_11xet_runtime.exit28.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1219
  %i.ce = ptrtoint ptr %.sroa.044.0.i.i.i.i.i to i64 ; 2 uses
  %i.cf = and i64 %i.ce, 3
  switch i64 %i.cf, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i29.i.i.i.i.i
    i64 3, label %bb.ao
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i29.i.i.i.i.i
    i64 1, label %bb.ap
  ], !prof !17

bb.ao:                                            ; preds = %bb.an
  %i.cg = icmp ult ptr %.sroa.044.0.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ch = and i64 %i.ce, 1095216660480
  %i.ci = icmp ne i64 %i.ch, 1095216660480
  call void @llvm.assume(i1 %i.cg)
end_hunk_0
