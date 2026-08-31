Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/smol-rs/original/smol-b9c1dc7ab96231d5.smol.879824453b3713cb-cgu.4?download=true
inline.NumInlined: 192
inline.NumDeleted: 136
begin_hunk_0_@_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB1i_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB1i_4sync6atomic6AtomicbEEEEuE16get_or_init_slowNvNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE27___rust_std_internal_init_fnECsbDLrNlwBX3H_4smol:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa.0.0.1.sroa_idx, i64 40, i1 false)
  store i8 1, ptr %i.d, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @_RNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on16parker_and_waker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g)
  store i64 0, ptr %i.c, align 8, !alias.scope !10
  %.pre = load i8, ptr %i.d, align 8, !range !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  store i8 1, ptr %i.d, align 8
  switch i8 %.pre, label %default.unreachable5 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.n
  ], !prof !15

bb.f:                                             ; preds = %.thread, %bb.e
  tail call void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %0, ptr noundef nonnull @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB18_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB18_4sync6atomic6AtomicbEEEEECsbDLrNlwBX3H_4smol)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEEECsbDLrNlwBX3H_4smol.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !37, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !37
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
  %.val3.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !38, !nonnull !9, !align !39, !noundef !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val4.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !38, !noundef !9
  %i.o = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !9, !noundef !9
  invoke void %i.p(ptr noundef %.val4.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i unwind label %bb.m, !inline_history !40

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !38, !nonnull !9, !align !39, !noundef !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val2.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !38, !noundef !9
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !9, !noundef !9
  invoke void %i.t(ptr noundef %.val2.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i unwind label %bb.k, !inline_history !40

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %bb.k, %bb.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.y, %bb.k ], [ %i.l, %bb.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !47, !nonnull !9, !noundef !9
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !48
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
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !55, !nonnull !9, !noundef !9
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !56
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !8, !noalias !63, !noundef !9
  %i.r = icmp eq i8 %i.q, 1
  br i1 %i.r, label %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.thread.i.i, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.s = invoke fastcc noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB1i_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB1i_4sync6atomic6AtomicbEEEEuE16get_or_init_slowNvNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE27___rust_std_internal_init_fnECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.o, ptr noalias nofree noundef align 8 dereferenceable_or_null(48) null)
          to label %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.i.i unwind label %bb.de, !noalias !70 ; 2 uses

_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.i.i: ; preds = %bb.b
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.dc, label %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.thread.i.i

_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.i.i, %bb.a
  %.sroa.0.0.i.i.i8.i.i = phi ptr [ %i.s, %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.i.i ], [ %i.o, %bb.a ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.l, ptr noundef nonnull align 8 dereferenceable(232) %i.m, i64 232, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !74
  %i.u = load i64, ptr %.sroa.0.0.i.i.i8.i.i, align 8, !noalias !74, !noundef !9
  %.not101.i.i.i = icmp eq i64 %i.u, 0            ; 3 uses
  br i1 %.not101.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.thread.i.i
  store i64 -1, ptr %.sroa.0.0.i.i.i8.i.i, align 8, !noalias !74
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i8.i.i, i64 8
  br label %bb.e

bb.d:                                             ; preds = %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !74
  invoke void @_RNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on16parker_and_waker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j)
          to label %bb.f unwind label %bb.cz, !noalias !74

bb.e:                                             ; preds = %bb.f, %bb.c
  %.sroa.01.0.i.i.i = phi ptr [ %i.v, %bb.c ], [ %i.k, %bb.f ] ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(232) %i.i, ptr noundef nonnull align 8 dereferenceable(232) %i.l, i64 232, i1 false), !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !74
  store ptr %i.w, ptr %i.h, align 8, !noalias !74
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.w, ptr %i.y, align 8, !noalias !74
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr null, ptr %i.z, align 8, !noalias !74
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
  %1 = insertelement <2 x ptr> poison, ptr %i.af, i64 0
  %2 = insertelement <2 x ptr> %1, ptr %i.ai, i64 1
  %3 = ptrtoint <2 x ptr> %2 to <2 x i64>
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
  br label %.backedge.i.i.i

.body44.i.i.i:                                    ; preds = %bb.ar, %bb.al, %.body.i.i.i, %.body.thread.i.i.i
  %.pn22.pn.i.i.i = phi { ptr, i32 } [ %i.cp, %bb.ar ], [ %.pn22.ph.i.i.i, %bb.al ], [ %.pn22.ph.i.i.i, %.body.i.i.i ], [ %.pn7.i.i.i.i, %.body.thread.i.i.i ] ; 2 uses
  br i1 %.not101.i.i.i, label %.split.i.i.i, label %bb.cy

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !74
  br label %bb.e

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.e
  %i.ar = load i8, ptr %i.aa, align 1, !range !75, !noalias !76, !noundef !9
  switch i8 %i.ar, label %.unreachabledefault [
    i8 0, label %bb.g
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

.unreachabledefault:                              ; preds = %.backedge.i.i.i
  unreachable

default.unreachable:                              ; preds = %bb.cq, %bb.l, %bb.bm
  unreachable

bb.g:                                             ; preds = %.backedge.i.i.i
  %i.as = load ptr, ptr %i.ac, align 8, !noalias !76, !nonnull !9, !align !39, !noundef !9 ; 2 uses
  store i8 1, ptr %i.ab, align 16, !noalias !76
  %i.at = load atomic ptr, ptr %i.as acquire, align 8, !noalias !76 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.h, label %_RNvMs3_Csa9iXSdNszRG_14async_executorNtB5_8Executor5state.exit.i.i.i.i, !prof !79

bb.h:                                             ; preds = %bb.g
  %i.av = invoke noundef ptr @_RNvNvMs3_Csa9iXSdNszRG_14async_executorNtB7_8Executor5state11alloc_state(ptr noundef nonnull align 8 %i.as)
          to label %_RNvMs3_Csa9iXSdNszRG_14async_executorNtB5_8Executor5state.exit.i.i.i.i unwind label %bb.i, !noalias !76

bb.i:                                             ; preds = %_RNvMs3_Csa9iXSdNszRG_14async_executorNtB5_8Executor5state.exit.i.i.i.i, %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

_RNvMs3_Csa9iXSdNszRG_14async_executorNtB5_8Executor5state.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i6.i.i = phi ptr [ %i.at, %bb.g ], [ %i.av, %bb.h ]
  store ptr %.sroa.0.0.i.i.i6.i.i, ptr %i.ad, align 16, !noalias !76
  %i.ax = invoke noundef nonnull align 128 ptr @_RNvXsb_NtCskKLDkoKarTP_4core3pinINtB5_3PinRNtCsa9iXSdNszRG_14async_executor5StateENtNtNtB7_3ops5deref5Deref5derefCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
          to label %.thread.i.i.i.i unwind label %bb.i, !noalias !76 ; 2 uses

.thread.i.i.i.i:                                  ; preds = %_RNvMs3_Csa9iXSdNszRG_14async_executorNtB5_8Executor5state.exit.i.i.i.i
  store i8 0, ptr %i.ab, align 16, !noalias !76
  %4 = ptrtoint ptr %i.ax to i64
  store i64 %4, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 16, !noalias !76
  store i8 0, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !76
  br label %bb.m

.body.thread.i.i.i:                               ; preds = %.body.i.i.i.i, %bb.ah, %bb.i
  %.pn7.i.i.i.i = phi { ptr, i32 } [ %i.ci, %bb.ah ], [ %.pn5.i.i.i.i, %.body.i.i.i.i ], [ %i.aw, %bb.i ]
  store i8 0, ptr %i.ab, align 16, !noalias !76
  store i8 2, ptr %i.aa, align 1, !noalias !76
  br label %.body44.i.i.i

bb.j:                                             ; preds = %.backedge.i.i.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !74

.noexc.i.i.i:                                     ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.backedge.i.i.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21
          to label %.noexc40.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !74

.noexc40.i.i.i:                                   ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %.backedge.i.i.i
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !range !75, !noalias !80
  switch i8 %.pre.i.i.i.i, label %default.unreachable [
    i8 0, label %._crit_edge.i.i.i
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.u
  ]

._crit_edge.i.i.i:                                ; preds = %bb.l
  %.pre.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 16, !noalias !80
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i.i, %.thread.i.i.i.i
  %i.ay = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.ax, %.thread.i.i.i.i ]
  store i8 1, ptr %i.ae, align 8, !noalias !80
  invoke void @_RNvMsf_Csa9iXSdNszRG_14async_executorNtB5_6Runner3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.af, ptr noundef nonnull align 128 %i.ay)
          to label %bb.o unwind label %bb.n, !noalias !80

bb.n:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ba = load i8, ptr %i.ah, align 8, !range !83, !noalias !84, !noundef !9
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %._RNvYNCNKNvNtCs8NKWGp8lJEP_8fastrand10global_rng3RNG0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_INtNtBY_4cell4CellNtBa_3RngEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit_crit_edge.i.i.i.i.i.i.i, label %_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellNtCs8NKWGp8lJEP_8fastrand3RngEzE16get_or_init_slowNvNvNtB1N_10global_rng3RNG27___rust_std_internal_init_fnECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i, !prof !7

._RNvYNCNKNvNtCs8NKWGp8lJEP_8fastrand10global_rng3RNG0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_INtNtBY_4cell4CellNtBa_3RngEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit_crit_edge.i.i.i.i.i.i.i: ; preds = %bb.o
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !80
  br label %bb.q

_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellNtCs8NKWGp8lJEP_8fastrand3RngEzE16get_or_init_slowNvNvNtB1N_10global_rng3RNG27___rust_std_internal_init_fnECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.bc = invoke { i64, i64 } @_RNvNtCs8NKWGp8lJEP_8fastrand10global_rng11random_seed()
          to label %.noexc.i.i.i.i.i unwind label %bb.p, !noalias !80 ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellNtCs8NKWGp8lJEP_8fastrand3RngEzE16get_or_init_slowNvNvNtB1N_10global_rng3RNG27___rust_std_internal_init_fnECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i
  %i.bd = extractvalue { i64, i64 } %i.bc, 0
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = extractvalue { i64, i64 } %i.bc, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.be, i64 %i.bf, i64 1078321422319462234
  store i8 1, ptr %i.ah, align 8, !noalias !91
  br label %bb.q

bb.p:                                             ; preds = %_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellNtCs8NKWGp8lJEP_8fastrand3RngEzE16get_or_init_slowNvNvNtB1N_10global_rng3RNG27___rust_std_internal_init_fnECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6RunnerECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(40) %i.af) #22
          to label %.body.i.i.i.i.i unwind label %bb.r, !noalias !80

bb.q:                                             ; preds = %.noexc.i.i.i.i.i, %._RNvYNCNKNvNtCs8NKWGp8lJEP_8fastrand10global_rng3RNG0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_INtNtBY_4cell4CellNtBa_3RngEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit_crit_edge.i.i.i.i.i.i.i
  %i.bh = phi i64 [ %.pre.i.i.i.i.i.i.i, %._RNvYNCNKNvNtCs8NKWGp8lJEP_8fastrand10global_rng3RNG0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_INtNtBY_4cell4CellNtBa_3RngEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit_crit_edge.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i ]
  %i.bi = add i64 %i.bh, 3257665815644502181      ; 3 uses
  %i.bj = zext i64 %i.bi to i128
  %i.bk = xor i64 %i.bi, -8378864009470890807
  %i.bl = zext i64 %i.bk to i128
  %i.bm = mul nuw i128 %i.bl, %i.bj               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64
  %i.bo = xor i128 %i.bn, %i.bm
  %i.bp = trunc i128 %i.bo to i64
  store i64 %i.bi, ptr %i.ag, align 8, !noalias !80
  store i64 %i.bp, ptr %i.ai, align 8, !noalias !80
  store i8 0, ptr %i.ae, align 8, !noalias !80
  store <2 x i64> %3, ptr %i.i, align 16, !noalias !80
  store i8 0, ptr %.sroa.816.0..sroa_idx.i.i.i.i.i, align 16, !noalias !80
  br label %bb.u

bb.r:                                             ; preds = %bb.v, %bb.p
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !74
  unreachable

bb.s:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #21
          to label %.noexc9.i.i.i.i unwind label %bb.af, !noalias !76

.noexc9.i.i.i.i:                                  ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #21
          to label %.noexc10.i.i.i.i unwind label %bb.af, !noalias !76

.noexc10.i.i.i.i:                                 ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.q, %bb.l
  %i.br = invoke noundef zeroext i1 @_RNvXs5_NtCsitb6zIp059K_12futures_lite6futureINtB5_2OrINtNtNtCskKLDkoKarTP_4core6future7pending7PendinguENCNCINvMsb_Csa9iXSdNszRG_14async_executorNtB1P_5State3runuBP_E00ENtNtBU_6future6Future4pollCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.w unwind label %bb.v, !noalias !74

bb.v:                                             ; preds = %bb.u
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6RunnerECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(40) %i.af) #22
          to label %.body.i.i.i.i.i unwind label %bb.r, !noalias !74

bb.w:                                             ; preds = %bb.u
  br i1 %i.br, label %bb.am, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvXsg_Csa9iXSdNszRG_14async_executorNtB5_6RunnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.af)
          to label %bb.z unwind label %bb.y, !noalias !74

bb.y:                                             ; preds = %bb.x
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  invoke void @_RNvXse_Csa9iXSdNszRG_14async_executorNtB5_6TickerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i unwind label %bb.ad, !noalias !74

bb.z:                                             ; preds = %bb.x
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  invoke void @_RNvXse_Csa9iXSdNszRG_14async_executorNtB5_6TickerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2.i.i.i.i.i.i unwind label %bb.ab, !noalias !74

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i: ; preds = %bb.ab, %bb.y
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ca, %bb.ab ], [ %i.bt, %bb.y ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 168 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !100, !noalias !80, !nonnull !9, !noundef !9
  %i.by = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !103
  %i.bz = icmp eq i64 %i.by, 1
  br i1 %i.bz, label %bb.aa, label %.body.i.i.i.i.i

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEE9drop_slowCsa9iXSdNszRG_14async_executor(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bw) #18
          to label %.body.i.i.i.i.i unwind label %bb.ad, !noalias !74

bb.ab:                                            ; preds = %bb.z
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2.i.i.i.i.i.i: ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 168 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !110, !noalias !80, !nonnull !9, !noundef !9
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !111
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEE9drop_slowCsa9iXSdNszRG_14async_executor(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cb) #18
          to label %bb.ag unwind label %bb.ae, !noalias !74

bb.ad:                                            ; preds = %bb.aa, %bb.y
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !74
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.ae, %bb.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, %bb.v, %bb.p, %bb.n
  %.pn9.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.az, %bb.n ], [ %i.bg, %bb.p ], [ %.pn.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i ], [ %i.bs, %bb.v ], [ %i.cg, %bb.ae ], [ %.pn.i.i.i.i.i.i, %bb.aa ]
  store i8 0, ptr %i.ae, align 8, !noalias !80
  store i8 2, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !80
  br label %.body.i.i.i.i

bb.af:                                            ; preds = %bb.t, %bb.s
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.ag:                                            ; preds = %bb.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2.i.i.i.i.i.i
  store i8 0, ptr %i.ae, align 8, !noalias !80
  store i8 1, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.i)
          to label %bb.an unwind label %bb.ah, !noalias !74

bb.ah:                                            ; preds = %bb.ag
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.af, %.body.i.i.i.i.i
  %.pn5.i.i.i.i = phi { ptr, i32 } [ %.pn9.pn.i.i.i.i.i, %.body.i.i.i.i.i ], [ %i.ch, %bb.af ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.i) #22
          to label %.body.thread.i.i.i unwind label %bb.ai, !noalias !74

bb.ai:                                            ; preds = %.body.i.i.i.i
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !74
  unreachable

.body.i.i.i:                                      ; preds = %bb.co, %bb.cj, %bb.bg, %bb.ao, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %.pn22.ph.i.i.i = phi { ptr, i32 } [ %i.cn, %bb.ao ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.bg ], [ %.pn84.i.i.i, %bb.cj ], [ %i.fr, %bb.co ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %.pr.i.i.i = load i8, ptr %i.aa, align 1, !noalias !74
  %cond.i.i.i.i.i = icmp eq i8 %.pr.i.i.i, 3
  br i1 %cond.i.i.i.i.i, label %bb.aj, label %.body44.i.i.i

bb.aj:                                            ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.i)
          to label %bb.al unwind label %bb.ak, !noalias !74

bb.ak:                                            ; preds = %bb.aj
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  store i8 0, ptr %i.ab, align 16, !noalias !74
  br label %.body41.i.i.i

bb.al:                                            ; preds = %bb.aj
  store i8 0, ptr %i.ab, align 16, !noalias !74
  br label %.body44.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.cx, %bb.cv, %bb.ck, %bb.cg, %bb.ce, %bb.bf, %bb.bc, %bb.bb, %bb.ba, %bb.am
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.k, %bb.j
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.am:                                            ; preds = %bb.w
  store i8 3, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !80
  store i8 3, ptr %i.aa, align 1, !noalias !76
  %i.cl = invoke noundef zeroext i1 @_RNvMCs2KJ8IamB81r_7parkingNtB2_6Parker12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %bb.az unwind label %.loopexit.i.i.i, !noalias !74

bb.an:                                            ; preds = %bb.ag
  store i8 0, ptr %i.ab, align 16, !noalias !76
  store i8 1, ptr %i.aa, align 1, !noalias !76
  %i.cm = invoke noundef zeroext i1 @_RNvMCs2KJ8IamB81r_7parkingNtB2_6Parker12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %bb.ap unwind label %bb.ao, !noalias !74 ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !74
  %i.co = load i8, ptr %i.aa, align 1, !range !75, !noalias !74, !noundef !9
  %cond.i.i43.i.i.i = icmp eq i8 %i.co, 3
  br i1 %cond.i.i43.i.i.i, label %bb.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCINvMs3_Csa9iXSdNszRG_14async_executorNtB1c_8Executor3runuINtNtNtB4_6future7pending7PendinguEE0EECsbDLrNlwBX3H_4smol.exit46.i.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCINvMs3_Csa9iXSdNszRG_14async_executorNtB1c_8Executor3runuINtNtNtB4_6future7pending7PendinguEE0EECsbDLrNlwBX3H_4smol.exit46.i.i.i unwind label %bb.ar, !noalias !74

bb.ar:                                            ; preds = %bb.aq
  %i.cp = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.ab, align 16, !noalias !74
  br label %.body44.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCINvMs3_Csa9iXSdNszRG_14async_executorNtB1c_8Executor3runuINtNtNtB4_6future7pending7PendinguEE0EECsbDLrNlwBX3H_4smol.exit46.i.i.i: ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !74
  br i1 %.not101.i.i.i, label %.critedge.i.i.i, label %bb.as

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %bb.ax, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !74
  br label %bb.dh
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB18_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB18_4sync6atomic6AtomicbEEEEECsbDLrNlwBX3H_4smol:bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB1C_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB1C_4sync6atomic6AtomicbEEEEE0ECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1a_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE10initializeNCINvB19_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zE0E0B31_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [136 x i8], align 8               ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 5 uses
  %i.m = load ptr, ptr %0, align 8, !nonnull !9, !align !39, !noundef !9 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !align !39, !noundef !9 ; 2 uses
  store ptr null, ptr %i.m, align 8
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.ab, label %bb.b, !prof !79

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RINvNtCsG258MDvU3F_3std3env3varReECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 12)
  %i.o = load i64, ptr %i.l, align 8, !range !299, !noundef !9
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  br i1 %i.p, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsbDLrNlwBX3H_4smol.exit.i.i.i

common.resume.i.i.i:                              ; preds = %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i, %bb.r, %bb.o, %bb.l, %bb.e
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.bn, %bb.r ], [ %i.t, %bb.e ], [ %i.ax, %bb.l ], [ %i.bj, %bb.o ], [ %.pn.i.i.i.i.i, %bb.x ], [ %.pn.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsbDLrNlwBX3H_4smol.exit.thread.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env8VarErrorECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env8VarErrorECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i: ; preds = %bb.d
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsbDLrNlwBX3H_4smol.exit.thread.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsbDLrNlwBX3H_4smol.exit.thread.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env8VarErrorECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.thread62.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %bb.b
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.415.0..sroa_idx.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not.i.i.i = icmp eq i64 %i.r, -1
  br i1 %.not.i.i.i, label %.thread62.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsbDLrNlwBX3H_4smol.exit.i.i.i
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.417.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i, i64 16, i1 false)
  store i64 %i.r, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.v = load ptr, ptr %.sroa.417.0..sroa_idx.i.i.i, align 8, !alias.scope !300, !nonnull !9, !noundef !9 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !300, !noundef !9 ; 2 uses
  switch i64 %i.x, label %thread-pre-split.i.i.i.i.i [
    i64 0, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.y = load i8, ptr %i.v, align 1, !alias.scope !303, !noalias !306, !noundef !9 ; 2 uses
  switch i8 %i.y, label %bb.i [
    i8 43, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
    i8 45, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i:                       ; preds = %bb.g
  %.pr.i.i.i.i.i = load i8, ptr %i.v, align 1, !alias.scope !303, !noalias !306
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split.i.i.i.i.i, %bb.h
  %i.z = phi i8 [ %.pr.i.i.i.i.i, %thread-pre-split.i.i.i.i.i ], [ %i.y, %bb.h ]
  %cond.i.i.i.i.i = icmp eq i8 %i.z, 43           ; 2 uses
  %i.aa = sext i1 %cond.i.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i.i = add nsw i64 %i.x, %i.aa ; 4 uses
  %.sroa.0.0.idx.i.i.i.i.i = zext i1 %cond.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.idx.i.i.i.i.i ; 2 uses
  %i.ab = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i, 17
  br i1 %i.ab, label %.preheader.i.i.i.i.i, label %.preheader56.i.i.i.i.i.preheader

.preheader.i.i.i.i.i:                             ; preds = %bb.i
  %.not5366.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 0
  br i1 %.not5366.i.i.i.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader56.i.i.i.i.i:                           ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i21, i64 1
  %i.ad = add nsw i64 %.sroa.15.1.i.i.i.i.i20, -1 ; 2 uses
  %.not52.i.not.i.not.i.not.i.not.i.not = icmp eq i64 %i.ad, 0
  br i1 %.not52.i.not.i.not.i.not.i.not.i.not, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.preheader56.i.i.i.i.i.preheader

.preheader56.i.i.i.i.i.preheader:                 ; preds = %bb.i, %.preheader56.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i21 = phi ptr [ %i.ac, %.preheader56.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.i ] ; 2 uses
  %.sroa.15.1.i.i.i.i.i20 = phi i64 [ %i.ad, %.preheader56.i.i.i.i.i ], [ %.sroa.15.0.i.i.i.i.i, %bb.i ]
  %.sroa.042.0.i.i.i.i.i19 = phi i64 [ %i.am, %.preheader56.i.i.i.i.i ], [ 0, %bb.i ]
  %i.ae = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i.i.i19, i64 10) ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %bb.j, !prof !79

bb.j:                                             ; preds = %.preheader56.i.i.i.i.i.preheader
  %i.ag = extractvalue { i64, i1 } %i.ae, 0       ; 2 uses
  %i.ah = load i8, ptr %.sroa.0.1.i.i.i.i.i21, align 1, !alias.scope !303, !noalias !306, !noundef !9
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -48                  ; 2 uses
  %i.ak = icmp ugt i32 %i.aj, 9
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = add i64 %i.ag, %i.al                    ; 3 uses
  %i.an = icmp ult i64 %i.am, %i.ag
  %or.cond.i.i.i.i = select i1 %i.ak, i1 true, i1 %i.an, !prof !308
  br i1 %or.cond.i.i.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.preheader56.i.i.i.i.i, !prof !308

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.k
  %.sroa.0.269.i.i.i.i.i = phi ptr [ %i.au, %bb.k ], [ %.sroa.0.0.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i.i = phi i64 [ %i.at, %bb.k ], [ %.sroa.15.0.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %.sroa.042.267.i.i.i.i.i = phi i64 [ %i.aw, %bb.k ], [ 0, %.preheader.i.i.i.i.i ]
  %i.ao = load i8, ptr %.sroa.0.269.i.i.i.i.i, align 1, !alias.scope !303, !noalias !306, !noundef !9
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, -48                  ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 9                   ; 3 uses
  br i1 %i.ar, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.as = mul i64 %.sroa.042.267.i.i.i.i.i, 10
  %i.at = add nsw i64 %.sroa.15.268.i.i.i.i.i, -1 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i.i.i, i64 1
  %i.av = zext nneg i32 %i.aq to i64
  %i.aw = add i64 %i.as, %i.av                    ; 2 uses
  %.not53.i.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not53.i.i.i.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i: ; preds = %bb.j, %.preheader56.i.i.i.i.i.preheader, %.preheader56.i.i.i.i.i, %bb.k, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.h, %bb.h, %bb.g
  %.sroa.102.0.i.i.i.i = phi i64 [ undef, %bb.h ], [ 0, %.preheader.i.i.i.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %.lr.ph.i.i.i.i.i ], [ %i.aw, %bb.k ], [ undef, %bb.j ], [ %i.am, %.preheader56.i.i.i.i.i ], [ undef, %.preheader56.i.i.i.i.i.preheader ]
  %.sink.i.i.i.i.i = phi i1 [ true, %bb.h ], [ false, %.preheader.i.i.i.i.i ], [ true, %bb.g ], [ true, %bb.h ], [ %i.ar, %bb.k ], [ %i.ar, %.lr.ph.i.i.i.i.i ], [ true, %bb.j ], [ false, %.preheader56.i.i.i.i.i ], [ true, %.preheader56.i.i.i.i.i.preheader ] ; 2 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

.thread62.i.i.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsbDLrNlwBX3H_4smol.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsbDLrNlwBX3H_4smol.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  br label %.lr.ph.i.i.i

bb.n:                                             ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
  %.sroa.3.0.i.i.i.i = select i1 %.sink.i.i.i.i.i, i64 undef, i64 %.sroa.102.0.i.i.i.i
  %.sroa.3.0.i.fr.i.i.i = freeze i64 %.sroa.3.0.i.i.i.i ; 2 uses
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  %.not.i.i.i.i = icmp eq i64 %.sroa.3.0.i.fr.i.i.i, 0
  %narrow.i.not.i.i.i = or i1 %.sink.i.i.i.i.i, %.not.i.i.i.i
  %spec.select.i.i = select i1 %narrow.i.not.i.i.i, i64 1, i64 %.sroa.3.0.i.fr.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %.thread62.i.i.i
  %i.az = phi i64 [ 1, %.thread62.i.i.i ], [ %spec.select.i.i, %bb.n ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %2 = ptrtoint ptr %i.k to i64
  %.sroa.424.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbDLrNlwBX3H_4smol.exit.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezEECsbDLrNlwBX3H_4smol.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.0.050.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.be, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezEECsbDLrNlwBX3H_4smol.exit.i.i.i ] ; 3 uses
  %i.be = add i64 %.sroa.0.050.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %.sroa.0.050.i.i.i, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 -1, ptr %i.ba, align 8
  store i64 0, ptr %i.g, align 8
  store i8 0, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %2, ptr %i.e, align 8
  store i64 ptrtoint (ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt to i64), ptr %.sroa.424.0..sroa_idx.i.i.i, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @11, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvMNtNtCsG258MDvU3F_3std6thread7builderNtB2_7Builder4name(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RINvMNtNtCsG258MDvU3F_3std6thread7builderNtB3_7Builder15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEB1h_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.bf = load ptr, ptr %i.i, align 8, !alias.scope !312, !noalias !309, !noundef !9
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezENtNtNtB4_2io5error5ErrorE6expectCsbDLrNlwBX3H_4smol.exit.i.i.i, !prof !79

._crit_edge.i.i.i:                                ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezEECsbDLrNlwBX3H_4smol.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 0, ptr %i.bh, align 8
  %i.bi = invoke noundef nonnull ptr @_RINvMs3_Csa9iXSdNszRG_14async_executorNtB6_8Executor5spawnzNCNvCs6Pq5vOzcA63_13async_process6driver0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.c)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.p, %._crit_edge.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_Csa9iXSdNszRG_14async_executorNtB5_8ExecutorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %common.resume.i.i.i unwind label %.body.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvMs3_NtCsfO0Hesl1pIe_10async_task4taskINtB5_4TaskzE6detachCsbDLrNlwBX3H_4smol(ptr noundef nonnull %i.bi)
          to label %_RNCINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE10initializeNCINvB4_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zE0B2f_.exit unwind label %bb.o

.body.i:                                          ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.q:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbDLrNlwBX3H_4smol.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !314
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !312, !noalias !309, !nonnull !9, !noundef !9
  store ptr %i.bm, ptr %i.a, align 8, !noalias !314
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 28, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
          to label %bb.s unwind label %bb.r, !noalias !314

bb.r:                                             ; preds = %bb.q
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
          to label %common.resume.i.i.i unwind label %bb.t, !noalias !314

bb.s:                                             ; preds = %bb.q
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !314
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezENtNtNtB4_2io5error5ErrorE6expectCsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbDLrNlwBX3H_4smol.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !alias.scope !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXs1_NtNtNtCsG258MDvU3F_3std3sys6thread4unixNtB5_6ThreadNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6thread4unix6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i unwind label %bb.u

bb.u:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezENtNtNtB4_2io5error5ErrorE6expectCsbDLrNlwBX3H_4smol.exit.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.bq = load ptr, ptr %i.j, align 8, !alias.scope !327, !nonnull !9, !noundef !9
  %i.br = atomicrmw sub ptr %i.bq, i64 1 release, align 8, !noalias !332
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i unwind label %bb.aa

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6thread4unix6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezENtNtNtB4_2io5error5ErrorE6expectCsbDLrNlwBX3H_4smol.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.bt = load ptr, ptr %i.j, align 8, !alias.scope !345, !nonnull !9, !noundef !9
  %i.bu = atomicrmw sub ptr %i.bt, i64 1 release, align 8, !noalias !346
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit3.i.i.i.i.i

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6thread4unix6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit3.i.i.i.i.i unwind label %bb.y

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i: ; preds = %bb.y, %bb.v, %bb.u
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.bz, %bb.y ], [ %i.bp, %bb.v ], [ %i.bp, %bb.u ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.bw = load ptr, ptr %i.bd, align 8, !alias.scope !353, !nonnull !9, !noundef !9
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !354
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.x, label %common.resume.i.i.i

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEE9drop_slowCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bd) #18
          to label %common.resume.i.i.i unwind label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit3.i.i.i.i.i: ; preds = %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6thread4unix6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.ca = load ptr, ptr %i.bd, align 8, !alias.scope !361, !nonnull !9, !noundef !9
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !362
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezEECsbDLrNlwBX3H_4smol.exit.i.i.i

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit3.i.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEE9drop_slowCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bd) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezEECsbDLrNlwBX3H_4smol.exit.i.i.i

bb.aa:                                            ; preds = %bb.x, %bb.v
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezEECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %exitcond.not.i.i.i = icmp eq i64 %.sroa.0.050.i.i.i, %i.az
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbDLrNlwBX3H_4smol.exit.i.i.i

_RNCINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE10initializeNCINvB4_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zE0B2f_.exit: ; preds = %bb.p
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.n, align 8
  ret void

bb.ab:                                            ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1f_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE10initializeNCINvB1e_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB36_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !39, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !363
  call void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1a_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE10initializeNCINvB19_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zE0E0B31_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEE9drop_slowCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std6thread9lifecycleINtB5_6PacketzENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !369, !noundef !9 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !372
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i unwind label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !380, !noundef !9 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit6.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !381
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit6.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit6.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i: ; preds = %bb.h, %bb.d, %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.c, %bb.d ], [ %i.c, %bb.b ], [ %i.c, %bb.c ]
  %.val3.i = load ptr, ptr %i.b, align 8, !alias.scope !386, !noundef !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
end_hunk_1
