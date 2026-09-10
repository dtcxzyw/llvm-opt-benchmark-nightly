Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/proc_macro_api-453490e7fac4cc95.proc_macro_api.886e48e570c838a-cgu.09?download=true
inline.NumInlined: 230
inline.NumDeleted: 138
begin_hunk_0_@_RNvNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol11wrap_encode:bb.a
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #23
          to label %bb.k unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  store i64 1, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx9, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.k, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.l, %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.j:                                             ; preds = %bb.c
  unreachable

bb.k:                                             ; preds = %.body, %bb.l
  %.pn12 = phi { ptr, i32 } [ %i.q, %bb.l ], [ %i.m, %.body ]
  resume { ptr, i32 } %.pn12

bb.l:                                             ; preds = %bb.c, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsJo5RpJFzwk_14proc_macro_api(ptr nonnull %1) #23
          to label %bb.k unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol13version_check(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [264 x i8], align 8               ; 6 uses
  %i.d = alloca [264 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.e = alloca [264 x i8], align 8               ; 7 uses
  %i.f = alloca [264 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 -9223372036854775807, ptr %i.g, align 8
  store i64 -9223372036854775805, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol11run_request(ptr noalias nofree noundef align 8 captures(address) dereferenceable(264) %i.d, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(264) %i.f, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  %i.h = load i64, ptr %i.d, align 8, !range !19, !noundef !4 ; 4 uses
  %i.i = icmp eq i64 %i.h, -2
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.511.0..sroa_idx, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.46.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 %i.h, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.k = icmp ne i64 %i.h, -9223372036854775804
  call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.h, -9223372036854775807
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.c, ptr noundef nonnull align 8 dereferenceable(264) %i.e, i64 264, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgNtB5_20BidirectionalMessageNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @13, ptr noundef nonnull %i.a)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsJo5RpJFzwk_14proc_macro_api.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = load i32, ptr %.sroa.46.0..sroa_idx, align 8, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.m, ptr %i.n, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg20BidirectionalMessageEBH_(ptr noalias nofree noundef align 8 dereferenceable(264) %i.e)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg20BidirectionalMessageEBH_(ptr noalias nofree noundef align 8 dereferenceable(264) %i.c) #23
          to label %bb.i unwind label %bb.h

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsJo5RpJFzwk_14proc_macro_api.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.48.0..sroa_idx, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg20BidirectionalMessageEBH_(ptr noalias nofree noundef align 8 dereferenceable(264) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsJo5RpJFzwk_14proc_macro_api.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.i:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol16find_proc_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [264 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.c = alloca [264 x i8], align 8               ; 11 uses
  %i.d = alloca [264 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_RNvMsh_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPath11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  store i64 -9223372036854775805, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol11run_request(ptr noalias nofree noundef align 8 captures(address) dereferenceable(264) %i.b, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(264) %i.d, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5)
  %i.f = load i64, ptr %i.b, align 8, !range !19, !noundef !4 ; 4 uses
  %i.g = icmp eq i64 %i.f, -2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEBH_.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.59.0..sroa_idx, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 %i.f, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.j = icmp ne i64 %i.f, -9223372036854775804
  call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.f, -9223372036854775808
  br i1 %i.k, label %.thread20, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 19, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.g unwind label %bb.f

.thread20:                                        ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, i64 32, i1 false)
  store i64 0, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEBH_.exit

bb.e:                                             ; preds = %bb.g
  %i.m = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = icmp samesign ugt i64 %i.y, 18
  call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.m, ptr noundef nonnull align 1 dereferenceable(19) @14, i64 19, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.o, align 8
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %.sroa.05.sroa.4.0..sroa_idx, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 19, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.46.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.pre = load i64, ptr %i.c, align 8, !range !17 ; 4 uses
  %i.p = icmp ne i64 %.pre, -9223372036854775804
  call void @llvm.assume(i1 %i.p)
  %i.q = add i64 %.pre, 9223372036854775805       ; 2 uses
  %6 = icmp ugt i64 %i.q, 3
  %7 = icmp eq i64 %i.q, 1
  %8 = or i1 %6, %7
  br i1 %8, label %bb.i, label %bb.j

bb.f:                                             ; preds = %bb.h, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load i64, ptr %i.c, align 8, !range !17, !noundef !4 ; 3 uses
  %i.t = icmp ne i64 %i.s, -9223372036854775804
  call void @llvm.assume(i1 %i.t)
  %i.u = add i64 %i.s, 9223372036854775805        ; 2 uses
  %9 = icmp ugt i64 %i.u, 3
  %10 = icmp eq i64 %i.u, 1
  %11 = or i1 %9, %10
  br i1 %11, label %bb.o, label %bb.p

bb.g:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.a, align 8, !range !7, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !20, !noundef !4 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.e, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %i.z, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #27
          to label %bb.n unwind label %bb.f

bb.i:                                             ; preds = %bb.e
  %i.ab = icmp eq i64 %.pre, -9223372036854775808
  br i1 %i.ab, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEBH_.exit, label %bb.k

bb.j:                                             ; preds = %bb.e
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg20BidirectionalMessageEBH_(ptr noalias nofree noundef align 8 dereferenceable(264) %i.c)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEBH_.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = xor i64 %.pre, -9223372036854775808
  switch i64 %i.ac, label %bb.l [
    i64 0, label %bb.m
    i64 1, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEBH_.exit
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEBH_.exit
  ]

bb.l:                                             ; preds = %bb.k
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg19ExpandMacroResponseNtNtNtB13_15legacy_protocol3msg12PanicMessageEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.c)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEBH_.exit

bb.m:                                             ; preds = %bb.k
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtB12_6string6StringNtCsJo5RpJFzwk_14proc_macro_api13ProcMacroKindEEB1v_EEB1T_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.4.0..sroa_idx)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEBH_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEBH_.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.k, %bb.l, %bb.m, %.thread20, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.n:                                             ; preds = %bb.h
  unreachable

bb.o:                                             ; preds = %bb.f
  %i.ad = icmp eq i64 %i.s, -9223372036854775808
  br i1 %i.ad, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg20BidirectionalMessageEBH_(ptr noalias nofree noundef align 8 dereferenceable(264) %i.c) #23
          to label %bb.t unwind label %bb.s

bb.q:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtB12_6string6StringNtCsJo5RpJFzwk_14proc_macro_api13ProcMacroKindEEB1v_EEB1T_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.4.0..sroa_idx) #23
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEBH_(ptr noalias nofree noundef align 8 dereferenceable(264) %i.c) #23
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol16run_conversation(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %4, ptr noalias nofree noundef align 8 dereferenceable(24) %5, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(264) %6, ptr noundef nonnull %7, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 16               ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.10 = alloca [24 x i8], align 8           ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 2 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.658 = alloca [24 x i8], align 8          ; 7 uses
  %.sroa.654 = alloca [24 x i8], align 8          ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 13 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.449 = alloca [28 x i8], align 4          ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [40 x i8], align 8                ; 7 uses
  %i.v = alloca [264 x i8], align 8               ; 15 uses
  %i.w = alloca [264 x i8], align 8               ; 8 uses
  %.sroa.635.sroa.0 = alloca [24 x i8], align 8   ; 7 uses
  %.sroa.629.sroa.0 = alloca [24 x i8], align 8   ; 7 uses
  %i.x = alloca [264 x i8], align 8               ; 17 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.65 = alloca [24 x i8], align 8           ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.65)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RINvNtNtCsJo5RpJFzwk_14proc_macro_api9transport8postcard6encodeNtNtNtB6_22bidirectional_protocol3msg20BidirectionalMessageEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %6)
          to label %bb.c unwind label %bb.b

.body163:                                         ; preds = %bb.cp, %bb.b, %.body142
  %.pn132 = phi { ptr, i32 } [ %.pn130, %.body142 ], [ %i.ab, %bb.b ], [ %i.fc, %bb.cp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg20BidirectionalMessageEBH_(ptr noalias nofree noundef align 8 dereferenceable(264) %6) #23
          to label %bb.cu unwind label %bb.as

bb.b:                                             ; preds = %bb.cq, %bb.d, %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body163

bb.c:                                             ; preds = %bb.a
  %i.ac = load i64, ptr %i.z, align 8, !range !11, !noundef !4
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke fastcc void @_RNvNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol11wrap_encode(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.n, ptr noundef nonnull %i.af)
          to label %bb.ct unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.65, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.65, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !4
  %i.ak = invoke noundef ptr @_RINvNtNtCsJo5RpJFzwk_14proc_macro_api9transport8postcard5writeDNtNtNtCshzWfHUSfYae_4core2io5write5WriteEL_EB6_(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.aj)
          to label %bb.g unwind label %.loopexit.split-lp ; 2 uses

.body142:                                         ; preds = %.loopexit, %.loopexit.split-lp, %.body.i, %bb.aa, %bb.k, %bb.f, %.body, %bb.cc, %bb.cb, %bb.bn
  %.pn130 = phi { ptr, i32 } [ %i.bw, %bb.aa ], [ %i.al, %bb.f ], [ %i.bt, %.body.i ], [ %i.ay, %bb.k ], [ %eh.lpad-body, %.body ], [ %.pn128, %bb.cb ], [ %.pn128, %bb.cc ], [ %.pn128, %bb.bn ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #23
          to label %.body163 unwind label %bb.as

.loopexit:                                        ; preds = %bb.j, %bb.o, %bb.bp
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body142

.loopexit.split-lp:                               ; preds = %bb.e, %bb.p, %bb.bz, %bb.cf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body142

bb.f:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body142

bb.g:                                             ; preds = %bb.e
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke fastcc void @_RNvYNCNvNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol7wrap_io0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTNtNtNtB1f_2io5error5ErrorEE9call_onceB8_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 31, ptr noundef nonnull %i.ak)
          to label %bb.cs unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.sroa.488.sroa.4.0..sroa.488.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.sroa.440.sroa.4.0..sroa.440.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.6214.0..sroa.440.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.10.0..sroa_idx203 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %.sroa.8197.0..sroa_idx201 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.10.0..sroa_idx204 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol6expand:bb.a
  invoke void @_RNvMNtNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msg4flatNtB2_8FlatTree12from_subtree(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %3, i32 noundef %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !262
  store i64 0, ptr %i.e, align 8, !noalias !262
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !262
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !262
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.af, align 8, !noalias !262
  store ptr %i.e, ptr %i.d, align 8, !noalias !262
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @32, ptr %i.ag, align 8, !noalias !262
  %i.ah = invoke noundef zeroext i1 @_RNvXsm_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxeENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.i unwind label %bb.h, !noalias !263

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #23
          to label %.body60 unwind label %bb.k, !noalias !263

bb.i:                                             ; preds = %bb.g
  br i1 %i.ah, label %bb.j, label %bb.l, !prof !10

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22
          to label %.noexc.i unwind label %bb.h, !noalias !263

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !263
  unreachable

.body60:                                          ; preds = %bb.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msg4flat8FlatTreeEEB15_.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msg4flat8FlatTreeEEB15_.exit ], [ %i.ai, %bb.h ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msg4flat8FlatTreeEBJ_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.q) #23
          to label %.body unwind label %bb.bv

bb.l:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ak = load i64, ptr %4, align 8, !range !18, !noundef !4
  %.not = icmp eq i64 %i.ak, -1
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false)
  invoke void @_RNvMNtNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msg4flatNtB2_8FlatTree12from_subtree(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.i, i32 noundef %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u)
          to label %_RNCNvNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol6expand0B5_.exit unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  store i64 -1, ptr %i.o, align 8
  br label %bb.r

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msg4flat8FlatTreeEEB15_.exit: ; preds = %bb.p, %bb.q, %bb.o
  %.pn = phi { ptr, i32 } [ %i.al, %bb.o ], [ %i.am, %bb.q ], [ %i.am, %bb.p ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #23
          to label %.body60 unwind label %bb.bv

bb.o:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msg4flat8FlatTreeEEB15_.exit

_RNCNvNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol6expand0B5_.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.o, ptr noundef nonnull align 8 dereferenceable(144) %i.j, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.r

bb.p:                                             ; preds = %bb.t
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load i64, ptr %i.o, align 8, !range !11, !alias.scope !265, !noundef !4
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msg4flat8FlatTreeEEB15_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msg4flat8FlatTreeEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msg4flat8FlatTreeEEB15_.exit unwind label %bb.bv

bb.r:                                             ; preds = %bb.n, %_RNCNvNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol6expand0B5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ap = getelementptr i8, ptr %2, i64 105
  %.val58 = load i8, ptr %i.ap, align 1, !range !5, !noundef !4
  %i.aq = trunc nuw i8 %.val58 to i1
  br i1 %i.aq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 0, ptr %i.n, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %i.as, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  invoke void @_RNvNtNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msg4flat29serialize_span_data_index_map(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u)
          to label %bb.u unwind label %bb.p

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.r, ptr noundef nonnull align 8 dereferenceable(144) %i.q, i64 144, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.au, ptr noundef nonnull align 8 dereferenceable(144) %i.o, i64 144, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 336
  store i64 %i.z, ptr %i.av, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 344
  store i64 %i.ab, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 352
  store i64 %i.ad, ptr %.sroa.53.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !4, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = invoke { ptr, i64 } @_RNvXs0_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBufNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %bb.w unwind label %bb.v       ; 2 uses

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg15ExpandMacroDataEBH_(ptr noalias nofree noundef align 8 dereferenceable(360) %i.r) #23
          to label %.body unwind label %bb.bv

bb.w:                                             ; preds = %bb.u
  %i.bc = extractvalue { ptr, i64 } %i.ba, 0
  %i.bd = extractvalue { ptr, i64 } %i.ba, 1
  invoke void @_RNvMsh_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPath11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %i.bd)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.bg, ptr noundef nonnull align 8 dereferenceable(360) %i.r, i64 360, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !266
  %i.bh = call noundef align 8 dereferenceable_or_null(432) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 24, 433) 432, i64 noundef 8) #21, !noalias !266 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.y, label %bb.ab, !prof !10

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 432) #27
          to label %.noexc62 unwind label %bb.z

.noexc62:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg11ExpandMacroEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %i.s) #23
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ab:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.bh, ptr noundef nonnull align 8 dereferenceable(432) %i.s, i64 432, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 -9223372036854775808, ptr %i.bl, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.bh, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke fastcc void @_RNvNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol11run_request(ptr noalias nofree noundef align 8 captures(address) dereferenceable(264) %i.k, ptr noundef nonnull align 8 %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(264) %i.t, ptr noundef nonnull %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %11)
          to label %bb.ac unwind label %bb.c

bb.ac:                                            ; preds = %bb.ab
  %i.bm = load i64, ptr %i.k, align 8, !range !19, !noundef !4 ; 7 uses
  %i.bn = icmp eq i64 %i.bm, -2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 32, i1 false)
  br i1 %i.bn, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  invoke void @_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.682.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCs3gqD4ldeioo_8indexmap6BucketNtCsdovh4xi6v3I_4span4SpanuEEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #23
          to label %.thread unwind label %bb.ah

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i: ; preds = %bb.ad
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCs3gqD4ldeioo_8indexmap6BucketNtCsdovh4xi6v3I_4span4SpanuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3map8IndexMapNtCsdovh4xi6v3I_4span4SpanuINtNtB4_4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEECsJo5RpJFzwk_14proc_macro_api.exit.i unwind label %bb.af

bb.af:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtCsdovh4xi6v3I_4span4SpanuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u)
          to label %.thread unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ai:                                            ; preds = %bb.ac
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.537.0..sroa_idx, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 %i.bm, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.bv = icmp ne i64 %i.bm, -9223372036854775804
  call void @llvm.assume(i1 %i.bv)
  %12 = add i64 %i.bm, 9223372036854775805        ; 2 uses
  %13 = icmp ult i64 %12, 4
  %14 = icmp ne i64 %12, 1
  %.not91 = and i1 %13, %14
  %i.bw = icmp slt i64 %i.bm, -9223372036854775805
  %or.cond.not = or i1 %i.bw, %.not91             ; 2 uses
  br i1 %or.cond.not, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef 19, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bf unwind label %bb.bc

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.519)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.526)
  %i.bx = icmp eq i64 %i.bm, -1
  br i1 %i.bx, label %bb.bd, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.445.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.49.0..sroa_idx, i64 24, i1 false)
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.546.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.615.0..sroa_idx, i64 232, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.bm, ptr %i.f, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull align 8 dereferenceable(264) %i.f, i64 144, i1 false), !noalias !269
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !268
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !267, !noalias !269, !nonnull !4, !noundef !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !267, !noalias !269, !noundef !4
  invoke void @_RNvNtNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msg4flat31deserialize_span_data_index_map(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ca, i64 noundef %i.cc)
          to label %bb.an unwind label %bb.ba, !noalias !268

bb.am:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3map8IndexMapNtCsdovh4xi6v3I_4span4SpanuINtNtB4_4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEECsJo5RpJFzwk_14proc_macro_api.exit.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvMNtNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msg4flatNtB2_8FlatTree19to_subtree_resolved(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.c, i32 noundef %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b)
          to label %bb.ap unwind label %bb.ao, !noalias !267

bb.ao:                                            ; preds = %bb.an
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3set8IndexSetNtCsdovh4xi6v3I_4span4SpanINtNtB4_4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #23
          to label %.thread.i unwind label %bb.az, !noalias !268

bb.ap:                                            ; preds = %bb.an
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  invoke void @_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cg, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i unwind label %bb.aq, !noalias !268

bb.aq:                                            ; preds = %bb.ap
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCs3gqD4ldeioo_8indexmap6BucketNtCsdovh4xi6v3I_4span4SpanuEEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b) #23
          to label %.thread.i unwind label %bb.at, !noalias !268

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i: ; preds = %bb.ap
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCs3gqD4ldeioo_8indexmap6BucketNtCsdovh4xi6v3I_4span4SpanuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3map8IndexMapNtCsdovh4xi6v3I_4span4SpanuINtNtB4_4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEECsJo5RpJFzwk_14proc_macro_api.exit.i.i unwind label %bb.ar, !noalias !268

bb.ar:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtCsdovh4xi6v3I_4span4SpanuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %.thread.i unwind label %bb.as, !noalias !268

bb.as:                                            ; preds = %bb.ar
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !268
  unreachable

bb.at:                                            ; preds = %bb.aq
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !268
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3map8IndexMapNtCsdovh4xi6v3I_4span4SpanuINtNtB4_4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEECsJo5RpJFzwk_14proc_macro_api.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtCsdovh4xi6v3I_4span4SpanuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3set8IndexSetNtCsdovh4xi6v3I_4span4SpanINtNtB4_4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEECsJo5RpJFzwk_14proc_macro_api.exit.i unwind label %bb.am, !noalias !268

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3set8IndexSetNtCsdovh4xi6v3I_4span4SpanINtNtB4_4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEECsJo5RpJFzwk_14proc_macro_api.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3map8IndexMapNtCsdovh4xi6v3I_4span4SpanuINtNtB4_4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEECsJo5RpJFzwk_14proc_macro_api.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !268
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %bb.av unwind label %bb.au, !noalias !269

bb.au:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3set8IndexSetNtCsdovh4xi6v3I_4span4SpanINtNtB4_4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEECsJo5RpJFzwk_14proc_macro_api.exit.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.body6.i unwind label %bb.aw, !noalias !269

bb.av:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3set8IndexSetNtCsdovh4xi6v3I_4span4SpanINtNtB4_4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEECsJo5RpJFzwk_14proc_macro_api.exit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsJo5RpJFzwk_14proc_macro_api.exit.i unwind label %bb.ax, !noalias !269

bb.aw:                                            ; preds = %bb.au
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !269
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i

.body6.i:                                         ; preds = %bb.ax, %bb.au
  %eh.lpad-body7.i = phi { ptr, i32 } [ %i.cn, %bb.ax ], [ %i.cl, %bb.au ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtNtCshzWfHUSfYae_4core6option6OptionBP_EEENtNtNtB1v_3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.co)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtNtB4_6option6OptionB1w_EEECsJo5RpJFzwk_14proc_macro_api.exit.i unwind label %bb.az, !noalias !269

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsJo5RpJFzwk_14proc_macro_api.exit.i: ; preds = %bb.av
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtNtCshzWfHUSfYae_4core6option6OptionBP_EEENtNtNtB1v_3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cp)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtNtB4_6option6OptionB1w_EEECsJo5RpJFzwk_14proc_macro_api.exit8.i unwind label %bb.ay, !noalias !269

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtNtB4_6option6OptionB1w_EEECsJo5RpJFzwk_14proc_macro_api.exit.i: ; preds = %bb.ay, %.body6.i
  %.pn3.i = phi { ptr, i32 } [ %i.cr, %bb.ay ], [ %eh.lpad-body7.i, %.body6.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cq)
          to label %.body67 unwind label %bb.az, !noalias !269

bb.ay:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsJo5RpJFzwk_14proc_macro_api.exit.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtNtB4_6option6OptionB1w_EEECsJo5RpJFzwk_14proc_macro_api.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtNtB4_6option6OptionB1w_EEECsJo5RpJFzwk_14proc_macro_api.exit8.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsJo5RpJFzwk_14proc_macro_api.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cs)
          to label %_RNCNvNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol6expands_0B5_.exit unwind label %bb.bc

bb.az:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtNtB4_6option6OptionB1w_EEECsJo5RpJFzwk_14proc_macro_api.exit9.i, %bb.bb, %bb.ba, %.thread.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtNtB4_6option6OptionB1w_EEECsJo5RpJFzwk_14proc_macro_api.exit.i, %.body6.i, %bb.ao
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !269
  unreachable

.thread.i:                                        ; preds = %bb.ba, %bb.ar, %bb.aq, %bb.ao, %bb.am
  %.pn4.i = phi { ptr, i32 } [ %i.ce, %bb.ao ], [ %i.cu, %bb.ba ], [ %i.cd, %bb.am ], [ %i.ci, %bb.ar ], [ %i.ch, %bb.aq ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.by) #23
          to label %bb.bb unwind label %bb.az, !noalias !269

bb.ba:                                            ; preds = %bb.al
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msg4flat8FlatTreeEBJ_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.c) #23
          to label %.thread.i unwind label %bb.az, !noalias !268

bb.bb:                                            ; preds = %.thread.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtNtCshzWfHUSfYae_4core6option6OptionBP_EEENtNtNtB1v_3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cv)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtNtB4_6option6OptionB1w_EEECsJo5RpJFzwk_14proc_macro_api.exit9.i unwind label %bb.az, !noalias !269

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtNtB4_6option6OptionB1w_EEECsJo5RpJFzwk_14proc_macro_api.exit9.i: ; preds = %bb.bb
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cw)
          to label %.body67 unwind label %bb.az, !noalias !269

bb.bc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtNtB4_6option6OptionB1w_EEECsJo5RpJFzwk_14proc_macro_api.exit8.i, %bb.bg, %bb.aj
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body67

.body67:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtNtB4_6option6OptionB1w_EEECsJo5RpJFzwk_14proc_macro_api.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtNtB4_6option6OptionB1w_EEECsJo5RpJFzwk_14proc_macro_api.exit9.i, %bb.bc
  %eh.lpad-body68 = phi { ptr, i32 } [ %i.cx, %bb.bc ], [ %.pn4.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtNtB4_6option6OptionB1w_EEECsJo5RpJFzwk_14proc_macro_api.exit9.i ], [ %.pn3.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtNtB4_6option6OptionB1w_EEECsJo5RpJFzwk_14proc_macro_api.exit.i ] ; 4 uses
  %i.cy = load i64, ptr %i.l, align 8, !range !17, !noundef !4 ; 3 uses
  %i.cz = icmp ne i64 %i.cy, -9223372036854775804
  call void @llvm.assume(i1 %i.cz)
  %i.da = add i64 %i.cy, 9223372036854775805      ; 2 uses
  %15 = icmp ugt i64 %i.da, 3
  %16 = icmp eq i64 %i.da, 1
  %17 = or i1 %15, %16
  br i1 %17, label %bb.bq, label %bb.br

_RNCNvNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol6expands_0B5_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtNtB4_6option6OptionB1w_EEECsJo5RpJFzwk_14proc_macro_api.exit8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.024.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.526, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.526.0..sroa_idx, i64 24, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ak, %_RNCNvNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol6expands_0B5_.exit
  %.sroa.49.0..sroa_idx.sink = phi ptr [ %.sroa.526, %_RNCNvNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol6expands_0B5_.exit ], [ %.sroa.49.0..sroa_idx, %bb.ak ]
  %.sroa.621.0 = phi i64 [ %.sroa.7.0.copyload, %_RNCNvNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol6expands_0B5_.exit ], [ undef, %bb.ak ]
  %.sroa.017.0 = phi i64 [ %.sroa.024.0.copyload, %_RNCNvNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol6expands_0B5_.exit ], [ -1, %bb.ak ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.519, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.49.0..sroa_idx.sink, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.526)
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.519.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.519, i64 24, i1 false)
  %.sroa.621.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.621.0, ptr %.sroa.621.0..sroa_idx22, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.519)
  br label %bb.be

bb.be:                                            ; preds = %bb.bh, %bb.bd
  %i.db = load i64, ptr %i.l, align 8, !range !17, !noundef !4 ; 4 uses
  %i.dc = icmp ne i64 %i.db, -9223372036854775804
  call void @llvm.assume(i1 %i.dc)
  %i.dd = add i64 %i.db, 9223372036854775805      ; 2 uses
  %18 = icmp ugt i64 %i.dd, 3
  %19 = icmp eq i64 %i.dd, 1
  %20 = or i1 %18, %19
  br i1 %20, label %bb.bi, label %bb.bj

bb.bf:                                            ; preds = %bb.aj
  %i.de = load i64, ptr %i.h, align 8, !range !7, !noundef !4
  %i.df = trunc nuw i64 %i.de to i1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !range !20, !noundef !4 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.df, label %bb.bg, label %bb.bh, !prof !10

bb.bg:                                            ; preds = %bb.bf
  %i.dj = load i64, ptr %i.di, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.dh, i64 %i.dj) #27
          to label %bb.bp unwind label %bb.bc

bb.bh:                                            ; preds = %bb.bf
  %i.dk = load ptr, ptr %i.di, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dl = icmp samesign ugt i64 %i.dh, 18
  call void @llvm.assume(i1 %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.dk, ptr noundef nonnull align 1 dereferenceable(19) @14, i64 19, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dh, ptr %i.dm, align 8
  %.sroa.030.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dk, ptr %.sroa.030.sroa.4.0..sroa_idx, align 8
  %.sroa.030.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 19, ptr %.sroa.030.sroa.5.0..sroa_idx, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.431.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.be

bb.bi:                                            ; preds = %bb.be
  %i.dn = icmp slt i64 %i.db, -9223372036854775805
  %i.do = and i64 %i.db, 3
  %i.dp = icmp eq i64 %i.do, 0
  %or.cond = and i1 %i.dn, %i.dp
  br i1 %or.cond, label %bb.bo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEBH_.exit

bb.bj:                                            ; preds = %bb.be
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg20BidirectionalMessageEBH_(ptr noalias nofree noundef align 8 dereferenceable(264) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEBH_.exit unwind label %bb.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEBH_.exit: ; preds = %bb.bo, %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  invoke void @_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.682.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dq, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i71 unwind label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEBH_.exit
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCs3gqD4ldeioo_8indexmap6BucketNtCsdovh4xi6v3I_4span4SpanuEEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #23
          to label %.thread unwind label %bb.bn

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i71: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEBH_.exit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCs3gqD4ldeioo_8indexmap6BucketNtCsdovh4xi6v3I_4span4SpanuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3map8IndexMapNtCsdovh4xi6v3I_4span4SpanuINtNtB4_4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEECsJo5RpJFzwk_14proc_macro_api.exit.i unwind label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i71
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtCsdovh4xi6v3I_4span4SpanuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u)
          to label %.thread unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.bn:                                            ; preds = %bb.bk
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.bo:                                            ; preds = %bb.bi
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtB12_6string6StringNtCsJo5RpJFzwk_14proc_macro_api13ProcMacroKindEEB1v_EEB1T_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.49.0..sroa_idx)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEBH_.exit unwind label %bb.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3map8IndexMapNtCsdovh4xi6v3I_4span4SpanuINtNtB4_4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEECsJo5RpJFzwk_14proc_macro_api.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i71, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtCsdovh4xi6v3I_4span4SpanuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  ret void

bb.bp:                                            ; preds = %bb.bg
  unreachable

bb.bq:                                            ; preds = %.body67
  %i.dv = icmp sgt i64 %i.cy, -9223372036854775806
  br i1 %i.dv, label %bb.bs, label %bb.bt

bb.br:                                            ; preds = %.body67
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg20BidirectionalMessageEBH_(ptr noalias nofree noundef align 8 dereferenceable(264) %i.l) #23
          to label %.body unwind label %bb.bv

bb.bs:                                            ; preds = %bb.bq
  br i1 %or.cond.not, label %bb.bu, label %.body

bb.bt:                                            ; preds = %bb.bq
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEBH_(ptr noalias nofree noundef align 8 dereferenceable(264) %i.l) #23
          to label %.body unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg19ExpandMacroResponseNtNtNtB13_15legacy_protocol3msg12PanicMessageEEB13_(ptr noalias nofree noundef align 8 dereferenceable(264) %i.l) #23
          to label %.body unwind label %bb.bv

bb.bv:                                            ; preds = %bb.q, %bb.bx, %bb.bw, %bb.bu, %bb.bt, %bb.br, %bb.v, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msg4flat8FlatTreeEEB15_.exit, %.body60, %.body
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.bw:                                            ; preds = %bb.b
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %9) #23
          to label %bb.bx unwind label %bb.bv

.thread:                                          ; preds = %bb.bk, %bb.bl, %bb.ae, %bb.af, %bb.b, %bb.bx
  %.pn5586 = phi { ptr, i32 } [ %i.dr, %bb.bk ], [ %.pn53, %bb.b ], [ %.pn53, %bb.bx ], [ %i.br, %bb.ae ], [ %i.ds, %bb.bl ], [ %i.bs, %bb.af ]
  resume { ptr, i32 } %.pn5586

bb.bx:                                            ; preds = %bb.bw
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef align 8 dereferenceable(24) %5) #23
          to label %.thread unwind label %bb.bv
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCscAsMj0W7j8b_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop() unnamed_addr #4 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call fastcc noundef ptr @_RNvYNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrNtNtNtCshzWfHUSfYae_4core2io5write5Write9write_fmtCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull %i.a)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsJo5RpJFzwk_14proc_macro_api(ptr %i.b)
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #27
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs1_NtNtCs3gqD4ldeioo_8indexmap3set4iterINtB5_4IterNtCsdovh4xi6v3I_4span4SpanENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator9size_hintCsJo5RpJFzwk_14proc_macro_api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5                   ; 2 uses
  store i64 %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgNtB5_20BidirectionalMessageNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !17, !noundef !4 ; 2 uses
  %i.f = icmp ne i64 %i.e, -9223372036854775804
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add i64 %i.e, 9223372036854775805        ; 2 uses
  %i.h = icmp ult i64 %i.g, 4
  %i.i = select i1 %i.h, i64 %i.g, i64 1
  switch i64 %i.i, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.d, align 8
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 7, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 8, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.b, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.a, align 8
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.k, %bb.c ], [ %i.l, %bb.d ], [ %i.n, %bb.e ], [ %i.p, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCshzWfHUSfYae_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsW_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsu_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsw_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !272, !noundef !4 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !272, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !272, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
end_hunk_1
