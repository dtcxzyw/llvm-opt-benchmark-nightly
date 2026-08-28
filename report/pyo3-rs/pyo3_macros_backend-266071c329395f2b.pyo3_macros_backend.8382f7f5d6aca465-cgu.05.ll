Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_macros_backend-266071c329395f2b.pyo3_macros_backend.8382f7f5d6aca465-cgu.05?download=true
begin_hunk_0_@_RNvXNtCsbi23obv45GP_19pyo3_macros_backend14combine_errorsINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtB4_7pyclass15FieldPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtB2_13CombineErrors22try_combine_syn_errorsB4_:bb.a
.backedge:                                        ; preds = %bb.s, %bb.r
  %i.al = load ptr, ptr %i.m, align 8
  %i.am = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.al
  br i1 %i.an, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass15FieldPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass15FieldPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit

.thread38:                                        ; preds = %bb.f, %bb.d
  %.pn1042 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.d ], [ %i.r, %bb.f ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1QQTzni0HOp_3syn5error5ErrorEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.i) #15
          to label %.thread64 unwind label %bb.q

.thread64:                                        ; preds = %bb.j, %.thread38, %.thread67, %.thread
  %.sroa.04.233 = phi i1 [ true, %.thread ], [ false, %.thread67 ], [ false, %.thread38 ], [ false, %bb.j ]
  %.pn10.pn32 = phi { ptr, i32 } [ %i.l, %.thread ], [ %lpad.thr_comm69, %.thread67 ], [ %.pn1042, %.thread38 ], [ %.pn, %bb.j ] ; 2 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass15FieldPyO3OptionEEB1c_(ptr nonnull align 8 %i.j) #15
          to label %bb.b unwind label %bb.q

bb.t:                                             ; preds = %bb.u, %bb.b
  %.pn10.pn.pn26 = phi { ptr, i32 } [ %.pn10.pn32, %bb.b ], [ %.pn10.pn.pn27, %bb.u ]
  resume { ptr, i32 } %.pn10.pn.pn26

bb.u:                                             ; preds = %.split.thread, %bb.b
  %.pn10.pn.pn27 = phi { ptr, i32 } [ %i.k, %.split.thread ], [ %.pn10.pn32, %bb.b ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass15FieldPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEEEB1P_(ptr align 8 %1) #15
          to label %bb.t unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCsbi23obv45GP_19pyo3_macros_backend14combine_errorsINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtB4_7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtB2_13CombineErrors22try_combine_syn_errorsB4_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionE3newBG_(ptr nonnull sret([24 x i8]) align 8 %i.j)
          to label %bb.c unwind label %.split.thread

.split.thread:                                    ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.b:                                             ; preds = %.thread72
  br i1 %.sroa.09.240, label %bb.u, label %bb.t

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecNtNtCs1QQTzni0HOp_3syn5error5ErrorE3newCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.i)
          to label %bb.e unwind label %.thread

.thread:                                          ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.thread72

bb.d:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.thread
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread46

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8
  %i.p = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.o
  br i1 %i.q, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.lr.ph

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.lr.ph: ; preds = %bb.e
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit

bb.f:                                             ; preds = %bb.s, %bb.r
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEEEB1P_(ptr nonnull align 8 %i.h) #15
          to label %.thread46 unwind label %bb.q

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.lr.ph, %.backedge
  %i.s = phi ptr [ %i.p, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.lr.ph ], [ %i.an, %.backedge ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.n, align 8
  %.sroa.0.0.copyload = load i32, ptr %i.s, align 8 ; 2 uses
  switch i32 %.sroa.0.0.copyload, label %bb.s [
    i32 -2, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.thread
    i32 -1, label %bb.r
  ]

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.thread: ; preds = %.backedge, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit, %bb.e
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEEEB1P_(ptr nonnull align 8 %i.h)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  invoke void @_RNvXsg_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f)
          to label %bb.h unwind label %.thread75

.thread75:                                        ; preds = %bb.g
  %lpad.thr_comm77 = landingpad { ptr, i32 }
          cleanup
  br label %.thread72

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.v
  br i1 %i.y, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit: ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.z, ptr %i.w, align 8
  %.sroa.022.0.copyload23 = load i64, ptr %i.x, align 8 ; 2 uses
  %.not11 = icmp eq i64 %.sroa.022.0.copyload23, -1
  br i1 %.not11, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit.thread, label %bb.l

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit.thread: ; preds = %bb.h, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.g)
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit.thread, %bb.p
  ret void

bb.j:                                             ; preds = %bb.n, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.n ], [ %i.ab, %bb.k ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1QQTzni0HOp_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.e) #15
          to label %.thread72 unwind label %bb.q

bb.k:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit19.thread
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit
  %.sroa.424.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.227.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.424.0..sroa_idx25, i64 16, i1 false)
  store i64 %.sroa.022.0.copyload23, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = load ptr, ptr %i.ad, align 8            ; 4 uses
  %i.ag = icmp eq ptr %i.af, %i.ae
  br i1 %i.ag, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit19.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit19

bb.n:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.d) #15
          to label %bb.j unwind label %bb.q

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit19: ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.ai, ptr %i.ad, align 8
  %.sroa.028.0.copyload29 = load i64, ptr %i.af, align 8 ; 2 uses
  %.not12 = icmp eq i64 %.sroa.028.0.copyload29, -1
  br i1 %.not12, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit19.thread, label %bb.o

bb.o:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit19
  %.sroa.430.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.sroa.028.0.copyload29, ptr %i.c, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.233.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.430.0..sroa_idx31, i64 16, i1 false)
  invoke void @_RNvMNtCs1QQTzni0HOp_3syn5errorNtB2_5Error7combine(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.c)
          to label %bb.m unwind label %bb.n

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit19.thread: ; preds = %bb.m, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit19
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.d)
          to label %bb.p unwind label %bb.k

bb.p:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit19.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionEEB1c_(ptr nonnull align 8 %i.j)
  br label %bb.i

bb.q:                                             ; preds = %bb.u, %.thread72, %.thread46, %bb.n, %bb.j, %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.r:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %i.al, i64 24, i1 false)
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs1QQTzni0HOp_3syn5error5ErrorE4pushCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.a)
          to label %.backedge unwind label %bb.f

bb.s:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit
  %.sroa.320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i32 %.sroa.0.0.copyload, ptr %i.b, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.320.0..sroa_idx, i64 28, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.35.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.421.0..sroa_idx, i64 32, i1 false)
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionE4pushBJ_(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.b)
          to label %.backedge unwind label %bb.f

.backedge:                                        ; preds = %bb.s, %bb.r
  %i.am = load ptr, ptr %i.m, align 8
  %i.an = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.am
  br i1 %i.ao, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit

.thread46:                                        ; preds = %bb.f, %bb.d
  %.pn1551 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.d ], [ %i.r, %bb.f ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1QQTzni0HOp_3syn5error5ErrorEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.i) #15
          to label %.thread72 unwind label %bb.q

.thread72:                                        ; preds = %bb.j, %.thread46, %.thread75, %.thread
  %.pn15.pn41 = phi { ptr, i32 } [ %i.l, %.thread ], [ %lpad.thr_comm77, %.thread75 ], [ %.pn1551, %.thread46 ], [ %.pn, %bb.j ] ; 2 uses
  %.sroa.09.240 = phi i1 [ true, %.thread ], [ false, %.thread75 ], [ false, %.thread46 ], [ false, %bb.j ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionEEB1c_(ptr nonnull align 8 %i.j) #15
          to label %bb.b unwind label %bb.q

bb.t:                                             ; preds = %bb.u, %bb.b
  %.pn15.pn.pn34 = phi { ptr, i32 } [ %.pn15.pn41, %bb.b ], [ %.pn15.pn.pn35, %bb.u ]
  resume { ptr, i32 } %.pn15.pn.pn34

bb.u:                                             ; preds = %.split.thread, %bb.b
  %.pn15.pn.pn35 = phi { ptr, i32 } [ %i.k, %.split.thread ], [ %.pn15.pn41, %bb.b ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEEEB1P_(ptr align 8 %1) #15
          to label %bb.t unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCsbi23obv45GP_19pyo3_macros_backend14combine_errorsINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtB4_7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtB2_13CombineErrors22try_combine_syn_errorsB4_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionE3newBG_(ptr nonnull sret([24 x i8]) align 8 %i.j)
          to label %bb.c unwind label %.split.thread

.split.thread:                                    ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.b:                                             ; preds = %.thread72
  br i1 %.sroa.09.240, label %bb.u, label %bb.t

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecNtNtCs1QQTzni0HOp_3syn5error5ErrorE3newCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.i)
          to label %bb.e unwind label %.thread

.thread:                                          ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.thread72

bb.d:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.thread
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread46

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8
  %i.p = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.o
  br i1 %i.q, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.lr.ph

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.lr.ph: ; preds = %bb.e
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit

bb.f:                                             ; preds = %bb.s, %bb.r
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEEEB1P_(ptr nonnull align 8 %i.h) #15
          to label %.thread46 unwind label %bb.q

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.lr.ph, %.backedge
  %i.s = phi ptr [ %i.p, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.lr.ph ], [ %i.am, %.backedge ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store ptr %i.t, ptr %i.n, align 8
  %.sroa.0.0.copyload = load i64, ptr %i.s, align 8 ; 2 uses
  %.sroa.320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  switch i64 %.sroa.0.0.copyload, label %bb.s [
    i64 -3, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.thread
    i64 -2, label %bb.r
  ]

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.thread: ; preds = %.backedge, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit, %bb.e
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEEEB1P_(ptr nonnull align 8 %i.h)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  invoke void @_RNvXsg_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f)
          to label %bb.h unwind label %.thread75

.thread75:                                        ; preds = %bb.g
  %lpad.thr_comm77 = landingpad { ptr, i32 }
          cleanup
  br label %.thread72

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.v
  br i1 %i.y, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit: ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.z, ptr %i.w, align 8
  %.sroa.022.0.copyload23 = load i64, ptr %i.x, align 8 ; 2 uses
  %.not11 = icmp eq i64 %.sroa.022.0.copyload23, -1
  br i1 %.not11, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit.thread, label %bb.l

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit.thread: ; preds = %bb.h, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.g)
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit.thread, %bb.p
  ret void

bb.j:                                             ; preds = %bb.n, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.n ], [ %i.ab, %bb.k ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1QQTzni0HOp_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.e) #15
          to label %.thread72 unwind label %bb.q

bb.k:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit19.thread
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit
  %.sroa.424.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.227.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.424.0..sroa_idx25, i64 16, i1 false)
  store i64 %.sroa.022.0.copyload23, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = load ptr, ptr %i.ad, align 8            ; 4 uses
  %i.ag = icmp eq ptr %i.af, %i.ae
  br i1 %i.ag, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit19.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit19

bb.n:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.d) #15
          to label %bb.j unwind label %bb.q

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit19: ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.ai, ptr %i.ad, align 8
  %.sroa.028.0.copyload29 = load i64, ptr %i.af, align 8 ; 2 uses
  %.not12 = icmp eq i64 %.sroa.028.0.copyload29, -1
  br i1 %.not12, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit19.thread, label %bb.o

bb.o:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit19
  %.sroa.430.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.sroa.028.0.copyload29, ptr %i.c, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.233.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.430.0..sroa_idx31, i64 16, i1 false)
  invoke void @_RNvMNtCs1QQTzni0HOp_3syn5errorNtB2_5Error7combine(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.c)
          to label %bb.m unwind label %bb.n

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit19.thread: ; preds = %bb.m, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit19
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.d)
          to label %bb.p unwind label %bb.k

bb.p:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit19.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
begin_hunk_1_@_RNvXNtCsbi23obv45GP_19pyo3_macros_backend14combine_errorsINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtB4_7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtB2_13CombineErrors22try_combine_syn_errorsB4_:bb.a
  %i.am = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.al
  br i1 %i.an, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit

.thread46:                                        ; preds = %bb.f, %bb.d
  %.pn1551 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.d ], [ %i.r, %bb.f ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1QQTzni0HOp_3syn5error5ErrorEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.i) #15
          to label %.thread72 unwind label %bb.q

.thread72:                                        ; preds = %bb.j, %.thread46, %.thread75, %.thread
  %.pn15.pn41 = phi { ptr, i32 } [ %i.l, %.thread ], [ %lpad.thr_comm77, %.thread75 ], [ %.pn1551, %.thread46 ], [ %.pn, %bb.j ] ; 2 uses
  %.sroa.09.240 = phi i1 [ true, %.thread ], [ false, %.thread75 ], [ false, %.thread46 ], [ false, %bb.j ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionEEB1c_(ptr nonnull align 8 %i.j) #15
          to label %bb.b unwind label %bb.q

bb.t:                                             ; preds = %bb.u, %bb.b
  %.pn15.pn.pn34 = phi { ptr, i32 } [ %.pn15.pn41, %bb.b ], [ %.pn15.pn.pn35, %bb.u ]
  resume { ptr, i32 } %.pn15.pn.pn34

bb.u:                                             ; preds = %.split.thread, %bb.b
  %.pn15.pn.pn35 = phi { ptr, i32 } [ %i.k, %.split.thread ], [ %.pn15.pn41, %bb.b ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEEEB1P_(ptr align 8 %1) #15
          to label %bb.t unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCsbi23obv45GP_19pyo3_macros_backend14combine_errorsINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtB4_7pyclass16FieldPyO3OptionsENtNtB2p_5error5ErrorEENtB2_13CombineErrors22try_combine_syn_errorsB4_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsEE3newB1f_(ptr nonnull sret([24 x i8]) align 8 %i.j)
          to label %bb.c unwind label %.split.thread

.split.thread:                                    ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.b:                                             ; preds = %.thread77
  br i1 %.sroa.013.244, label %bb.u, label %bb.t

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecNtNtCs1QQTzni0HOp_3syn5error5ErrorE3newCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.i)
          to label %bb.e unwind label %.thread

.thread:                                          ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.thread77

bb.d:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1E_5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB2b_.exit.thread
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread50

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8
  %i.p = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.o
  br i1 %i.q, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1E_5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB2b_.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1E_5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB2b_.exit.lr.ph

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1E_5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB2b_.exit.lr.ph: ; preds = %bb.e
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1E_5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB2b_.exit

bb.f:                                             ; preds = %bb.s, %bb.r
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1R_5error5ErrorEEEB2o_(ptr nonnull align 8 %i.h) #15
          to label %.thread50 unwind label %bb.q

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1E_5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB2b_.exit: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1E_5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB2b_.exit.lr.ph, %.backedge
  %i.s = phi ptr [ %i.p, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1E_5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB2b_.exit.lr.ph ], [ %i.an, %.backedge ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store ptr %i.t, ptr %i.n, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  switch i32 %.sroa.2.0.copyload, label %bb.s [
    i32 -2, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1E_5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB2b_.exit.thread
    i32 -1, label %bb.r
  ]

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1E_5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB2b_.exit.thread: ; preds = %.backedge, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1E_5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB2b_.exit, %bb.e
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1R_5error5ErrorEEEB2o_(ptr nonnull align 8 %i.h)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1E_5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB2b_.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  invoke void @_RNvXsg_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f)
          to label %bb.h unwind label %.thread80

.thread80:                                        ; preds = %bb.g
  %lpad.thr_comm82 = landingpad { ptr, i32 }
          cleanup
  br label %.thread77

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.v
  br i1 %i.y, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit: ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.z, ptr %i.w, align 8
  %.sroa.026.0.copyload27 = load i64, ptr %i.x, align 8 ; 2 uses
  %.not15 = icmp eq i64 %.sroa.026.0.copyload27, -1
  br i1 %.not15, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit.thread, label %bb.l

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit.thread: ; preds = %bb.h, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.g)
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit.thread, %bb.p
  ret void

bb.j:                                             ; preds = %bb.n, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.n ], [ %i.ab, %bb.k ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1QQTzni0HOp_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.e) #15
          to label %.thread77 unwind label %bb.q

bb.k:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit23.thread
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit
  %.sroa.428.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.231.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.428.0..sroa_idx29, i64 16, i1 false)
  store i64 %.sroa.026.0.copyload27, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = load ptr, ptr %i.ad, align 8            ; 4 uses
  %i.ag = icmp eq ptr %i.af, %i.ae
  br i1 %i.ag, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit23.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit23

bb.n:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.d) #15
          to label %bb.j unwind label %bb.q

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit23: ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.ai, ptr %i.ad, align 8
  %.sroa.032.0.copyload33 = load i64, ptr %i.af, align 8 ; 2 uses
  %.not16 = icmp eq i64 %.sroa.032.0.copyload33, -1
  br i1 %.not16, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit23.thread, label %bb.o

bb.o:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit23
  %.sroa.434.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.sroa.032.0.copyload33, ptr %i.c, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.237.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.434.0..sroa_idx35, i64 16, i1 false)
  invoke void @_RNvMNtCs1QQTzni0HOp_3syn5errorNtB2_5Error7combine(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.c)
          to label %bb.m unwind label %bb.n

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit23.thread: ; preds = %bb.m, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit23
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.d)
          to label %bb.p unwind label %bb.k

bb.p:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit23.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsEEEB1L_(ptr nonnull align 8 %i.j)
  br label %bb.i

bb.q:                                             ; preds = %bb.u, %.thread77, %.thread50, %bb.n, %bb.j, %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.r:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1E_5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB2b_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %i.al, i64 24, i1 false)
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs1QQTzni0HOp_3syn5error5ErrorE4pushCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.a)
          to label %.backedge unwind label %bb.f

bb.s:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1E_5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB2b_.exit
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.0.0.copyload24 = load i64, ptr %i.s, align 8
  store i64 %.sroa.0.0.copyload24, ptr %i.b, align 8
  store i32 %.sroa.2.0.copyload, ptr %.sroa.27.0..sroa_idx, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.38.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.425.0..sroa_idx, i64 28, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsEE4pushB1i_(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.b)
          to label %.backedge unwind label %bb.f

.backedge:                                        ; preds = %bb.s, %bb.r
  %i.am = load ptr, ptr %i.m, align 8
  %i.an = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.am
  br i1 %i.ao, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1E_5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB2b_.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1E_5error5ErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB2b_.exit

.thread50:                                        ; preds = %bb.f, %bb.d
  %.pn1955 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.d ], [ %i.r, %bb.f ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1QQTzni0HOp_3syn5error5ErrorEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.i) #15
          to label %.thread77 unwind label %bb.q

.thread77:                                        ; preds = %bb.j, %.thread50, %.thread80, %.thread
  %.pn19.pn45 = phi { ptr, i32 } [ %i.l, %.thread ], [ %lpad.thr_comm82, %.thread80 ], [ %.pn1955, %.thread50 ], [ %.pn, %bb.j ] ; 2 uses
  %.sroa.013.244 = phi i1 [ true, %.thread ], [ false, %.thread80 ], [ false, %.thread50 ], [ false, %bb.j ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsEEEB1L_(ptr nonnull align 8 %i.j) #15
          to label %bb.b unwind label %bb.q

bb.t:                                             ; preds = %bb.u, %bb.b
  %.pn19.pn.pn38 = phi { ptr, i32 } [ %.pn19.pn45, %bb.b ], [ %.pn19.pn.pn39, %bb.u ]
  resume { ptr, i32 } %.pn19.pn.pn38

bb.u:                                             ; preds = %.split.thread, %bb.b
  %.pn19.pn.pn39 = phi { ptr, i32 } [ %i.k, %.split.thread ], [ %.pn19.pn45, %bb.b ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1R_5error5ErrorEEEB2o_(ptr align 8 %1) #15
          to label %bb.t unwind label %bb.q
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB8_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction16PyFunctionOptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtB2_12IntoIterator9into_iterB1Z_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB8_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend6module18PyModulePyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtB2_12IntoIterator9into_iterB1Z_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB8_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend6pyimpl16PyImplPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtB2_12IntoIterator9into_iterB1Z_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB8_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass15FieldPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtB2_12IntoIterator9into_iterB1Z_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB8_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtB2_12IntoIterator9into_iterB1Z_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB8_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEENtB2_12IntoIterator9into_iterB1Z_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB8_6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB21_5error5ErrorEENtB2_12IntoIterator9into_iterB2y_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1QQTzni0HOp_3syn5error5ErrorENtB2_12IntoIterator9into_iterCsbi23obv45GP_19pyo3_macros_backend(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtB18_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction16PyFunctionOptionNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtBc_5alloc6GlobalEB12_4dropB2r_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtB4_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction16PyFunctionOptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEEEB1F_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtB18_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend6module18PyModulePyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtBc_5alloc6GlobalEB12_4dropB2r_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtB4_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend6module18PyModulePyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEEEB1F_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtB18_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend6pyimpl16PyImplPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtBc_5alloc6GlobalEB12_4dropB2r_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtB4_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend6pyimpl16PyImplPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEEEB1F_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtB18_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass15FieldPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtBc_5alloc6GlobalEB12_4dropB2r_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtB4_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass15FieldPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEEEB1F_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtB18_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtBc_5alloc6GlobalEB12_4dropB2r_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtB4_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEEEB1F_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtB18_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtBc_5alloc6GlobalEB12_4dropB2r_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtB4_6result6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionNtNtCs1QQTzni0HOp_3syn5error5ErrorEEEB1F_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtB18_6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB2t_5error5ErrorENtNtBc_5alloc6GlobalEB12_4dropB30_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtB4_6result6ResultTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsENtNtB1H_5error5ErrorEEEB2e_(ptr nonnull align 8 %i.a)
  ret void
end_hunk_1
