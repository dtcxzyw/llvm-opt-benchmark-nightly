Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.01?download=true
inline.NumInlined: 4381
inline.NumDeleted: 1899
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtCs8yjYO7b73r2_10serde_json3ser13to_vec_prettyNtNtCs6u1mgJOKDyY_13rust_analyzer6config18InvocationStrategyEBR_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !867
  store ptr %i.c, ptr %i.a, align 8, !noalias !867
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr @2, ptr %i.n, align 8, !noalias !867
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !867
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !867
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !867
  %i.o = trunc nuw i8 %.0.val to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = invoke noundef ptr @_RINvNtCs8yjYO7b73r2_10serde_json3ser18format_escaped_strQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_15PrettyFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 13)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.d
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %bb.j, label %_RNvXs1_NtCs8yjYO7b73r2_10serde_json3serQINtB5_10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variantCs6u1mgJOKDyY_13rust_analyzer.exit.sink.split.i.i, !prof !15

bb.e:                                             ; preds = %bb.c
  %i.q = invoke noundef ptr @_RINvNtCs8yjYO7b73r2_10serde_json3ser18format_escaped_strQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_15PrettyFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 4)
          to label %.noexc3 unwind label %bb.f    ; 2 uses

.noexc3:                                          ; preds = %bb.e
  %.not.i.i1.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i, label %bb.j, label %_RNvXs1_NtCs8yjYO7b73r2_10serde_json3serQINtB5_10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variantCs6u1mgJOKDyY_13rust_analyzer.exit.sink.split.i.i, !prof !15

_RNvXs1_NtCs8yjYO7b73r2_10serde_json3serQINtB5_10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variantCs6u1mgJOKDyY_13rust_analyzer.exit.sink.split.i.i: ; preds = %.noexc3, %.noexc
  %.sink.i.i = phi ptr [ %i.p, %.noexc ], [ %i.q, %.noexc3 ]
  %i.r = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCs8yjYO7b73r2_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sink.i.i)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RNvXs1_NtCs8yjYO7b73r2_10serde_json3serQINtB5_10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variantCs6u1mgJOKDyY_13rust_analyzer.exit.sink.split.i.i, %bb.e, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #32
          to label %common.resume unwind label %bb.l

bb.g:                                             ; preds = %_RNvXs1_NtCs8yjYO7b73r2_10serde_json3serQINtB5_10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variantCs6u1mgJOKDyY_13rust_analyzer.exit.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !867
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.s, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.k

bb.j:                                             ; preds = %.noexc, %.noexc3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !867
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.l:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCs8yjYO7b73r2_10serde_json3ser13to_vec_prettyNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.d = load i64, ptr %i.b, align 8, !range !4, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !6, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.k = icmp samesign ugt i64 %i.g, 127
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !870
  store ptr %i.c, ptr %i.a, align 8, !noalias !870
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr @2, ptr %i.n, align 8, !noalias !870
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !870
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !870
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !870
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.o = invoke noundef ptr @_RINvNtCs8yjYO7b73r2_10serde_json3ser18format_escaped_strQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_15PrettyFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.8.val, i64 noundef %.16.val)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.d, !prof !15

bb.d:                                             ; preds = %.noexc
  %i.p = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCs8yjYO7b73r2_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.o)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #32
          to label %common.resume unwind label %bb.k

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !870
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.j

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !870
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueATReBD_RSBD_NtNtCsbSS6DM8SDEO_5alloc6string6StringEj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

.body.i:                                          ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueATReBD_RSBD_NtNtCsbSS6DM8SDEO_5alloc6string6StringEj26_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(2736) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.1 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.1: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.1 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.1: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.2 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.2: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.1
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.2 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.2: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.3 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.3: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.2
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.3 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.3: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.4 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.4: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.3
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.4 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.4: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.5 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.5: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.4
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.5 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.5: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.6 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.6: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.5
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.6 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.6: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.7 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.7: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.6
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.7 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.7: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.8 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.8: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.7
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.8 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.8: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.9 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.9: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.8
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.9 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.9: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.10 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.10: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.9
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.10 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.10: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.11 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.11: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.10
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.11 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.11: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.12 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.12: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.11
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.12 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.12: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.13 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.13: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.12
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.13 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.13: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.14 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.14: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.13
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.14 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.14: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.15 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.15: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.14
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.15 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.15: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.16 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.16: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.15
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.16 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.16: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.17 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.17: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.16
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.17 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.17: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.17
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.18 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.18: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.17
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.18 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.18: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.18
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.19 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.19: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.18
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.19 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.19: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.19
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.20 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.20: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.19
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.20 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.20: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.20
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.21 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.21: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.20
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.21 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTReBC_RSBC_NtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.21: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.21
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtBG_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEEECs6u1mgJOKDyY_13rust_analyzer:bb.a
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtNtBG_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEEECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtNtBG_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtBG_6string6StringNtNtCsf8NQSppxkmK_14ide_completion6config23AutoImportExclusionTypeEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCsf8NQSppxkmK_14ide_completion6config23AutoImportExclusionTypeEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCsf8NQSppxkmK_14ide_completion6config23AutoImportExclusionTypeEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtNtBG_6string6StringNtNtCsf8NQSppxkmK_14ide_completion6config23AutoImportExclusionTypeEEECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCsf8NQSppxkmK_14ide_completion6config23AutoImportExclusionTypeEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtNtBG_6string6StringNtNtCsf8NQSppxkmK_14ide_completion6config23AutoImportExclusionTypeEEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtBG_6string6StringNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtNtBG_6string6StringNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEEECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtNtBG_6string6StringNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTReB19_RSB19_NtNtBG_6string6StringEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTReBG_RSBG_NtNtB7_6string6StringEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTReBN_RSBN_NtNtB7_6string6StringEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTReB1g_RSB1g_NtNtBG_6string6StringEEECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTReBN_RSBN_NtNtB7_6string6StringEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTReB1g_RSB1g_NtNtBG_6string6StringEEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 136, i64 noundef 8) #36
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 136, i64 noundef 8) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSIBC_eEEECs6u1mgJOKDyY_13rust_analyzer(ptr captures(address) %.0.val, i64 %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSIBy_eEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer.exit4, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %.sroa.0.011.i = phi i64 [ %i.c, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.011.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.011.i, 1        ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9.i = load i64, ptr %i.d, align 8, !alias.scope !981, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %.val9.i, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.val8.i = load ptr, ptr %i.b, align 8, !alias.scope !981, !nonnull !5, !noundef !5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, 0) %.val9.i, i64 noundef 1) #36, !noalias !981
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.f = icmp eq i64 %i.c, %.8.val
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %i.g = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.g, i64 noundef 8) #36
  br label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSIBy_eEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer.exit4

_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSIBy_eEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer.exit4: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEECs6u1mgJOKDyY_13rust_analyzer(ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %cond = icmp eq i64 %.8.val, 0
  br i1 %cond, label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer.exit4, label %.lr.ph

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %.lr.ph
  %i.a = icmp eq i64 %i.c, %.8.val
  br i1 %i.a, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.c, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %.0.val, i64 %.sroa.0.0.i1
  %i.c = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit7.i: ; preds = %.lr.ph3
  %i.d = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.e = icmp eq i64 %i.d, %.8.val
  br i1 %i.e, label %.body, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %i.c, %.8.val
  br i1 %i.g, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.d, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit7.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %.0.val, i64 %.sroa.0.1.i2
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit7.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph3
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

.body:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit7.i, %bb.b
  %i.j = mul nuw nsw i64 %.8.val, 40
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef 8) #36
  resume { ptr, i32 } %i.f

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %i.k = mul nuw nsw i64 %.8.val, 40
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.k, i64 noundef 8) #36
  br label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer.exit4

_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer.exit4: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB23_6string6StringEETNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorB2v_EEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !noundef !5
  switch i64 %i.a, label %bb.f [
    i64 -1, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB1o_6string6StringEETNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorB1Q_EEECs6u1mgJOKDyY_13rust_analyzer.exit
    i64 2, label %bb.b
  ]

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB1o_6string6StringEETNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorB1Q_EEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !range !14, !alias.scope !986, !noundef !5
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB1o_6string6StringEETNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorB1Q_EEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume.i:                                  ; preds = %bb.i, %bb.g, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.j, %bb.i ], [ %i.g, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB1o_6string6StringEETNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorB1Q_EEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.f:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #32
          to label %common.resume.i unwind label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.h
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB1o_6string6StringEETNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorB1Q_EEECs6u1mgJOKDyY_13rust_analyzer.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtB4_6result6ResultINtNtB4_6option6OptionNtCs9p4rgIae0RV_6camino11Utf8PathBufETNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorNtNtCsbSS6DM8SDEO_5alloc6string6StringEEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !noundef !5
  switch i64 %i.a, label %bb.f [
    i64 -1, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtCs9p4rgIae0RV_6camino11Utf8PathBufETNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorNtNtCsbSS6DM8SDEO_5alloc6string6StringEEECs6u1mgJOKDyY_13rust_analyzer.exit
    i64 2, label %bb.b
  ]

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtCs9p4rgIae0RV_6camino11Utf8PathBufETNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorNtNtCsbSS6DM8SDEO_5alloc6string6StringEEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9p4rgIae0RV_6camino11Utf8PathBufEECs6u1mgJOKDyY_13rust_analyzer.exit.sink.split.i, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !range !14, !alias.scope !991, !noundef !5
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtCs9p4rgIae0RV_6camino11Utf8PathBufETNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorNtNtCsbSS6DM8SDEO_5alloc6string6StringEEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9p4rgIae0RV_6camino11Utf8PathBufEECs6u1mgJOKDyY_13rust_analyzer.exit.sink.split.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume.i:                                  ; preds = %bb.i, %bb.g, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.j, %bb.i ], [ %i.g, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #32
          to label %common.resume.i unwind label %bb.k

bb.h:                                             ; preds = %bb.f
end_hunk_1
begin_hunk_2_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace13CargoFeaturesECs6u1mgJOKDyY_13rust_analyzer:bb.a
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace21TargetDirectoryConfigECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !5
  %switch1 = icmp slt i64 %i.a, -9223372036854775806
  br i1 %switch1, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECs6u1mgJOKDyY_13rust_analyzer.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsf8NQSppxkmK_14ide_completion7snippet7SnippetECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val9 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val10 = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  %i.c = icmp eq i64 %.val10, 0
  br i1 %i.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSIBC_eEEECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.val9, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load i64, ptr %i.f, align 8, !alias.scope !1472, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %.val9.i.i, 0
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %.val8.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1472, !nonnull !5, !noundef !5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef range(i64 1, 0) %.val9.i.i, i64 noundef 1) #36, !noalias !1472
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val10
  br i1 %i.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %.lr.ph.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.i = shl nuw nsw i64 %.val10, 4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef range(i64 1, 0) %i.i, i64 noundef 8) #36
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSIBC_eEEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSIBC_eEEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val6 = load i64, ptr %i.k, align 8, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  %i.l = icmp eq i64 %.val6, 0
  br i1 %i.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSIBC_eEEECs6u1mgJOKDyY_13rust_analyzer.exit25, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSIBC_eEEECs6u1mgJOKDyY_13rust_analyzer.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i23
  %.sroa.0.011.i.i20 = phi i64 [ %i.n, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i23 ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSIBC_eEEECs6u1mgJOKDyY_13rust_analyzer.exit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.011.i.i20 ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.011.i.i20, 1    ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %.val9.i.i21 = load i64, ptr %i.o, align 8, !alias.scope !1473, !noundef !5 ; 2 uses
  %i.p = icmp eq i64 %.val9.i.i21, 0
  br i1 %i.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i23, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i19
  %.val8.i.i22 = load ptr, ptr %i.m, align 8, !alias.scope !1473, !nonnull !5, !noundef !5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i22, i64 noundef range(i64 1, 0) %.val9.i.i21, i64 noundef 1) #36, !noalias !1473
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i23

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i23: ; preds = %bb.c, %.lr.ph.i.i19
  %i.q = icmp eq i64 %i.n, %.val6
  br i1 %i.q, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i24, label %.lr.ph.i.i19

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i24: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i23
  %i.r = shl nuw nsw i64 %.val6, 4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.r, i64 noundef 8) #36
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSIBC_eEEECs6u1mgJOKDyY_13rust_analyzer.exit25

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSIBC_eEEECs6u1mgJOKDyY_13rust_analyzer.exit25: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs6u1mgJOKDyY_13rust_analyzer.exit.i24, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSIBC_eEEECs6u1mgJOKDyY_13rust_analyzer.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val11 = load ptr, ptr %i.s, align 8, !noundef !5 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val12 = load i64, ptr %i.t, align 8           ; 2 uses
  %i.u = icmp eq ptr %.val11, null
  %i.v = icmp eq i64 %.val12, 0
  %or.cond.i26 = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.i26, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECs6u1mgJOKDyY_13rust_analyzer.exit27, label %bb.d

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSIBC_eEEECs6u1mgJOKDyY_13rust_analyzer.exit25
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11, i64 noundef range(i64 1, 0) %.val12, i64 noundef 1) #36
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECs6u1mgJOKDyY_13rust_analyzer.exit27

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECs6u1mgJOKDyY_13rust_analyzer.exit27: ; preds = %bb.d, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSIBC_eEEECs6u1mgJOKDyY_13rust_analyzer.exit25
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECs6u1mgJOKDyY_13rust_analyzer.exit27
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECs6u1mgJOKDyY_13rust_analyzer.exit27
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.g

.body:                                            ; preds = %bb.g, %bb.e
  %.pn4 = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.aa, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val17 = load ptr, ptr %i.y, align 8, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val18 = load i64, ptr %i.z, align 8, !noundef !5
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEECs6u1mgJOKDyY_13rust_analyzer(ptr nonnull %.val17, i64 %.val18) #32
          to label %common.resume unwind label %bb.j

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val15 = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val16 = load i64, ptr %i.ac, align 8, !noundef !5 ; 6 uses
  %cond = icmp eq i64 %.val16, 0
  br i1 %cond, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %.lr.ph
  %i.ad = icmp eq i64 %i.af, %.val16
  br i1 %i.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %.sroa.0.0.i.i29 = phi i64 [ %i.af, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit.i.i ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %.val15, i64 %.sroa.0.0.i.i29
  %i.af = add nuw nsw i64 %.sroa.0.0.i.i29, 1     ; 4 uses
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ae)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit.i.i unwind label %bb.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit7.i.i: ; preds = %.lr.ph31
  %i.ag = add nuw nsw i64 %.sroa.0.1.i.i30, 1     ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %.val16
  br i1 %i.ah, label %.body.i, label %.lr.ph31

bb.h:                                             ; preds = %.lr.ph
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = icmp eq i64 %i.af, %.val16
  br i1 %i.aj, label %.body.i, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit7.i.i
  %.sroa.0.1.i.i30 = phi i64 [ %i.ag, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit7.i.i ], [ %i.af, %bb.h ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %.val15, i64 %.sroa.0.1.i.i30
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ak)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit7.i.i unwind label %bb.i

bb.i:                                             ; preds = %.lr.ph31
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %.body.i ], [ %.pn4, %.body ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit7.i.i, %bb.h
  %i.am = mul nuw nsw i64 %.val16, 40
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15, i64 noundef range(i64 1, 0) %i.am, i64 noundef 8) #36
  br label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.an = mul nuw nsw i64 %.val16, 40
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15, i64 noundef range(i64 1, 0) %i.an, i64 noundef 8) #36
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs6u1mgJOKDyY_13rust_analyzer.exit.i
  ret void

bb.j:                                             ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsiS54oC2UhYT_4toml5value5ValueECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.b = load i8, ptr %i.a, align 2, !range !21, !noundef !5 ; 2 uses
  %i.c = add nsw i8 %i.b, -2
  %i.d = icmp samesign ugt i8 %i.b, 1
  %narrow = select i1 %i.d, i8 %i.c, i8 6
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.f
    i8 2, label %bb.f
    i8 3, label %bb.f
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsiS54oC2UhYT_4toml5value5ValueEECs6u1mgJOKDyY_13rust_analyzer.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.b, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsiS54oC2UhYT_4toml5value5ValueENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsiS54oC2UhYT_4toml5value5ValueEECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsiS54oC2UhYT_4toml5value5ValueENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsiS54oC2UhYT_4toml5value5ValueEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.g
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsiS54oC2UhYT_4toml5value5ValueENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures34ClientSemanticTokensRequestOptionsECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !alias.scope !1476, !noundef !5
  %switch.i = icmp ugt i64 %i.a, -3
  br i1 %switch.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors39ClientSemanticTokensRequestOptionsRangeEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCs3gqD4ldeioo_8indexmap6BucketNtNtBG_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) #32
          to label %common.resume.i.i.i.i.i unwind label %bb.f

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i: ; preds = %bb.b
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCs3gqD4ldeioo_8indexmap6BucketNtNtB7_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8yjYO7b73r2_10serde_json3map3MapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtBG_5value5ValueEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtB7_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %common.resume.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume.i.i.i.i.i:                          ; preds = %bb.d, %bb.c
  %common.resume.op.i.i.i.i.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8yjYO7b73r2_10serde_json3map3MapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtBG_5value5ValueEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtB7_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors39ClientSemanticTokensRequestOptionsRangeEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors39ClientSemanticTokensRequestOptionsRangeEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8yjYO7b73r2_10serde_json3map3MapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtBG_5value5ValueEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilities18ClientCapabilitiesEBH_(ptr noalias nofree noundef align 8 dereferenceable(1152) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 936
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures27WorkspaceClientCapabilitiesEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(136) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures30TextDocumentClientCapabilitiesEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(1152) %0) #32
          to label %bb.d unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures30TextDocumentClientCapabilitiesEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(1152) %0)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 760
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures25GeneralClientCapabilitiesEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(176) %i.c) #32
          to label %bb.g unwind label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 760
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures25GeneralClientCapabilitiesEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(176) %i.e)
          to label %bb.j unwind label %bb.i

end_hunk_2
begin_hunk_3_@_RNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config22apply_change_with_sink:bb.a
  %i.xe = icmp ult i64 %i.xd, 3
  br i1 %i.xe, label %bb.kw, label %bb.lb

bb.kw:                                            ; preds = %bb.kv
  %i.xf = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB7_6Config22apply_change_with_sinks_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.xf, label %bb.kx [
    i8 0, label %bb.lb
    i8 1, label %bb.ky
    i8 2, label %bb.ky
  ], !prof !9

bb.kx:                                            ; preds = %bb.kw
  %i.xg = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB7_6Config22apply_change_with_sinks_10___CALLSITE)
          to label %bb.kz unwind label %bb.ku     ; 2 uses

bb.ky:                                            ; preds = %bb.kw, %bb.kw, %bb.kz
  %.sroa.029.0 = phi i8 [ %i.xg, %bb.kz ], [ %i.xf, %bb.kw ], [ %i.xf, %bb.kw ]
  %i.xh = load ptr, ptr @_RNvNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB7_6Config22apply_change_with_sinks_10___CALLSITE, align 8, !nonnull !5, !align !10, !noundef !5
  %i.xi = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.xh, i8 noundef %.sroa.029.0)
          to label %bb.la unwind label %bb.ku

bb.kz:                                            ; preds = %bb.kx
  %i.xj = icmp eq i8 %i.xg, 0
  br i1 %i.xj, label %bb.lb, label %bb.ky

bb.la:                                            ; preds = %bb.ky
  br i1 %i.xi, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.kz, %bb.kw, %bb.kv, %_RNCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB7_6Config22apply_change_with_sinks4_0B9_.exit, %bb.la
  %i.xk = load i64, ptr %i.fc, align 8, !range !20, !noundef !5 ; 2 uses
  %i.xl = xor i64 %i.xk, -9223372036854775808
  %i.xm = icmp slt i64 %i.xk, 0
  %i.xn = select i1 %i.xm, i64 %i.xl, i64 5
  switch i64 %i.xn, label %bb.le [
    i64 0, label %bb.lf
    i64 5, label %bb.ld
  ]

bb.lc:                                            ; preds = %bb.la
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  %i.xo = load ptr, ptr @_RNvNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB7_6Config22apply_change_with_sinks_10___CALLSITE, align 8, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey)
  store ptr %i.fc, ptr %i.ey, align 8
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr @_RNvXs_NtCs8yjYO7b73r2_10serde_json5valueNtB4_5ValueNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.4140.0..sroa_idx, align 8
  store ptr @342, ptr %i.ez, align 8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr %i.ey, ptr %i.xq, align 8
  store ptr %i.ez, ptr %i.fa, align 8
  %i.xr = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store ptr @178, ptr %i.xr, align 8
  store i64 1, ptr %i.fb, align 8
  %.sroa.031.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.fa, ptr %.sroa.031.sroa.4.0..sroa_idx, align 8
  %.sroa.031.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i64 1, ptr %.sroa.031.sroa.5.0..sroa_idx, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store ptr %i.xp, ptr %.sroa.432.0..sroa_idx, align 8
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.xo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fb)
          to label %_RNCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB7_6Config22apply_change_with_sinks4_0B9_.exit unwind label %bb.ku

_RNCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB7_6Config22apply_change_with_sinks4_0B9_.exit: ; preds = %bb.lc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa)
  br label %bb.lb

bb.ld:                                            ; preds = %bb.lb
  %i.xs = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  %.val252 = load i64, ptr %i.xs, align 8, !noundef !5
  %i.xt = icmp eq i64 %.val252, 0
  br i1 %i.xt, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.lb, %bb.ld
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  store i64 0, ptr %i.eu, align 8
  %i.xu = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.xu, align 8
  %i.xv = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i64 0, ptr %i.xv, align 8
  invoke fastcc void @_RINvNtCs6u1mgJOKDyY_13rust_analyzer6config14get_field_jsonINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9p4rgIae0RV_6camino11Utf8PathBufEEB4_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ev, ptr noalias nofree noundef align 8 dereferenceable(72) %i.fc, ptr noalias nofree noundef align 8 dereferenceable(24) %i.eu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @343, ptr noalias nofree noundef readonly captures(address, read_provenance) null)
          to label %bb.lh unwind label %bb.lg

bb.lf:                                            ; preds = %bb.ld, %bb.lb
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(72) %i.fc)
          to label %bb.md unwind label %bb.jb

bb.lg:                                            ; preds = %bb.le, %bb.lh
  %i.xw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtBG_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.eu) #32
          to label %.thread395 unwind label %bb.km

bb.lh:                                            ; preds = %bb.le
  %i.xx = load i64, ptr %i.ev, align 8, !range !14, !noundef !5 ; 2 uses
  %.not208 = icmp eq i64 %i.xx, -1                ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.xz = load ptr, ptr %i.xy, align 8, !nonnull !5
  %i.ya = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.yb = load i64, ptr %i.ya, align 8
  %.sroa.0194.0 = select i1 %.not208, i64 0, i64 %i.yb ; 2 uses
  %.sroa.0196.0 = select i1 %.not208, i64 0, i64 %i.xx
  %.sroa.0197.0 = select i1 %.not208, ptr inttoptr (i64 8 to ptr), ptr %i.xz ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  %i.yc = icmp ult i64 %.sroa.0194.0, 384307168202282326
  call void @llvm.assume(i1 %i.yc)
  %i.yd = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0197.0, i64 %.sroa.0194.0
  store ptr %.sroa.0197.0, ptr %i.ew, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %.sroa.0197.0, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store i64 %.sroa.0196.0, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  store ptr %i.yd, ptr %.sroa.637.0..sroa_idx, align 8
  invoke void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtCs9p4rgIae0RV_6camino11Utf8PathBufENvMs9_Cs9R0CJ7nmiec_5pathsNtB32_10AbsPathBuf6assertEB3m_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ex, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ew)
          to label %bb.li unwind label %bb.lg

bb.li:                                            ; preds = %bb.lh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %bb.lk unwind label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.ye = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %.thread399 unwind label %bb.ll

bb.lk:                                            ; preds = %bb.li
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtBG_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEEECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.lm

bb.ll:                                            ; preds = %bb.lj
  %i.yf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

.thread465:                                       ; preds = %bb.lz, %bb.mc
  %eh.lpad-body287 = phi { ptr, i32 } [ %i.zv, %bb.mc ], [ %i.zt, %bb.lz ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vb, ptr noundef nonnull align 8 dereferenceable(24) %i.ex, i64 24, i1 false)
  br label %.body

bb.lm:                                            ; preds = %bb.lk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtBG_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEEECs6u1mgJOKDyY_13rust_analyzer.exit
  %i.yg = landingpad { ptr, i32 }
          cleanup
  br label %.thread399

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtBG_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.lk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  invoke void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer6config15patch_old_style31patch_json_for_outdated_configs(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.fc)
          to label %bb.ln unwind label %bb.lm

bb.ln:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtBG_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEEECs6u1mgJOKDyY_13rust_analyzer.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  store i64 0, ptr %i.et, align 8
  %i.yh = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.yh, align 8
  %i.yi = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 4 uses
  store i64 0, ptr %i.yi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.er, ptr noundef nonnull align 8 dereferenceable(72) %i.fc, i64 72, i1 false)
  invoke fastcc void @_RNvMsb_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_15FullConfigInput9from_json(ptr noalias nofree noundef align 8 captures(none) dereferenceable(1584) %i.es, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.er, ptr noalias nofree noundef align 8 dereferenceable(24) %i.et)
          to label %bb.lp unwind label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.yj = landingpad { ptr, i32 }
          cleanup
  br label %bb.mv

bb.lp:                                            ; preds = %bb.ln
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  %i.yk = getelementptr inbounds nuw i8, ptr %i.fs, i64 3312 ; 2 uses
  %i.yl = load ptr, ptr %i.yk, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.fs, i64 3320 ; 4 uses
  %i.yn = load i64, ptr %i.ym, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.ym, align 8
  %i.yo = icmp eq i64 %i.yn, 0
  br i1 %i.yo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsf8NQSppxkmK_14ide_completion7snippet7SnippetECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph675

bb.lq:                                            ; preds = %.lr.ph675
  %i.yp = icmp eq i64 %i.yr, %i.yn
  br i1 %i.yp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsf8NQSppxkmK_14ide_completion7snippet7SnippetECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph675

.lr.ph675:                                        ; preds = %bb.lp, %bb.lq
  %.sroa.0.0.i673 = phi i64 [ %i.yr, %bb.lq ], [ 0, %bb.lp ] ; 2 uses
  %i.yq = getelementptr inbounds nuw [96 x i8], ptr %i.yl, i64 %.sroa.0.0.i673
  %i.yr = add nuw nsw i64 %.sroa.0.0.i673, 1      ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsf8NQSppxkmK_14ide_completion7snippet7SnippetECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.yq)
          to label %bb.lq unwind label %bb.ls

bb.lr:                                            ; preds = %.lr.ph678
  %i.ys = add nuw nsw i64 %.sroa.0.1.i676, 1      ; 2 uses
  %i.yt = icmp eq i64 %i.ys, %i.yn
  br i1 %i.yt, label %.body282, label %.lr.ph678

bb.ls:                                            ; preds = %.lr.ph675
  %i.yu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yv = icmp eq i64 %i.yr, %i.yn
  br i1 %i.yv, label %.body282, label %.lr.ph678

.lr.ph678:                                        ; preds = %bb.ls, %bb.lr
  %.sroa.0.1.i676 = phi i64 [ %i.ys, %bb.lr ], [ %i.yr, %bb.ls ] ; 2 uses
  %i.yw = getelementptr inbounds nuw [96 x i8], ptr %i.yl, i64 %.sroa.0.1.i676
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsf8NQSppxkmK_14ide_completion7snippet7SnippetECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.yw) #32
          to label %bb.lr unwind label %bb.lt

bb.lt:                                            ; preds = %.lr.ph678
  %i.yx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.lu:                                            ; preds = %bb.ml, %switch.lookup
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %.body282

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsf8NQSppxkmK_14ide_completion7snippet7SnippetECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.lq, %bb.lp
  %i.yz = getelementptr inbounds nuw i8, ptr %i.es, i64 144
  %i.za = load i64, ptr %i.yz, align 8, !range !14, !noundef !5
  %.not209 = icmp eq i64 %i.za, -1                ; 2 uses
  %.sroa.gep374 = getelementptr inbounds nuw i8, ptr %i.st, i64 136
  %.sroa.gep375 = getelementptr inbounds nuw i8, ptr %i.es, i64 152
  %.sroa.039.0.sroa.sel376 = select i1 %.not209, ptr %.sroa.gep374, ptr %.sroa.gep375
  %i.zb = load ptr, ptr %.sroa.039.0.sroa.sel376, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.st, i64 144
  %.sroa.gep373 = getelementptr inbounds nuw i8, ptr %i.es, i64 160
  %.sroa.039.0.sroa.sel = select i1 %.not209, ptr %.sroa.gep, ptr %.sroa.gep373
  %i.zc = load i64, ptr %.sroa.039.0.sroa.sel, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.zc, 160
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zb, i64 %.idx
  %i.ze = icmp eq i64 %i.zc, 0
  br i1 %i.ze, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsf8NQSppxkmK_14ide_completion7snippet7SnippetECs6u1mgJOKDyY_13rust_analyzer.exit
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.zf = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  br label %bb.lv

bb.lv:                                            ; preds = %.lr.ph, %.backedge
  %.sroa.0377.0548 = phi ptr [ %i.zb, %.lr.ph ], [ %i.zg, %.backedge ] ; 14 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.0377.0548, i64 160 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  store ptr %.sroa.0377.0548, ptr %i.eq, align 8, !captures !38
  %i.zh = getelementptr inbounds nuw i8, ptr %.sroa.0377.0548, i64 40
  %i.zi = load i64, ptr %i.zh, align 8, !noundef !5 ; 3 uses
  %i.zj = icmp ult i64 %i.zi, 384307168202282326
  call void @llvm.assume(i1 %i.zj)
  %i.zk = icmp eq i64 %i.zi, 0
  br i1 %i.zk, label %bb.mf, label %switch.lookup

._crit_edge:                                      ; preds = %.backedge, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsf8NQSppxkmK_14ide_completion7snippet7SnippetECs6u1mgJOKDyY_13rust_analyzer.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1584) %i.ej, ptr noundef nonnull align 8 dereferenceable(1584) %i.es, i64 1584, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  %i.zl = load ptr, ptr %i.yh, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.zm = load i64, ptr %i.et, align 8, !range !11, !noundef !5
  %i.zn = load i64, ptr %i.yi, align 8, !noundef !5 ; 2 uses
  %i.zo = icmp ult i64 %i.zn, 288230376151711744
  call void @llvm.assume(i1 %i.zo)
  %i.zp = getelementptr inbounds nuw [32 x i8], ptr %i.zl, i64 %i.zn
  store ptr %i.zl, ptr %i.eg, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.zl, ptr %.sroa.453.0..sroa_idx, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i64 %i.zm, ptr %.sroa.554.0..sroa_idx, align 8
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store ptr %i.zp, ptr %.sroa.655.0..sroa_idx, align 8
  invoke void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB17_INtNtB4_9into_iter8IntoIterTNtNtB6_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB3C_6Config22apply_change_with_sinks0_0ENvMs4_NtCs50pZefIA5Ye_8triomphe3arcINtB50_3ArcNtB3C_16ConfigErrorInnerE3newEB5t_EB3E_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.eh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.eg)
          to label %bb.lx unwind label %bb.me

bb.lw:                                            ; preds = %bb.lx
  %i.zq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1584) %i.fs, ptr noundef nonnull align 8 dereferenceable(1584) %i.es, i64 1584, i1 false)
  %i.zr = getelementptr inbounds nuw i8, ptr %i.fs, i64 1584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zr, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false)
  br label %.thread399

bb.lx:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs6u1mgJOKDyY_13rust_analyzer6config15FullConfigInputNtBE_12ConfigErrorsEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1608) %i.fs)
          to label %bb.ly unwind label %bb.lw

bb.ly:                                            ; preds = %bb.lx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1584) %i.fs, ptr noundef nonnull align 8 dereferenceable(1584) %i.es, i64 1584, i1 false)
  %i.zs = getelementptr inbounds nuw i8, ptr %i.fs, i64 1584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zs, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.vb)
          to label %bb.ma unwind label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.zt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.vb)
          to label %.thread465 unwind label %bb.mb

bb.ma:                                            ; preds = %bb.ly
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.vb)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.mc

bb.mb:                                            ; preds = %bb.lz
  %i.zu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.mc:                                            ; preds = %bb.ma
  %i.zv = landingpad { ptr, i32 }
          cleanup
  br label %.thread465

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.ma
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vb, ptr noundef nonnull align 8 dereferenceable(24) %i.ex, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  br label %bb.md

bb.md:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  br label %bb.ks

bb.me:                                            ; preds = %._crit_edge
  %i.zw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer6config15FullConfigInputEBF_(ptr noalias nofree noundef align 8 dereferenceable(1584) %i.ej) #32
          to label %.thread399 unwind label %bb.km

switch.lookup:                                    ; preds = %bb.mf, %bb.lv
  %i.zx = getelementptr inbounds nuw i8, ptr %.sroa.0377.0548, i64 144
  %i.zy = load i8, ptr %i.zx, align 8, !range !25, !noundef !5
  %i.zz = shl nuw nsw i8 %i.zy, 3
  %switch.shiftamt = zext nneg i8 %i.zz to i24
  %switch.downshift = lshr i24 131073, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep)
  %i.aaa = getelementptr inbounds nuw i8, ptr %.sroa.0377.0548, i64 32
  %i.aab = load ptr, ptr %i.aaa, align 8, !nonnull !5, !noundef !5
  %i.aac = getelementptr inbounds nuw i8, ptr %.sroa.0377.0548, i64 56
  %i.aad = load ptr, ptr %i.aac, align 8, !nonnull !5, !noundef !5
  %i.aae = getelementptr inbounds nuw i8, ptr %.sroa.0377.0548, i64 64
  %i.aaf = load i64, ptr %i.aae, align 8, !noundef !5
  %i.aag = getelementptr inbounds nuw i8, ptr %.sroa.0377.0548, i64 80
  %i.aah = load ptr, ptr %i.aag, align 8, !nonnull !5, !noundef !5
  %i.aai = getelementptr inbounds nuw i8, ptr %.sroa.0377.0548, i64 88
  %i.aaj = load i64, ptr %i.aai, align 8, !noundef !5
  %i.aak = getelementptr inbounds nuw i8, ptr %.sroa.0377.0548, i64 120 ; 2 uses
  %i.aal = load i64, ptr %i.aak, align 8, !range !14, !noundef !5
  %.not213 = icmp eq i64 %i.aal, -1
  %.sroa.045.0 = select i1 %.not213, ptr %.sroa.0377.0548, ptr %i.aak ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 8
  %i.aan = load ptr, ptr %i.aam, align 8, !nonnull !5, !noundef !5
  %i.aao = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 16
  %i.aap = load i64, ptr %i.aao, align 8, !noundef !5
  %i.aaq = getelementptr inbounds nuw i8, ptr %.sroa.0377.0548, i64 104
  %i.aar = load ptr, ptr %i.aaq, align 8, !nonnull !5, !noundef !5
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.0377.0548, i64 112
  %i.aat = load i64, ptr %i.aas, align 8, !noundef !5
  invoke void @_RNvMNtCsf8NQSppxkmK_14ide_completion7snippetNtB2_7Snippet3new(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ep, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.aab, i64 noundef %i.zi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.aad, i64 noundef %i.aaf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.aah, i64 noundef %i.aaj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aan, i64 noundef %i.aap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.aar, i64 noundef %i.aat, i8 noundef %switch.masked)
          to label %bb.mg unwind label %bb.lu

bb.mf:                                            ; preds = %bb.lv
  %i.aau = getelementptr inbounds nuw i8, ptr %.sroa.0377.0548, i64 64
  %i.aav = load i64, ptr %i.aau, align 8, !noundef !5 ; 2 uses
  %i.aaw = icmp ult i64 %i.aav, 384307168202282326
  call void @llvm.assume(i1 %i.aaw)
  %i.aax = icmp eq i64 %i.aav, 0
  br i1 %i.aax, label %.backedge, label %switch.lookup

.backedge:                                        ; preds = %bb.mf, %bb.mt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  %i.aay = icmp eq ptr %i.zg, %i.zd
  br i1 %i.aay, label %._crit_edge, label %bb.lv

bb.mg:                                            ; preds = %switch.lookup
  %i.aaz = load i64, ptr %i.ep, align 8, !range !14, !noundef !5
  %.not214 = icmp eq i64 %i.aaz, -1
  br i1 %.not214, label %bb.ml, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.eo, ptr noundef nonnull align 8 dereferenceable(96) %i.ep, i64 96, i1 false)
  %i.aba = load i64, ptr %i.ym, align 8, !alias.scope !2321, !noundef !5 ; 3 uses
  %i.abb = load i64, ptr %i.uu, align 8, !range !11, !alias.scope !2321, !noundef !5
end_hunk_3
