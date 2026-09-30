Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_runtime-6febc95dcd613b02.xet_runtime.79acea5f420df98a-cgu.09?download=true
inline.NumInlined: 442
inline.NumDeleted: 219
begin_hunk_0_@_RNvMNtNtCsarFSTFZzLuM_11xet_runtime4core6commonNtB2_9XetCommon3new:bb.a
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @_RNvMNtNtCsUrhh0HcRih_5tokio4sync9semaphoreNtB2_9Semaphore3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %.sroa.5, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !365
  %i.h = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 993) 56, i64 noundef range(i64 8, 129) 8) #17, !noalias !365 ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #21, !noalias !365
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.h, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  invoke void @_RNvMNtNtCsUrhh0HcRih_5tokio4sync9semaphoreNtB2_9Semaphore3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
          to label %bb.e unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsarFSTFZzLuM_11xet_runtime.exit29: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore19AdjustableSemaphoreEEB1f_.exit, %bb.h, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %.pn.pn, %bb.h ], [ %.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore19AdjustableSemaphoreEEB1f_.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !368, !nonnull !5, !noundef !5
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !368
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsarFSTFZzLuM_11xet_runtime.exit

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsarFSTFZzLuM_11xet_runtime.exit29
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.r

bb.d:                                             ; preds = %bb.f, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsarFSTFZzLuM_11xet_runtime.exit29

bb.e:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17
  %i.p = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 993) 56, i64 noundef range(i64 8, 129) 8) #17 ; 6 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.g, !prof !4

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #21
          to label %.noexc26 unwind label %bb.d

.noexc26:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  store i64 1, ptr %i.p, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 1, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.535.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  store ptr %i.p, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 896
  %i.s = load i64, ptr %i.r, align 8, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 912
  %i.u = load i64, ptr %i.t, align 8, !noundef !5
  %i.v = invoke noundef nonnull ptr @_RNvMs0_NtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphoreNtB5_19AdjustableSemaphore3new(i64 noundef %i.s, i64 noundef %i.s, i64 noundef %i.u)
          to label %bb.j unwind label %bb.i       ; 3 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore19AdjustableSemaphoreEEB1f_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicyEEECsarFSTFZzLuM_11xet_runtime.exit, %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.z, %bb.i ], [ %.pn, %bb.l ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicyEEECsarFSTFZzLuM_11xet_runtime.exit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.w = load ptr, ptr %i.d, align 8, !alias.scope !371, !nonnull !5, !noundef !5
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !371
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsarFSTFZzLuM_11xet_runtime.exit29

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore19AdjustableSemaphoreEEB1f_.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsarFSTFZzLuM_11xet_runtime.exit29 unwind label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore19AdjustableSemaphoreEEB1f_.exit

bb.j:                                             ; preds = %bb.g
  store ptr %i.v, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17
  %i.aa = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 993) 24, i64 noundef range(i64 8, 129) 8) #17 ; 7 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %bb.n, !prof !4

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #21
          to label %.noexc30 unwind label %bb.m

.noexc30:                                         ; preds = %bb.k
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicyEEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.p, %bb.o, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.m ], [ %i.ag, %bb.o ], [ %i.ag, %bb.p ] ; 2 uses
  %i.ac = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !372
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore19AdjustableSemaphoreEEB1f_.exit

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicyEEECsarFSTFZzLuM_11xet_runtime.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore19AdjustableSemaphoreE9drop_slowBM_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.c) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore19AdjustableSemaphoreEEB1f_.exit unwind label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicyEEECsarFSTFZzLuM_11xet_runtime.exit

bb.n:                                             ; preds = %bb.j
  store i64 1, ptr %i.aa, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 1, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 0, ptr %.sroa.538.0..sroa_idx, align 8
  store ptr %i.aa, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.515.sroa.0)
  %i.af = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @7)
          to label %bb.q unwind label %bb.o       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !373
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicyEEECsarFSTFZzLuM_11xet_runtime.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicyEE9drop_slowCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicyEEECsarFSTFZzLuM_11xet_runtime.exit

bb.q:                                             ; preds = %bb.n
  %i.aj = extractvalue { i64, i64 } %i.af, 0
  %i.ak = extractvalue { i64, i64 } %i.af, 1
  %.sroa.515.sroa.0.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.515.sroa.0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.515.sroa.0.3..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false)
  store ptr %i.h, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aa, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.ao, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %.sroa.414.0..sroa_idx, align 4
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %.sroa.515.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(35) %.sroa.515.sroa.0, i64 35, i1 false)
  %.sroa.515.sroa.4.0..sroa.515.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.aj, ptr %.sroa.515.sroa.4.0..sroa.515.0..sroa_idx.sroa_idx, align 8
  %.sroa.515.sroa.5.0..sroa.515.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ak, ptr %.sroa.515.sroa.5.0..sroa.515.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.515.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.r:                                             ; preds = %bb.l, %bb.h, %bb.c
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsarFSTFZzLuM_11xet_runtime.exit29, %bb.c
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB2_10XetContext11with_config(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(976) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [976 x i8], align 8               ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = invoke noundef i32 @_RNvNtCsG258MDvU3F_3std7process2id()
          to label %bb.b unwind label %.thread45

.thread45:                                        ; preds = %bb.g, %bb.m, %bb.d, %bb.b, %bb.a, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  store i32 %i.i, ptr %i.b, align 4
  %i.j = invoke noundef ptr @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtBY_6option6OptionTmINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEEE4withNCINvMs4_B6_BE_11with_borrowNCNvMB2t_B2r_17current_if_exists0IB1v_INtB1V_3ArcB2r_EEE0B4F_EB2z_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @10, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.c unwind label %.thread45  ; 2 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMNtNtCsUrhh0HcRih_5tokio7runtime6handleNtB2_6Handle11try_current(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h)
          to label %bb.f unwind label %.thread45

bb.e:                                             ; preds = %bb.c, %bb.w, %bb.ab
  %.sroa.018.0 = phi ptr [ %i.ac, %bb.w ], [ %i.ak, %bb.ab ], [ %i.j, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(976) %i.c, ptr noundef nonnull align 8 dereferenceable(976) %1, i64 976, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB2_10XetContext3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(976) %i.c, ptr noundef nonnull %.sroa.018.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -1, ptr %0, align 8
  br label %bb.ac

bb.f:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.h, align 8, !range !13, !noundef !5 ; 3 uses
  %i.m = icmp eq i64 %i.l, 2
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECsarFSTFZzLuM_11xet_runtime.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2_10XetRuntime3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(976) %1)
          to label %bb.z unwind label %.thread45

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noundef !5 ; 2 uses
  store i64 %i.l, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr %i.o, ptr %i.p, align 8
  %i.q = invoke noundef zeroext i1 @_RNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2_10XetRuntime25handle_meets_requirements(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB2_10XetContext25handle_meets_requirements.exit unwind label %bb.x

bb.i:                                             ; preds = %bb.t
  %lpad.thr_comm.split-lp51 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB2_10XetContext25handle_meets_requirements.exit: ; preds = %bb.h
  br i1 %i.q, label %bb.n, label %bb.j

bb.j:                                             ; preds = %_RNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB2_10XetContext25handle_meets_requirements.exit
  %2 = icmp eq i64 %i.l, 0
  %i.r = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !378
  %i.s = icmp eq i64 %i.r, 1                      ; 2 uses
  br i1 %2, label %3, label %bb.l

3:                                                ; preds = %bb.j
  br i1 %i.s, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECsarFSTFZzLuM_11xet_runtime.exit

bb.k:                                             ; preds = %3
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECsarFSTFZzLuM_11xet_runtime.exit unwind label %.thread45

bb.l:                                             ; preds = %bb.j
  br i1 %i.s, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECsarFSTFZzLuM_11xet_runtime.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECsarFSTFZzLuM_11xet_runtime.exit unwind label %.thread45

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.l, %3, %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.g

bb.n:                                             ; preds = %_RNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB2_10XetContext25handle_meets_requirements.exit
  %i.t = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.u = icmp ult i64 %i.t, 3
  br i1 %i.u, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.v = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB4_10XetContext11with_config10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.v, label %bb.p [
    i8 0, label %bb.t
    i8 1, label %bb.q
    i8 2, label %bb.q
  ], !prof !11

bb.p:                                             ; preds = %bb.o
  %i.w = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB4_10XetContext11with_config10___CALLSITE)
          to label %bb.r unwind label %bb.x       ; 2 uses

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.r
  %.sroa.08.0 = phi i8 [ %i.w, %bb.r ], [ %i.v, %bb.o ], [ %i.v, %bb.o ]
  %i.x = load ptr, ptr @_RNvNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB4_10XetContext11with_config10___CALLSITE, align 8, !nonnull !5, !align !7, !noundef !5
  %i.y = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.x, i8 noundef %.sroa.08.0)
          to label %bb.s unwind label %bb.x

bb.r:                                             ; preds = %bb.p
  %i.z = icmp eq i8 %i.w, 0
  br i1 %i.z, label %bb.t, label %bb.q

bb.s:                                             ; preds = %bb.q
  br i1 %i.y, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.o, %bb.n, %bb.v, %bb.s
  %i.aa = load i64, ptr %i.g, align 8, !range !10, !noundef !5
  %i.ab = load ptr, ptr %i.p, align 8, !noundef !5
  %i.ac = invoke noundef nonnull ptr @_RNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2_10XetRuntime13from_external(i64 noundef %i.aa, ptr noundef %i.ab)
          to label %bb.w unwind label %bb.i

bb.u:                                             ; preds = %bb.s
  %i.ad = load ptr, ptr @_RNvNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB4_10XetContext11with_config10___CALLSITE, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @11, ptr %i.e, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 207 to ptr), ptr %i.af, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @12, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.010.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %.sroa.010.sroa.4.0..sroa_idx, align 8
  %.sroa.010.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.010.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.t

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.e

bb.x:                                             ; preds = %bb.u, %bb.q, %bb.p, %bb.h
  %lpad.thr_comm50 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #22
          to label %.thread unwind label %bb.y

bb.y:                                             ; preds = %.thread, %bb.x
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.z:                                             ; preds = %bb.g
  %i.ai = load i64, ptr %i.d, align 8, !range !379, !noundef !5 ; 2 uses
  %.not37 = icmp eq i64 %i.ai, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  br i1 %.not37, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.ai, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %.sroa.432.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_config9XetConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(976) %1)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.ac:                                            ; preds = %bb.e, %bb.aa
  ret void

bb.ad:                                            ; preds = %.thread
  resume { ptr, i32 } %.pn43

.thread:                                          ; preds = %bb.i, %bb.x, %.thread45
  %.pn43 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread45 ], [ %lpad.thr_comm.split-lp51, %bb.i ], [ %lpad.thr_comm50, %bb.x ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_config9XetConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(976) %1) #22
          to label %bb.ad unwind label %bb.y
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB2_10XetContext13from_external(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 0, 2) %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(976) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [976 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(976) %i.a, ptr noundef nonnull align 8 dereferenceable(976) %3, i64 976, i1 false)
  %i.b = invoke noundef nonnull ptr @_RNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2_10XetRuntime13from_external(i64 noundef %1, ptr noundef %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB2_10XetContext3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(976) %3, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_config9XetConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(976) %i.a) #22
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB2_10XetContext25handle_meets_requirements(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2_10XetRuntime25handle_meets_requirements(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB2_10XetContext3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(976) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 7 uses
  %i.b = alloca [992 x i8], align 8               ; 6 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(976) %i.g, ptr noundef nonnull align 8 dereferenceable(976) %1, i64 976, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !392
  %i.h = tail call noundef align 8 dereferenceable_or_null(992) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 993) 992, i64 noundef range(i64 8, 129) 8) #17, !noalias !392 ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.f, !prof !4

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 992) #21
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_config9XetConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(976) %i.g)
          to label %.body6 unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

.body6:                                           ; preds = %.body, %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.h ]
  %i.l = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !393
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEB1h_.exit
end_hunk_0
