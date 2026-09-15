Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon_core-a506781b803648b8.rayon_core.f3c436e44465bf58-cgu.0?download=true
inline.NumInlined: 204
inline.NumDeleted: 98
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE6resizeBZ_:bb.a
  store i64 %i.at, ptr %i.ar, align 8
  %i.au = icmp eq i64 %i.as, 1
  br i1 %i.au, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 2176
  store atomic i64 0, ptr %i.av release, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 2080
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !5
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit, !prof !12

bb.k:                                             ; preds = %bb.j
  call void @_RNvMs6_NtCsdS7Q0PB8o3V_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.w)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.l:                                             ; preds = %bb.c
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.m:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef zeroext i1 @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8is_emptyBZ_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp slt i64 %i.f, 1
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8new_fifoBZ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [384 x i8], align 128             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3map3MapINtNtNtB11_3ops5range5RangejENCNvMs_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB42_6BufferB1P_E5alloc0EE9from_iterB1T_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 0, i64 noundef 64)
  %i.c = call { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE16into_boxed_sliceB1D_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.e = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 16, i64 noundef range(i64 8, 129) 8) #18 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #25
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store ptr %i.d, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 64, ptr %i.g, align 8
  %i.h = ptrtoint ptr %i.e to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i64 %i.h, ptr %i.j, align 128
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(16) %.sroa.44.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !104
  %i.k = call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 384, i64 noundef range(i64 8, 129) 128) #18, !noalias !104 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEE3newB2R_.exit, !prof !12

bb.c:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #25
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB35_(ptr noalias nofree noundef nonnull align 128 dereferenceable(384) %i.b) #27
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.m

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEE3newB2R_.exit: ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.k, ptr noundef nonnull align 128 dereferenceable(384) %i.b, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.k, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 64, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.q, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8new_lifoBZ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [384 x i8], align 128             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3map3MapINtNtNtB11_3ops5range5RangejENCNvMs_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB42_6BufferB1P_E5alloc0EE9from_iterB1T_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 0, i64 noundef 64)
  %i.c = call { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE16into_boxed_sliceB1D_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.e = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 16, i64 noundef range(i64 8, 129) 8) #18 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #25
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store ptr %i.d, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 64, ptr %i.g, align 8
  %i.h = ptrtoint ptr %i.e to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i64 %i.h, ptr %i.j, align 128
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(16) %.sroa.44.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !107
  %i.k = call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 384, i64 noundef range(i64 8, 129) 128) #18, !noalias !107 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEE3newB2R_.exit, !prof !12

bb.c:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #25
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB35_(ptr noalias nofree noundef nonnull align 128 dereferenceable(384) %i.b) #27
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.m

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEE3newB2R_.exit: ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.k, ptr noundef nonnull align 128 dereferenceable(384) %i.b, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.k, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 64, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.q, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5stealB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 4 uses
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default6HANDLE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i8, ptr %i.f, align 8, !range !6, !noalias !114, !noundef !5
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.i, label %_RNvYNCNKNvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default6HANDLE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCskVyUMSjkkSy_10rayon_core.exit.i.i, !prof !9

_RNvYNCNKNvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default6HANDLE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCskVyUMSjkkSy_10rayon_core.exit.i.i: ; preds = %bb.a
  %i.i = tail call fastcc noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECskVyUMSjkkSy_10rayon_core(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.thread.i, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.i

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %_RNvYNCNKNvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default6HANDLE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCskVyUMSjkkSy_10rayon_core.exit.i.i, %bb.a
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.i, %_RNvYNCNKNvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default6HANDLE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCskVyUMSjkkSy_10rayon_core.exit.i.i ], [ %i.e, %bb.a ]
  %.val.i.i = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noundef !5
  %2 = getelementptr i8, ptr %.val.i.i, i64 2072
  %.val.val.i.i = load i64, ptr %2, align 8, !noundef !5
  br label %_RINvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECskVyUMSjkkSy_10rayon_core.exit

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.thread.i: ; preds = %_RNvYNCNKNvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default6HANDLE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCskVyUMSjkkSy_10rayon_core.exit.i.i
  %i.k = tail call noundef nonnull align 8 ptr @_RNvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default9collector()
  %i.l = tail call noundef ptr @_RNvMs1_NtCsdS7Q0PB8o3V_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k) ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 2072
  %.val2.val.i.i = load i64, ptr %i.m, align 8, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 2080 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !5 ; 2 uses
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.n, align 8
  %i.q = icmp eq i64 %.val2.val.i.i, 0
  %i.r = icmp eq i64 %i.o, 1
  %or.cond.i.i.i3.i.i = and i1 %i.q, %i.r
  br i1 %or.cond.i.i.i3.i.i, label %_RINvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECskVyUMSjkkSy_10rayon_core.exit.thread, label %_RINvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECskVyUMSjkkSy_10rayon_core.exit, !prof !8

_RINvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECskVyUMSjkkSy_10rayon_core.exit.thread: ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.thread.i
  tail call void @_RNvMs6_NtCsdS7Q0PB8o3V_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.l)
  br label %bb.d

_RINvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECskVyUMSjkkSy_10rayon_core.exit: ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.i, %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.thread.i
  %.sroa.0.0.in.i = phi i64 [ %.val.val.i.i, %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.i ], [ %.val2.val.i.i, %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.thread.i ]
  %.sroa.0.0.i.not = icmp eq i64 %.sroa.0.0.in.i, 0
  br i1 %.sroa.0.0.i.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_RINvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECskVyUMSjkkSy_10rayon_core.exit
  fence seq_cst
  br label %bb.d

bb.c:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core(ptr %i.t) #27
          to label %bb.q unwind label %bb.p

bb.d:                                             ; preds = %_RINvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECskVyUMSjkkSy_10rayon_core.exit, %bb.b, %_RINvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECskVyUMSjkkSy_10rayon_core.exit.thread
  %i.t = tail call fastcc noundef ptr @_RINvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECskVyUMSjkkSy_10rayon_core() #29 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.v = load atomic i64, ptr %i.u acquire, align 8
  %i.w = sub i64 %i.v, %i.d
  %i.x = icmp slt i64 %i.w, 1
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  store i64 %i.z, ptr %i.a, align 8
  %i.aa = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsdS7Q0PB8o3V_15crossbeam_epoch6atomicINtB5_6SharedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6BufferNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE5derefB1N_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.g unwind label %bb.c       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5
  %i.ae = add i64 %i.ad, -1
  %i.af = and i64 %i.ae, %i.d
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %i.af
  %i.ah = load volatile i128, ptr %i.ag, align 8  ; 2 uses
  %.sroa.01.0.extract.trunc = trunc i128 %i.ah to i64 ; 2 uses
  %i.ai = inttoptr i64 %.sroa.01.0.extract.trunc to ptr
  %.sroa.2.0.extract.shift = lshr i128 %i.ah, 64
  %.sroa.2.0.extract.trunc = trunc nuw i128 %.sroa.2.0.extract.shift to i64
  %i.aj = inttoptr i64 %.sroa.2.0.extract.trunc to ptr
  %i.ak = load atomic i64, ptr %i.y acquire, align 8
  %.not = icmp eq i64 %i.ak, %i.z
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.al = add i64 %i.d, 1
  %i.am = cmpxchg ptr %i.c, i64 %i.d, i64 %i.al seq_cst monotonic, align 8
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %bb.j, label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp ne i64 %.sroa.01.0.extract.trunc, 0
  call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aj, ptr %i.aq, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ar = icmp eq ptr %i.t, null
  br i1 %i.ar, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 2072 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noundef !5 ; 2 uses
  %i.au = add i64 %i.at, -1
  store i64 %i.au, ptr %i.as, align 8
  %i.av = icmp eq i64 %i.at, 1
  br i1 %i.av, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 2176
  store atomic i64 0, ptr %i.aw release, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 2080
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !5
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit.sink.split, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit, !prof !12

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit.sink.split: ; preds = %bb.l, %bb.o
  call void @_RNvMs6_NtCsdS7Q0PB8o3V_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.t)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit.sink.split, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  ret void

bb.m:                                             ; preds = %bb.h, %bb.e
  %i.ba = icmp eq ptr %i.t, null
  br i1 %i.ba, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 2072 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !5 ; 2 uses
  %i.bd = add i64 %i.bc, -1
  store i64 %i.bd, ptr %i.bb, align 8
  %i.be = icmp eq i64 %i.bc, 1
  br i1 %i.be, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 2176
  store atomic i64 0, ptr %i.bf release, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 2080
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !5
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit.sink.split, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit, !prof !12

bb.p:                                             ; preds = %bb.c
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.q:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef zeroext i1 @_RNvMs8_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8is_emptyB10_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.c = load atomic i64, ptr %i.b acquire, align 8
  fence seq_cst
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.e = load atomic i64, ptr %i.d acquire, align 8
  %i.f = sub i64 %i.e, %i.c
  %i.g = icmp slt i64 %i.f, 1
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core3jobNtB5_7JobFifo3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 128 captures(none) dereferenceable(256) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.a = tail call noundef align 8 dereferenceable_or_null(1520) ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef 1520, i64 noundef 8) #18 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE3newBY_.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1520) #25
  unreachable

_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE3newBY_.exit: ; preds = %bb.a
  store i64 0, ptr %0, align 128
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %.sroa.611.0..sroa_idx, align 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.a, ptr %.sroa.7.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core3jobNtB5_7JobFifo4push(ptr noundef nonnull align 128 %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE4pushB11_(ptr noundef nonnull align 128 %0, ptr noundef nonnull %1, ptr noundef %2)
  %i.a = insertvalue { ptr, ptr } { ptr @_RNvXs9_NtCskVyUMSjkkSy_10rayon_core3jobNtB5_7JobFifoNtB5_3Job7execute, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE3newBY_() unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.a = tail call noundef align 8 dereferenceable_or_null(1520) ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef 1520, i64 noundef 8) #18 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1520) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE4pushB11_(ptr nofree noundef nonnull align 128 captures(none) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8
  br label %.outer

.outer:                                           ; preds = %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit, %bb.a
  %.sroa.062.0.ph = phi ptr [ %.sroa.062.2, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ null, %bb.a ] ; 4 uses
  %.sroa.0.064.ph = phi i32 [ %spec.select, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.022.0.ph = phi ptr [ %i.aj, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ %i.d, %bb.a ]
  %.sroa.0.0.ph = phi i64 [ %i.x, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = lshr i64 %.sroa.0.0.ph, 1
  %i.f = and i64 %i.e, 63                         ; 2 uses
  %i.g = icmp eq i64 %i.f, 63
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.outer, %bb.c
  %.sroa.0.06492 = phi i32 [ %.sroa.0.1, %bb.c ], [ %.sroa.0.064.ph, %.outer ] ; 5 uses
  %i.h = icmp ult i32 %.sroa.0.06492, 7
  br i1 %i.h, label %.preheader.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.thread
end_hunk_0
