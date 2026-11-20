Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.10?download=true
inline.NumInlined: 6305
inline.NumDeleted: 3398
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvMsv_NtNtCsiOkGTpNE17y_8wasmtime7runtime5typesNtB6_8FuncType27with_finality_and_supertypeINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB6_7ValTypeEINtCs6ObhOmryMwL_8smallvec8SmallVecAB1Z_j4_EECs7gfv9tzbXmh_6yara_x:bb.a

bb.fi:                                            ; preds = %bb.q, %bb.o
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qp = icmp eq i64 %i.cq, 0
  br i1 %i.qp, label %.thread301, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i238

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i238: ; preds = %bb.fi
  %i.qq = shl nuw nsw i64 %i.cq, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cl, i64 noundef range(i64 0, -9223372036317904881) %i.qq, i64 noundef 4) #40
  br label %.thread301

bb.fj:                                            ; preds = %bb.n
  store ptr %i.cp, ptr %0, align 8
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 -2, ptr %i.qr, align 4
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbhAup8j5lif_16wasmtime_environ5types12WasmFuncTypeECs7gfv9tzbXmh_6yara_x.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime13type_registry14RegisteredTypeEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime13type_registry14RegisteredTypeEECs7gfv9tzbXmh_6yara_x.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit.i241 unwind label %bb.fk

bb.fk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime13type_registry14RegisteredTypeEECs7gfv9tzbXmh_6yara_x.exit
  %i.qs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.body227 unwind label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.qt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit.i241: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime13type_registry14RegisteredTypeEECs7gfv9tzbXmh_6yara_x.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit247 unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit247: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit.i249 unwind label %bb.fm

bb.fm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit247
  %i.qu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %.body232 unwind label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.qv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit.i249: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit247
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit255 unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit255: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %i.qw = trunc nuw i8 %.sroa.067.6 to i1
  br i1 %i.qw, label %bb.fp, label %.thread350

.thread350:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit

bb.fo:                                            ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.qx = trunc nuw i8 %.sroa.069.7 to i1
  br i1 %i.qx, label %bb.fw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit

bb.fp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit266, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit255
  %.sroa.069.7 = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit266 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit255 ] ; 3 uses
  invoke void @_RNvXsI_Cs6ObhOmryMwL_8smallvecINtB5_8IntoIterANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.ba)
          to label %bb.fr unwind label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.qy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.ba)
          to label %.body257 unwind label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.ba)
          to label %bb.fo unwind label %bb.b

bb.fs:                                            ; preds = %bb.fq
  %i.qz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.ft:                                            ; preds = %bb.j
  store ptr %i.cf, ptr %0, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 -2, ptr %i.ra, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit.i260 unwind label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.rb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %.body232.thread unwind label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.rc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit.i260: ; preds = %bb.ft
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit266 unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit266: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit.i260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.fp

bb.fw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8IntoIterANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_EECs7gfv9tzbXmh_6yara_x.exit273, %bb.fo
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bb)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit

bb.fx:                                            ; preds = %bb.f
  store ptr %i.bv, ptr %0, align 8
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 -2, ptr %i.rd, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  invoke void @_RNvXsI_Cs6ObhOmryMwL_8smallvecINtB5_8IntoIterANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.ba)
          to label %bb.fz unwind label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.re = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.ba)
          to label %.body257.thread unwind label %bb.ga

bb.fz:                                            ; preds = %bb.fx
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.ba)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8IntoIterANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_EECs7gfv9tzbXmh_6yara_x.exit273 unwind label %bb.b

bb.ga:                                            ; preds = %bb.fy
  %i.rf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8IntoIterANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_EECs7gfv9tzbXmh_6yara_x.exit273: ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.fw

.body232.thread:                                  ; preds = %bb.fu, %.body232
  %.pn154359 = phi { ptr, i32 } [ %.pn154, %.body232 ], [ %i.rb, %bb.fu ]
  %.sroa.069.2358 = phi i8 [ %.sroa.069.2, %.body232 ], [ 1, %bb.fu ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8IntoIterANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_EECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(440) %i.ba) #43
          to label %.body257 unwind label %bb.ed

.body257.thread:                                  ; preds = %bb.fy, %.body257
  %.pn156354 = phi { ptr, i32 } [ %.pn156, %.body257 ], [ %i.re, %bb.fy ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit275 unwind label %bb.ed

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeEECs7gfv9tzbXmh_6yara_x.exit275: ; preds = %bb.fd, %.body257, %.body257.thread
  %.pn158 = phi { ptr, i32 } [ %i.qg, %bb.fd ], [ %.pn156, %.body257 ], [ %.pn156354, %.body257.thread ]
  resume { ptr, i32 } %.pn158
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8IntoIterANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_EECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsI_Cs6ObhOmryMwL_8smallvecINtB5_8IntoIterANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(424) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_EECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(424) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_EECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEEB1q_(i64 %.0.val, ptr %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %.0.val, label %bb.c [
    i64 -1, label %bb.b
    i64 0, label %.invoke.invoke.i.i
    i64 1, label %bb.p
    i64 2, label %bb.q
    i64 3, label %bb.x
    i64 4, label %bb.ad
    i64 5, label %.invoke.invoke.i.i
    i64 6, label %bb.am
    i64 7, label %bb.as
    i64 8, label %bb.az
    i64 9, label %bb.bf
    i64 10, label %.invoke.invoke.i.i
    i64 11, label %bb.bm
    i64 12, label %.invoke.invoke.i.i
    i64 13, label %bb.bs
    i64 14, label %bb.by
    i64 15, label %bb.ce
    i64 16, label %bb.ck
    i64 17, label %bb.cq
    i64 18, label %bb.cw
    i64 19, label %bb.df
    i64 20, label %bb.dl
    i64 21, label %bb.dz
    i64 22, label %bb.en
    i64 23, label %bb.et
    i64 24, label %bb.fd
    i64 25, label %bb.fj
    i64 26, label %bb.fp
    i64 27, label %.invoke.invoke.i.i
    i64 28, label %.invoke.invoke.i.i
    i64 29, label %bb.fy
    i64 30, label %bb.gh
    i64 31, label %bb.gr
    i64 32, label %bb.hb
    i64 33, label %.invoke.invoke.i.i
    i64 34, label %bb.hd
    i64 35, label %bb.hk
    i64 36, label %bb.hq
    i64 37, label %.invoke.invoke.i.i
    i64 38, label %.invoke.invoke.i.i
    i64 39, label %.invoke.invoke.i.i
    i64 40, label %bb.ht
    i64 41, label %bb.hz
    i64 42, label %bb.ij
    i64 43, label %bb.ip
    i64 44, label %bb.iv
    i64 45, label %bb.jg
    i64 46, label %bb.jm
  ]

bb.b:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %.8.val)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #43
          to label %.body.i.i.i.i unwind label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i unwind label %bb.h

.body.i.i.i.i:                                    ; preds = %bb.h, %bb.f, %bb.d
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.a, %bb.d ], [ %i.g, %bb.h ], [ %i.d, %bb.f ]
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #43
          to label %.body6.i.i.i.i unwind label %bb.o

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i5.i.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body6.i.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i5.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit8.i.i.i.i unwind label %bb.k

.body6.i.i.i.i:                                   ; preds = %bb.k, %bb.i, %.body.i.i.i.i
  %.pn2.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %i.l, %bb.k ], [ %i.i, %bb.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 216
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #43
          to label %common.resume.i.i unwind label %bb.o

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i5.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit8.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i5.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.8.val, i64 216 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !range !14, !alias.scope !780, !noundef !6
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit8.i.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i.invoke.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i.invoke.i.i: ; preds = %bb.ei, %bb.l
  %i.r = phi ptr [ %i.m, %bb.l ], [ %i.fa, %bb.ei ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit unwind label %bb.em

bb.o:                                             ; preds = %.body6.i.i.i.i, %.body.i.i.i.i, %bb.d
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

common.resume.i.i:                                ; preds = %bb.jt, %bb.jq, %bb.jn, %bb.jj, %bb.jh, %bb.jf, %bb.jc, %.body.i.i157.i.i, %bb.is, %bb.iq, %bb.im, %bb.ik, %bb.ig, %.body.i.i147.i.i, %bb.hw, %bb.hu, %bb.hs, %bb.hr, %bb.hn, %bb.hl, %bb.hh, %bb.he, %bb.hc, %bb.ha, %bb.gx, %.body.i.i135.i.i, %bb.go, %.body.i.i129.i.i, %bb.ge, %.body.i.i123.i.i, %bb.fv, %.body.i.i117.i.i, %bb.fm, %bb.fk, %bb.fg, %bb.fe, %bb.fa, %.body.i.i107.i.i, %bb.eq, %bb.eo, %bb.em, %bb.ej, %.body6.i.i97.i.i, %bb.dy, %bb.dv, %.body6.i.i87.i.i, %bb.di, %bb.dg, %bb.dc, %.body.i.i77.i.i, %bb.ct, %bb.cr, %bb.cn, %bb.cl, %bb.ch, %bb.cf, %bb.cb, %bb.bz, %bb.bv, %bb.bt, %bb.bp, %bb.bn, %bb.bj, %bb.bg, %bb.bc, %bb.ba, %bb.ay, %bb.av, %bb.at, %bb.ap, %bb.an, %bb.aj, %.body.i.i52.i.i, %bb.aa, %bb.y, %bb.u, %bb.r, %bb.m, %.body6.i.i.i.i
  %.sink.i.i = phi i64 [ 208, %bb.jh ], [ 232, %.body.i.i157.i.i ], [ 208, %bb.iq ], [ 208, %bb.ik ], [ 232, %.body.i.i147.i.i ], [ 208, %bb.hu ], [ 208, %bb.fg ], [ 184, %bb.hs ], [ 208, %bb.hn ], [ 208, %bb.hl ], [ 192, %bb.hr ], [ 208, %bb.he ], [ 248, %bb.gx ], [ 248, %.body.i.i135.i.i ], [ 200, %bb.hc ], [ 232, %.body.i.i129.i.i ], [ 248, %.body.i.i123.i.i ], [ 248, %bb.ge ], [ 232, %bb.fv ], [ 232, %.body.i.i117.i.i ], [ 208, %bb.fk ], [ 208, %bb.fe ], [ 232, %.body.i.i107.i.i ], [ 208, %bb.eo ], [ 256, %.body6.i.i97.i.i ], [ 272, %.body6.i.i87.i.i ], [ 208, %bb.dg ], [ 232, %.body.i.i77.i.i ], [ 208, %bb.cr ], [ 208, %bb.cl ], [ 208, %bb.cf ], [ 208, %bb.bz ], [ 208, %bb.bt ], [ 208, %bb.bp ], [ 208, %bb.bn ], [ 208, %bb.bj ], [ 208, %bb.bg ], [ 208, %bb.ba ], [ 224, %bb.at ], [ 224, %bb.an ], [ 232, %bb.aj ], [ 232, %.body.i.i52.i.i ], [ 208, %bb.y ], [ 208, %bb.r ], [ 256, %bb.m ], [ 208, %bb.jq ], [ 256, %.body6.i.i.i.i ], [ 208, %bb.jn ], [ 208, %bb.jt ], [ 208, %bb.u ], [ 208, %bb.jj ], [ 208, %bb.aa ], [ 208, %bb.fm ], [ 232, %bb.jc ], [ 224, %bb.ap ], [ 224, %bb.ay ], [ 224, %bb.av ], [ 232, %bb.jf ], [ 208, %bb.bc ], [ 208, %bb.is ], [ 208, %bb.eq ], [ 208, %bb.im ], [ 208, %bb.bv ], [ 248, %bb.ha ], [ 208, %bb.cb ], [ 232, %bb.ig ], [ 208, %bb.ch ], [ 232, %bb.fa ], [ 208, %bb.cn ], [ 208, %bb.hw ], [ 208, %bb.ct ], [ 232, %bb.go ], [ 232, %bb.dc ], [ 208, %bb.hh ], [ 208, %bb.di ], [ 272, %bb.dy ], [ 272, %bb.dv ], [ 256, %bb.em ], [ 256, %bb.ej ]
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.kt, %bb.jh ], [ %.pn.i.i158.i.i, %.body.i.i157.i.i ], [ %i.jz, %bb.iq ], [ %i.jt, %bb.ik ], [ %.pn.i.i148.i.i, %.body.i.i147.i.i ], [ %i.iz, %bb.hu ], [ %i.gd, %bb.fg ], [ %i.iy, %bb.hs ], [ %i.iu, %bb.hn ], [ %i.ir, %bb.hl ], [ %i.ix, %bb.hr ], [ %i.ij, %bb.he ], [ %i.ie, %bb.gx ], [ %.pn.i.i136.i.i, %.body.i.i135.i.i ], [ %i.ii, %bb.hc ], [ %.pn.i.i130.i.i, %.body.i.i129.i.i ], [ %.pn.i.i124.i.i, %.body.i.i123.i.i ], [ %i.hf, %bb.ge ], [ %i.gu, %bb.fv ], [ %.pn.i.i118.i.i, %.body.i.i117.i.i ], [ %i.gg, %bb.fk ], [ %i.ga, %bb.fe ], [ %.pn.i.i108.i.i, %.body.i.i107.i.i ], [ %i.fh, %bb.eo ], [ %.pn2.i.i98.i.i, %.body6.i.i97.i.i ], [ %.pn2.i.i88.i.i, %.body6.i.i87.i.i ], [ %i.dp, %bb.dg ], [ %.pn.i.i78.i.i, %.body.i.i77.i.i ], [ %i.cy, %bb.cr ], [ %i.cs, %bb.cl ], [ %i.cm, %bb.cf ], [ %i.cg, %bb.bz ], [ %i.ca, %bb.bt ], [ %i.bx, %bb.bp ], [ %i.bu, %bb.bn ], [ %i.br, %bb.bj ], [ %i.bm, %bb.bg ], [ %i.bg, %bb.ba ], [ %i.az, %bb.at ], [ %i.as, %bb.an ], [ %i.ap, %bb.aj ], [ %.pn.i.i53.i.i, %.body.i.i52.i.i ], [ %i.ab, %bb.y ], [ %i.t, %bb.r ], [ %i.p, %bb.m ], [ %i.lf, %bb.jq ], [ %.pn2.i.i.i.i, %.body6.i.i.i.i ], [ %i.la, %bb.jn ], [ %i.li, %bb.jt ], [ %i.y, %bb.u ], [ %i.kw, %bb.jj ], [ %i.ae, %bb.aa ], [ %i.gj, %bb.fm ], [ %i.kp, %bb.jc ], [ %i.av, %bb.ap ], [ %i.bf, %bb.ay ], [ %i.bc, %bb.av ], [ %i.ks, %bb.jf ], [ %i.bj, %bb.bc ], [ %i.kc, %bb.is ], [ %i.fk, %bb.eq ], [ %i.jw, %bb.im ], [ %i.cd, %bb.bv ], [ %i.ih, %bb.ha ], [ %i.cj, %bb.cb ], [ %i.jp, %bb.ig ], [ %i.cp, %bb.ch ], [ %i.fx, %bb.fa ], [ %i.cv, %bb.cn ], [ %i.jc, %bb.hw ], [ %i.db, %bb.ct ], [ %i.ht, %bb.go ], [ %i.dm, %bb.dc ], [ %i.io, %bb.hh ], [ %i.ds, %bb.di ], [ %i.en, %bb.dy ], [ %i.ek, %bb.dv ], [ %i.fg, %bb.em ], [ %i.fd, %bb.ej ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.sink.i.i, i64 noundef 8) #40
  resume { ptr, i32 } %common.resume.op.i.i

bb.p:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit unwind label %bb.jt

bb.q:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #43
          to label %common.resume.i.i unwind label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !range !14, !alias.scope !781, !noundef !6
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume.i.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.w:                                             ; preds = %bb.r
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.x:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #43
          to label %common.resume.i.i unwind label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.ad = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %common.resume.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.ac:                                            ; preds = %bb.y
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.ad:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.8.val)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai) #43
          to label %.body.i.i52.i.i unwind label %bb.al

bb.af:                                            ; preds = %bb.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i55.i.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.body.i.i52.i.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i55.i.i: ; preds = %bb.af
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i56.i.i unwind label %bb.ai

.body.i.i52.i.i:                                  ; preds = %bb.ai, %bb.ag, %bb.ae
  %.pn.i.i53.i.i = phi { ptr, i32 } [ %i.ah, %bb.ae ], [ %i.an, %bb.ai ], [ %i.ak, %bb.ag ]
  %i.am = getelementptr inbounds nuw i8, ptr %.8.val, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am) #43
          to label %common.resume.i.i unwind label %bb.al

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i55.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i52.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i56.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i55.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.8.val, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i56.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %common.resume.i.i unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.al:                                            ; preds = %.body.i.i52.i.i, %bb.ae
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.am:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %.8.val)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at) #43
          to label %common.resume.i.i unwind label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.au = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i58.invoke.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %common.resume.i.i unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i58.invoke.i.i: ; preds = %bb.au, %bb.ao
  %i.ax = phi ptr [ %i.au, %bb.ao ], [ %i.bb, %bb.au ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit unwind label %bb.ay

bb.ar:                                            ; preds = %bb.an
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.as:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %.8.val)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba) #43
          to label %common.resume.i.i unwind label %bb.ax

bb.au:                                            ; preds = %bb.as
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i58.invoke.i.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %common.resume.i.i unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.ax:                                            ; preds = %bb.at
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i58.invoke.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.az:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.bb unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh) #43
          to label %common.resume.i.i unwind label %bb.be

bb.bb:                                            ; preds = %bb.az
  %i.bi = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %common.resume.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.be:                                            ; preds = %bb.ba
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.bf:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn) #43
          to label %common.resume.i.i unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  %i.bo = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 4 uses
  %i.bp = load i64, ptr %i.bo, align 8, !range !14, !alias.scope !782, !noundef !6
  %i.bq = icmp eq i64 %i.bp, -1
  br i1 %i.bq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %common.resume.i.i unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.bl:                                            ; preds = %bb.bg
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.bm:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.bo unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bv) #43
          to label %common.resume.i.i unwind label %bb.br

bb.bo:                                            ; preds = %bb.bm
  %i.bw = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %common.resume.i.i unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.br:                                            ; preds = %bb.bn
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.bs:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.bu unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cb) #43
          to label %common.resume.i.i unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bs
  %i.cc = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %common.resume.i.i unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.bx:                                            ; preds = %bb.bt
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.by:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.ca unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch) #43
          to label %common.resume.i.i unwind label %bb.cd

bb.ca:                                            ; preds = %bb.by
  %i.ci = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %common.resume.i.i unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.cd:                                            ; preds = %bb.bz
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.ce:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.cg unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn) #43
          to label %common.resume.i.i unwind label %bb.cj

bb.cg:                                            ; preds = %bb.ce
  %i.co = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %common.resume.i.i unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.cj:                                            ; preds = %bb.cf
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.ck:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.cm unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ct) #43
          to label %common.resume.i.i unwind label %bb.cp

bb.cm:                                            ; preds = %bb.ck
  %i.cu = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cu)
          to label %common.resume.i.i unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.cp:                                            ; preds = %bb.cl
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.cq:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.cs unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %i.cz = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cz) #43
          to label %common.resume.i.i unwind label %bb.cv

bb.cs:                                            ; preds = %bb.cq
  %i.da = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %common.resume.i.i unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.cv:                                            ; preds = %bb.cr
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.cw:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.8.val)
          to label %bb.cy unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df) #43
          to label %.body.i.i77.i.i unwind label %bb.de

bb.cy:                                            ; preds = %bb.cw
  %i.dg = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i80.i.i unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %.body.i.i77.i.i unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i80.i.i: ; preds = %bb.cy
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i81.i.i unwind label %bb.db

.body.i.i77.i.i:                                  ; preds = %bb.db, %bb.cz, %bb.cx
  %.pn.i.i78.i.i = phi { ptr, i32 } [ %i.de, %bb.cx ], [ %i.dk, %bb.db ], [ %i.dh, %bb.cz ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.8.val, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dj) #43
          to label %common.resume.i.i unwind label %bb.de

bb.db:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i80.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i77.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i81.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i80.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.8.val, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.dc

bb.dc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i81.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dl)
          to label %common.resume.i.i unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.de:                                            ; preds = %.body.i.i77.i.i, %bb.cx
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.df:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.dh unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.dp = landingpad { ptr, i32 }
          cleanup
  %i.dq = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #43
          to label %common.resume.i.i unwind label %bb.dk

bb.dh:                                            ; preds = %bb.df
  %i.dr = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dr)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dr)
          to label %common.resume.i.i unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.dk:                                            ; preds = %bb.dg
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.dl:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %.8.val)
          to label %bb.dn unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw) #43
          to label %.body.i.i85.i.i unwind label %bb.dx

bb.dn:                                            ; preds = %bb.dl
  %i.dx = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i90.i.i unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %.body.i.i85.i.i unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i90.i.i: ; preds = %bb.dn
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i91.i.i unwind label %bb.dq

.body.i.i85.i.i:                                  ; preds = %bb.dq, %bb.do, %bb.dm
  %.pn.i.i86.i.i = phi { ptr, i32 } [ %i.dv, %bb.dm ], [ %i.eb, %bb.dq ], [ %i.dy, %bb.do ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.8.val, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ea) #43
          to label %.body6.i.i87.i.i unwind label %bb.dx

bb.dq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i90.i.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i85.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i91.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i90.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.8.val, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ec)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i5.i.i92.i.i unwind label %bb.dr

bb.dr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i91.i.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ec)
          to label %.body6.i.i87.i.i unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i5.i.i92.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i91.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ec)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit8.i.i93.i.i unwind label %bb.dt

.body6.i.i87.i.i:                                 ; preds = %bb.dt, %bb.dr, %.body.i.i85.i.i
  %.pn2.i.i88.i.i = phi { ptr, i32 } [ %.pn.i.i86.i.i, %.body.i.i85.i.i ], [ %i.eg, %bb.dt ], [ %i.ed, %bb.dr ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.8.val, i64 216
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ef) #43
          to label %common.resume.i.i unwind label %bb.dx

bb.dt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i5.i.i92.i.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i87.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit8.i.i93.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i5.i.i92.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.8.val, i64 216 ; 4 uses
  %i.ei = load i64, ptr %i.eh, align 8, !range !14, !alias.scope !783, !noundef !6
  %i.ej = icmp eq i64 %i.ei, -1
  br i1 %i.ej, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit, label %bb.du

bb.du:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit8.i.i93.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i94.i.i unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eh)
          to label %common.resume.i.i unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i94.i.i: ; preds = %bb.du
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit unwind label %bb.dy

bb.dx:                                            ; preds = %.body6.i.i87.i.i, %.body.i.i85.i.i, %bb.dm
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.dy:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i94.i.i
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.dz:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %.8.val)
          to label %bb.eb unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.eo = landingpad { ptr, i32 }
          cleanup
  %i.ep = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ep) #43
          to label %.body.i.i95.i.i unwind label %bb.el

bb.eb:                                            ; preds = %bb.dz
  %i.eq = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i100.i.i unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %.body.i.i95.i.i unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i100.i.i: ; preds = %bb.eb
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i101.i.i unwind label %bb.ee

.body.i.i95.i.i:                                  ; preds = %bb.ee, %bb.ec, %bb.ea
  %.pn.i.i96.i.i = phi { ptr, i32 } [ %i.eo, %bb.ea ], [ %i.eu, %bb.ee ], [ %i.er, %bb.ec ]
  %i.et = getelementptr inbounds nuw i8, ptr %.8.val, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.et) #43
          to label %.body6.i.i97.i.i unwind label %bb.el

bb.ee:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i100.i.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i95.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i101.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i100.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.8.val, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i5.i.i102.i.i unwind label %bb.ef

bb.ef:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i101.i.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %.body6.i.i97.i.i unwind label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i5.i.i102.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i101.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit8.i.i103.i.i unwind label %bb.eh

.body6.i.i97.i.i:                                 ; preds = %bb.eh, %bb.ef, %.body.i.i95.i.i
  %.pn2.i.i98.i.i = phi { ptr, i32 } [ %.pn.i.i96.i.i, %.body.i.i95.i.i ], [ %i.ez, %bb.eh ], [ %i.ew, %bb.ef ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.8.val, i64 216
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ey) #43
          to label %common.resume.i.i unwind label %bb.el

bb.eh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i5.i.i102.i.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i97.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit8.i.i103.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i5.i.i102.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.8.val, i64 216 ; 4 uses
  %i.fb = load i64, ptr %i.fa, align 8, !range !14, !alias.scope !784, !noundef !6
  %i.fc = icmp eq i64 %i.fb, -1
  br i1 %i.fc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit, label %bb.ei

bb.ei:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit8.i.i103.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i.invoke.i.i unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %common.resume.i.i unwind label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.el:                                            ; preds = %.body6.i.i97.i.i, %.body.i.i95.i.i, %bb.ea
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.em:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i.invoke.i.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.en:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.ep unwind label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.fh = landingpad { ptr, i32 }
          cleanup
  %i.fi = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fi) #43
          to label %common.resume.i.i unwind label %bb.es

bb.ep:                                            ; preds = %bb.en
  %i.fj = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fj)
          to label %common.resume.i.i unwind label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.es:                                            ; preds = %bb.eo
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.et:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.8.val)
          to label %bb.ev unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fo) #43
          to label %.body.i.i107.i.i unwind label %bb.fc

bb.ev:                                            ; preds = %bb.et
  %i.fp = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fp)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i110.i.i unwind label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fp)
          to label %.body.i.i107.i.i unwind label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i110.i.i: ; preds = %bb.ev
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fp)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i111.i.i unwind label %bb.ey

.body.i.i107.i.i:                                 ; preds = %bb.ey, %bb.ew, %bb.eu
  %.pn.i.i108.i.i = phi { ptr, i32 } [ %i.fn, %bb.eu ], [ %i.ft, %bb.ey ], [ %i.fq, %bb.ew ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.8.val, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fs) #43
          to label %common.resume.i.i unwind label %bb.fc

bb.ey:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i110.i.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i107.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i111.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i110.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.8.val, i64 192 ; 4 uses
  %i.fv = load i64, ptr %i.fu, align 8, !range !14, !alias.scope !785, !noundef !6
  %i.fw = icmp eq i64 %i.fv, -1
  br i1 %i.fw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit, label %bb.ez

bb.ez:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i111.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fu)
          to label %common.resume.i.i unwind label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.fc:                                            ; preds = %.body.i.i107.i.i, %bb.eu
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.fd:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.ff unwind label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gb) #43
          to label %common.resume.i.i unwind label %bb.fi

bb.ff:                                            ; preds = %bb.fd
  %i.gc = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gc)
          to label %common.resume.i.i unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.fi:                                            ; preds = %bb.fe
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.fj:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.fl unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.gg = landingpad { ptr, i32 }
          cleanup
  %i.gh = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gh) #43
          to label %common.resume.i.i unwind label %bb.fo

bb.fl:                                            ; preds = %bb.fj
  %i.gi = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gi)
          to label %common.resume.i.i unwind label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.fo:                                            ; preds = %bb.fk
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.fp:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.8.val)
          to label %bb.fr unwind label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.gm = landingpad { ptr, i32 }
          cleanup
  %i.gn = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gn) #43
          to label %.body.i.i117.i.i unwind label %bb.fx

bb.fr:                                            ; preds = %bb.fp
  %i.go = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.go)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i120.i.i unwind label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.go)
          to label %.body.i.i117.i.i unwind label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i120.i.i: ; preds = %bb.fr
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.go)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i121.i.i unwind label %bb.fu

.body.i.i117.i.i:                                 ; preds = %bb.fu, %bb.fs, %bb.fq
  %.pn.i.i118.i.i = phi { ptr, i32 } [ %i.gm, %bb.fq ], [ %i.gs, %bb.fu ], [ %i.gp, %bb.fs ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.8.val, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gr) #43
          to label %common.resume.i.i unwind label %bb.fx

bb.fu:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i120.i.i
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i117.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i121.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i120.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.8.val, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.fv

bb.fv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i121.i.i
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gt)
          to label %common.resume.i.i unwind label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.fx:                                            ; preds = %.body.i.i117.i.i, %bb.fq
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.fy:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %.8.val)
          to label %bb.ga unwind label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.gx = landingpad { ptr, i32 }
          cleanup
  %i.gy = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gy) #43
          to label %.body.i.i123.i.i unwind label %bb.gg

bb.ga:                                            ; preds = %bb.fy
  %i.gz = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i126.i.i unwind label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %.body.i.i123.i.i unwind label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i126.i.i: ; preds = %bb.ga
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i127.i.i unwind label %bb.gd

.body.i.i123.i.i:                                 ; preds = %bb.gd, %bb.gb, %bb.fz
  %.pn.i.i124.i.i = phi { ptr, i32 } [ %i.gx, %bb.fz ], [ %i.hd, %bb.gd ], [ %i.ha, %bb.gb ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.8.val, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hc) #43
          to label %common.resume.i.i unwind label %bb.gg

bb.gd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i126.i.i
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i123.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i127.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i126.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %.8.val, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.he)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit4.i.i128.invoke.i.i unwind label %bb.ge

bb.ge:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i127.i.i
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.he)
          to label %common.resume.i.i unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit4.i.i128.invoke.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i139.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i127.i.i
  %i.hh = phi ptr [ %i.he, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i127.i.i ], [ %i.id, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i139.i.i ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit unwind label %bb.ha

bb.gg:                                            ; preds = %.body.i.i123.i.i, %bb.fz
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.gh:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.8.val)
          to label %bb.gj unwind label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.hj = landingpad { ptr, i32 }
          cleanup
  %i.hk = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hk) #43
          to label %.body.i.i129.i.i unwind label %bb.gq

bb.gj:                                            ; preds = %bb.gh
  %i.hl = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i132.i.i unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.hm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hl)
          to label %.body.i.i129.i.i unwind label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i132.i.i: ; preds = %bb.gj
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i133.i.i unwind label %bb.gm

.body.i.i129.i.i:                                 ; preds = %bb.gm, %bb.gk, %bb.gi
  %.pn.i.i130.i.i = phi { ptr, i32 } [ %i.hj, %bb.gi ], [ %i.hp, %bb.gm ], [ %i.hm, %bb.gk ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.8.val, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ho) #43
          to label %common.resume.i.i unwind label %bb.gq

bb.gm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i132.i.i
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i129.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i133.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i132.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %.8.val, i64 192 ; 4 uses
  %i.hr = load i64, ptr %i.hq, align 8, !range !14, !alias.scope !786, !noundef !6
  %i.hs = icmp eq i64 %i.hr, -1
  br i1 %i.hs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit, label %bb.gn

bb.gn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i133.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %common.resume.i.i unwind label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.gq:                                            ; preds = %.body.i.i129.i.i, %bb.gi
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.gr:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %.8.val)
          to label %bb.gt unwind label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.hw = landingpad { ptr, i32 }
          cleanup
  %i.hx = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hx) #43
          to label %.body.i.i135.i.i unwind label %bb.gz

bb.gt:                                            ; preds = %bb.gr
  %i.hy = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i138.i.i unwind label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.hz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hy)
          to label %.body.i.i135.i.i unwind label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i138.i.i: ; preds = %bb.gt
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i139.i.i unwind label %bb.gw

.body.i.i135.i.i:                                 ; preds = %bb.gw, %bb.gu, %bb.gs
  %.pn.i.i136.i.i = phi { ptr, i32 } [ %i.hw, %bb.gs ], [ %i.ic, %bb.gw ], [ %i.hz, %bb.gu ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.8.val, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ib) #43
          to label %common.resume.i.i unwind label %bb.gz

bb.gw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i138.i.i
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i135.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i139.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i138.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %.8.val, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.id)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit4.i.i128.invoke.i.i unwind label %bb.gx

bb.gx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i139.i.i
  %i.ie = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.id)
          to label %common.resume.i.i unwind label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.if = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.gz:                                            ; preds = %.body.i.i135.i.i, %bb.gs
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.ha:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit4.i.i128.invoke.i.i
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.hb:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %.8.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit unwind label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.hd:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.hf unwind label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.ij = landingpad { ptr, i32 }
          cleanup
  %i.ik = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ik) #43
          to label %common.resume.i.i unwind label %bb.hj

bb.hf:                                            ; preds = %bb.hd
  %i.il = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 4 uses
  %i.im = load i64, ptr %i.il, align 8, !range !14, !alias.scope !787, !noundef !6
  %i.in = icmp eq i64 %i.im, -1
  br i1 %i.in, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.il)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.il)
          to label %common.resume.i.i unwind label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.hj:                                            ; preds = %bb.he
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.hk:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.hm unwind label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.ir = landingpad { ptr, i32 }
          cleanup
  %i.is = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.is) #43
          to label %common.resume.i.i unwind label %bb.hp

bb.hm:                                            ; preds = %bb.hk
  %i.it = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.it)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.iu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.it)
          to label %common.resume.i.i unwind label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.hp:                                            ; preds = %bb.hl
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.hq:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %.8.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit unwind label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

.invoke.invoke.i.i:                               ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %.8.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit unwind label %bb.hs

bb.hs:                                            ; preds = %.invoke.invoke.i.i
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.ht:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.hv unwind label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.iz = landingpad { ptr, i32 }
          cleanup
  %i.ja = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ja) #43
          to label %common.resume.i.i unwind label %bb.hy

bb.hv:                                            ; preds = %bb.ht
  %i.jb = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jb)
          to label %common.resume.i.i unwind label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.hy:                                            ; preds = %bb.hu
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.hz:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.8.val)
          to label %bb.ib unwind label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.jf = landingpad { ptr, i32 }
          cleanup
  %i.jg = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jg) #43
          to label %.body.i.i147.i.i unwind label %bb.ii

bb.ib:                                            ; preds = %bb.hz
  %i.jh = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i150.i.i unwind label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.ji = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jh)
          to label %.body.i.i147.i.i unwind label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i150.i.i: ; preds = %bb.ib
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i151.i.i unwind label %bb.ie

.body.i.i147.i.i:                                 ; preds = %bb.ie, %bb.ic, %bb.ia
  %.pn.i.i148.i.i = phi { ptr, i32 } [ %i.jf, %bb.ia ], [ %i.jl, %bb.ie ], [ %i.ji, %bb.ic ]
  %i.jk = getelementptr inbounds nuw i8, ptr %.8.val, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jk) #43
          to label %common.resume.i.i unwind label %bb.ii

bb.ie:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i150.i.i
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i147.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i151.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i150.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %.8.val, i64 192 ; 4 uses
  %i.jn = load i64, ptr %i.jm, align 8, !range !14, !alias.scope !788, !noundef !6
  %i.jo = icmp eq i64 %i.jn, -1
  br i1 %i.jo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit, label %bb.if

bb.if:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i151.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.jp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jm)
          to label %common.resume.i.i unwind label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i152.invoke.invoke.i.i: ; preds = %bb.jb, %bb.if, %bb.gn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i121.i.i, %bb.ez, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i81.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i56.i.i
  %i.jr = phi ptr [ %i.jm, %bb.if ], [ %i.hq, %bb.gn ], [ %i.gt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i121.i.i ], [ %i.fu, %bb.ez ], [ %i.dl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i81.i.i ], [ %i.ao, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i56.i.i ], [ %i.km, %bb.jb ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jr)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit unwind label %bb.jf

bb.ii:                                            ; preds = %.body.i.i147.i.i, %bb.ia
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.ij:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.il unwind label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.jt = landingpad { ptr, i32 }
          cleanup
  %i.ju = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ju) #43
          to label %common.resume.i.i unwind label %bb.io

bb.il:                                            ; preds = %bb.ij
  %i.jv = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jv)
          to label %common.resume.i.i unwind label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.io:                                            ; preds = %bb.ik
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.ip:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.ir unwind label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.jz = landingpad { ptr, i32 }
          cleanup
  %i.ka = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ka) #43
          to label %common.resume.i.i unwind label %bb.iu

bb.ir:                                            ; preds = %bb.ip
  %i.kb = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kb)
          to label %common.resume.i.i unwind label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.iu:                                            ; preds = %bb.iq
  %i.ke = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.iv:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.8.val)
          to label %bb.ix unwind label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.kf = landingpad { ptr, i32 }
          cleanup
  %i.kg = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kg) #43
          to label %.body.i.i157.i.i unwind label %bb.je

bb.ix:                                            ; preds = %bb.iv
  %i.kh = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i160.i.i unwind label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.ki = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kh)
          to label %.body.i.i157.i.i unwind label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.kj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i160.i.i: ; preds = %bb.ix
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i161.i.i unwind label %bb.ja

.body.i.i157.i.i:                                 ; preds = %bb.ja, %bb.iy, %bb.iw
  %.pn.i.i158.i.i = phi { ptr, i32 } [ %i.kf, %bb.iw ], [ %i.kl, %bb.ja ], [ %i.ki, %bb.iy ]
  %i.kk = getelementptr inbounds nuw i8, ptr %.8.val, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kk) #43
          to label %common.resume.i.i unwind label %bb.je

bb.ja:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i160.i.i
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i157.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i161.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i160.i.i
  %i.km = getelementptr inbounds nuw i8, ptr %.8.val, i64 192 ; 4 uses
  %i.kn = load i64, ptr %i.km, align 8, !range !14, !alias.scope !789, !noundef !6
  %i.ko = icmp eq i64 %i.kn, -1
  br i1 %i.ko, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit, label %bb.jb

bb.jb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i161.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.km)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.kp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.km)
          to label %common.resume.i.i unwind label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.kq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.je:                                            ; preds = %.body.i.i157.i.i, %bb.iw
  %i.kr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.jf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i152.invoke.invoke.i.i
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.jg:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.ji unwind label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.kt = landingpad { ptr, i32 }
          cleanup
  %i.ku = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ku) #43
          to label %common.resume.i.i unwind label %bb.jl

bb.ji:                                            ; preds = %bb.jg
  %i.kv = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.kw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kv)
          to label %common.resume.i.i unwind label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.kx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i: ; preds = %bb.jp, %bb.ji, %bb.ir, %bb.il, %bb.hv, %bb.hm, %bb.hg, %bb.fl, %bb.ff, %bb.ep, %bb.dh, %bb.cs, %bb.cm, %bb.cg, %bb.ca, %bb.bu, %bb.bo, %bb.bi, %bb.bb, %bb.z, %bb.t
  %i.ky = phi ptr [ %i.kv, %bb.ji ], [ %i.kb, %bb.ir ], [ %i.jv, %bb.il ], [ %i.jb, %bb.hv ], [ %i.it, %bb.hm ], [ %i.il, %bb.hg ], [ %i.gi, %bb.fl ], [ %i.gc, %bb.ff ], [ %i.fj, %bb.ep ], [ %i.dr, %bb.dh ], [ %i.da, %bb.cs ], [ %i.cu, %bb.cm ], [ %i.co, %bb.cg ], [ %i.ci, %bb.ca ], [ %i.cc, %bb.bu ], [ %i.bw, %bb.bo ], [ %i.bo, %bb.bi ], [ %i.bi, %bb.bb ], [ %i.ad, %bb.z ], [ %i.v, %bb.t ], [ %i.lc, %bb.jp ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ky)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit unwind label %bb.jt

bb.jl:                                            ; preds = %bb.jh
  %i.kz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.jm:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.8.val)
          to label %bb.jo unwind label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.la = landingpad { ptr, i32 }
          cleanup
  %i.lb = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lb) #43
          to label %common.resume.i.i unwind label %bb.js

bb.jo:                                            ; preds = %bb.jm
  %i.lc = getelementptr inbounds nuw i8, ptr %.8.val, i64 168 ; 4 uses
  %i.ld = load i64, ptr %i.lc, align 8, !range !14, !alias.scope !790, !noundef !6
  %i.le = icmp eq i64 %i.ld, -1
  br i1 %i.le, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i unwind label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.lf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lc)
          to label %common.resume.i.i unwind label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.lg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.js:                                            ; preds = %bb.jn
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.jt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i, %bb.p
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEEB14_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit8.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i.invoke.i.i, %bb.p, %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i58.invoke.i.i, %bb.bh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit8.i.i93.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i94.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit8.i.i103.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i111.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit4.i.i128.invoke.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i133.i.i, %bb.hb, %bb.hf, %bb.hq, %.invoke.invoke.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i151.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i152.invoke.invoke.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i161.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i, %bb.jo
  %.sink1.i.i = phi i64 [ 272, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i94.i.i ], [ 256, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i.invoke.i.i ], [ 256, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit8.i.i103.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i161.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i152.invoke.invoke.i.i ], [ 208, %bb.s ], [ 272, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit8.i.i93.i.i ], [ 256, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit8.i.i.i.i ], [ 184, %.invoke.invoke.i.i ], [ 192, %bb.hq ], [ 208, %bb.p ], [ 208, %bb.bh ], [ 208, %bb.hf ], [ 200, %bb.hb ], [ 208, %bb.jo ], [ 208, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i164.invoke.invoke.i.i ], [ 248, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit4.i.i128.invoke.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i133.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i111.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i151.i.i ], [ 224, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i58.invoke.i.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.sink1.i.i, i64 noundef 8) #40
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs7gfv9tzbXmh_6yara_x.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintEEEB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintEEB1c_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintEEB1c_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintEEB1j_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintEEB1j_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintEEB1c_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure8AclEntryEEEB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure8AclEntryEEB1e_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure8AclEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure8AclEntryEEB1e_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure8AclEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure8AclEntryEEB1l_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure8AclEntryEEB1l_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure8AclEntryEEB1e_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure8AclEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema7TcpJsonEEEB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema7TcpJsonEEB1g_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema7TcpJsonENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema7TcpJsonEEB1g_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema7TcpJsonENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema7TcpJsonEEB1n_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema7TcpJsonEEB1n_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema7TcpJsonEEB1g_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema7TcpJsonENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema7UdpJsonEEEB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema7UdpJsonEEB1g_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema7UdpJsonENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema7UdpJsonEEB1g_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
