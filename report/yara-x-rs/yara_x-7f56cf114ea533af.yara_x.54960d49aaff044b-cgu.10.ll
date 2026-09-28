Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.10?download=true
inline.NumInlined: 6305
inline.NumDeleted: 3398
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentE4pushCs7gfv9tzbXmh_6yara_x:bb.a
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !5500, !noalias !5501, !nonnull !6, !noundef !6
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.t = add i64 %i.l, 1
  store i64 %i.t, ptr %i.b, align 8, !alias.scope !5500, !noalias !5501
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
  %i.b = load i64, ptr %i.a, align 8, !noundef !6
  %i.c = tail call { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 32)
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.e = icmp ult i64 %.val, 288230376151711744
  tail call void @llvm.assume(i1 %i.e)
  %i.f = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 %1) ; 2 uses
  %i.g = shl nuw i64 %i.f, 5
  %i.h = icmp ugt i64 %i.f, 576460752303423487
  br i1 %i.h, label %bb.c, label %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance21PassiveElementSegmentE7reserve0Cs7gfv9tzbXmh_6yara_x.exit, !prof !8

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
  %.val.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5504, !noundef !6 ; 2 uses
  %i.d = icmp ult i64 %.val.i, 288230376151711744
  call void @llvm.assume(i1 %i.d)
  %i.e = call i64 @llvm.uadd.sat.i64(i64 %.val.i, i64 %1) ; 2 uses
  %i.f = shl nuw i64 %i.e, 5
  %i.g = icmp ugt i64 %i.e, 576460752303423487
  br i1 %i.g, label %bb.c, label %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE7reserve0Cs7gfv9tzbXmh_6yara_x.exit.i, !prof !8

bb.c:                                             ; preds = %bb.b
  br label %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE7reserve0Cs7gfv9tzbXmh_6yara_x.exit.i

_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE7reserve0Cs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi i64 [ -1, %bb.c ], [ %i.f, %bb.b ]
  %i.h = invoke noundef nonnull ptr @_RNvMsn_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynError11new_oom_ptr(i64 noundef %.sroa.0.0.i.i)
          to label %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE7reserveCs7gfv9tzbXmh_6yara_x.exit unwind label %bb.d

bb.d:                                             ; preds = %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE7reserve0Cs7gfv9tzbXmh_6yara_x.exit.i, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #43
          to label %common.resume unwind label %bb.i

_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE7reserveCs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RNCNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB7_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE7reserve0Cs7gfv9tzbXmh_6yara_x.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.e

bb.e:                                             ; preds = %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE7reserveCs7gfv9tzbXmh_6yara_x.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE7reserveCs7gfv9tzbXmh_6yara_x.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.h

bb.g:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefEECs7gfv9tzbXmh_6yara_x.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE4pushCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5510, !noundef !6
  %i.c = tail call { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef 1, i64 noundef 8, i64 noundef 32)
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %.not.i = icmp eq i64 %i.d, -1
  %i.e = load i64, ptr %i.a, align 8, !noundef !6 ; 5 uses
  br i1 %.not.i, label %bb.b, label %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE7reserveCs7gfv9tzbXmh_6yara_x.exit

_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE7reserveCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a
  %i.f = icmp ult i64 %i.e, 288230376151711744
  tail call void @llvm.assume(i1 %i.f)
  %i.g = shl nuw nsw i64 %i.e, 5
  %i.h = add nuw i64 %i.g, 32
  %i.i = tail call noundef nonnull ptr @_RNvMsn_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynError11new_oom_ptr(i64 noundef %i.h)
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %0, align 8, !range !11, !alias.scope !5511, !noalias !5512, !noundef !6
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.c, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE8push_mutCs7gfv9tzbXmh_6yara_x.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE8grow_oneCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #44, !noalias !5512
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE8push_mutCs7gfv9tzbXmh_6yara_x.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE8push_mutCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !5511, !noalias !5512, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.o = add i64 %i.e, 1
  store i64 %i.o, ptr %i.a, align 8, !alias.scope !5511, !noalias !5512
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE7reserveCs7gfv9tzbXmh_6yara_x.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE8push_mutCs7gfv9tzbXmh_6yara_x.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE8push_mutCs7gfv9tzbXmh_6yara_x.exit ], [ %i.i, %_RNvMs1_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vecINtB5_6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext9VMFuncRefE7reserveCs7gfv9tzbXmh_6yara_x.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_5Rules18build_ac_automaton(ptr noalias nofree noundef align 8 dereferenceable(720) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 13 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [56 x i8], align 8                ; 13 uses
  %i.i = alloca [168 x i8], align 8               ; 6 uses
  %i.j = alloca [144 x i8], align 8               ; 11 uses
  %i.k = alloca [168 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = load i64, ptr %i.n, align 8, !noundef !6 ; 2 uses
  %.idx = mul nuw nsw i64 %i.o, 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5523
  store i64 0, ptr %i.h, align 8, !noalias !5523
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !5523
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 49
  store i8 0, ptr %i.q, align 1, !noalias !5523
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !5523
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !5523
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 0, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !5523
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i8 1, ptr %i.r, align 8, !noalias !5523
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5524)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5525
  store ptr %i.m, ptr %i.f, align 8, !noalias !5525
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !5525
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !5525
  invoke void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateIBR_INtNtNtB6_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules14SubPatternAtomENCNvMs2_B24_NtB24_5Rules18build_ac_automaton0EENCINvMs_NtNtCsc2ZV4bV5Srq_9daachorse8bytewise7builderNtB3S_29DoubleArrayAhoCorasickBuilder5buildB1y_RShmE0ETB5m_mEINtNtB6_6result6ResultzNtNtNtB6_3num5error15TryFromIntErrorENCINvXso_B5D_IB5B_INtNtCsexYYUdYSQU6_5alloc3vec3VecB5t_EB5X_EINtNtNtB4_6traits7collect12FromIteratorIB5B_B5t_B5X_EE9from_iterBQ_E0B6Q_EB28_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
          to label %bb.b unwind label %bb.c, !noalias !5525

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5525
  %i.s = load i64, ptr %i.g, align 8, !range !14, !noalias !5525, !noundef !6 ; 2 uses
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %_RINvMs_NtNtCsc2ZV4bV5Srq_9daachorse8bytewise7builderNtB5_29DoubleArrayAhoCorasickBuilder5buildINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1D_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules14SubPatternAtomENCNvMs2_B2L_NtB2L_5Rules18build_ac_automaton0ERShmEB2P_.exit.thread.i, label %_RINvMs_NtNtCsc2ZV4bV5Srq_9daachorse8bytewise7builderNtB5_29DoubleArrayAhoCorasickBuilder5buildINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1D_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules14SubPatternAtomENCNvMs2_B2L_NtB2L_5Rules18build_ac_automaton0ERShmEB2P_.exit.i

_RINvMs_NtNtCsc2ZV4bV5Srq_9daachorse8bytewise7builderNtB5_29DoubleArrayAhoCorasickBuilder5buildINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1D_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules14SubPatternAtomENCNvMs2_B2L_NtB2L_5Rules18build_ac_automaton0ERShmEB2P_.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5525
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 2, ptr %i.u, align 8, !alias.scope !5524, !noalias !5526
  %.sroa.448.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr @187, ptr %.sroa.448.0..sroa_idx.i.i, align 8, !alias.scope !5524, !noalias !5526
  %.sroa.5.0..sroa_idx49.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 5, ptr %.sroa.5.0..sroa_idx49.i.i, align 8, !alias.scope !5524, !noalias !5526
  %.sroa.650.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr @188, ptr %.sroa.650.0..sroa_idx.i.i, align 8, !alias.scope !5524, !noalias !5526
  %.sroa.751.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 1, ptr %.sroa.751.0..sroa_idx.i.i, align 8, !alias.scope !5524, !noalias !5526
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc2ZV4bV5Srq_9daachorse8bytewise7builder29DoubleArrayAhoCorasickBuilderECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h), !noalias !5527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5523
  br label %bb.e

common.resume:                                    ; preds = %bb.c, %.body.i, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.u ], [ %i.v, %bb.c ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc2ZV4bV5Srq_9daachorse8bytewise7builder29DoubleArrayAhoCorasickBuilderECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h) #43
          to label %common.resume unwind label %bb.d, !noalias !5527

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41, !noalias !5527
  unreachable

_RINvMs_NtNtCsc2ZV4bV5Srq_9daachorse8bytewise7builderNtB5_29DoubleArrayAhoCorasickBuilder5buildINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1D_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules14SubPatternAtomENCNvMs2_B2L_NtB2L_5Rules18build_ac_automaton0ERShmEB2P_.exit.i: ; preds = %bb.b
  %i.x = inttoptr i64 %i.s to ptr
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.427.0.copyload.i.i = load i64, ptr %.sroa.427.0..sroa_idx.i.i, align 8, !noalias !5525
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.528.0.copyload.i.i = load ptr, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !noalias !5525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5525
  store ptr %i.x, ptr %i.e, align 8, !noalias !5525
  %.sroa.6.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.427.0.copyload.i.i, ptr %.sroa.6.sroa.7.0..sroa_idx.i.i, align 8, !noalias !5525
  %.sroa.6.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.528.0.copyload.i.i, ptr %.sroa.6.sroa.8.0..sroa_idx.i.i, align 8, !noalias !5525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !noalias !5527
  call fastcc void @_RINvMs_NtNtCsc2ZV4bV5Srq_9daachorse8bytewise7builderNtB5_29DoubleArrayAhoCorasickBuilder17build_with_valuesINtNtCsexYYUdYSQU6_5alloc3vec3VecTRShmEEB2f_mECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(144) %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !5526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5525
  %.pr.i = load i64, ptr %i.j, align 8, !alias.scope !5528, !noalias !5529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5523
  call void @llvm.experimental.noalias.scope.decl(metadata !5528)
  %i.y = icmp eq i64 %.pr.i, -1
  br i1 %i.y, label %bb.e, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsc2ZV4bV5Srq_9daachorse8bytewise22DoubleArrayAhoCorasickmENtNtBM_6errors14DaachorseErrorE6expectCs7gfv9tzbXmh_6yara_x.exit.i, !prof !50

bb.e:                                             ; preds = %_RINvMs_NtNtCsc2ZV4bV5Srq_9daachorse8bytewise7builderNtB5_29DoubleArrayAhoCorasickBuilder5buildINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1D_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules14SubPatternAtomENCNvMs2_B2L_NtB2L_5Rules18build_ac_automaton0ERShmEB2P_.exit.i, %_RINvMs_NtNtCsc2ZV4bV5Srq_9daachorse8bytewise7builderNtB5_29DoubleArrayAhoCorasickBuilder5buildINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1D_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules14SubPatternAtomENCNvMs2_B2L_NtB2L_5Rules18build_ac_automaton0ERShmEB2P_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5530
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.z, i64 48, i1 false), !noalias !5529
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 38, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @251, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #42, !noalias !5530
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsc2ZV4bV5Srq_9daachorse8bytewise22DoubleArrayAhoCorasickmENtNtBM_6errors14DaachorseErrorE6expectCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RINvMs_NtNtCsc2ZV4bV5Srq_9daachorse8bytewise7builderNtB5_29DoubleArrayAhoCorasickBuilder5buildINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1D_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules14SubPatternAtomENCNvMs2_B2L_NtB2L_5Rules18build_ac_automaton0ERShmEB2P_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(144) %i.j, i64 144, i1 false), !noalias !5523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5523
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 144 ; 3 uses
  store ptr null, ptr %i.aa, align 8, !noalias !5523
  call void @llvm.experimental.noalias.scope.decl(metadata !5531)
  %i.ab = add nsw i64 %i.o, -65
  %or.cond.i.i = icmp ult i64 %i.ab, -64
  br i1 %or.cond.i.i, label %_RINvMs1_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB6_11AhoCorasick3newINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterNtB6_14SubPatternAtomENCNvMs2_B6_NtB6_5Rules18build_ac_automaton0EEBa_.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsc2ZV4bV5Srq_9daachorse8bytewise22DoubleArrayAhoCorasickmENtNtBM_6errors14DaachorseErrorE6expectCs7gfv9tzbXmh_6yara_x.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5532
  store i64 0, ptr %i.b, align 8, !noalias !5532
  %.sroa.4.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i10.i, align 8, !noalias !5532
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !noalias !5532
  br label %.lr.ph

bb.g:                                             ; preds = %bb.o
  %i.ac = icmp eq ptr %i.ad, %i.p
  br i1 %i.ac, label %.thread.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.025.0.i.i3 = phi ptr [ %i.m, %bb.f ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i.i3, i64 48 ; 2 uses
  %i.ae = invoke { ptr, i64 } @_RNvXNtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB2_4AtomINtNtCskKLDkoKarTP_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.025.0.i.i3)
          to label %bb.i unwind label %bb.h, !noalias !5532 ; 2 uses

bb.h:                                             ; preds = %bb.o, %.lr.ph
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph
  %i.ag = extractvalue { ptr, i64 } %i.ae, 0      ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.ae, 1      ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEEB11_.exit22.i.i, label %bb.o

.thread.i.i:                                      ; preds = %bb.g, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5532
  invoke void @_RNvMNtCs7gfv9tzbXmh_6yara_x5teddyNtB2_7Builder5build(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEEB11_.exit20.i.i unwind label %bb.l, !noalias !5532

bb.k:                                             ; preds = %bb.l, %bb.h
  %.pn.i.i = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %i.af, %bb.h ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x5teddy7BuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #43
          to label %.body.i unwind label %bb.r, !noalias !5523

bb.l:                                             ; preds = %.thread.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEEB11_.exit20.i.i: ; preds = %.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !5523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5532
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x5teddy7BuilderEBF_.exit24.i.invoke.i unwind label %bb.m, !noalias !5523

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEEB11_.exit20.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.n, !noalias !5523

bb.n:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41, !noalias !5523
  unreachable

bb.o:                                             ; preds = %bb.j
  invoke void @_RNvMNtCs7gfv9tzbXmh_6yara_x5teddyNtB2_7Builder3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.ah)
          to label %bb.g unwind label %bb.h, !noalias !5532

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEEB11_.exit22.i.i: ; preds = %bb.j
  store ptr null, ptr %i.aa, align 8, !alias.scope !5531, !noalias !5523
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x5teddy7BuilderEBF_.exit24.i.invoke.i unwind label %bb.p, !noalias !5523

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEEB11_.exit22.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.q, !noalias !5523

bb.q:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41, !noalias !5523
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x5teddy7BuilderEBF_.exit24.i.invoke.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEEB11_.exit22.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x5teddy8SearcherEEB11_.exit20.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvMs1_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB6_11AhoCorasick13rebuild_teddyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtB6_14SubPatternAtomENCNvMs2_B6_NtB6_5Rules18build_ac_automaton0EEBa_.exit.sink.split.i unwind label %bb.s, !noalias !5523

bb.r:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41, !noalias !5523
  unreachable

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x5teddy7BuilderEBF_.exit24.i.invoke.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.s, %bb.p, %bb.m, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %i.am, %bb.p ], [ %i.ak, %bb.m ], [ %.pn.i.i, %bb.k ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules11AhoCorasickEBH_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.i) #43
          to label %common.resume unwind label %bb.t, !noalias !5523

_RINvMs1_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB6_11AhoCorasick13rebuild_teddyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtB6_14SubPatternAtomENCNvMs2_B6_NtB6_5Rules18build_ac_automaton0EEBa_.exit.sink.split.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x5teddy7BuilderEBF_.exit24.i.invoke.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5532
  br label %_RINvMs1_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB6_11AhoCorasick3newINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterNtB6_14SubPatternAtomENCNvMs2_B6_NtB6_5Rules18build_ac_automaton0EEBa_.exit

bb.t:                                             ; preds = %.body.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41, !noalias !5523
  unreachable

_RINvMs1_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB6_11AhoCorasick3newINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterNtB6_14SubPatternAtomENCNvMs2_B6_NtB6_5Rules18build_ac_automaton0EEBa_.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsc2ZV4bV5Srq_9daachorse8bytewise22DoubleArrayAhoCorasickmENtNtBM_6errors14DaachorseErrorE6expectCs7gfv9tzbXmh_6yara_x.exit.i, %_RINvMs1_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB6_11AhoCorasick13rebuild_teddyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtB6_14SubPatternAtomENCNvMs2_B6_NtB6_5Rules18build_ac_automaton0EEBa_.exit.sink.split.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.k, ptr noundef nonnull align 8 dereferenceable(168) %i.i, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5523
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules11AhoCorasickEBH_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.ar)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %_RINvMs1_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB6_11AhoCorasick3newINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterNtB6_14SubPatternAtomENCNvMs2_B6_NtB6_5Rules18build_ac_automaton0EEBa_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ar, ptr noundef nonnull align 8 dereferenceable(168) %i.k, i64 168, i1 false)
  br label %common.resume

bb.v:                                             ; preds = %_RINvMs1_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB6_11AhoCorasick3newINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterNtB6_14SubPatternAtomENCNvMs2_B6_NtB6_5Rules18build_ac_automaton0EEBa_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ar, ptr noundef nonnull align 8 dereferenceable(168) %i.k, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_5Rules3get(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(720) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i64, ptr %i.a, align 8, !noundef !6
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = icmp ugt i64 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw [112 x i8], ptr %i.f, i64 %i.c
  ret ptr %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_5Rules9serialize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(720) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.105.i.i.i.i.i = alloca [16 x i8], align 8 ; 25 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 25 uses
  %i.al = alloca [4 x i8], align 4                ; 5 uses
  %i.am = alloca [40 x i8], align 8               ; 21 uses
  %i.an = alloca [24 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i64 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 0, ptr %i.ap, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5658)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !5659
  invoke void @_RNvMNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB2_9BufWriterQINtNtB8_3vec3VechEE13with_capacityCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.am, i64 noundef 8192, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.noexc unwind label %bb.bu

.noexc:                                           ; preds = %bb.a
  %i.aq = load i64, ptr %i.am, align 8, !range !11, !noalias !5659, !noundef !6
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 4 uses
  %i.as = load i64, ptr %i.ar, align 8, !noalias !5659, !noundef !6 ; 4 uses
  %i.at = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.at)
  %i.au = sub nsw i64 %i.aq, %i.as
  %i.av = icmp ugt i64 %i.au, 8
  br i1 %i.av, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %.noexc
  %i.aw = invoke noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterQINtNtBa_3vec3VechEE14write_all_coldCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 8)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !5660 ; 2 uses

bb.c:                                             ; preds = %.noexc
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !5659, !nonnull !6, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.as
  store i64 96951392682329, ptr %i.az, align 1, !noalias !5660
  %i.ba = add nuw i64 %i.as, 8                    ; 2 uses
  store i64 %i.ba, ptr %i.ar, align 8, !noalias !5659
  br label %bb.e

end_hunk_0
