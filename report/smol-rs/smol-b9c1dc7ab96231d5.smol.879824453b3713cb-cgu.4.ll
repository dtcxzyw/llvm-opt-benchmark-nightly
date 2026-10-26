Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/smol-rs/original/smol-b9c1dc7ab96231d5.smol.879824453b3713cb-cgu.4?download=true
inline.NumInlined: 192
inline.NumDeleted: 136
begin_hunk_0_@_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE10initializeNCINvB2_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zEB2d_:bb.a
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB1i_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB1i_4sync6atomic6AtomicbEEEEuE16get_or_init_slowNvNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE27___rust_std_internal_init_fnECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 11 uses
  %i.c = alloca [40 x i8], align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8, !range !6, !noundef !7
  switch i8 %i.e, label %default.unreachable5 [
    i8 0, label %bb.b
    i8 1, label %bb.o
    i8 2, label %bb.c
  ]

default.unreachable5:                             ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %.sroa.03.0.copyload = load i64, ptr %1, align 8
  store i64 0, ptr %1, align 8
  %i.f = trunc nuw i64 %.sroa.03.0.copyload to i1
  br i1 %i.f, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %.sroa.5.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa.0.0.1.sroa_idx, i64 40, i1 false)
  store i8 1, ptr %i.d, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @_RNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on16parker_and_waker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g)
  store i64 0, ptr %i.c, align 8, !alias.scope !43
  %.pre = load i8, ptr %i.d, align 8, !range !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  store i8 1, ptr %i.d, align 8
  switch i8 %.pre, label %default.unreachable5 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.n
  ], !prof !44

bb.f:                                             ; preds = %.thread, %bb.e
  tail call void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %0, ptr noundef nonnull @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB18_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB18_4sync6atomic6AtomicbEEEEECsbDLrNlwBX3H_4smol)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEEECsbDLrNlwBX3H_4smol.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !52, !nonnull !7, !noundef !7
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !52
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val3.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !53, !nonnull !7, !align !8, !noundef !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val4.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !53, !noundef !7
  %i.o = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !7, !noundef !7
  invoke void %i.p(ptr noundef %.val4.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i unwind label %bb.m, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !53, !nonnull !7, !align !8, !noundef !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val2.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !53, !noundef !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !7, !noundef !7
  invoke void %i.t(ptr noundef %.val2.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i unwind label %bb.k, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %bb.k, %bb.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.y, %bb.k ], [ %i.l, %bb.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !56, !nonnull !7, !noundef !7
  %i.w = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !57
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbDLrNlwBX3H_4smol.exit.i.i.i

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbDLrNlwBX3H_4smol.exit.i.i.i unwind label %bb.m

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !60, !nonnull !7, !noundef !7
  %i.ab = atomicrmw add ptr %i.aa, i64 -1 release, align 8, !noalias !61
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEEECsbDLrNlwBX3H_4smol.exit

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEEECsbDLrNlwBX3H_4smol.exit

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i
  resume { ptr, i32 } %.pn.i.i.i

bb.n:                                             ; preds = %bb.e
  %i.ae = call noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 87 to ptr))
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol(ptr %i.ae)
  call void @_RNvNtCsG258MDvU3F_3std7process5abort() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEEECsbDLrNlwBX3H_4smol.exit
  %.sroa.02.0 = phi ptr [ %0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEEECsbDLrNlwBX3H_4smol.exit ], [ null, %bb.c ], [ %0, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs13QwXx3ETeK_8async_io6driver8block_onuNCINvMs3_Csa9iXSdNszRG_14async_executorNtBR_8Executor3runuINtNtNtCskKLDkoKarTP_4core6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(232) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [232 x i8], align 16              ; 23 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 14 uses
  %i.l = alloca [232 x i8], align 8               ; 7 uses
  %i.m = alloca [232 x i8], align 8               ; 9 uses
  %i.n = atomicrmw add ptr @_RNvNtCs13QwXx3ETeK_8async_io6driver14BLOCK_ON_COUNT, i64 1 seq_cst, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.m, ptr noundef nonnull align 8 dereferenceable(232) %0, i64 232, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !6, !noalias !154, !noundef !7
  %i.r = icmp eq i8 %i.q, 1
  br i1 %i.r, label %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.thread.i.i, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.s = invoke fastcc noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB1i_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB1i_4sync6atomic6AtomicbEEEEuE16get_or_init_slowNvNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE27___rust_std_internal_init_fnECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.o, ptr noalias nofree noundef align 8 dereferenceable_or_null(48) null)
          to label %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.i.i unwind label %bb.cy, !noalias !155 ; 2 uses

_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.i.i: ; preds = %bb.b
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.cw, label %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.thread.i.i

_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.i.i, %bb.a
  %.sroa.0.0.i.i.i8.i.i = phi ptr [ %i.s, %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.i.i ], [ %i.o, %bb.a ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.l, ptr noundef nonnull align 8 dereferenceable(232) %i.m, i64 232, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !157
  %i.u = load i64, ptr %.sroa.0.0.i.i.i8.i.i, align 8, !noalias !157, !noundef !7
  %.not101.i.i.i = icmp eq i64 %i.u, 0            ; 3 uses
  br i1 %.not101.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.thread.i.i
  store i64 -1, ptr %.sroa.0.0.i.i.i8.i.i, align 8, !noalias !157
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i8.i.i, i64 8
  br label %bb.e

bb.d:                                             ; preds = %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !157
  invoke void @_RNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on16parker_and_waker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j)
          to label %bb.f unwind label %bb.ct, !noalias !157

bb.e:                                             ; preds = %bb.f, %bb.c
  %.sroa.01.0.i.i.i = phi ptr [ %i.v, %bb.c ], [ %i.k, %bb.f ] ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(232) %i.i, ptr noundef nonnull align 8 dereferenceable(232) %i.l, i64 232, i1 false), !noalias !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !157
  store ptr %i.w, ptr %i.h, align 8, !noalias !157
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.w, ptr %i.y, align 8, !noalias !157
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr null, ptr %i.z, align 8, !noalias !157
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 225 ; 6 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 201 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 224 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 208 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 200 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 144 ; 5 uses
  %i.ag = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs8NKWGp8lJEP_8fastrand10global_rng3RNG0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 184 ; 2 uses
  %.sroa.816.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = call nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on10IO_POLLING0s_023___RUST_STD_INTERNAL_VAL) ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.374.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ar = insertelement <2 x ptr> poison, ptr %i.af, i64 0
  %i.as = insertelement <2 x ptr> %i.ar, ptr %i.ai, i64 1
  br label %.backedge.i.i.i

.body44.i.i.i:                                    ; preds = %1, %bb.ah, %.body.i.i.i, %.body.thread.i.i.i
  %.pn22.pn.i.i.i = phi { ptr, i32 } [ %2, %1 ], [ %.pn22.ph.i.i.i, %bb.ah ], [ %.pn22.ph.i.i.i, %.body.i.i.i ], [ %.pn7.i.i.i.i, %.body.thread.i.i.i ] ; 2 uses
  br i1 %.not101.i.i.i, label %.split.i.i.i, label %bb.cs

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !157
  br label %bb.e

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.e
  %i.at = load i8, ptr %i.aa, align 1, !range !9, !noalias !158, !noundef !7
  switch i8 %i.at, label %.unreachabledefault [
    i8 0, label %bb.g
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
  ]

.unreachabledefault:                              ; preds = %.backedge.i.i.i
  unreachable

default.unreachable:                              ; preds = %bb.ck, %bb.k, %bb.bg
  unreachable

bb.g:                                             ; preds = %.backedge.i.i.i
  %i.au = load ptr, ptr %i.ac, align 8, !noalias !158, !nonnull !7, !align !8, !noundef !7 ; 2 uses
  store i8 1, ptr %i.ab, align 16, !noalias !158
  %i.av = load atomic ptr, ptr %i.au acquire, align 8, !noalias !158 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.h, label %_RNvMs3_Csa9iXSdNszRG_14async_executorNtB5_8Executor5state.exit.i.i.i.i, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.ax = invoke noundef ptr @_RNvNvMs3_Csa9iXSdNszRG_14async_executorNtB7_8Executor5state11alloc_state(ptr noundef nonnull align 8 %i.au)
          to label %_RNvMs3_Csa9iXSdNszRG_14async_executorNtB5_8Executor5state.exit.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !158

_RNvMs3_Csa9iXSdNszRG_14async_executorNtB5_8Executor5state.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i6.i.i = phi ptr [ %i.av, %bb.g ], [ %i.ax, %bb.h ]
  store ptr %.sroa.0.0.i.i.i6.i.i, ptr %i.ad, align 16, !noalias !158
  %i.ay = invoke noundef nonnull align 128 ptr @_RNvXsb_NtCskKLDkoKarTP_4core3pinINtB5_3PinRNtCsa9iXSdNszRG_14async_executor5StateENtNtNtB7_3ops5deref5Deref5derefCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
          to label %.thread.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !158 ; 2 uses

.thread.i.i.i.i:                                  ; preds = %_RNvMs3_Csa9iXSdNszRG_14async_executorNtB5_8Executor5state.exit.i.i.i.i
  store i8 0, ptr %i.ab, align 16, !noalias !158
  store ptr %i.ay, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 16, !noalias !158
  store i8 0, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !158
  br label %bb.l

.body.thread.i.i.i:                               ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i.i.i.i
  %.pn7.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %lpad.loopexit.split-lp31, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  store i8 0, ptr %i.ab, align 16, !noalias !158
  store i8 2, ptr %i.aa, align 1, !noalias !158
  br label %.body44.i.i.i

bb.i:                                             ; preds = %.backedge.i.i.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp108.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !157

.noexc.i.i.i:                                     ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %.backedge.i.i.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21
          to label %.noexc40.i.i.i unwind label %.loopexit.split-lp108.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !157

.noexc40.i.i.i:                                   ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.backedge.i.i.i
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !range !9, !noalias !159
  switch i8 %.pre.i.i.i.i, label %default.unreachable [
    i8 0, label %._crit_edge.i.i.i
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
  ]

._crit_edge.i.i.i:                                ; preds = %bb.k
  %.pre.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 16, !noalias !159
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i, %.thread.i.i.i.i
  %i.az = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.ay, %.thread.i.i.i.i ]
  store i8 1, ptr %i.ae, align 8, !noalias !159
  invoke void @_RNvMsf_Csa9iXSdNszRG_14async_executorNtB5_6Runner3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.af, ptr noundef nonnull align 128 %i.az)
          to label %bb.m unwind label %.loopexit.split-lp103.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !159

.loopexit.split-lp103.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.aa
  %lpad.loopexit.split-lp33 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ba = load i8, ptr %i.ah, align 8, !range !160, !noalias !161, !noundef !7
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %._RNvYNCNKNvNtCs8NKWGp8lJEP_8fastrand10global_rng3RNG0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_INtNtBY_4cell4CellNtBa_3RngEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit_crit_edge.i.i.i.i.i.i.i, label %_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellNtCs8NKWGp8lJEP_8fastrand3RngEzE16get_or_init_slowNvNvNtB1N_10global_rng3RNG27___rust_std_internal_init_fnECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i, !prof !5

._RNvYNCNKNvNtCs8NKWGp8lJEP_8fastrand10global_rng3RNG0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_INtNtBY_4cell4CellNtBa_3RngEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit_crit_edge.i.i.i.i.i.i.i: ; preds = %bb.m
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !159
  br label %bb.o

_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellNtCs8NKWGp8lJEP_8fastrand3RngEzE16get_or_init_slowNvNvNtB1N_10global_rng3RNG27___rust_std_internal_init_fnECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.bc = invoke { i64, i64 } @_RNvNtCs8NKWGp8lJEP_8fastrand10global_rng11random_seed()
          to label %.noexc.i.i.i.i.i unwind label %bb.n, !noalias !159 ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellNtCs8NKWGp8lJEP_8fastrand3RngEzE16get_or_init_slowNvNvNtB1N_10global_rng3RNG27___rust_std_internal_init_fnECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i
  %i.bd = extractvalue { i64, i64 } %i.bc, 0
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = extractvalue { i64, i64 } %i.bc, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.be, i64 %i.bf, i64 1078321422319462234
  store i8 1, ptr %i.ah, align 8, !noalias !162
  br label %bb.o

bb.n:                                             ; preds = %_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellNtCs8NKWGp8lJEP_8fastrand3RngEzE16get_or_init_slowNvNvNtB1N_10global_rng3RNG27___rust_std_internal_init_fnECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6RunnerECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(40) %i.af) #22
          to label %.body.i.i.i.i.i unwind label %bb.p, !noalias !159

bb.o:                                             ; preds = %.noexc.i.i.i.i.i, %._RNvYNCNKNvNtCs8NKWGp8lJEP_8fastrand10global_rng3RNG0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_INtNtBY_4cell4CellNtBa_3RngEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit_crit_edge.i.i.i.i.i.i.i
  %i.bh = phi i64 [ %.pre.i.i.i.i.i.i.i, %._RNvYNCNKNvNtCs8NKWGp8lJEP_8fastrand10global_rng3RNG0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_INtNtBY_4cell4CellNtBa_3RngEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit_crit_edge.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i ]
  %i.bi = add i64 %i.bh, 3257665815644502181      ; 3 uses
  %i.bj = zext i64 %i.bi to i128
  %i.bk = xor i64 %i.bi, -8378864009470890807
  %i.bl = zext i64 %i.bk to i128
  %i.bm = mul nuw i128 %i.bl, %i.bj               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64
  %i.bo = xor i128 %i.bn, %i.bm
  %i.bp = trunc i128 %i.bo to i64
  store i64 %i.bi, ptr %i.ag, align 8, !noalias !159
  store i64 %i.bp, ptr %i.ai, align 8, !noalias !159
  store i8 0, ptr %i.ae, align 8, !noalias !159
  store <2 x ptr> %i.as, ptr %i.i, align 16, !noalias !159
  store i8 0, ptr %.sroa.816.0..sroa_idx.i.i.i.i.i, align 16, !noalias !159
  br label %bb.s

bb.p:                                             ; preds = %bb.t, %bb.n
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !157
  unreachable

bb.q:                                             ; preds = %bb.k
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #21
          to label %.noexc9.i.i.i.i unwind label %bb.ac, !noalias !158

.noexc9.i.i.i.i:                                  ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.k
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #21
          to label %.noexc10.i.i.i.i unwind label %bb.ac, !noalias !158

.noexc10.i.i.i.i:                                 ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.o, %bb.k
  %i.br = invoke noundef zeroext i1 @_RNvXs5_NtCsitb6zIp059K_12futures_lite6futureINtB5_2OrINtNtNtCskKLDkoKarTP_4core6future7pending7PendinguENCNCINvMsb_Csa9iXSdNszRG_14async_executorNtB1P_5State3runuBP_E00ENtNtBU_6future6Future4pollCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.u unwind label %bb.t, !noalias !157

bb.t:                                             ; preds = %bb.s
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6RunnerECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(40) %i.af) #22
          to label %.body.i.i.i.i.i unwind label %bb.p, !noalias !157

bb.u:                                             ; preds = %bb.s
  br i1 %i.br, label %bb.ai, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvXsg_Csa9iXSdNszRG_14async_executorNtB5_6RunnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.af)
          to label %bb.x unwind label %bb.w, !noalias !157

bb.w:                                             ; preds = %bb.v
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  invoke void @_RNvXse_Csa9iXSdNszRG_14async_executorNtB5_6TickerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i unwind label %bb.ab, !noalias !157

bb.x:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  invoke void @_RNvXse_Csa9iXSdNszRG_14async_executorNtB5_6TickerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2.i.i.i.i.i.i unwind label %bb.z, !noalias !157

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i: ; preds = %bb.z, %bb.w
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ca, %bb.z ], [ %i.bt, %bb.w ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 168 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !165, !noalias !159, !nonnull !7, !noundef !7
  %i.by = atomicrmw add ptr %i.bx, i64 -1 release, align 8, !noalias !166
  %i.bz = icmp eq i64 %i.by, 1
  br i1 %i.bz, label %bb.y, label %.body.i.i.i.i.i

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEE9drop_slowCsa9iXSdNszRG_14async_executor(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bw) #18
          to label %.body.i.i.i.i.i unwind label %bb.ab, !noalias !157

bb.z:                                             ; preds = %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2.i.i.i.i.i.i: ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 168 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !169, !noalias !159, !nonnull !7, !noundef !7
  %i.cd = atomicrmw add ptr %i.cc, i64 -1 release, align 8, !noalias !170
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEE9drop_slowCsa9iXSdNszRG_14async_executor(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cb) #18
          to label %bb.ad unwind label %.loopexit.split-lp103.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !157

bb.ab:                                            ; preds = %bb.y, %bb.w
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !157
  unreachable

.body.i.i.i.i.i:                                  ; preds = %.loopexit.split-lp103.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, %bb.t, %bb.n
  %.pn9.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i, %bb.y ], [ %i.bg, %bb.n ], [ %.pn.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i ], [ %i.bs, %bb.t ], [ %lpad.loopexit.split-lp33, %.loopexit.split-lp103.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  store i8 0, ptr %i.ae, align 8, !noalias !159
  store i8 2, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !159
  br label %.body.i.i.i.i

bb.ac:                                            ; preds = %bb.r, %bb.q
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ac, %.body.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.cg, %bb.ac ], [ %.pn9.pn.i.i.i.i.i, %.body.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.i) #22
          to label %.body.thread.i.i.i unwind label %bb.ae, !noalias !157

bb.ad:                                            ; preds = %bb.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2.i.i.i.i.i.i
  store i8 0, ptr %i.ae, align 8, !noalias !159
  store i8 1, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !159
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.i)
          to label %bb.aj unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !157

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs3_Csa9iXSdNszRG_14async_executorNtB5_8Executor5state.exit.i.i.i.i, %bb.h, %bb.ad
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

bb.ae:                                            ; preds = %.body.i.i.i.i
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !157
  unreachable

.body.i.i.i:                                      ; preds = %.loopexit.split-lp108.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ci, %bb.cd, %bb.ba
  %.pn22.ph.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i, %bb.ba ], [ %.pn84.i.i.i, %bb.cd ], [ %i.fn, %bb.ci ], [ %lpad.loopexit.split-lp36, %.loopexit.split-lp108.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pr.i.i.i = load i8, ptr %i.aa, align 1, !noalias !157
  %cond.i.i.i.i.i = icmp eq i8 %.pr.i.i.i, 3
  br i1 %cond.i.i.i.i.i, label %bb.af, label %.body44.i.i.i

bb.af:                                            ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.i)
          to label %bb.ah unwind label %bb.ag, !noalias !157

bb.ag:                                            ; preds = %bb.af
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  store i8 0, ptr %i.ab, align 16, !noalias !157
  br label %.body41.i.i.i

bb.ah:                                            ; preds = %bb.af
  store i8 0, ptr %i.ab, align 16, !noalias !157
  br label %.body44.i.i.i

bb.ai:                                            ; preds = %bb.u
  store i8 3, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !159
  store i8 3, ptr %i.aa, align 1, !noalias !158
  %i.cj = invoke noundef zeroext i1 @_RNvMCs2KJ8IamB81r_7parkingNtB2_6Parker12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %bb.at unwind label %.loopexit.split-lp108.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !157

bb.aj:                                            ; preds = %bb.ad
  store i8 0, ptr %i.ab, align 16, !noalias !158
  store i8 1, ptr %i.aa, align 1, !noalias !158
  %i.ck = invoke noundef zeroext i1 @_RNvMCs2KJ8IamB81r_7parkingNtB2_6Parker12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %bb.ak unwind label %.loopexit.split-lp108.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !157 ; 0 uses

.loopexit.split-lp108.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cr, %bb.cp, %bb.ce, %bb.ca, %bb.by, %bb.az, %bb.aw, %bb.av, %bb.au, %bb.ai, %bb.aj, %bb.j, %bb.i
  %lpad.loopexit.split-lp36 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !157
  %i.cl = load i8, ptr %i.aa, align 1, !range !9, !noalias !157, !noundef !7
  %cond.i.i43.i.i.i = icmp eq i8 %i.cl, 3
  br i1 %cond.i.i43.i.i.i, label %bb.al, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCINvMs3_Csa9iXSdNszRG_14async_executorNtB1c_8Executor3runuINtNtNtB4_6future7pending7PendinguEE0EECsbDLrNlwBX3H_4smol.exit46.i.i.i

bb.al:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCINvMs3_Csa9iXSdNszRG_14async_executorNtB1c_8Executor3runuINtNtNtB4_6future7pending7PendinguEE0EECsbDLrNlwBX3H_4smol.exit46.i.i.i unwind label %1, !noalias !157

1:                                                ; preds = %bb.al
  %2 = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.ab, align 16, !noalias !157
  br label %.body44.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCINvMs3_Csa9iXSdNszRG_14async_executorNtB1c_8Executor3runuINtNtNtB4_6future7pending7PendinguEE0EECsbDLrNlwBX3H_4smol.exit46.i.i.i: ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !157
  br i1 %.not101.i.i.i, label %.critedge.i.i.i, label %bb.am

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %bb.ar, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !157
  br label %bb.db

bb.am:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCINvMs3_Csa9iXSdNszRG_14async_executorNtB1c_8Executor3runuINtNtNtB4_6future7pending7PendinguEE0EECsbDLrNlwBX3H_4smol.exit46.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.cm = load ptr, ptr %i.k, align 8, !alias.scope !176, !noalias !157, !nonnull !7, !noundef !7
  %i.cn = atomicrmw add ptr %i.cm, i64 -1 release, align 8, !noalias !177
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i.i

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i.i unwind label %bb.ao, !noalias !157

bb.ao:                                            ; preds = %bb.an
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !171, !noalias !157, !nonnull !7, !align !8, !noundef !7
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val4.i.i.i.i = load ptr, ptr %i.cr, align 8, !alias.scope !171, !noalias !157, !noundef !7
  %i.cs = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !157, !nonnull !7, !noundef !7
  invoke void %i.ct(ptr noundef %.val4.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i.i unwind label %bb.as, !noalias !157, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i.i: ; preds = %bb.an, %bb.am
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.cu, align 8, !alias.scope !171, !noalias !157, !nonnull !7, !align !8, !noundef !7
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val2.i.i.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !171, !noalias !157, !noundef !7
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !157, !nonnull !7, !noundef !7
  invoke void %i.cx(ptr noundef %.val2.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i.i unwind label %bb.aq, !noalias !157, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i.i: ; preds = %bb.aq, %bb.ao
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.dc, %bb.aq ], [ %i.cp, %bb.ao ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !180, !noalias !157, !nonnull !7, !noundef !7
  %i.da = atomicrmw add ptr %i.cz, i64 -1 release, align 8, !noalias !181
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.ap, label %.body

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cy) #18
          to label %.body unwind label %bb.as, !noalias !157

bb.aq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !184, !noalias !157, !nonnull !7, !noundef !7
  %i.df = atomicrmw add ptr %i.de, i64 -1 release, align 8, !noalias !185
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEECsbDLrNlwBX3H_4smol.exit.i.i.i

bb.ar:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dd) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEECsbDLrNlwBX3H_4smol.exit.i.i.i unwind label %bb.da

bb.as:                                            ; preds = %bb.ap, %bb.ao
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !157
  unreachable

.critedge.i.i.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCINvMs3_Csa9iXSdNszRG_14async_executorNtB1c_8Executor3runuINtNtNtB4_6future7pending7PendinguEE0EECsbDLrNlwBX3H_4smol.exit46.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !157
  %i.di = load i64, ptr %.sroa.0.0.i.i.i8.i.i, align 8, !noalias !157, !noundef !7
  %i.dj = add i64 %i.di, 1
  store i64 %i.dj, ptr %.sroa.0.0.i.i.i8.i.i, align 8, !noalias !157
  br label %bb.db

bb.at:                                            ; preds = %bb.ai
  br i1 %i.cj, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !157
  %i.dk = invoke noundef nonnull align 128 ptr @_RNvMNtCs13QwXx3ETeK_8async_io7reactorNtB2_7Reactor3get()
          to label %bb.aw unwind label %.loopexit.split-lp108.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !157

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !157
  %i.dl = invoke noundef nonnull align 128 ptr @_RNvMNtCs13QwXx3ETeK_8async_io7reactorNtB2_7Reactor3get()
          to label %bb.ce unwind label %.loopexit.split-lp108.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !157

bb.aw:                                            ; preds = %bb.au
  invoke void @_RNvMNtCs13QwXx3ETeK_8async_io7reactorNtB2_7Reactor8try_lock(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull align 128 %i.dk)
          to label %bb.ax unwind label %.loopexit.split-lp108.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !157

bb.ax:                                            ; preds = %bb.aw
  %i.dm = load i8, ptr %i.aj, align 8, !range !6, !noalias !157, !noundef !7
  %.not.i.i.i = icmp eq i8 %i.dm, 2
  br i1 %.not.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !157
  %i.dn = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.bb unwind label %.thread81.i.i.i, !noalias !157 ; 2 uses

bb.az:                                            ; preds = %bb.ax
  invoke void @_RNvMCs2KJ8IamB81r_7parkingNtB2_6Parker4park(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i.i)
          to label %bb.cb unwind label %.loopexit.split-lp108.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !157

.thread85.i.i.i:                                  ; preds = %bb.bl, %bb.bj, %bb.bi, %bb.be, %bb.bc
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.al, align 1, !noalias !186
  %i.do = load ptr, ptr %i.x, align 8, !noalias !186, !nonnull !7, !noundef !7
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store atomic i8 0, ptr %i.dp seq_cst, align 1, !noalias !186
  br label %bb.cd

bb.ba:                                            ; preds = %bb.bu, %bb.bt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit.i.i.i, %bb.br, %bb.bp
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.al, align 1, !noalias !187
  %i.dq = load ptr, ptr %i.x, align 8, !noalias !187, !nonnull !7, !noundef !7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store atomic i8 0, ptr %i.dr seq_cst, align 1, !noalias !187
  br label %.body.i.i.i

.thread81.i.i.i:                                  ; preds = %bb.ay
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.bb:                                            ; preds = %bb.ay
  %i.dt = extractvalue { i64, i32 } %i.dn, 0
  %i.du = extractvalue { i64, i32 } %i.dn, 1
  store i64 %i.dt, ptr %i.c, align 8, !noalias !157
  store i32 %i.du, ptr %i.ak, align 8, !noalias !157
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bs, %bb.bb
  store i8 1, ptr %i.al, align 1, !noalias !157
  %i.dv = load ptr, ptr %i.x, align 8, !noalias !157, !nonnull !7, !noundef !7
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store atomic i8 1, ptr %i.dw seq_cst, align 1, !noalias !157
  %i.dx = invoke noundef zeroext i1 @_RNvMCs2KJ8IamB81r_7parkingNtB2_6Parker12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %bb.bd unwind label %.thread85.i.i.i, !noalias !157

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.dx, label %bb.bw, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dy = invoke noundef ptr @_RNvMs_NtCs13QwXx3ETeK_8async_io7reactorNtB4_11ReactorLock5react(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 undef, i32 noundef -1)
          to label %bb.bf unwind label %.thread85.i.i.i, !noalias !157 ; 4 uses

bb.bf:                                            ; preds = %bb.be
  %.not16.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not16.i.i.i, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !188
  %i.dz = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.ea = and i64 %i.dz, 3
  switch i64 %i.ea, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit.i.i.i
    i64 3, label %bb.bh
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit.i.i.i
    i64 1, label %bb.bi
  ], !prof !11

bb.bh:                                            ; preds = %bb.bg
  %i.eb = icmp ult ptr %i.dy, inttoptr (i64 188978561024 to ptr)
  %i.ec = and i64 %i.dz, 1095216660480
  %i.ed = icmp ne i64 %i.ec, 1095216660480
  call void @llvm.assume(i1 %i.eb)
  call void @llvm.assume(i1 %i.ed)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.ee = getelementptr i8, ptr %i.dy, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  store ptr %i.ee, ptr %i.am, align 8, !alias.scope !189, !noalias !188
  store i8 3, ptr %i.b, align 8, !alias.scope !189, !noalias !188
end_hunk_0
begin_hunk_1_@_RINvNtCs13QwXx3ETeK_8async_io6driver8block_onuNCINvMs3_Csa9iXSdNszRG_14async_executorNtBR_8Executor3runuINtNtNtCskKLDkoKarTP_4core6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol:bb.a
  br i1 %i.et, label %bb.br, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit.i.i.i, !prof !10

bb.br:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.sroa.374.0.copyload.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit.i.i.i unwind label %bb.ba, !noalias !157

bb.bs:                                            ; preds = %.split88.i.i.i
  store i8 0, ptr %i.al, align 1, !noalias !190
  %i.eu = load ptr, ptr %i.x, align 8, !noalias !190, !nonnull !7, !noundef !7
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store atomic i8 0, ptr %i.ev seq_cst, align 1, !noalias !190
  br label %bb.bc

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %bb.br, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  %i.ew = invoke noundef nonnull align 8 ptr @_RNvNtCs13QwXx3ETeK_8async_io6driver8unparker()
          to label %bb.bt unwind label %bb.ba, !noalias !157

bb.bt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit.i.i.i
  %i.ex = invoke noundef zeroext i1 @_RNvMs1_Cs2KJ8IamB81r_7parkingNtB5_8Unparker6unpark(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ew)
          to label %bb.bu unwind label %bb.ba, !noalias !157 ; 0 uses

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvMCs2KJ8IamB81r_7parkingNtB2_6Parker4park(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i.i)
          to label %bb.bv unwind label %bb.ba, !noalias !157

bb.bv:                                            ; preds = %bb.bu
  store i8 0, ptr %i.al, align 1, !noalias !191
  %i.ey = load ptr, ptr %i.x, align 8, !noalias !191, !nonnull !7, !noundef !7
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store atomic i8 0, ptr %i.ez seq_cst, align 1, !noalias !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !157
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit56.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit56.i.i.i: ; preds = %bb.ca, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i53.i.i.i, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !157
  br label %bb.cb

bb.bw:                                            ; preds = %bb.bk, %bb.bd
  store i8 0, ptr %i.al, align 1, !noalias !192
  %i.fa = load ptr, ptr %i.x, align 8, !noalias !192, !nonnull !7, !noundef !7
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store atomic i8 0, ptr %i.fb seq_cst, align 1, !noalias !192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !157
  %.val36.i.i.i.a = load ptr, ptr %.sroa.374.0..sroa_idx.i.i.i, align 8, !noalias !157, !nonnull !7, !align !8, !noundef !7 ; 3 uses
  %.val37.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !range !160, !noalias !157, !noundef !7
  %i.fc = getelementptr inbounds nuw i8, ptr %.val36.i.i.i.a, i64 4
  %i.fd = trunc nuw i8 %.val37.i.i.i to i1
  br i1 %i.fd, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i53.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fe = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !157
  %i.ff = and i64 %i.fe, 9223372036854775807
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i53.i.i.i, label %bb.by, !prof !5

bb.by:                                            ; preds = %bb.bx
  %i.fh = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #18
          to label %.noexc54.i.i.i unwind label %.loopexit.split-lp108.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !157

.noexc54.i.i.i:                                   ; preds = %bb.by
  br i1 %i.fh, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i53.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %.noexc54.i.i.i
  store atomic i8 1, ptr %i.fc monotonic, align 4, !noalias !157
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i53.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i53.i.i.i: ; preds = %bb.bz, %.noexc54.i.i.i, %bb.bx, %bb.bw
  %i.fi = atomicrmw xchg ptr %.val36.i.i.i.a, i32 0 release, align 4, !noalias !157
  %i.fj = icmp eq i32 %i.fi, 2
  br i1 %i.fj, label %bb.ca, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit56.i.i.i, !prof !10

bb.ca:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i53.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val36.i.i.i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit56.i.i.i unwind label %.loopexit.split-lp108.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !157

bb.cb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit56.i.i.i, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !157
  br label %.backedge.i.i.i.backedge

bb.cc:                                            ; preds = %bb.cs, %bb.ci, %bb.cd
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body41.i.i.i

.body41.i.i.i:                                    ; preds = %bb.cv, %bb.cc, %bb.ag
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !155
  unreachable

bb.cd:                                            ; preds = %.thread81.i.i.i, %.thread85.i.i.i
  %.pn84.i.i.i = phi { ptr, i32 } [ %i.ds, %.thread81.i.i.i ], [ %lpad.thr_comm.i.i.i, %.thread85.i.i.i ]
  %.val34.i.i.i.a = load ptr, ptr %.sroa.374.0..sroa_idx.i.i.i, align 8, !noalias !157, !nonnull !7, !align !8, !noundef !7
  %.val35.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !range !160, !noalias !157, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol(ptr nonnull %.val34.i.i.i.a, i8 %.val35.i.i.i) #22
          to label %.body.i.i.i unwind label %bb.cc, !noalias !157

bb.ce:                                            ; preds = %bb.av
  invoke void @_RNvMNtCs13QwXx3ETeK_8async_io7reactorNtB2_7Reactor8try_lock(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull align 128 %i.dl)
          to label %bb.cf unwind label %.loopexit.split-lp108.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !157

bb.cf:                                            ; preds = %bb.ce
  %i.fl = load i8, ptr %i.an, align 8, !range !6, !noalias !157, !noundef !7
  %.not18.i.i.i = icmp eq i8 %i.fl, 2
  br i1 %.not18.i.i.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit64.i.i.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !157
  br label %.backedge.i.i.i.backedge

.backedge.i.i.i.backedge:                         ; preds = %bb.cg, %bb.cb
  br label %.backedge.i.i.i

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !157
  store i8 1, ptr %i.al, align 1, !noalias !157
  %i.fm = invoke noundef ptr @_RNvMs_NtCs13QwXx3ETeK_8async_io7reactorNtB4_11ReactorLock5react(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 0, i32 noundef 0)
          to label %bb.cj unwind label %bb.ci, !noalias !157 ; 4 uses

bb.ci:                                            ; preds = %bb.cm, %bb.ch
  %i.fn = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.al, align 1, !noalias !157
  %.val32.i.i.i.a = load ptr, ptr %i.ap, align 8, !noalias !157, !nonnull !7, !align !8, !noundef !7
  %.val33.i.i.i = load i8, ptr %i.aq, align 8, !range !160, !noalias !157, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol(ptr nonnull %.val32.i.i.i.a, i8 %.val33.i.i.i) #22
          to label %.body.i.i.i unwind label %bb.cc, !noalias !157

bb.cj:                                            ; preds = %bb.ch
  %.not19.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not19.i.i.i, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !193
  %i.fo = ptrtoint ptr %i.fm to i64               ; 2 uses
  %i.fp = and i64 %i.fo, 3
  switch i64 %i.fp, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit60.i.i.i
    i64 3, label %bb.cl
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit60.i.i.i
    i64 1, label %bb.cm
  ], !prof !11

bb.cl:                                            ; preds = %bb.ck
  %i.fq = icmp ult ptr %i.fm, inttoptr (i64 188978561024 to ptr)
  %i.fr = and i64 %i.fo, 1095216660480
  %i.fs = icmp ne i64 %i.fr, 1095216660480
  call void @llvm.assume(i1 %i.fq)
  call void @llvm.assume(i1 %i.fs)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit60.i.i.i

bb.cm:                                            ; preds = %bb.ck
  %i.ft = getelementptr i8, ptr %i.fm, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  store ptr %i.ft, ptr %i.ao, align 8, !alias.scope !194, !noalias !193
  store i8 3, ptr %i.a, align 8, !alias.scope !194, !noalias !193
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit60.i.i.i unwind label %bb.ci, !noalias !157

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit60.i.i.i: ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !193
  br label %bb.cn

bb.cn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit60.i.i.i, %bb.cj
  store i8 0, ptr %i.al, align 1, !noalias !157
  %.val30.i.i.i = load ptr, ptr %i.ap, align 8, !noalias !157, !nonnull !7, !align !8, !noundef !7 ; 3 uses
  %.val31.i.i.i = load i8, ptr %i.aq, align 8, !range !160, !noalias !157, !noundef !7
  %i.fu = getelementptr inbounds nuw i8, ptr %.val30.i.i.i, i64 4
  %i.fv = trunc nuw i8 %.val31.i.i.i to i1
  br i1 %i.fv, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i61.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.fw = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !157
  %i.fx = and i64 %i.fw, 9223372036854775807
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i61.i.i.i, label %bb.cp, !prof !5

bb.cp:                                            ; preds = %bb.co
  %i.fz = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #18
          to label %.noexc62.i.i.i unwind label %.loopexit.split-lp108.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !157

.noexc62.i.i.i:                                   ; preds = %bb.cp
  br i1 %i.fz, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i61.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %.noexc62.i.i.i
  store atomic i8 1, ptr %i.fu monotonic, align 4, !noalias !157
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i61.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i61.i.i.i: ; preds = %bb.cq, %.noexc62.i.i.i, %bb.co, %bb.cn
  %i.ga = atomicrmw xchg ptr %.val30.i.i.i, i32 0 release, align 4, !noalias !157
  %i.gb = icmp eq i32 %i.ga, 2
  br i1 %i.gb, label %bb.cr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit64.i.i.i, !prof !10

bb.cr:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i61.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val30.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit64.i.i.i unwind label %.loopexit.split-lp108.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !157

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit64.i.i.i: ; preds = %bb.cr, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i61.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !157
  br label %bb.cg

bb.cs:                                            ; preds = %.body44.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #22
          to label %.body unwind label %bb.cc, !noalias !157

.split.i.i.i:                                     ; preds = %.body44.i.i.i
  %i.gc = load i64, ptr %.sroa.0.0.i.i.i8.i.i, align 8, !noalias !157, !noundef !7
  %i.gd = add i64 %i.gc, 1
  store i64 %i.gd, ptr %.sroa.0.0.i.i.i8.i.i, align 8, !noalias !157
  br label %.body

bb.ct:                                            ; preds = %bb.d
  %i.ge = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.l, i64 225
  %i.gg = load i8, ptr %i.gf, align 1, !range !9, !alias.scope !156, !noalias !155, !noundef !7
  %cond.i.i.i.i = icmp eq i8 %i.gg, 3
  br i1 %cond.i.i.i.i, label %bb.cu, label %.body

bb.cu:                                            ; preds = %bb.ct
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 dereferenceable(232) %i.l)
          to label %.body unwind label %bb.cv, !noalias !155

bb.cv:                                            ; preds = %bb.cu
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.l, i64 224
  store i8 0, ptr %i.gi, align 8, !alias.scope !156, !noalias !155
  br label %.body41.i.i.i

bb.cw:                                            ; preds = %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.m, i64 225
  %i.gk = load i8, ptr %i.gj, align 1, !range !9, !alias.scope !155, !noundef !7
  %cond.i.i8.i.i = icmp eq i8 %i.gk, 3
  br i1 %cond.i.i8.i.i, label %bb.cx, label %.noexc1

bb.cx:                                            ; preds = %bb.cw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 dereferenceable(232) %i.m)
          to label %.noexc1 unwind label %bb.da

bb.cy:                                            ; preds = %bb.b
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.m, i64 225
  %i.gn = load i8, ptr %i.gm, align 1, !range !9, !alias.scope !155, !noundef !7
  %cond.i.i9.i.i = icmp eq i8 %i.gn, 3
  br i1 %cond.i.i9.i.i, label %bb.cz, label %.body

bb.cz:                                            ; preds = %bb.cy
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 dereferenceable(232) %i.m)
          to label %.body unwind label %.body10.i.i

.body10.i.i:                                      ; preds = %bb.cz
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  store i8 0, ptr %i.gp, align 8, !alias.scope !155
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

.noexc1:                                          ; preds = %bb.cx, %bb.cw
  invoke void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
          to label %.noexc2 unwind label %bb.da

.noexc2:                                          ; preds = %.noexc1
  unreachable

bb.da:                                            ; preds = %.noexc1, %bb.cx, %bb.ar
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i.i, %bb.ap, %bb.cs, %.split.i.i.i, %bb.ct, %bb.cu, %bb.cy, %bb.cz, %bb.da
  %eh.lpad-body = phi { ptr, i32 } [ %i.gq, %bb.da ], [ %i.gl, %bb.cy ], [ %.pn.i.i.i.i, %bb.ap ], [ %i.ge, %bb.cu ], [ %.pn22.pn.i.i.i, %.split.i.i.i ], [ %i.ge, %bb.ct ], [ %.pn22.pn.i.i.i, %bb.cs ], [ %.pn.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i.i ], [ %i.gl, %bb.cz ]
  %i.gr = atomicrmw add ptr @_RNvNtCs13QwXx3ETeK_8async_io6driver14BLOCK_ON_COUNT, i64 -1 seq_cst, align 8 ; 0 uses
  %i.gs = invoke noundef nonnull align 8 ptr @_RNvNtCs13QwXx3ETeK_8async_io6driver8unparker()
          to label %.noexc3 unwind label %bb.dc

.noexc3:                                          ; preds = %.body
  %i.gt = invoke noundef zeroext i1 @_RNvMs1_Cs2KJ8IamB81r_7parkingNtB5_8Unparker6unpark(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs13QwXx3ETeK_8async_io6driver10CallOnDropNCINvBE_8block_onuNCINvMs3_Csa9iXSdNszRG_14async_executorNtB1N_8Executor3runuINtNtNtB4_6future7pending7PendinguEE0E0EECsbDLrNlwBX3H_4smol.exit unwind label %bb.dc ; 0 uses

bb.db:                                            ; preds = %.critedge.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEECsbDLrNlwBX3H_4smol.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.gu = atomicrmw add ptr @_RNvNtCs13QwXx3ETeK_8async_io6driver14BLOCK_ON_COUNT, i64 -1 seq_cst, align 8 ; 0 uses
  %i.gv = call noundef nonnull align 8 ptr @_RNvNtCs13QwXx3ETeK_8async_io6driver8unparker()
  %i.gw = call noundef zeroext i1 @_RNvMs1_Cs2KJ8IamB81r_7parkingNtB5_8Unparker6unpark(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gv) ; 0 uses
  ret void

bb.dc:                                            ; preds = %.noexc3, %.body
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs13QwXx3ETeK_8async_io6driver10CallOnDropNCINvBE_8block_onuNCINvMs3_Csa9iXSdNszRG_14async_executorNtB1N_8Executor3runuINtNtNtB4_6future7pending7PendinguEE0E0EECsbDLrNlwBX3H_4smol.exit: ; preds = %.noexc3
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtCs3iPtYnXk70z_14event_listener5InneruEECsbDLrNlwBX3H_4smol(ptr nofree noundef readnone captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i64 16
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECsbDLrNlwBX3H_4smol(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !12, !invariant.load !7 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !12, !invariant.load !7 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !13, !invariant.load !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #23
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit4.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol(ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq ptr %.0.val, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !199
  %i.c = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit
    i64 1, label %bb.e
  ], !prof !11

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !200, !noalias !199
  store i8 3, ptr %i.a, align 8, !alias.scope !200, !noalias !199
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i), !noalias !199
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !199
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 201
  %i.b = load i8, ptr %i.a, align 1, !range !9, !noundef !7
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6RunnerECsbDLrNlwBX3H_4smol.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke void @_RNvXsg_Csa9iXSdNszRG_14async_executorNtB5_6RunnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke void @_RNvXse_Csa9iXSdNszRG_14async_executorNtB5_6TickerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke void @_RNvXse_Csa9iXSdNszRG_14async_executorNtB5_6TickerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2.i unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i: ; preds = %bb.f, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.d, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !213, !nonnull !7, !noundef !7
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !214
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %.body

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEE9drop_slowCsa9iXSdNszRG_14async_executor(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #18
          to label %.body unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !217, !nonnull !7, !noundef !7
  %i.n = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !218
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6RunnerECsbDLrNlwBX3H_4smol.exit

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEE9drop_slowCsa9iXSdNszRG_14async_executor(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6RunnerECsbDLrNlwBX3H_4smol.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

.body:                                            ; preds = %bb.i, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i
  %.pn = phi { ptr, i32 } [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i ], [ %i.r, %bb.i ], [ %.pn.i, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %i.q, align 8
  resume { ptr, i32 } %.pn
end_hunk_1
