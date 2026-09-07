Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_build_config-c843d7c81fc7bf05.pyo3_build_config.db2c6f4b3410c5b0-cgu.0?download=true
inline.NumInlined: 186
inline.NumDeleted: 44
begin_hunk_0_@_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13cargo_env_var0B5_:bb.a
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_16find_interpreter0B5_(ptr nofree readnone captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [200 x i8], align 8               ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  call void @_RINvMsi_NtCsG258MDvU3F_3std7processNtB6_7Command3newRRReECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([200 x i8]) align 8 %i.b, ptr align 8 %1)
  %i.d = invoke align 8 ptr @_RINvMsi_NtCsG258MDvU3F_3std7processNtB6_7Command3argReECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.b, ptr nonnull @194, i64 9)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.t, %bb.p, %bb.c
  %.pn3 = phi { ptr, i32 } [ %i.e, %bb.c ], [ %.pn, %bb.p ], [ %.pn, %bb.t ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std7process7CommandECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.b) #16
          to label %bb.v unwind label %bb.s

bb.c:                                             ; preds = %.thread, %bb.d, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvMsi_NtCsG258MDvU3F_3std7processNtB5_7Command6output(ptr nonnull sret([56 x i8]) align 8 %i.c, ptr align 8 %i.d)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.f = load i64, ptr %i.c, align 8
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %i.h = invoke { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a)
          to label %bb.h unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %bb.h, %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std7process6OutputECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a) #16
          to label %bb.p unwind label %bb.s

bb.h:                                             ; preds = %bb.f
  %i.j = extractvalue { ptr, i64 } %i.h, 0
  %i.k = extractvalue { ptr, i64 } %i.h, 1
  %i.l = invoke zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCs5GPH1eSwN50_14target_lexicon(ptr %i.j, i64 %i.k, ptr nonnull @195, i64 8)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  br i1 %i.l, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.n = invoke { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.m)
          to label %bb.k unwind label %bb.g       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  %i.q = invoke zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCs5GPH1eSwN50_14target_lexicon(ptr %i.o, i64 %i.p, ptr nonnull @195, i64 8)
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.k
  br i1 %i.q, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = invoke { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a)
          to label %bb.n unwind label %bb.g       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.s = extractvalue { ptr, i64 } %i.r, 0
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  %i.u = invoke zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCs5GPH1eSwN50_14target_lexicon(ptr %i.s, i64 %i.t, ptr nonnull @196, i64 9)
          to label %bb.o unwind label %bb.g

bb.o:                                             ; preds = %bb.n, %bb.i, %bb.l
  %.sroa.0.0 = phi i1 [ true, %bb.i ], [ true, %bb.l ], [ %i.u, %bb.n ] ; 2 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std7process6OutputECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %bb.q, %bb.g
  %.pn = phi { ptr, i32 } [ %i.w, %bb.q ], [ %i.i, %bb.g ] ; 2 uses
  %i.v = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.v, -1
  br i1 %.not, label %bb.t, label %bb.b

bb.q:                                             ; preds = %bb.o
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  %.pr = load i64, ptr %i.c, align 8
  %i.x = icmp eq i64 %.pr, -1
  br i1 %i.x, label %.thread, label %bb.u

bb.s:                                             ; preds = %bb.t, %bb.g, %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.t:                                             ; preds = %bb.p
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std7process6OutputNtNtNtB4_2io5error5ErrorEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.c) #16
          to label %bb.b unwind label %bb.s

.thread:                                          ; preds = %bb.e, %bb.r
  %.sroa.0.17 = phi i1 [ %.sroa.0.0, %bb.r ], [ false, %bb.e ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std7process6OutputNtNtNtB4_2io5error5ErrorEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.c)
          to label %bb.u unwind label %bb.c

bb.u:                                             ; preds = %.thread, %bb.r
  %.sroa.0.16 = phi i1 [ %.sroa.0.17, %.thread ], [ %.sroa.0.0, %bb.r ]
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std7process7CommandECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.b)
  ret i1 %.sroa.0.16

bb.v:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn3
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_16find_interpreters_0B5_(ptr sret([40 x i8]) align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsiOEEQt9hBE2_17pyo3_build_config6errors5ErrorE4intoBP_(ptr sret([40 x i8]) align 8 %0, ptr nonnull @197, i64 31, ptr nonnull align 8 @198) #15
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_16get_abi3_version0B5_(ptr nofree readnone captures(none) %0, ptr %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.g, align 8
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayRhECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.g) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.h = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj19_Kj1_ECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull @199, ptr nonnull align 8 %i.c) #15 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  call void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr %i.i, ptr %i.j) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.k = invoke { ptr, i64 } @_RNvXsx_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.e)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.p, %bb.f ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5GPH1eSwN50_14target_lexicon(ptr nonnull align 8 %i.e) #16
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %.noexc, %bb.d, %bb.g, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.m = extractvalue { ptr, i64 } %i.k, 0
  %i.n = extractvalue { ptr, i64 } %i.k, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvNtCsG258MDvU3F_3std3env6var_osReECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.m, i64 %i.n)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.d
  invoke void @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE3mapNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13cargo_env_var0EB2c_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.a) #15
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = invoke zeroext i1 @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringE7is_someCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.f)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.f) #16
          to label %bb.b unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.f)
          to label %bb.h unwind label %bb.c

bb.h:                                             ; preds = %bb.g
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5GPH1eSwN50_14target_lexicon(ptr nonnull align 8 %i.e)
  ret i1 %i.o

bb.i:                                             ; preds = %bb.f, %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.j:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i24 769, -64766) i24 @_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_16get_abi3_versions_0B5_(i8 %0) unnamed_addr #2 {
bb.a:
  %.sroa.3.0.insert.ext = zext i8 %0 to i24
  %.sroa.3.0.insert.shift = shl nuw i24 %.sroa.3.0.insert.ext, 16
  %.sroa.01.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, 769
  ret i24 %.sroa.01.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_17get_abi3t_version0B5_(ptr nofree readnone captures(none) %0, ptr %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.g, align 8
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayRhECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.g) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.h = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj1a_Kj1_ECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull @200, ptr nonnull align 8 %i.c) #15 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  call void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr %i.i, ptr %i.j) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.k = invoke { ptr, i64 } @_RNvXsx_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.e)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.p, %bb.f ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5GPH1eSwN50_14target_lexicon(ptr nonnull align 8 %i.e) #16
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %.noexc, %bb.d, %bb.g, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.m = extractvalue { ptr, i64 } %i.k, 0
  %i.n = extractvalue { ptr, i64 } %i.k, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvNtCsG258MDvU3F_3std3env6var_osReECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.m, i64 %i.n)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.d
  invoke void @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE3mapNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13cargo_env_var0EB2c_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.a) #15
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = invoke zeroext i1 @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringE7is_someCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.f)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.f) #16
          to label %bb.b unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.f)
          to label %bb.h unwind label %bb.c

bb.h:                                             ; preds = %bb.g
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5GPH1eSwN50_14target_lexicon(ptr nonnull align 8 %i.e)
  ret i1 %i.o

bb.i:                                             ; preds = %bb.f, %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.j:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i24 769, -64766) i24 @_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_17get_abi3t_versions_0B5_(i8 %0) unnamed_addr #2 {
bb.a:
  %.sroa.3.0.insert.ext = zext i8 %0 to i24
  %.sroa.3.0.insert.shift = shl nuw i24 %.sroa.3.0.insert.ext, 16
  %.sroa.01.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, 769
  ret i24 %.sroa.01.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_19parse_script_output0B5_(ptr sret([48 x i8]) align 8 %0, ptr nofree readnone captures(none) %1, ptr %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = alloca [80 x i8], align 8                ; 3 uses
  call void @_RINvMNtCskKLDkoKarTP_4core3stre6splitncECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([80 x i8]) align 8 %i.d, ptr %2, i64 %3, i64 2, i32 32) #15
  %i.e = call { ptr, i64 } @_RNvXs1i_NtNtCskKLDkoKarTP_4core3str4iterINtB6_6SplitNcENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.d) #15 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %i.h = call { ptr, i64 } @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionReENtNtNtB7_3ops9try_trait3Try6branchCsiOEEQt9hBE2_17pyo3_build_config(ptr %i.f, i64 %i.g) #15 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsK_NtCskKLDkoKarTP_4core6optionINtB5_6OptionTNtNtCsexYYUdYSQU6_5alloc6string6StringBL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCsiOEEQt9hBE2_17pyo3_build_config(ptr sret([48 x i8]) align 8 %0) #15
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, i64 } %i.h, 1
  call void @_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsexYYUdYSQU6_5alloc6string6StringE4intoCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull %i.i, i64 %i.k, ptr nonnull align 8 @201) #15
  %i.l = invoke { ptr, i64 } @_RNvXs1i_NtNtCskKLDkoKarTP_4core3str4iterINtB6_6SplitNcENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.d)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5GPH1eSwN50_14target_lexicon(ptr nonnull align 8 %i.b) #16
          to label %bb.m unwind label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.n = extractvalue { ptr, i64 } %i.l, 0
  %i.o = extractvalue { ptr, i64 } %i.l, 1
  %i.p = invoke { ptr, i64 } @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionReENtNtNtB7_3ops9try_trait3Try6branchCsiOEEQt9hBE2_17pyo3_build_config(ptr %i.n, i64 %i.o)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsK_NtCskKLDkoKarTP_4core6optionINtB5_6OptionTNtNtCsexYYUdYSQU6_5alloc6string6StringBL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCsiOEEQt9hBE2_17pyo3_build_config(ptr sret([48 x i8]) align 8 %0)
          to label %bb.k unwind label %bb.d

bb.h:                                             ; preds = %bb.f
  %i.s = extractvalue { ptr, i64 } %i.p, 1
  invoke void @_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsexYYUdYSQU6_5alloc6string6StringE4intoCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull %i.q, i64 %i.s, ptr nonnull align 8 @202)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i, %bb.b
  ret void

bb.k:                                             ; preds = %bb.g
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5GPH1eSwN50_14target_lexicon(ptr nonnull align 8 %i.b)
  br label %bb.j

bb.l:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.m:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.m
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i24 1, -254) i24 @_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_21applicable_stable_abis0_0B5_(ptr nofree readonly align 8 captures(none) %0, i24 %1) unnamed_addr #3 {
bb.a:
  %i.a = trunc i24 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.33.0.extract.shift.i = lshr i24 %1, 16
  %.sroa.33.0.extract.trunc.i = trunc nuw i24 %.sroa.33.0.extract.shift.i to i8
  %.sroa.22.0.extract.shift.i = lshr i24 %1, 8
  %.sroa.22.0.extract.trunc.i = trunc i24 %.sroa.22.0.extract.shift.i to i8
  br label %_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_21applicable_stable_abi0B5_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.e = load i8, ptr %i.d, align 1
  br label %_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_21applicable_stable_abi0B5_.exit

_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_21applicable_stable_abi0B5_.exit: ; preds = %bb.b, %bb.c
  %.sroa.04.0.i = phi i8 [ %.sroa.22.0.extract.trunc.i, %bb.b ], [ %i.c, %bb.c ]
  %.sroa.35.0.i = phi i8 [ %.sroa.33.0.extract.trunc.i, %bb.b ], [ %i.e, %bb.c ]
  %.sroa.3.0.insert.ext = zext i8 %.sroa.35.0.i to i24
  %.sroa.3.0.insert.shift = shl nuw i24 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %.sroa.04.0.i to i24
  %.sroa.2.0.insert.shift = shl nuw nsw i24 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.02.0.insert.insert = or disjoint i24 %.sroa.2.0.insert.insert, 1
  ret i24 %.sroa.02.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i24 @_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_21applicable_stable_abis1_0B5_(ptr nofree readonly captures(none) %0, i24 %1) unnamed_addr #4 {
bb.a:
  %i.a = load i16, ptr %0, align 1
  %i.b = zext i16 %i.a to i24
  %i.c = shl nuw i24 %i.b, 8
  %.sroa.03.0.insert.ext = and i24 %1, 255
  %.sroa.03.0.insert.insert = or disjoint i24 %i.c, %.sroa.03.0.insert.ext
  ret i24 %.sroa.03.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i24 0, -255) i24 @_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_21applicable_stable_abis_0B5_(ptr nofree readonly align 8 captures(none) %0, i24 %1) unnamed_addr #3 {
bb.a:
  %i.a = trunc i24 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.33.0.extract.shift.i = lshr i24 %1, 16
  %.sroa.33.0.extract.trunc.i = trunc nuw i24 %.sroa.33.0.extract.shift.i to i8
  %.sroa.22.0.extract.shift.i = lshr i24 %1, 8
  %.sroa.22.0.extract.trunc.i = trunc i24 %.sroa.22.0.extract.shift.i to i8
  br label %_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_21applicable_stable_abi0B5_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.e = load i8, ptr %i.d, align 1
  br label %_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_21applicable_stable_abi0B5_.exit

_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_21applicable_stable_abi0B5_.exit: ; preds = %bb.b, %bb.c
  %.sroa.04.0.i = phi i8 [ %.sroa.22.0.extract.trunc.i, %bb.b ], [ %i.c, %bb.c ]
  %.sroa.35.0.i = phi i8 [ %.sroa.33.0.extract.trunc.i, %bb.b ], [ %i.e, %bb.c ]
  %.sroa.3.0.insert.ext = zext i8 %.sroa.35.0.i to i24
  %.sroa.3.0.insert.shift = shl nuw i24 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %.sroa.04.0.i to i24
  %.sroa.2.0.insert.shift = shl nuw nsw i24 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  ret i24 %.sroa.2.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i24 @_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_21default_cross_compile0B5_() unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i24 @_RNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_16get_abi3_version()
  %i.b = tail call i24 @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_16StableAbiVersionE8and_thenNtBK_13PythonVersionNCNvBK_24exact_stable_abi_version0EBM_(i24 %i.a) #15
  ret i24 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_21default_cross_compiles0_0B5_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = tail call { ptr, ptr } @_RNvMs2_NtCskKLDkoKarTP_4core3fmtNtB5_9Arguments17from_str_nonconstCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull @203, i64 269) #15 ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %i.d = extractvalue { ptr, ptr } %i.b, 1
  call void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.c, ptr %i.d) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i24 @_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_21default_cross_compiles_0B5_() unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i24 @_RNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_17get_abi3t_version()
  %i.b = tail call i24 @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_16StableAbiVersionE8and_thenNtBK_13PythonVersionNCNvBK_24exact_stable_abi_version0EBM_(i24 %i.a) #15
  ret i24 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_22find_all_sysconfigdata0B5_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = tail call { ptr, i64 } @_RNvXsH_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %1) #15 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %i.h = tail call { ptr, i64 } @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path7displayCsiOEEQt9hBE2_17pyo3_build_config(ptr %i.f, i64 %i.g) #15 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  store ptr %i.i, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.j, ptr %i.k, align 8
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsG258MDvU3F_3std4path7DisplayECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.c) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.l = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj39_Kj1_ECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull @204, ptr nonnull align 8 %i.b) #15 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0
  %i.n = extractvalue { ptr, ptr } %i.l, 1
  call void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr %i.m, ptr %i.n) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i24 0, -254) i24 @_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_24exact_stable_abi_version0B5_(i24 %0) unnamed_addr #2 {
bb.a:
  %.sroa.04.0.insert.insert = and i24 %0, -255
  ret i24 %.sroa.04.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i24 @_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_44applicable_stable_abi_at_interpreter_version0B5_(ptr nofree readonly captures(none) %0, i24 %1) unnamed_addr #4 {
bb.a:
  %i.a = load i16, ptr %0, align 1
  %i.b = zext i16 %i.a to i24
  %i.c = shl nuw i24 %i.b, 8
  %.sroa.03.0.insert.ext = and i24 %1, 255
  %.sroa.03.0.insert.insert = or disjoint i24 %i.c, %.sroa.03.0.insert.ext
  ret i24 %.sroa.03.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvXs1_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB7_9PythonAbiNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_str0B9_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayReECs5GPH1eSwN50_14target_lexicon(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %1) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.d = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj26_Kj1_ECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull @205, ptr nonnull align 8 %i.b) #15 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  call void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr %i.e, ptr %i.f) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvXs1_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB7_9PythonAbiNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strs0_0B9_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayReECs5GPH1eSwN50_14target_lexicon(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %1) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.d = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj26_Kj1_ECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull @205, ptr nonnull align 8 %i.b) #15 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  call void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr %i.e, ptr %i.f) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvXs1_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB7_9PythonAbiNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strs_0B9_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayReECs5GPH1eSwN50_14target_lexicon(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %1) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.d = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj26_Kj1_ECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull @205, ptr nonnull align 8 %i.b) #15 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  call void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr %i.e, ptr %i.f) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMNtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB2_17InterpreterConfig10executable(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = tail call { ptr, i64 } @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringE8as_derefCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a) #15
  ret { ptr, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i40 @_RNvMNtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB2_17InterpreterConfig10target_abi(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 179
  %.sroa.0.0.copyload = load i40, ptr %i.a, align 1
  ret i40 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define nonnull align 8 ptr @_RNvMNtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB2_17InterpreterConfig11build_flags(ptr nofree readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i32, i32 } @_RNvMNtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB2_17InterpreterConfig13pointer_width(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.d = load i32, ptr %i.c, align 4
  %i.e = insertvalue { i32, i32 } poison, i32 %i.b, 0
  %i.f = insertvalue { i32, i32 } %i.e, i32 %i.d, 1
  ret { i32, i32 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i8 @_RNvMNtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB2_17InterpreterConfig14implementation(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.b = load i8, ptr %i.a, align 2
  ret i8 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB2_17InterpreterConfig15apply_build_env(ptr noalias nonnull align 8 %0, ptr nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 2 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 179
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 181
end_hunk_0
begin_hunk_1_@_RNvMs8_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB5_24InterpreterConfigBuilder8finalize:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.083.0.copyload = load i8, ptr %i.ak, align 8
  %.sroa.284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 9
  %.sroa.284.0.copyload = load i32, ptr %.sroa.284.0..sroa_idx, align 1
  br label %bb.aq

bb.u:                                             ; preds = %bb.h
  store i8 %.sroa.011.0.copyload, ptr %i.q, align 1
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i32 %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx4, align 1
  %i.al = trunc nuw i8 %.sroa.011.0.copyload to i1
  %i.am = lshr i32 %.sroa.2.0.copyload, 16
  %i.an = trunc i32 %.sroa.2.0.copyload to i1     ; 2 uses
  br i1 %i.al, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  br i1 %i.an, label %bb.aq, label %bb.aj

bb.w:                                             ; preds = %bb.u
  br i1 %i.an, label %bb.aq, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ao = zext nneg i32 %i.am to i40
  %i.ap = shl nuw i40 %i.ao, 24
  %i.aq = shl i32 %.sroa.2.0.copyload, 8
  %i.ar = and i32 %i.aq, 16711680
  %.sroa.3.0.insert.shift.i60 = zext nneg i32 %i.ar to i40
  %.sroa.3.0.insert.insert.i61 = or disjoint i40 %i.ap, %.sroa.3.0.insert.shift.i60
  %.sroa.04.0.insert.insert.i63 = or disjoint i40 %.sroa.3.0.insert.insert.i61, 257
  invoke void @_RNvMs_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB4_16PythonAbiBuilder8finalize(ptr nonnull sret([40 x i8]) align 8 %i.o, i40 %.sroa.04.0.insert.insert.i63)
          to label %bb.y unwind label %bb.f

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9PythonAbiNtNtBO_6errors5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([40 x i8]) align 8 %i.p, ptr nonnull align 8 %i.o)
          to label %bb.z unwind label %bb.f

bb.z:                                             ; preds = %bb.y
  %i.as = load i64, ptr %i.p, align 8
  %.not41 = icmp eq i64 %i.as, -1
  br i1 %.not41, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %bb.m, %bb.s, %bb.aa
  %i.at = phi ptr [ %i.b, %bb.aa ], [ %i.c, %bb.s ], [ %i.d, %bb.m ]
  %i.au = phi ptr [ @261, %bb.aa ], [ @259, %bb.s ], [ @258, %bb.m ]
  invoke void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_17InterpreterConfigNtNtBO_6errors5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1K_EE13from_residualBO_(ptr sret([192 x i8]) align 8 %0, ptr nonnull align 8 %i.at, ptr nonnull align 8 %i.au)
          to label %bb.o unwind label %bb.f

bb.ab:                                            ; preds = %bb.z
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.085.0.copyload = load i8, ptr %i.av, align 8
  %.sroa.286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  %.sroa.286.0.copyload = load i32, ptr %.sroa.286.0..sroa_idx, align 1
  %i.aw = invoke { ptr, ptr } @_RNvMs2_NtCskKLDkoKarTP_4core3fmtNtB5_9Arguments17from_str_nonconstCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull @260, i64 134)
          to label %bb.ac unwind label %bb.f      ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.ax = extractvalue { ptr, ptr } %i.aw, 0
  %i.ay = extractvalue { ptr, ptr } %i.aw, 1
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr %i.ax, ptr %i.ay)
          to label %bb.ad unwind label %bb.f

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  invoke void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsexYYUdYSQU6_5alloc6string6StringECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([16 x i8]) align 8 %i.k, ptr nonnull align 8 %i.n)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %bb.af, %bb.ad
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5GPH1eSwN50_14target_lexicon(ptr nonnull align 8 %i.n) #16
          to label %bb.e unwind label %bb.ai

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.ba = invoke { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj4_Kj1_ECs5GPH1eSwN50_14target_lexicon(ptr nonnull @8, ptr nonnull align 8 %i.l)
          to label %bb.ag unwind label %bb.ae     ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.bb = extractvalue { ptr, ptr } %i.ba, 0
  %i.bc = extractvalue { ptr, ptr } %i.ba, 1
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr %i.bb, ptr %i.bc)
          to label %bb.ah unwind label %bb.ae

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5GPH1eSwN50_14target_lexicon(ptr nonnull align 8 %i.n)
          to label %bb.aq unwind label %bb.f

bb.ai:                                            ; preds = %bb.ae, %bb.e, %bb.b
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.aj:                                            ; preds = %bb.v
  invoke void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9PythonAbiEB12_(ptr nonnull sret([16 x i8]) align 8 %i.f, ptr nonnull %i.q)
          to label %bb.ak unwind label %bb.f

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.be = invoke { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj4f_Kj1_ECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull @262, ptr nonnull align 8 %i.g)
          to label %bb.al unwind label %bb.f      ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.bf = extractvalue { ptr, ptr } %i.be, 0
  %i.bg = extractvalue { ptr, ptr } %i.be, 1
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr %i.bf, ptr %i.bg)
          to label %bb.am unwind label %bb.f

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  invoke void @_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtCsiOEEQt9hBE2_17pyo3_build_config6errors5ErrorE4intoB1p_(ptr nonnull sret([40 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i, ptr nonnull align 8 @263)
          to label %bb.an unwind label %bb.f

bb.an:                                            ; preds = %bb.am
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.ao:                                            ; preds = %bb.o
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_24InterpreterConfigBuilderEBF_(ptr nonnull align 8 %1)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.as, %bb.ao
  ret void

bb.aq:                                            ; preds = %bb.v, %bb.w, %bb.ah, %bb.h, %bb.t, %bb.n
  %.sroa.869.0 = phi i32 [ %.sroa.284.0.copyload, %bb.t ], [ %.sroa.2.0.copyload82, %bb.n ], [ %.sroa.286.0.copyload, %bb.ah ], [ %.sroa.2.0.copyload, %bb.h ], [ %.sroa.2.0.copyload, %bb.w ], [ %.sroa.2.0.copyload, %bb.v ] ; 2 uses
  %.sroa.0.0 = phi i8 [ %.sroa.083.0.copyload, %bb.t ], [ %.sroa.080.0.copyload, %bb.n ], [ %.sroa.085.0.copyload, %bb.ah ], [ %.sroa.011.0.copyload, %bb.h ], [ 0, %bb.w ], [ 1, %bb.v ] ; 2 uses
  %i.bi = trunc nuw i8 %.sroa.0.0 to i1
  %.sroa.03.0.i = trunc i32 %.sroa.869.0 to i1    ; 2 uses
  br i1 %.sroa.03.0.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i64 -9223372036854775805, ptr %i.e, align 8
  %i.bj = invoke zeroext i1 @_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagE6insertB16_(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.e)
          to label %bb.as unwind label %bb.f      ; 0 uses

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bn = load i8, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 177
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 178
  %i.br = load i8, ptr %i.bq, align 2
  %or.cond = or i1 %.sroa.03.0.i, %i.bi
  %not.or.cond = xor i1 %or.cond, true
  %.sroa.019.0 = zext i1 %not.or.cond to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.018.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.018, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.018.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.018, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.018.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.018, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 179
  %i.bx = load i8, ptr %i.bw, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.018.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.018, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bz = load <2 x i32>, ptr %i.bv, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.018, i64 120, i1 false)
  store <2 x i32> %i.bz, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.bn, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 %i.bp, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 %i.br, ptr %.sroa.11.0..sroa_idx, align 2
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 179
  store i8 %.sroa.0.0, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.12.sroa.2.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %.sroa.869.0, ptr %.sroa.12.sroa.2.0..sroa.12.0..sroa_idx.sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %.sroa.019.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.bx, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i8 %i.bl, ptr %.sroa.15.0..sroa_idx, align 2
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_10BuildFlagsEBF_(ptr nonnull align 8 %i.w)
  br label %bb.ap

bb.at:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define range(i40 0, 68719476481) i40 @_RNvMs_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB4_16PythonAbiBuilder10stable_abi(i40 %0, i1 zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 3 uses
  %.sroa.4.0.extract.shift = lshr i40 %0, 32
  %.sroa.4.0.extract.trunc = trunc nuw i40 %.sroa.4.0.extract.shift to i8 ; 2 uses
  %i.i = zext i1 %1 to i8                         ; 2 uses
  store i8 %i.i, ptr %i.h, align 1
  %i.j = icmp ugt i8 %.sroa.4.0.extract.trunc, 15
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.k = phi i8 [ %.pre, %bb.g ], [ %i.i, %bb.a ]
  %.sroa.210.0 = phi i8 [ 15, %bb.g ], [ %.sroa.4.0.extract.trunc, %bb.a ]
  %.sroa.5.0.insert.ext = zext nneg i8 %.sroa.210.0 to i40
  %.sroa.5.0.insert.shift = shl nuw nsw i40 %.sroa.5.0.insert.ext, 32
  %i.l = and i40 %0, 4294901760
  %.sroa.37.0.insert.insert = or disjoint i40 %.sroa.5.0.insert.shift, %i.l
  %.sroa.26.0.insert.ext = zext i8 %i.k to i40
  %.sroa.26.0.insert.shift = shl nuw nsw i40 %.sroa.26.0.insert.ext, 8
  %.sroa.26.0.insert.insert = or disjoint i40 %.sroa.37.0.insert.insert, %.sroa.26.0.insert.shift
  ret i40 %.sroa.26.0.insert.insert

bb.c:                                             ; preds = %bb.a
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9StableAbiEB12_(ptr nonnull sret([16 x i8]) align 8 %i.d, ptr nonnull %i.h) #15
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayhECs5GPH1eSwN50_14target_lexicon(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr nonnull @264) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.n = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj72_Kj2_ECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull @265, ptr nonnull align 8 %i.e) #15 ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0
  %i.p = extractvalue { ptr, ptr } %i.n, 1
  call void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr %i.o, ptr %i.p) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsexYYUdYSQU6_5alloc6string6StringECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.g)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5GPH1eSwN50_14target_lexicon(ptr nonnull align 8 %i.g) #16
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.r = invoke { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj4_Kj1_ECs5GPH1eSwN50_14target_lexicon(ptr nonnull @8, ptr nonnull align 8 %i.b)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr %i.s, ptr %i.t)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5GPH1eSwN50_14target_lexicon(ptr nonnull align 8 %i.g)
  %.pre = load i8, ptr %i.h, align 1
  br label %bb.b

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.i:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i40 257, -65278) i40 @_RNvMs_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB4_16PythonAbiBuilder13free_threaded(i40 %0) unnamed_addr #6 {
bb.a:
  %.sroa.36.0.insert.insert = and i40 %0, -65536
  %.sroa.04.0.insert.insert = or disjoint i40 %.sroa.36.0.insert.insert, 257
  ret i40 %.sroa.04.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i40 2, -65533) i40 @_RNvMs_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB4_16PythonAbiBuilder3new(i8 %0, i8 %1, i8 %2) unnamed_addr #6 {
bb.a:
  %.sroa.5.0.insert.ext = zext i8 %2 to i40
  %.sroa.5.0.insert.shift = shl nuw i40 %.sroa.5.0.insert.ext, 32
  %.sroa.4.0.insert.ext = zext i8 %1 to i40
  %.sroa.4.0.insert.shift = shl nuw nsw i40 %.sroa.4.0.insert.ext, 24
  %.sroa.4.0.insert.insert = or disjoint i40 %.sroa.5.0.insert.shift, %.sroa.4.0.insert.shift
  %.sroa.3.0.insert.ext = zext i8 %0 to i40
  %.sroa.3.0.insert.shift = shl nuw nsw i40 %.sroa.3.0.insert.ext, 16
  %.sroa.3.0.insert.insert = or disjoint i40 %.sroa.4.0.insert.insert, %.sroa.3.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i40 %.sroa.3.0.insert.insert, 2
  ret i40 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB4_16PythonAbiBuilder8finalize(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 13)) %0, i40 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [40 x i8], align 8                ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 2 uses
  %i.g = alloca [16 x i8], align 8                ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [40 x i8], align 8                ; 2 uses
  %i.k = alloca [2 x i8], align 1                 ; 3 uses
  %i.l = alloca [5 x i8], align 8                 ; 5 uses
  store i40 %1, ptr %i.l, align 8
  %i.m = trunc i40 %1 to i8
  %i.n = lshr i40 %1, 8
  %i.o = trunc i40 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.q = lshr i40 %1, 16
  %i.r = trunc i40 %i.q to i8                     ; 2 uses
  %i.s = icmp ne i8 %i.r, 3                       ; 3 uses
  %not. = xor i1 %i.s, true
  %. = zext i1 %not. to i8
  %i.t = tail call { i1, i8 } @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonAbiKindE9unwrap_orBL_(i8 %i.m, i8 %i.o, i1 zeroext %i.s, i8 %.) #15 ; 2 uses
  %i.u = extractvalue { i1, i8 } %i.t, 0          ; 3 uses
  %i.v = extractvalue { i1, i8 } %i.t, 1          ; 3 uses
  %i.w = zext i1 %i.u to i8                       ; 2 uses
  store i8 %i.w, ptr %i.k, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.v, ptr %i.x, align 1
  %.not = xor i1 %i.u, true
  %i.y = trunc nuw i8 %i.v to i1                  ; 2 uses
  %or.cond = select i1 %.not, i1 %i.y, i1 false
  %or.cond10 = select i1 %i.s, i1 true, i1 %or.cond
  br i1 %or.cond10, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = lshr i40 %1, 32
  %i.aa = trunc nuw i40 %i.z to i8
  %i.ab = lshr i40 %1, 24
  %i.ac = trunc i40 %i.ab to i8
  %or.cond9 = select i1 %i.u, i1 %i.y, i1 false
  br i1 %or.cond9, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonAbiKindEB12_(ptr nonnull sret([16 x i8]) align 8 %i.f, ptr nonnull %i.k) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.ad = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj73_Kj1_ECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull @266, ptr nonnull align 8 %i.g) #15 ; 2 uses
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0
  %i.af = extractvalue { ptr, ptr } %i.ad, 1
  call void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr %i.ae, ptr %i.af) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtCsiOEEQt9hBE2_17pyo3_build_config6errors5ErrorE4intoB1p_(ptr nonnull sret([40 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i, ptr nonnull align 8 @267) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit._crit_edge, %bb.b
  %i.ag = phi i8 [ %.pre13, %_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit._crit_edge ], [ %i.aa, %bb.b ]
  %i.ah = phi i8 [ %.pre11, %_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit._crit_edge ], [ %i.ac, %bb.b ]
  %i.ai = phi i8 [ %.pre, %_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit._crit_edge ], [ %i.r, %bb.b ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.w, ptr %i.aj, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.v, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.ai, ptr %.sroa.36.0..sroa_idx, align 2
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.ah, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.ag, ptr %.sroa.5.0..sroa_idx, align 4
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3 ; 3 uses
  %i.al = call i8 @_RNvXsX_NtNtCskKLDkoKarTP_4core3cmp5implshNtB7_3Ord3cmpCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull %i.ak, ptr nonnull @268) #15 ; 2 uses
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.g, label %_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ao = call i8 @_RNvXsX_NtNtCskKLDkoKarTP_4core3cmp5implshNtB7_3Ord3cmpCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull %i.an, ptr nonnull getelementptr inbounds nuw (i8, ptr @268, i64 1)) #15
  br label %_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit

_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i.i = phi i8 [ %i.ao, %bb.g ], [ %i.al, %bb.f ] ; 2 uses
  %.not.i = icmp ne i8 %.sroa.0.0.i.i.i, -2
  %i.ap = icmp slt i8 %.sroa.0.0.i.i.i, 0
  %.sroa.0.0.i = and i1 %.not.i, %i.ap
  br i1 %.sroa.0.0.i, label %bb.h, label %_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit._crit_edge

_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit._crit_edge: ; preds = %_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit
  %.pre = load i8, ptr %i.p, align 2
  %.pre11 = load i8, ptr %i.ak, align 1
  %.phi.trans.insert12 = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.pre13 = load i8, ptr %.phi.trans.insert12, align 4
  br label %bb.e

bb.h:                                             ; preds = %_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionEB12_(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull %i.ak) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.aq = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj5a_Kj1_ECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull @269, ptr nonnull align 8 %i.b) #15 ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  call void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr %i.ar, ptr %i.as) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtCsiOEEQt9hBE2_17pyo3_build_config6errors5ErrorE4intoB1p_(ptr nonnull sret([40 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d, ptr nonnull align 8 @270) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsj_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB5_10BuildFlags18from_sysconfigdata(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [48 x i8], align 8                ; 2 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = tail call { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagE3newBS_(ptr nonnull align 8 @145, i64 4) #15 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  call void @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagENtNtNtNtBa_4iter6traits8iterator8Iterator6filterNCNvMsj_BL_NtBL_10BuildFlags18from_sysconfigdata0EBN_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr %i.g, ptr %i.h, ptr align 8 %1) #15
  call void @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagENCNvMsj_B1p_NtB1p_10BuildFlags18from_sysconfigdata0ENtNtNtBa_6traits8iterator8Iterator6clonedB1n_EB1r_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagENCNvMsj_B1L_NtB1L_10BuildFlags18from_sysconfigdata0EENtNtNtBa_6traits8iterator8Iterator7collectINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetB1J_EEB1N_(ptr nonnull sret([48 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = invoke zeroext i1 @_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB6_7HashSetNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagE8containsB13_EB17_(ptr nonnull align 8 %i.e, ptr nonnull align 8 @296)
          to label %bb.c unwind label %bb.b, !noalias !32

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_10BuildFlagsEBF_(ptr nonnull align 8 %i.e) #16
          to label %bb.f unwind label %bb.e, !noalias !32

bb.c:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.d, label %_RNvMsj_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB5_10BuildFlags5fixup.exit

bb.d:                                             ; preds = %bb.c
  store i64 -9223372036854775807, ptr %i.a, align 8, !noalias !32
  %i.k = invoke zeroext i1 @_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagE6insertB16_(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.a)
          to label %_RNvMsj_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB5_10BuildFlags5fixup.exit unwind label %bb.b, !noalias !32 ; 0 uses

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !32
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.j

_RNvMsj_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB5_10BuildFlags5fixup.exit: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsj_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB5_10BuildFlags3new(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  call void @_RNvMNtNtNtCsG258MDvU3F_3std11collections4hash3setINtB2_7HashSetNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagE3newB13_(ptr nonnull sret([48 x i8]) align 8 %i.a) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @_RNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_11starts_with(ptr nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @_RNvMsA_NtCsG258MDvU3F_3std2fsNtB5_8DirEntry9file_name(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %0)
  %i.c = invoke { ptr, i64 } @_RNvXs3_NtNtCsG258MDvU3F_3std3ffi6os_strNtB5_8OsStringNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.b) #16
          to label %bb.l unwind label %bb.k
end_hunk_1
