Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.10?download=true
inline.NumInlined: 6305
inline.NumDeleted: 3398
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvXs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc11try_collectINtNtB8_3vec6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeEINtB6_15TryFromIteratorINtNtCskKLDkoKarTP_4core6result6ResultB1o_NtNtNtBa_5error3oom11OutOfMemoryEB3l_E13try_from_iterINtNtNtNtB2K_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENCINvMsv_B5B_NtB5B_8FuncType27with_finality_and_supertypeINtB4Q_3VecB5z_EINtCs6ObhOmryMwL_8smallvec8SmallVecAB5z_j4_EEs_0EECs7gfv9tzbXmh_6yara_x:bb.a
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE7reserveCs7gfv9tzbXmh_6yara_x.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENCINvMsv_B1Z_NtB1Z_8FuncType27with_finality_and_supertypeINtB1e_3VecB1X_EINtCs6ObhOmryMwL_8smallvec8SmallVecAB1X_j4_EEs_0EECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.p

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENCINvMsv_B1M_NtB1M_8FuncType27with_finality_and_supertypeINtB11_3VecB1K_EINtCs6ObhOmryMwL_8smallvec8SmallVecAB1K_j4_EEs_0ENtNtNtB9_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3494
  %.pr = load i32, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq i32 %.pr, -2
  br i1 %.not, label %.loopexit64, label %bb.f

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENCINvMsv_B1M_NtB1M_8FuncType27with_finality_and_supertypeINtB11_3VecB1K_EINtCs6ObhOmryMwL_8smallvec8SmallVecAB1K_j4_EEs_0ENtNtNtB9_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit
  %.sroa.612.0.copyload = load ptr, ptr %.sroa.612.0..sroa_idx, align 8 ; 3 uses
  %i.z = icmp eq i32 %.pr, -1
  br i1 %i.z, label %bb.i, label %bb.j

.loopexit64:                                      ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENCINvMsv_B1M_NtB1M_8FuncType27with_finality_and_supertypeINtB11_3VecB1K_EINtCs6ObhOmryMwL_8smallvec8SmallVecAB1K_j4_EEs_0ENtNtNtB9_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit, %bb.m, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENCINvMsv_B1Z_NtB1Z_8FuncType27with_finality_and_supertypeINtB1e_3VecB1X_EINtCs6ObhOmryMwL_8smallvec8SmallVecAB1X_j4_EEs_0EECs7gfv9tzbXmh_6yara_x.exit43 unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENCINvMsv_B1Z_NtB1Z_8FuncType27with_finality_and_supertypeINtB1e_3VecB1X_EINtCs6ObhOmryMwL_8smallvec8SmallVecAB1X_j4_EEs_0EECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.e, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %lpad.phi, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #43
          to label %.thread unwind label %bb.p

bb.g:                                             ; preds = %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE4pushCs7gfv9tzbXmh_6yara_x.exit, %.loopexit64
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENCINvMsv_B1Z_NtB1Z_8FuncType27with_finality_and_supertypeINtB1e_3VecB1X_EINtCs6ObhOmryMwL_8smallvec8SmallVecAB1X_j4_EEs_0EECs7gfv9tzbXmh_6yara_x.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENCINvMsv_B1Z_NtB1Z_8FuncType27with_finality_and_supertypeINtB1e_3VecB1X_EINtCs6ObhOmryMwL_8smallvec8SmallVecAB1X_j4_EEs_0EECs7gfv9tzbXmh_6yara_x.exit43: ; preds = %.loopexit64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeEECs7gfv9tzbXmh_6yara_x.exit.i, %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENCINvMsv_B1Z_NtB1Z_8FuncType27with_finality_and_supertypeINtB1e_3VecB1X_EINtCs6ObhOmryMwL_8smallvec8SmallVecAB1X_j4_EEs_0EECs7gfv9tzbXmh_6yara_x.exit43
  ret void

bb.i:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.612.0.copyload) ]
  br label %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE4pushCs7gfv9tzbXmh_6yara_x.exit

bb.j:                                             ; preds = %bb.f
  %.sroa.69.0.copyload = load i32, ptr %.sroa.69.0..sroa_idx, align 4
  %i.ab = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !3501, !noalias !3506, !noundef !17
  %i.ac = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ab, i64 noundef 1, i64 noundef 4, i64 noundef 16)
          to label %.noexc44 unwind label %.loopexit

.noexc44:                                         ; preds = %bb.j
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %.not.i.i = icmp eq i64 %i.ad, -1
  %i.ae = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !3508, !noalias !3506, !noundef !17 ; 5 uses
  br i1 %.not.i.i, label %bb.k, label %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE7reserveCs7gfv9tzbXmh_6yara_x.exit.i

_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE7reserveCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %.noexc44
  %i.af = icmp ult i64 %i.ae, 576460752303423488
  call void @llvm.assume(i1 %i.af)
  %i.ag = shl nuw nsw i64 %i.ae, 4
  %i.ah = add nuw i64 %i.ag, 16
  %i.ai = invoke noundef nonnull ptr @_RNvMsn_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynError11new_oom_ptr(i64 noundef %i.ah)
          to label %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE4pushCs7gfv9tzbXmh_6yara_x.exit unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %.noexc44
  %i.aj = load i64, ptr %i.e, align 8, !range !253, !alias.scope !3509, !noalias !3512, !noundef !17
  %i.ak = icmp eq i64 %i.ae, %i.aj
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #44
          to label %bb.m unwind label %.loopexit

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.al = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3509, !noalias !3512, !nonnull !17, !noundef !17
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ae ; 3 uses
  store i32 %.pr, ptr %i.am, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 %.sroa.69.0.copyload, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.612.0.copyload, ptr %.sroa.3.0..sroa_idx, align 4
  %i.an = add i64 %i.ae, 1
  store i64 %i.an, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !3509, !noalias !3512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ao = load ptr, ptr %i.p, align 8, !alias.scope !3514, !noalias !3517, !nonnull !17, !noundef !17
  %i.ap = load ptr, ptr %i.q, align 8, !alias.scope !3514, !noalias !3517, !nonnull !17, !noundef !17 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ao
  br i1 %i.aq, label %.loopexit64, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i

_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE4pushCs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE7reserveCs7gfv9tzbXmh_6yara_x.exit.i, %bb.i
  %.sink = phi ptr [ %.sroa.612.0.copyload, %bb.i ], [ %i.ai, %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE7reserveCs7gfv9tzbXmh_6yara_x.exit.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ar, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENCINvMsv_B1Z_NtB1Z_8FuncType27with_finality_and_supertypeINtB1e_3VecB1X_EINtCs6ObhOmryMwL_8smallvec8SmallVecAB1X_j4_EEs_0EECs7gfv9tzbXmh_6yara_x.exit48 unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENCINvMsv_B1Z_NtB1Z_8FuncType27with_finality_and_supertypeINtB1e_3VecB1X_EINtCs6ObhOmryMwL_8smallvec8SmallVecAB1X_j4_EEs_0EECs7gfv9tzbXmh_6yara_x.exit48: ; preds = %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE4pushCs7gfv9tzbXmh_6yara_x.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENCINvMsv_B1Z_NtB1Z_8FuncType27with_finality_and_supertypeINtB1e_3VecB1X_EINtCs6ObhOmryMwL_8smallvec8SmallVecAB1X_j4_EEs_0EECs7gfv9tzbXmh_6yara_x.exit48
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENCINvMsv_B1Z_NtB1Z_8FuncType27with_finality_and_supertypeINtB1e_3VecB1X_EINtCs6ObhOmryMwL_8smallvec8SmallVecAB1X_j4_EEs_0EECs7gfv9tzbXmh_6yara_x.exit48
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.p:                                             ; preds = %bb.r, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENCINvMsv_B1Z_NtB1Z_8FuncType27with_finality_and_supertypeINtB1e_3VecB1X_EINtCs6ObhOmryMwL_8smallvec8SmallVecAB1X_j4_EEs_0EECs7gfv9tzbXmh_6yara_x.exit
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.q:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.av, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.h

.thread:                                          ; preds = %bb.r, %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENCINvMsv_B1Z_NtB1Z_8FuncType27with_finality_and_supertypeINtB1e_3VecB1X_EINtCs6ObhOmryMwL_8smallvec8SmallVecAB1X_j4_EEs_0EECs7gfv9tzbXmh_6yara_x.exit
  %.pn3855 = phi { ptr, i32 } [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENCINvMsv_B1Z_NtB1Z_8FuncType27with_finality_and_supertypeINtB1e_3VecB1X_EINtCs6ObhOmryMwL_8smallvec8SmallVecAB1X_j4_EEs_0EECs7gfv9tzbXmh_6yara_x.exit ], [ %i.as, %bb.n ], [ %i.aw, %bb.r ]
  resume { ptr, i32 } %.pn3855

bb.r:                                             ; preds = %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %.thread unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc11try_collectINtNtB8_3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionEINtB6_15TryFromIteratorINtNtCskKLDkoKarTP_4core6result6ResultB1o_NtNtNtBa_5error5error5ErrorEB3m_E13try_from_iterINtNtNtNtB2L_4iter8adapters3map3MapIB49_IB49_INtNtNtB2L_5slice4iter4IterNtNtCsbhAup8j5lif_16wasmtime_environ6module11InitializerENCNvMs1_B5k_NtB5k_6Module7imports0ENCNvMs0_NtB1s_6moduleNtB6U_6Module7imports0ENCNvMs2_B1q_INtB1q_6LinkerNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextE16__instantiate_pre0EEB80_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  %i.b = alloca [200 x i8], align 8               ; 8 uses
  %i.c = alloca [200 x i8], align 8               ; 9 uses
  %.sroa.6.i.sroa.7.i = alloca [72 x i8], align 8 ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 5 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  %i.i = alloca [80 x i8], align 8                ; 6 uses
  %i.j = alloca [96 x i8], align 8                ; 5 uses
  %i.k = alloca [96 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 12 uses
  %i.m = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.1066 = alloca [72 x i8], align 8         ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val34 = load ptr, ptr %i.o, align 8, !nonnull !17, !noundef !17 ; 3 uses
  %i.p = ptrtoint ptr %.val34 to i64
  %i.q = ptrtoint ptr %.val to i64
  %i.r = sub nuw i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3519
  store i64 0, ptr %i.l, align 8, !noalias !3519
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3519
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3519
  %i.t = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0, i64 noundef %i.s, i64 noundef 8, i64 noundef 88)
          to label %.noexc.i unwind label %bb.d, !noalias !3519

.noexc.i:                                         ; preds = %bb.a
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %.not.i.i = icmp eq i64 %i.u, -1
  br i1 %.not.i.i, label %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionE13with_capacityCs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  %.val.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3522, !noalias !3519, !noundef !17 ; 2 uses
  %i.v = icmp ult i64 %.val.i.i, 104811045873349726
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %.val.i.i, %i.s          ; 2 uses
  %2 = mul nuw i64 %i.w, 88
  %3 = icmp samesign ugt i64 %i.w, 209622091746699450
  br i1 %3, label %bb.c, label %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionE7reserve0Cs7gfv9tzbXmh_6yara_x.exit.i.i, !prof !19

bb.c:                                             ; preds = %bb.b
  br label %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionE7reserve0Cs7gfv9tzbXmh_6yara_x.exit.i.i

_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionE7reserve0Cs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i = phi i64 [ -1, %bb.c ], [ %2, %bb.b ]
  %i.x = invoke noundef nonnull ptr @_RNvMsn_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynError11new_oom_ptr(i64 noundef %.sroa.0.0.i.i.i)
          to label %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionE7reserveCs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.d, !noalias !3519

bb.d:                                             ; preds = %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionE7reserve0Cs7gfv9tzbXmh_6yara_x.exit.i.i, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #43
          to label %common.resume unwind label %bb.g, !noalias !3519

_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionE7reserveCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionE7reserve0Cs7gfv9tzbXmh_6yara_x.exit.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionE13with_capacityCs7gfv9tzbXmh_6yara_x.exit.thread unwind label %bb.e, !noalias !3519

bb.e:                                             ; preds = %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionE7reserveCs7gfv9tzbXmh_6yara_x.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.f, !noalias !3519

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41, !noalias !3519
  unreachable

common.resume:                                    ; preds = %.body, %bb.ah, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.cn, %bb.ah ], [ %i.y, %bb.d ], [ %i.z, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionE13with_capacityCs7gfv9tzbXmh_6yara_x.exit.thread: ; preds = %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionE7reserveCs7gfv9tzbXmh_6yara_x.exit.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l), !noalias !3519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3519
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41, !noalias !3519
  unreachable

_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionE13with_capacityCs7gfv9tzbXmh_6yara_x.exit: ; preds = %.noexc.i
  %.sroa.0.0.copyload = load i64, ptr %i.l, align 8 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.9.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3519
  %i.ac = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionE13with_capacityCs7gfv9tzbXmh_6yara_x.exit.thread, %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionE13with_capacityCs7gfv9tzbXmh_6yara_x.exit
  %.sroa.6.070 = phi ptr [ %i.x, %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionE13with_capacityCs7gfv9tzbXmh_6yara_x.exit.thread ], [ %.sroa.6.0.copyload, %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionE13with_capacityCs7gfv9tzbXmh_6yara_x.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.070) ]
  %i.ad = call noundef nonnull ptr @_RNvXs4_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB7_3oom11OutOfMemoryE4fromCs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %.sroa.6.070)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.i:                                             ; preds = %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker10DefinitionE13with_capacityCs7gfv9tzbXmh_6yara_x.exit
  store i64 %.sroa.0.0.copyload, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %.sroa.6.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 5 uses
  store i64 %.sroa.9.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.761.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.761.0.copyload = load ptr, ptr %.sroa.761.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.962.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.962.0.copyload = load ptr, ptr %.sroa.962.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1066)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3525
  %i.ag = icmp eq ptr %.val, %.val34
  br i1 %i.ag, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtCsbhAup8j5lif_16wasmtime_environ6module11InitializerENCNvMs1_B1s_NtB1s_6Module7imports0ENCNvMs0_NtNtCsiOkGTpNE17y_8wasmtime7runtime6moduleNtB32_6Module7imports0ENtNtNtB9_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.761.0.copyload) ]
  %i.ah = getelementptr i8, ptr %.sroa.761.0.copyload, i64 8 ; 2 uses
  %i.ai = getelementptr i8, ptr %.sroa.761.0.copyload, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %.sroa.9.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.i.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.618.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %.sroa.821.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.af
  %.sroa.059.0149 = phi ptr [ %.val, %.lr.ph ], [ %i.al, %bb.af ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.059.0149, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3529)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.059.0149, i64 8
  %i.an = load i32, ptr %i.am, align 4, !range !1644, !alias.scope !3529, !noalias !3532, !noundef !17 ; 2 uses
  %.val9.i.i.i.i = load ptr, ptr %i.ah, align 8, !noalias !3540 ; 2 uses
  %.val10.i.i.i.i = load i64, ptr %i.ai, align 8, !noalias !3540 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3540
  store i32 %i.an, ptr %i.h, align 4, !noalias !3540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3540
  store i32 %i.an, ptr %i.g, align 4, !noalias !3540
  %i.ao = invoke noundef i64 @_RNvMsc_NtCsbhAup8j5lif_16wasmtime_environ11string_poolNtB5_4Atom5index(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.j
  %i.ap = icmp ult i64 %.val10.i.i.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp ult i64 %i.ao, %.val10.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3540
  br i1 %i.aq, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.noexc
  %i.ar = invoke noundef i64 @_RNvMsc_NtCsbhAup8j5lif_16wasmtime_environ11string_poolNtB5_4Atom5index(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.h)
          to label %.noexc38 unwind label %.loopexit ; 3 uses

.noexc38:                                         ; preds = %bb.k
  %i.as = icmp ult i64 %i.ar, %.val10.i.i.i.i
  br i1 %i.as, label %bb.l, label %.invoke

.invoke:                                          ; preds = %.noexc41, %.noexc38
  %i.at = phi i64 [ %i.ar, %.noexc38 ], [ %i.be, %.noexc41 ]
  %i.au = phi i64 [ %.val10.i.i.i.i, %.noexc38 ], [ %.val8.i.i.i.i, %.noexc41 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #42
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.l:                                             ; preds = %.noexc38
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i) ]
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.val9.i.i.i.i, i64 %i.ar ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !3540, !nonnull !17, !noundef !17
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !3540, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3540
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.059.0149, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !range !1644, !alias.scope !3529, !noalias !3532, !noundef !17 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.ah, align 8, !noalias !3540 ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.ai, align 8, !noalias !3540 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3540
  store i32 %i.ba, ptr %i.f, align 4, !noalias !3540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3540
  store i32 %i.ba, ptr %i.e, align 4, !noalias !3540
  %i.bb = invoke noundef i64 @_RNvMsc_NtCsbhAup8j5lif_16wasmtime_environ11string_poolNtB5_4Atom5index(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e)
          to label %.noexc40 unwind label %.loopexit

.noexc40:                                         ; preds = %bb.l
  %i.bc = icmp ult i64 %.val8.i.i.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp ult i64 %i.bb, %.val8.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3540
  br i1 %i.bd, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.noexc40
  %i.be = invoke noundef i64 @_RNvMsc_NtCsbhAup8j5lif_16wasmtime_environ11string_poolNtB5_4Atom5index(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f)
          to label %.noexc41 unwind label %.loopexit ; 3 uses

.noexc41:                                         ; preds = %bb.m
  %i.bf = icmp ult i64 %i.be, %.val8.i.i.i.i
  br i1 %i.bf, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsbhAup8j5lif_16wasmtime_environ6module11InitializerENCNvMs1_B1o_NtB1o_6Module7imports0ENtNtNtB9_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i, label %.invoke

bb.n:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3540
  br label %.invoke268

.invoke268:                                       ; preds = %bb.o, %bb.n
  %i.bg = phi ptr [ @239, %bb.n ], [ @240, %bb.o ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg) #42
          to label %.cont269 unwind label %.loopexit.split-lp

.cont269:                                         ; preds = %.invoke268
  unreachable

bb.o:                                             ; preds = %.noexc40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3540
  br label %.invoke268

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsbhAup8j5lif_16wasmtime_environ6module11InitializerENCNvMs1_B1o_NtB1o_6Module7imports0ENtNtNtB9_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %.noexc41
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i, i64 %i.be ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !3540, !nonnull !17, !noundef !17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !3540, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3540
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  %i.bl = load i32, ptr %.sroa.059.0149, align 4, !range !353, !alias.scope !3529, !noalias !3532, !noundef !17
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.059.0149, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !alias.scope !3529, !noalias !3532, !noundef !17
  invoke void @_RNvMs1_NtCsbhAup8j5lif_16wasmtime_environ6moduleNtB5_6Module7type_of(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.8.0.copyload, i32 noundef %i.bl, i32 noundef %i.bn)
          to label %.noexc45 unwind label %.loopexit

.noexc45:                                         ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsbhAup8j5lif_16wasmtime_environ6module11InitializerENCNvMs1_B1o_NtB1o_6Module7imports0ENtNtNtB9_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i
  %.sroa.4.0.copyload3.i.i = load i64, ptr %i.aj, align 8, !noalias !3541 ; 2 uses
  %.not.i.i35 = icmp eq i64 %.sroa.4.0.copyload3.i.i, -1
  br i1 %.not.i.i35, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtCsbhAup8j5lif_16wasmtime_environ6module11InitializerENCNvMs1_B1s_NtB1s_6Module7imports0ENCNvMs0_NtNtCsiOkGTpNE17y_8wasmtime7runtime6moduleNtB32_6Module7imports0ENtNtNtB9_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4IterNtNtCsbhAup8j5lif_16wasmtime_environ6module11InitializerENCNvMs1_B1s_NtB1s_6Module7imports0ENCNvMs0_NtNtCsiOkGTpNE17y_8wasmtime7runtime6moduleNtB32_6Module7imports0ENtNtNtB9_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i

end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE16into_boxed_sliceCs7gfv9tzbXmh_6yara_x:bb.a
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE13shrink_to_fitCs7gfv9tzbXmh_6yara_x.exit.thread, label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !5484, !nonnull !17, !noundef !17 ; 4 uses
  store i64 0, ptr %1, align 8, !alias.scope !5484
  store ptr inttoptr (i64 4 to ptr), ptr %i.i, align 8, !alias.scope !5484
  store i64 0, ptr %i.c, align 8, !alias.scope !5484
  %i.k = icmp samesign ugt i64 %i.f, 576460752303423487
  br i1 %i.k, label %.split48.i, label %.split.i

.split48.i:                                       ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @252, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @253, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @294) #42
          to label %.noexc unwind label %.body.thread12

.noexc:                                           ; preds = %.split48.i
  unreachable

.split.i:                                         ; preds = %bb.d
  %i.l = shl nuw nsw i64 %i.f, 4
  %i.m = shl nuw nsw i64 %i.d, 4                  ; 2 uses
  %i.n = tail call noundef align 4 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.j, i64 noundef %i.l, i64 noundef range(i64 1, 5) 4, i64 noundef %i.m) #40, !noalias !5484 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.split.i
  %i.p = invoke noundef nonnull ptr @_RNvMsn_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynError11new_oom_ptr(i64 noundef %i.m)
          to label %.noexc5 unwind label %.body.thread12

.noexc5:                                          ; preds = %bb.e
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeEECs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.noexc5
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body.thread unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeEECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %.noexc5
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.o unwind label %bb.l

bb.h:                                             ; preds = %.split.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeEECs7gfv9tzbXmh_6yara_x.exit.i61.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body.thread unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeEECs7gfv9tzbXmh_6yara_x.exit.i61.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE13shrink_to_fitCs7gfv9tzbXmh_6yara_x.exit.thread17 unwind label %bb.k

_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE13shrink_to_fitCs7gfv9tzbXmh_6yara_x.exit.thread17: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeEECs7gfv9tzbXmh_6yara_x.exit.i61.i
  store i64 %i.d, ptr %1, align 8, !alias.scope !5484
  store ptr %i.n, ptr %i.i, align 8, !alias.scope !5484
  store i64 %i.d, ptr %i.c, align 8, !alias.scope !5484
  br label %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE13shrink_to_fitCs7gfv9tzbXmh_6yara_x.exit.thread

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeEECs7gfv9tzbXmh_6yara_x.exit.i61.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread:                                     ; preds = %bb.f, %bb.i, %bb.k, %bb.l
  %storemerge55.i = phi i64 [ %i.d, %bb.k ], [ %i.d, %bb.i ], [ %i.f, %bb.f ], [ %i.f, %bb.l ]
  %storemerge.i = phi ptr [ %i.n, %bb.k ], [ %i.n, %bb.i ], [ %i.j, %bb.f ], [ %i.j, %bb.l ]
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.s, %bb.i ], [ %i.q, %bb.f ], [ %i.v, %bb.l ]
  store i64 %storemerge55.i, ptr %1, align 8, !alias.scope !5484
  store ptr %storemerge.i, ptr %i.i, align 8, !alias.scope !5484
  store i64 %i.d, ptr %i.c, align 8, !alias.scope !5484
  br label %bb.s

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeEECs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.m:                                             ; preds = %bb.c
  %i.w = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 noundef 4, i64 noundef 16)
          to label %.noexc6 unwind label %.body.thread12 ; 2 uses

.noexc6:                                          ; preds = %bb.m
  %i.x = extractvalue { i64, i64 } %i.w, 0        ; 2 uses
  %.not59.i = icmp eq i64 %i.x, -1
  br i1 %.not59.i, label %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE13shrink_to_fitCs7gfv9tzbXmh_6yara_x.exit.thread, label %bb.n, !prof !239

bb.n:                                             ; preds = %.noexc6
  %i.y = extractvalue { i64, i64 } %i.w, 1
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.y) #39
          to label %.noexc7 unwind label %.body.thread12

.noexc7:                                          ; preds = %bb.n
  unreachable

.body.thread12:                                   ; preds = %bb.n, %.split48.i, %bb.e, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeEECs7gfv9tzbXmh_6yara_x.exit.i.i
  store i64 %i.f, ptr %1, align 8, !alias.scope !5484
  store ptr %i.j, ptr %i.i, align 8, !alias.scope !5484
  store i64 %i.d, ptr %i.c, align 8, !alias.scope !5484
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.z, align 8
  store ptr null, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %eh.lpad-body11, %bb.s ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.o
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.r

_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE13shrink_to_fitCs7gfv9tzbXmh_6yara_x.exit.thread: ; preds = %.noexc6, %bb.c, %bb.a, %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE13shrink_to_fitCs7gfv9tzbXmh_6yara_x.exit.thread17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ac = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE16into_boxed_sliceCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.af, align 8
  br label %bb.r

bb.r:                                             ; preds = %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeE13shrink_to_fitCs7gfv9tzbXmh_6yara_x.exit.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeEECs7gfv9tzbXmh_6yara_x.exit
  ret void

bb.s:                                             ; preds = %.body.thread12, %.body.thread
  %eh.lpad-body11 = phi { ptr, i32 } [ %.pn.i, %.body.thread ], [ %lpad.thr_comm, %.body.thread12 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types11WasmValTypeEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #43
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeE13with_capacityCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.b = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %1, i64 noundef 8, i64 noundef 104)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.noexc
  %.val.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5487, !noundef !17 ; 2 uses
  %i.d = icmp ult i64 %.val.i, 88686269585142076
  call void @llvm.assume(i1 %i.d)
  %i.e = call i64 @llvm.uadd.sat.i64(i64 %.val.i, i64 %1) ; 2 uses
  %2 = mul nuw i64 %i.e, 104
  %3 = icmp ugt i64 %i.e, 177372539170284150
  br i1 %3, label %bb.c, label %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeE7reserve0Cs7gfv9tzbXmh_6yara_x.exit.i, !prof !19

bb.c:                                             ; preds = %bb.b
  br label %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeE7reserve0Cs7gfv9tzbXmh_6yara_x.exit.i

_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeE7reserve0Cs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi i64 [ -1, %bb.c ], [ %2, %bb.b ]
  %i.f = invoke noundef nonnull ptr @_RNvMsn_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynError11new_oom_ptr(i64 noundef %.sroa.0.0.i.i)
          to label %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeE7reserveCs7gfv9tzbXmh_6yara_x.exit unwind label %bb.d

bb.d:                                             ; preds = %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeE7reserve0Cs7gfv9tzbXmh_6yara_x.exit.i, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #43
          to label %common.resume unwind label %bb.i

_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeE7reserveCs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeE7reserve0Cs7gfv9tzbXmh_6yara_x.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.e

bb.e:                                             ; preds = %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeE7reserveCs7gfv9tzbXmh_6yara_x.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeE7reserveCs7gfv9tzbXmh_6yara_x.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.h

bb.g:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentE4pushCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5490, !noundef !17
  %i.d = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef 1, i64 noundef 8, i64 noundef 32)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.a
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %.not.i = icmp eq i64 %i.e, -1
  br i1 %.not.i, label %bb.d, label %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentE7reserve0Cs7gfv9tzbXmh_6yara_x.exit.i

_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentE7reserve0Cs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %.noexc
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !5490, !noundef !17 ; 2 uses
  %i.f = icmp ult i64 %.val.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.f)
  %i.g = shl nuw nsw i64 %.val.i, 5
  %i.h = add nuw i64 %i.g, 32
  %i.i = invoke noundef nonnull ptr @_RNvMsn_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynError11new_oom_ptr(i64 noundef %i.h)
          to label %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentE7reserveCs7gfv9tzbXmh_6yara_x.exit unwind label %bb.j

_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentE7reserveCs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentE7reserve0Cs7gfv9tzbXmh_6yara_x.exit.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext6ValRawENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentE7reserveCs7gfv9tzbXmh_6yara_x.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext6ValRawENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %common.resume unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.f, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.u, %bb.j ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentE7reserveCs7gfv9tzbXmh_6yara_x.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext6ValRawENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.i

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.l = load i64, ptr %i.b, align 8, !alias.scope !5493, !noalias !5496, !noundef !17 ; 3 uses
  %i.m = load i64, ptr %0, align 8, !range !253, !alias.scope !5493, !noalias !5496, !noundef !17
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.h unwind label %bb.f, !noalias !5496

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #43
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !5493, !noalias !5496, !nonnull !17, !noundef !17
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.t = add i64 %i.l, 1
  store i64 %i.t, ptr %i.b, align 8, !alias.scope !5493, !noalias !5496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentECs7gfv9tzbXmh_6yara_x.exit
  %.sroa.0.0 = phi ptr [ %i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentECs7gfv9tzbXmh_6yara_x.exit ], [ null, %bb.h ]
  ret ptr %.sroa.0.0

bb.j:                                             ; preds = %bb.a, %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentE7reserve0Cs7gfv9tzbXmh_6yara_x.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #43
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentE7reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !17
  %i.c = tail call { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 32)
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.a, align 8, !noundef !17 ; 2 uses
  %i.e = icmp ult i64 %.val, 288230376151711744
  tail call void @llvm.assume(i1 %i.e)
  %i.f = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 %1) ; 2 uses
  %i.g = shl nuw i64 %i.f, 5
  %i.h = icmp ugt i64 %i.f, 576460752303423487
  br i1 %i.h, label %bb.c, label %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentE7reserve0Cs7gfv9tzbXmh_6yara_x.exit, !prof !19

bb.c:                                             ; preds = %bb.b
  br label %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentE7reserve0Cs7gfv9tzbXmh_6yara_x.exit

_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentE7reserve0Cs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ -1, %bb.c ], [ %i.g, %bb.b ]
  %i.i = tail call noundef nonnull ptr @_RNvMsn_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynError11new_oom_ptr(i64 noundef %.sroa.0.0.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentE7reserve0Cs7gfv9tzbXmh_6yara_x.exit
  %.sroa.0.0 = phi ptr [ %i.i, %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentE7reserve0Cs7gfv9tzbXmh_6yara_x.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE13with_capacityCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.b = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %1, i64 noundef 8, i64 noundef 32)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.noexc
end_hunk_1
begin_hunk_2_@_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E13with_capacityCs7gfv9tzbXmh_6yara_x
declare hidden void @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E13with_capacityCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB10_11nfa_builderINtB3a_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i1 noundef zeroext, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecNtNtB7_6string6StringEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E13with_capacityCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecNtNtB7_6string6StringEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCsexYYUdYSQU6_5alloc6string6StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i1 noundef zeroext, ptr noalias nofree noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E13with_capacityBT_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutBT_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYBW_NtNtBa_3cmp10PartialOrd2ltEB12_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 288230376151711744), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 288230376151711744), i1 noundef zeroext, ptr noalias nofree noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecReEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E13with_capacityCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecReEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortReNvYBW_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i1 noundef zeroext, ptr noalias nofree noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecTNtNtB7_6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldEEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E13with_capacityB1f_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecTNtNtB7_6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldEEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutB1f_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB11_5sliceSBW_11sort_by_keyyNCNvMs0_B1B_NtB1B_6Struct29from_proto_descriptor_and_msgs1_0E0EB1F_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 48038396025285291), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 48038396025285291), i1 noundef zeroext, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncEEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E13with_capacityBW_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncEEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutBW_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keyBX_NCNvXs2_NtB13_9structureINtNtB1P_2rc2RcNtB2H_6StructEINtNtBa_7convert4FromRDNtNtB15_7modules16RegisteredModuleEL_E4froms_0E0EB15_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 144115188075855872), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 144115188075855872), i1 noundef zeroext, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #26

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtCs3qXrMTCDNMF_3der6headerNtB5_6HeaderNtNtB7_6decode6Decode6decodeNtNtNtB7_6reader5slice11SliceReaderECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs3qXrMTCDNMF_3der3tagNtB4_3Tag9assert_eq(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), i24, i24) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i1, i8 } @_RNvXs_NtNtCs3qXrMTCDNMF_3der6reader6nestedINtB4_12NestedReaderIBF_NtNtB6_5slice11SliceReaderEENtB6_6Reader9peek_byteCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs3qXrMTCDNMF_3der3tagNtB5_3TagINtNtCskKLDkoKarTP_4core7convert7TryFromhE8try_from(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), i8 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtCs3qXrMTCDNMF_3der4asn13anyNtB6_6AnyRefNtNtBa_6decode6Decode6decodeINtNtNtBa_6reader6nested12NestedReaderIB1g_NtNtB1k_5slice11SliceReaderEEECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE9serializeCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainNtB5_6Domain3newCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdlEEE11extend_withB1o_(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1_NtNtCslcwApyVHiOd_7bincode3enc5implshNtB8_6Encode6encodeQINtNtB8_7encoder11EncoderImplINtNtNtBa_8features8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtB2e_3vec3VechEEENtNtBa_6config13ConfigurationEECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x2res0_1__NtB5_10BckCodeLocNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1T_3enc7encoder11EncoderImplINtNtB1R_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtB3W_3vec3VechEEENtNtB1T_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x2re1__NtB5_10FwdCodeLocNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1Q_3enc7encoder11EncoderImplINtNtB1O_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtB3T_3vec3VechEEENtNtB1Q_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsz_NvNtCs7gfv9tzbXmh_6yara_x8compilersc_1__NtB6_16InternalBitFlagsNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB28_3enc7encoder11EncoderImplINtNtB26_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtB4b_3vec3VechEEENtNtB28_6config13ConfigurationEEEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtNtCslcwApyVHiOd_7bincode3enc5implsmNtB8_6Encode6encodeQINtNtB8_7encoder11EncoderImplINtNtNtBa_8features8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtB2e_3vec3VechEEENtNtBa_6config13ConfigurationEECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x8compilers0_1__NtB5_9LiteralIdNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1X_3enc7encoder11EncoderImplINtNtB1V_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtB40_3vec3VechEEENtNtB1X_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1_NtNtCslcwApyVHiOd_7bincode3enc5implshNtB8_6Encode6encodeQINtNtB8_7encoder11EncoderImplNtNtNtBa_8features10impl_alloc9VecWriterNtNtBa_6config13ConfigurationEECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x5typess0_1__NtB5_6RegexpNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1R_3enc7encoder11EncoderImplNtNtB1P_10impl_alloc9VecWriterNtNtB1R_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x5typess2_1__NtB5_9TypeValueNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1U_3enc7encoder11EncoderImplNtNtB1S_10impl_alloc9VecWriterNtNtB1U_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtNtCslcwApyVHiOd_7bincode3enc5implsmNtB8_6Encode6encodeQINtNtB8_7encoder11EncoderImplNtNtNtBa_8features10impl_alloc9VecWriterNtNtBa_6config13ConfigurationEECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3revINtB5_3RevINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler7CodeLocEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldB1K_INtNtBb_6result6ResultNtB1M_13CodeLocOffsetNtB1Q_5ErrorEuINtNtNtBb_3ops12control_flow11ControlFlowIB4S_B4i_EENCNvMs0_B1M_NtB1M_8Compiler22visit_post_alternation0NCINvXB7_INtB7_12GenericShuntINtB3v_3MapBM_B5H_EIB3X_zB4D_EEB2I_8try_folduNCINvNvB2I_12try_for_each4callB4i_B5w_NcNtB5w_5Break0E0B5w_E0E0B4R_EB1S_(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_B1s_uNCNvMs5_NtB1w_8compilerNtB3q_8Compiler16c_regexp_pattern0NCIB2P_B1s_NtNtB3q_5rules14SubPatternAtomuNCINvMs4_B3q_B3F_15add_sub_patternINtB2R_3MapBP_B3i_ENvMsa_B4q_B4o_16from_regexp_atomB1s_E0NCINvNvB28_8for_each4callB4o_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Y_3VecB4o_E14extend_trustedIB5s_B5r_B4T_EE0E0E0E0EB1w_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_B1s_uNCNvMs5_NtB1w_8compilerNtB3q_8Compiler7c_chain0NCIB2P_B1s_NtNtB3q_5rules14SubPatternAtomuNCINvMs4_B3q_B3F_15add_sub_patternINtB2R_3MapBP_B3i_ENvMsa_B4g_B4e_16from_regexp_atomB1s_E0NCINvNvB28_8for_each4callB4e_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6O_3VecB4e_E14extend_trustedIB5i_B5h_B4J_EE0E0E0E0EB1w_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_B1s_uNCNvMs5_NtB1w_8compilerNtB3q_8Compiler7c_chains_0NCIB2P_B1s_NtNtB3q_5rules14SubPatternAtomuNCINvMs4_B3q_B3F_15add_sub_patternINtB2R_3MapBP_B3i_ENvMsa_B4i_B4g_16from_regexp_atomB1s_E0NCINvNvB28_8for_each4callB4g_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB4g_E14extend_trustedIB5k_B5j_B4L_EE0E0E0E0EB1w_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterTjuEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_TB1s_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB2U_7HashSetB1s_NtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherEINtNtB1C_7collect6ExtendB1s_E6extendBP_E0NCINvNvB1y_8for_each4callB2D_NCINvXs1i_NtB2W_3mapINtB5H_7HashMapB1s_uB3H_EIB4q_B2D_E6extendINtB2h_3MapBP_B2L_EE0E0E0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldBX_BX_uNCINvMs_NtCseAUhZXWg4yS_5regex8buildersNtB38_7Builder3newINtB8_3VecBX_EBX_E0NCINvNvB1j_8for_each4callBX_NCINvMsk_B8_B3V_14extend_trustedINtB2p_3MapBI_B30_EE0E0E0ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldBX_NtNtNtB11_8compiler5rules14SubPatternAtomuNCINvMs4_B3j_NtB3j_8Compiler15add_sub_patternBI_NvMsa_B3h_B3f_16from_regexp_atomBX_E0NCINvNvB1C_8for_each4callB3f_NCINvMsk_B8_INtB8_3VecB3f_E14extend_trustedINtB2I_3MapBI_B3V_EE0E0E0EB11_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir3HirENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirENCINvNtNtB1G_8adapters3map12map_try_foldBX_B3e_B2E_INtNtB1I_6result6ResultB2E_zENCNvMs3_BZ_BX_6concat0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3e_E0E0B4I_EB13_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noalias nofree noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1P_8adapters3map8map_foldBX_NtNtNtNtB13_2re8thompson8compiler10RegexpAtomuNCNvXs1_B3o_NtB3o_8CompilerNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7visitor7Visitor10visit_posts_0NCINvNvB1J_8for_each4callB3m_NCINvMsk_B8_INtB8_3VecB3m_E14extend_trustedINtB2P_3MapBI_B46_EE0E0E0EB13_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler10RegexpAtomENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtB13_10RegexpAtomENCINvNtNtB24_8adapters3map12map_try_foldBX_B3C_B32_INtNtB26_6result6ResultB32_zENCNvMs_BZ_NtBZ_8Compiler7compile0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3C_E0E0B4K_EB15_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yara8AclEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtNtB15_5types9structure8AclEntryENCINvNtNtB20_8adapters3map12map_try_foldBX_B3y_B2Y_INtNtB22_6result6ResultB2Y_zENCNCNvMs0_B3A_NtB3A_6Struct3acls0_00NCINvNtB8_16in_place_collect24write_in_place_with_dropB3y_E0E0B4X_EB15_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noalias nofree noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNvXNvXNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schemaNtB15_11NetworkJsonNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB12_9MyVisitorNtB2d_7Visitor9visit_map13OldDomainJsonENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtB15_10DomainJsonENCINvNtNtB48_8adapters3map12map_try_foldBX_B5G_B56_INtNtB4a_6result6ResultB56_zENCINvXB12_B38_B3o_9visit_mapINtNtCsbbTh99npV2h_10serde_json2de9MapAccessNtNtB7O_4read9SliceReadEE0NCINvNtB8_16in_place_collect24write_in_place_with_dropB5G_E0E0B6O_EB1b_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noalias nofree noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterhENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldhINtCs6ObhOmryMwL_8smallvec8SmallVecAhj4_EuNCNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB3o_16CaseCombinations3new0NCIB23_B2A_INtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterINtB2D_8IntoIterB39_EEuNCINvB4J_23multi_cartesian_productINtB25_3MapBI_B3g_EE0NCINvNvBZ_8for_each4callB4G_NCINvMsk_B8_INtB8_3VecB4G_E14extend_trustedIB6N_B6M_B6e_EE0E0E0E0EB3s_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x8compilersf_1__NtB5_10SubPatternNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1Z_3enc7encoder11EncoderImplINtNtB1X_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtB42_3vec3VechEEENtNtB1Z_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x8compiler1__NtB5_7IdentIdNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1S_3enc7encoder11EncoderImplINtNtB1Q_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtB3V_3vec3VechEEENtNtB1S_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x8compilers8_1__NtB5_9PatternIdNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1X_3enc7encoder11EncoderImplINtNtB1V_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtB40_3vec3VechEEENtNtB1X_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXs2_NtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_u64NtNvXs19_NtBW_5implsyNtBW_11Deserialize11deserialize16PrimitiveVisitorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x5typess4_1__NtB5_16StringConstraintNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB22_3enc7encoder11EncoderImplNtNtB20_10impl_alloc9VecWriterNtNtB22_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x5typess6_1__NtB5_17IntegerConstraintNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB23_3enc7encoder11EncoderImplNtNtB21_10impl_alloc9VecWriterNtNtB23_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x8compilers6_1__NtB5_10RegexSetIdNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1Z_3enc7encoder11EncoderImplINtNtB1X_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtB42_3vec3VechEEENtNtB1Z_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x8compilersa_1__NtB5_12SubPatternIdNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB21_3enc7encoder11EncoderImplINtNtB1Z_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtB44_3vec3VechEEENtNtB21_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x8compilers4_1__NtB5_7RegexIdNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1V_3enc7encoder11EncoderImplINtNtB1T_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtB3Y_3vec3VechEEENtNtB1V_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtCs7gfv9tzbXmh_6yara_x5types9structures2_1__NtB5_11StructFieldNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB29_3enc7encoder11EncoderImplNtNtB27_10impl_alloc9VecWriterNtNtB29_6config13ConfigurationEEEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtCs7gfv9tzbXmh_6yara_x5types9structures4_1__NtB5_6StructNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB23_3enc7encoder11EncoderImplNtNtB21_10impl_alloc9VecWriterNtNtB23_6config13ConfigurationEEEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtCs7gfv9tzbXmh_6yara_x5types3map1__NtB5_3MapNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1R_3enc7encoder11EncoderImplNtNtB1P_10impl_alloc9VecWriterNtNtB1R_6config13ConfigurationEEEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtCs7gfv9tzbXmh_6yara_x5types4funcs0_1__NtB5_13FuncSignatureNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB26_3enc7encoder11EncoderImplNtNtB24_10impl_alloc9VecWriterNtNtB26_6config13ConfigurationEEEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtCs7gfv9tzbXmh_6yara_x5types4funcs2_1__NtB5_4FuncNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1W_3enc7encoder11EncoderImplNtNtB1U_10impl_alloc9VecWriterNtNtB1W_6config13ConfigurationEEEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtCs7gfv9tzbXmh_6yara_x5types5array1__NtB5_5ArrayNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1V_3enc7encoder11EncoderImplNtNtB1T_10impl_alloc9VecWriterNtNtB1V_6config13ConfigurationEEEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #31

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXs4_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB7_3oom11OutOfMemoryE4fromCs7gfv9tzbXmh_6yara_x(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs3n_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs2AhGS15tZfv_4bstr7bstring7BStringENtB9_11Deserialize11deserializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB2B_2de7decoder11DecoderImplNtNtB3I_4read11SliceReaderNtNtB2B_6config13ConfigurationuEEECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs3n_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x5types3map3MapENtB9_11Deserialize11deserializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB2D_2de7decoder11DecoderImplNtNtB3K_4read11SliceReaderNtNtB2D_6config13ConfigurationuEEEB1p_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs3n_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x5types4func13FuncSignatureENtB9_11Deserialize11deserializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB2P_2de7decoder11DecoderImplNtNtB3W_4read11SliceReaderNtNtB2P_6config13ConfigurationuEEEB1p_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs3n_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENtB9_11Deserialize11deserializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB2F_2de7decoder11DecoderImplNtNtB3M_4read11SliceReaderNtNtB2F_6config13ConfigurationuEEEB1p_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs3n_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x5types5array5ArrayENtB9_11Deserialize11deserializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB2H_2de7decoder11DecoderImplNtNtB3O_4read11SliceReaderNtNtB2H_6config13ConfigurationuEEEB1p_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs3n_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure6StructENtB9_11Deserialize11deserializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB2M_2de7decoder11DecoderImplNtNtB3T_4read11SliceReaderNtNtB2M_6config13ConfigurationuEEEB1p_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsl_Cs6ObhOmryMwL_8smallvecINtB6_8SmallVecAhj4_ENtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1P_3enc7encoder11EncoderImplINtNtB1N_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtB3S_3vec3VechEEENtNtB1P_6config13ConfigurationEEECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x6models1__NtB5_11PatternKindNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1V_3enc7encoder11EncoderImplINtNtB1T_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtB3Y_3vec3VechEEENtNtB1V_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x8compilers2_1__NtB5_11NamespaceIdNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB20_3enc7encoder11EncoderImplINtNtB1Y_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtB43_3vec3VechEEENtNtB20_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms1__NtB5_4AtomNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1X_3enc7encoder11EncoderImplINtNtB1V_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtB40_3vec3VechEEENtNtB1X_6config13ConfigurationEEEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtCs907JfTDu8Xv_8indexmap5serdeINtNtB5_3map8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB3r_3enc7encoder11EncoderImplNtNtB3p_10impl_alloc9VecWriterNtNtB3r_6config13ConfigurationEEEB1B_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtCs7gfv9tzbXmh_6yara_x5types4func1__NtB5_13MangledFnNameNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB23_3enc7encoder11EncoderImplNtNtB21_10impl_alloc9VecWriterNtNtB23_6config13ConfigurationEEEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEEE16parse_whitespaceCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(312)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEEE11parse_identCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(312), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x8compilersd_1__NtB5_15SubPatternFlagsNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB24_3enc7encoder11EncoderImplINtNtB22_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtB47_3vec3VechEEENtNtB24_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtCs7gfv9tzbXmh_6yara_x2re3hir1__NtB5_17ChainedPatternGapNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB23_3enc7encoder11EncoderImplINtNtB21_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtB46_3vec3VechEEENtNtB23_6config13ConfigurationEEEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x5types1__INtB5_5ValueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB2Y_3enc7encoder11EncoderImplNtNtB2W_10impl_alloc9VecWriterNtNtB2Y_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x5types1__INtB5_5ValuebENtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1Q_3enc7encoder11EncoderImplNtNtB1O_10impl_alloc9VecWriterNtNtB1Q_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x5types1__INtB5_5ValuedENtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1Q_3enc7encoder11EncoderImplNtNtB1O_10impl_alloc9VecWriterNtNtB1Q_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x5types1__INtB5_5ValuexENtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1Q_3enc7encoder11EncoderImplNtNtB1O_10impl_alloc9VecWriterNtNtB1Q_6config13ConfigurationEEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtCs907JfTDu8Xv_8indexmap5serdeINtNtB5_3map8IndexMapNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueENtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB3d_3enc7encoder11EncoderImplNtNtB3b_10impl_alloc9VecWriterNtNtB3d_6config13ConfigurationEEEB1A_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtCs907JfTDu8Xv_8indexmap5serdeINtNtB5_3map8IndexMapxNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueENtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB2B_3enc7encoder11EncoderImplNtNtB2z_10impl_alloc9VecWriterNtNtB2B_6config13ConfigurationEEEBY_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1_NtNtCs7gfv9tzbXmh_6yara_x5types4funcNtB6_13FuncSignatureNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCsaO0k6qjB80f_10rustc_hash8FxHasherEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtNtCs3qXrMTCDNMF_3der6reader5slice11SliceReaderNtB7_6Reader11read_nestedNtCsdxghgWk8gZR_3dsa9SignatureNCINvXs_B1i_B1g_NtNtB9_6decode11DecodeValue12decode_valueB3_E0ECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias nofree noundef align 8 dereferenceable(32), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtCs3qXrMTCDNMF_3der6reader6nested12NestedReaderIB3_NtNtB7_5slice11SliceReaderEENtB7_6Reader9read_byteCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtCs3qXrMTCDNMF_3der6reader6nested12NestedReaderNtNtB7_5slice11SliceReaderENtB7_6Reader9read_byteCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs3qXrMTCDNMF_3der6reader5slice11SliceReaderNtB6_6Reader9read_byteCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsh_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeQINtNtCsbbTh99npV2h_10serde_json2de12DeserializerNtNtB2d_4read9SliceReadEECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs6_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeNtNtCsbbTh99npV2h_10serde_json5value5ValueECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs6_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCsbbTh99npV2h_10serde_json2de12DeserializerINtNtB1W_4read6IoReadINtNtCsgtXWG2OCnrB_3zip4read7ZipFileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEEEECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(312)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schemaNtB3_11NetworkJsonNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeQINtNtCsbbTh99npV2h_10serde_json2de12DeserializerNtNtB2b_4read9SliceReadEEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(address) dereferenceable(120), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schemas2_1__NtB5_11SummaryJsonNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeQINtNtCsbbTh99npV2h_10serde_json2de12DeserializerNtNtB2j_4read9SliceReadEEBb_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schemas3_1__NtB5_12BehaviorJsonNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeQINtNtCsbbTh99npV2h_10serde_json2de12DeserializerNtNtB2k_4read9SliceReadEEBb_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer18deserialize_optionINtNtB2Q_5impls13OptionVisitorINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintEEEB4Y_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer18deserialize_optionINtNtB2Q_5impls13OptionVisitorINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x5types17IntegerConstraintEEEB4Y_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer18deserialize_optionINtNtB2Q_5impls13OptionVisitorINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEEECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer18deserialize_optionINtNtB2Q_5impls13OptionVisitorNtNtCs7gfv9tzbXmh_6yara_x5types6RegexpEEB4r_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer18deserialize_optionINtNtB2Q_5impls13OptionVisitorNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueEEB4r_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer18deserialize_optionINtNtB2Q_5impls13OptionVisitorNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvXNtNtCskKLDkoKarTP_4core4char6decodeINtB2_11DecodeUtf16INtNtNtNtB6_4iter8adapters6cloned6ClonedINtNtNtB6_5slice4iter4ItertEEENtNtNtB11_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs907JfTDu8Xv_8indexmap3map4iterINtB5_4IterNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintB1x_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs907JfTDu8Xv_8indexmap3map4iterINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintB1y_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs907JfTDu8Xv_8indexmap3map4iterINtB5_4IterxNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintBV_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsh_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_4Expr10type_value(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs3_NtNtCsiOkGTpNE17y_8wasmtime7runtime5typesNtB5_7ValType7matches(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs3_NtNtCsiOkGTpNE17y_8wasmtime7runtime5typesNtB5_7ValType22comes_from_same_engine(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtNtCsiOkGTpNE17y_8wasmtime7runtime13type_registryNtB5_14RegisteredTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCsiOkGTpNE17y_8wasmtime7runtime5typesNtB5_7ValType12to_wasm_type(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs0_NtNtCs2CmfWUMKNor_9itertools8adaptors13multi_productINtB5_16MultiProductIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorE3newB1r_(i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs4_NtCs7gfv9tzbXmh_6yara_x7scannerNtBW_7Scanner9scan_impls_0INtB7_5FnMutTTReRShEEE8call_mutBY_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x7scanner7contextNtB5_11ScanContext14regexp_matches(ptr noundef nonnull align 8, i32 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #33

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsF_NtNtCsiOkGTpNE17y_8wasmtime7runtime5typesNtB5_10ImportType3new(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsbhAup8j5lif_16wasmtime_environ6moduleNtB5_6Module7type_of(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), i32 noundef range(i32 0, 5), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMsn_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynError11new_oom_ptr(i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXNtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB2_4AtomINtNtCskKLDkoKarTP_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtCsiOkGTpNE17y_8wasmtime7runtime6linkerINtB5_6LinkerNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextE14__get_by_importB14_(ptr dead_on_unwind noalias nofree noundef writable sret([200 x i8]) align 8 captures(none) dereferenceable(200), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMsb_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB6_5Error3newNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker18UnknownImportErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(200)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtNtCsiOkGTpNE17y_8wasmtime7runtime5typesNtB5_7RefType14from_wasm_type(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_lowercase(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #32
end_hunk_2
