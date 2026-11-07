Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_macros_backend-266071c329395f2b.pyo3_macros_backend.8382f7f5d6aca465-cgu.08?download=true
inline.NumInlined: 78
inline.NumDeleted: 14
begin_hunk_0_@_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group44convert_special_to_empty_and_full_to_deletedCsbi23obv45GP_19pyo3_macros_backend:bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_RNvMsg_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_15PythonSignature11has_no_args(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE8is_emptyCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = tail call zeroext i1 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtB6_6string6StringINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs1QQTzni0HOp_3syn4expr4ExprEEE8is_emptyCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.b)
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = tail call zeroext i1 @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringE7is_noneCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.d) #20
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = tail call zeroext i1 @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringE7is_noneCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.f) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0 = phi i1 [ %i.g, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_RNvMsg_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_15PythonSignature30required_positional_parameters(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE3lenCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = tail call i64 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs1QQTzni0HOp_3syn4expr4ExprE3lenCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.b) #20
  %i.d = tail call { i64, i64 } @_RNvMs9_NtCskKLDkoKarTP_4core3numj11checked_subCsbi23obv45GP_19pyo3_macros_backend(i64 %i.a, i64 %i.c) #20 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  %i.g = tail call i64 @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionjE6expectCsbi23obv45GP_19pyo3_macros_backend(i64 %i.e, i64 %i.f, ptr nonnull @28, i64 63, ptr nonnull align 8 @30) #20
  ret i64 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsg_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_15PythonSignature35make_all_parameters_positional_only(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE3lenCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.a, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_17FunctionSignature14from_arguments(ptr nofree writeonly sret([224 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [128 x i8], align 8               ; 4 uses
  invoke fastcc void @_RNvXsT_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_15PythonSignatureNtNtCskKLDkoKarTP_4core7default7Default7defaultB9_(ptr noalias align 8 %i.d)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.loopexit.split-lp, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp ], [ %i.e, %bb.c ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbi23obv45GP_19pyo3_macros_backend6method5FnArgEEB1c_(ptr align 8 %1) #18
          to label %bb.p unwind label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.f = invoke { ptr, ptr } @_RNvXsh_NtCsexYYUdYSQU6_5alloc3vecRINtB5_3VecNtNtCsbi23obv45GP_19pyo3_macros_backend6method5FnArgENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterBK_(ptr align 8 %1)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l
  %.pn = phi { ptr, i32 } [ %i.s, %bb.l ], [ %lpad.loopexit.split-lp9, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature15PythonSignatureEBH_(ptr nonnull align 8 %i.d) #18
          to label %bb.b unwind label %bb.o

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.j, %bb.i, %.backedge, %bb.d
  %lpad.loopexit.split-lp9 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  store ptr %i.g, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.i, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.e
  %i.j = invoke align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCsbi23obv45GP_19pyo3_macros_backend6method5FnArgENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_(ptr nonnull align 8 %i.c)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.f:                                             ; preds = %.backedge
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load i8, ptr %i.k, align 8               ; 2 uses
  %i.m = add i8 %i.l, -3
  %i.n = icmp sgt i8 %i.l, 2
  %i.o = and i8 %i.m, -2
  %switch7 = icmp eq i8 %i.o, 2
  %switch = and i1 %i.n, %switch7
  br i1 %switch, label %.backedge.backedge, label %bb.i

.backedge.backedge:                               ; preds = %bb.g, %bb.n
  br label %.backedge

bb.h:                                             ; preds = %bb.f
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.p, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 128, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 -1, ptr %i.q, align 8
  ret void

bb.i:                                             ; preds = %bb.g
  %i.r = invoke align 8 ptr @_RNvMNtCsbi23obv45GP_19pyo3_macros_backend6methodNtB2_5FnArg4name(ptr nonnull align 8 %i.j)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXNtCs1QQTzni0HOp_3syn3extNtCs3FigHW6Y7TR_11proc_macro25IdentNtB2_8IdentExt5unraw(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %i.r)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringNtCs3FigHW6Y7TR_11proc_macro25IdentNtB5_8ToString9to_stringBA_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.a) #18
          to label %.loopexit.split-lp unwind label %bb.o

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE4pushCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.b)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.a)
          to label %.backedge.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.l, %.loopexit.split-lp, %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.p:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_17FunctionSignature14text_signature(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [80 x i8], align 8                ; 3 uses
  %i.g = alloca [72 x i8], align 8                ; 2 uses
  %i.h = alloca [80 x i8], align 8                ; 2 uses
  %i.i = alloca [80 x i8], align 8                ; 2 uses
  %i.j = alloca [40 x i8], align 8                ; 2 uses
  %i.k = alloca [24 x i8], align 8                ; 31 uses
  %i.l = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %3, ptr %i.m, align 8
  call void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String3newCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.k) #20
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4pushCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, i32 40)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp81.loopexit.split-lp, %.loopexit.split-lp62.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp76, %.loopexit.split-lp62.loopexit.split-lp ], [ %lpad.loopexit.split-lp94, %.loopexit.split-lp.loopexit.split-lp81.loopexit.split-lp ], [ %lpad.loopexit.split-lp91, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3FigHW6Y7TR_11proc_macro2(ptr nonnull align 8 %i.k) #18
          to label %bb.bi unwind label %bb.az

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aq, %bb.aw, %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit24, %.backedge.peel, %bb.z, %bb.bh, %bb.be, %bb.bc, %bb.ba, %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit, %.backedge34.peel, %.invoke88, %.invoke84, %.invoke, %bb.ay, %bb.w, %bb.t, %bb.s, %bb.q, %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit.peel, %bb.p, %.peel.begin, %bb.ao, %bb.am, %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit24.peel, %bb.al, %.peel.begin53, %.thread, %bb.ai, %bb.ab, %.noexc16, %.noexc15, %.noexc, %bb.f, %bb.au, %bb.at, %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit26, %bb.as, %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit22, %bb.af, %bb.ae, %bb.ad, %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit20, %bb.ac, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %_RNvMsg_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_15PythonSignature30required_positional_parameters.exit, %bb.e, %bb.d, %bb.c, %bb.a
  %lpad.loopexit.split-lp91 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4pushCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, i32 36)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.n = invoke zeroext i1 @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE7is_noneCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.l)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, ptr nonnull %2, i64 %3)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.d
  %i.o = zext i1 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = invoke i64 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE3lenCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.p) #20
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.s = invoke i64 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs1QQTzni0HOp_3syn4expr4ExprE3lenCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.r) #20
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %.noexc
  %i.t = invoke { i64, i64 } @_RNvMs9_NtCskKLDkoKarTP_4core3numj11checked_subCsbi23obv45GP_19pyo3_macros_backend(i64 %i.q, i64 %i.s) #20
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc16:                                         ; preds = %.noexc15
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %i.v = extractvalue { i64, i64 } %i.t, 1
  %i.w = invoke i64 @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionjE6expectCsbi23obv45GP_19pyo3_macros_backend(i64 %i.u, i64 %i.v, ptr nonnull @28, i64 63, ptr nonnull align 8 @30) #20
          to label %_RNvMsg_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_15PythonSignature30required_positional_parameters.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsg_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_15PythonSignature30required_positional_parameters.exit: ; preds = %.noexc16
  %i.x = invoke { i64, ptr } @_RINvNtNtNtCskKLDkoKarTP_4core4iter7sources8repeat_n8repeat_nINtNtB8_6option6OptionRNtNtCs1QQTzni0HOp_3syn4expr4ExprEECsbi23obv45GP_19pyo3_macros_backend(ptr align 8 null, i64 %i.w)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %_RNvMsg_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_15PythonSignature30required_positional_parameters.exit
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %i.z = extractvalue { i64, ptr } %i.x, 1
  %i.aa = invoke { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs1QQTzni0HOp_3syn4expr4ExprENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.r)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0
  %i.ac = extractvalue { ptr, i64 } %i.aa, 1
  %i.ad = invoke { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs1QQTzni0HOp_3syn4expr4Expr4iterCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %i.ab, i64 %i.ac)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0
  %i.af = extractvalue { ptr, ptr } %i.ad, 1
  %i.ag = invoke { ptr, ptr } @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCs1QQTzni0HOp_3syn4expr4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator3mapINtNtBa_6option6OptionRBJ_ENcNtB1Z_4Some0ECsbi23obv45GP_19pyo3_macros_backend(ptr %i.ae, ptr %i.af)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0
  %i.ai = extractvalue { ptr, ptr } %i.ag, 1
  invoke void @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionRNtNtCs1QQTzni0HOp_3syn4expr4ExprEENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_8adapters3map3MapINtNtNtBc_5slice4iter4IterB1m_ENcNtBZ_4Some0EECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([40 x i8]) align 8 %i.j, i64 %i.y, ptr %i.z, ptr %i.ah, ptr %i.ai)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3zipRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBT_6string6StringEINtNtB4_5chain5ChainINtNtNtB6_7sources8repeat_n7RepeatNINtNtB8_6option6OptionRNtNtCs1QQTzni0HOp_3syn4expr4ExprEEINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterB2X_ENcNtB2A_4Some0EEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([72 x i8]) align 8 %i.g, ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.a)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEINtNtB7_5chain5ChainINtNtNtB9_7sources8repeat_n7RepeatNINtNtBb_6option6OptionRNtNtCs1QQTzni0HOp_3syn4expr4ExprEEINtNtB7_3map3MapIBR_B39_ENcNtB2M_4Some0EEENtNtNtB9_6traits8iterator8Iterator9enumerateCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([80 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters9enumerate9EnumerateINtNtBQ_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEINtNtBQ_5chain5ChainINtNtNtB6_7sources8repeat_n7RepeatNINtNtB8_6option6OptionRNtNtCs1QQTzni0HOp_3syn4expr4ExprEEINtNtBQ_3map3MapIB1F_B3X_ENcNtB3A_4Some0EEEENtB2_12IntoIterator9into_iterCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([80 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h)
          to label %.peel.begin unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.peel.begin:                                      ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  invoke void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEINtNtB6_5chain5ChainINtNtNtB8_7sources8repeat_n7RepeatNINtNtBa_6option6OptionRNtNtCs1QQTzni0HOp_3syn4expr4ExprEEINtNtB6_3map3MapIB1o_B3G_ENcNtB3j_4Some0EEEENtNtNtB8_6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.f)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %.peel.begin
  %i.am = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not6.peel = icmp eq ptr %i.am, null
  br i1 %.not6.peel, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = load i64, ptr %i.e, align 8
  %i.ao = load ptr, ptr %i.ak, align 8            ; 2 uses
  br i1 %i.n, label %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit.peel, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, ptr nonnull @4, i64 2) #20
          to label %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit.peel: ; preds = %bb.p, %bb.o
  %i.ap = invoke { ptr, i64 } @_RNvXsx_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.am)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit.peel
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0
  %i.ar = extractvalue { ptr, i64 } %i.ap, 1
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, ptr %i.aq, i64 %i.ar)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %.not11.peel = icmp eq ptr %i.ao, null
  br i1 %.not11.peel, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4pushCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, i32 61)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCsbi23obv45GP_19pyo3_macros_backend5utils14expr_to_python(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.ao)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.as = invoke { ptr, i64 } @_RNvXsx_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.d)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp81.loopexit.split-lp ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.at = extractvalue { ptr, i64 } %i.as, 0
  %i.au = extractvalue { ptr, i64 } %i.as, 1
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, ptr %i.at, i64 %i.au)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp81.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3FigHW6Y7TR_11proc_macro2(ptr nonnull align 8 %i.d)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w, %bb.r
  %i.av = load i64, ptr %i.al, align 8            ; 2 uses
  %.not12.peel = icmp ne i64 %i.av, 0
  %i.aw = add i64 %i.an, 1
  %i.ax = icmp eq i64 %i.aw, %i.av
  %or.cond.peel = select i1 %.not12.peel, i1 %i.ax, i1 false
  br i1 %or.cond.peel, label %.invoke84, label %.backedge34.peel.preheader

.backedge34.peel.preheader:                       ; preds = %bb.x, %.invoke84
  br label %.backedge34.peel

.backedge34.peel:                                 ; preds = %.backedge34.peel.preheader, %bb.bd
  invoke void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEINtNtB6_5chain5ChainINtNtNtB8_7sources8repeat_n7RepeatNINtNtBa_6option6OptionRNtNtCs1QQTzni0HOp_3syn4expr4ExprEEINtNtB6_3map3MapIB1o_B3G_ENcNtB3j_4Some0EEEENtNtNtB8_6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.f)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %.backedge34.peel
  %i.ay = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not6 = icmp eq ptr %i.ay, null
  br i1 %.not6, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.az = load i64, ptr %i.e, align 8
  %i.ba = load ptr, ptr %i.ak, align 8            ; 2 uses
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, ptr nonnull @4, i64 2) #20
          to label %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %bb.y, %bb.n
  %.sroa.0.0.lcssa44 = phi i8 [ %i.o, %bb.n ], [ 0, %bb.y ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %.not7 = icmp eq i64 %i.bc, -1
  br i1 %.not7, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %4 = trunc nuw i8 %.sroa.0.0.lcssa44 to i1
  br i1 %4, label %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit20, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, ptr nonnull @4, i64 2) #20
          to label %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %.loopexit
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.be = invoke zeroext i1 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtB6_6string6StringINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs1QQTzni0HOp_3syn4expr4ExprEEE8is_emptyCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.bd)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit20: ; preds = %bb.ab, %bb.aa
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4pushCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, i32 42)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit20
  %i.bf = invoke { ptr, i64 } @_RNvXsx_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.bb)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bg = extractvalue { ptr, i64 } %i.bf, 0
  %i.bh = extractvalue { ptr, i64 } %i.bf, 1
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, ptr %i.bg, i64 %i.bh)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit22, %bb.ae, %bb.ag
  %.sroa.0.1 = phi i8 [ %.sroa.0.0.lcssa44, %bb.ag ], [ 0, %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit22 ], [ 0, %bb.ae ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bj = invoke { ptr, ptr } @_RNvXsh_NtCsexYYUdYSQU6_5alloc3vecRINtB5_3VecTNtNtB7_6string6StringINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs1QQTzni0HOp_3syn4expr4ExprEEENtNtNtNtB17_4iter6traits7collect12IntoIterator9into_iterCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.bi)
          to label %.peel.begin53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ag:                                            ; preds = %bb.ac
  br i1 %i.be, label %bb.af, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bk = trunc nuw i8 %.sroa.0.0.lcssa44 to i1
  br i1 %i.bk, label %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit22, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, ptr nonnull @4, i64 2) #20
          to label %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit22: ; preds = %bb.ai, %bb.ah
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4pushCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, i32 42)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.peel.begin53:                                    ; preds = %bb.af
  %i.bl = extractvalue { ptr, ptr } %i.bj, 0
  %i.bm = extractvalue { ptr, ptr } %i.bj, 1
  store ptr %i.bl, ptr %i.c, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.bm, ptr %i.bn, align 8
  %i.bo = trunc nuw i8 %.sroa.0.1 to i1           ; 2 uses
  %i.bp = invoke align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBa_6option6OptionNtNtCs1QQTzni0HOp_3syn4expr4ExprEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.c)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.aj:                                            ; preds = %.peel.begin53
  %.not8.peel = icmp eq ptr %i.bp, null
  br i1 %.not8.peel, label %.loopexit60, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 2 uses
  br i1 %i.bo, label %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit24.peel, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, ptr nonnull @4, i64 2) #20
          to label %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit24.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit24.peel: ; preds = %bb.al, %bb.ak
  %i.br = invoke { ptr, i64 } @_RNvXsx_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.bp)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.am:                                            ; preds = %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit24.peel
  %i.bs = extractvalue { ptr, i64 } %i.br, 0
  %i.bt = extractvalue { ptr, i64 } %i.br, 1
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, ptr %i.bs, i64 %i.bt)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  %i.bu = load i64, ptr %i.bq, align 8
  %.not10.peel = icmp eq i64 %i.bu, -1
  br i1 %.not10.peel, label %.backedge.peel.preheader, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4pushCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, i32 61)
          to label %.invoke88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.backedge.peel:                                   ; preds = %.backedge.peel.preheader, %bb.ax
  %i.bv = invoke align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBa_6option6OptionNtNtCs1QQTzni0HOp_3syn4expr4ExprEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.c)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ap:                                            ; preds = %.backedge.peel
  %.not8 = icmp eq ptr %i.bv, null
  br i1 %.not8, label %.loopexit60.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 2 uses
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, ptr nonnull @4, i64 2) #20
          to label %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit60:                                      ; preds = %bb.aj
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8
  %.not9 = icmp eq i64 %i.by, -1
  br i1 %.not9, label %bb.as, label %bb.ar

.loopexit60.thread:                               ; preds = %bb.ap
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %.not972 = icmp eq i64 %i.ca, -1
  br i1 %.not972, label %bb.as, label %.thread

bb.ar:                                            ; preds = %.loopexit60
  br i1 %i.bo, label %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit26, label %.thread

.thread:                                          ; preds = %.loopexit60.thread, %bb.ar
  %i.cb = phi ptr [ %i.bx, %bb.ar ], [ %i.bz, %.loopexit60.thread ]
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, ptr nonnull @4, i64 2) #20
          to label %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %.loopexit60.thread, %bb.au, %.loopexit60
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4pushCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, i32 41)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit26: ; preds = %.thread, %bb.ar
  %i.cc = phi ptr [ %i.cb, %.thread ], [ %i.bx, %bb.ar ]
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, ptr nonnull @41, i64 2)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit26
  %i.cd = invoke { ptr, i64 } @_RNvXsx_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.cc)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.au:                                            ; preds = %bb.at
  %i.ce = extractvalue { ptr, i64 } %i.cd, 0
  %i.cf = extractvalue { ptr, i64 } %i.cd, 1
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, ptr %i.ce, i64 %i.cf)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  ret void

_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit24: ; preds = %bb.aq
  %i.cg = invoke { ptr, i64 } @_RNvXsx_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.bv)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aw:                                            ; preds = %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit24
  %i.ch = extractvalue { ptr, i64 } %i.cg, 0
  %i.ci = extractvalue { ptr, i64 } %i.cg, 1
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, ptr %i.ch, i64 %i.ci)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %bb.aw
  %i.cj = load i64, ptr %i.bw, align 8
  %.not10 = icmp eq i64 %i.cj, -1
  br i1 %.not10, label %.backedge.peel, label %bb.ay, !llvm.loop !7

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4pushCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, i32 61)
          to label %.invoke88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke88:                                        ; preds = %bb.ay, %bb.ao
  %i.ck = phi ptr [ %i.bq, %bb.ao ], [ %i.bw, %bb.ay ]
  invoke void @_RNvNtCsbi23obv45GP_19pyo3_macros_backend5utils14expr_to_python(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.ck)
          to label %.invoke87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke87:                                        ; preds = %.invoke88
  %i.cl = invoke { ptr, i64 } @_RNvXsx_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.b)
          to label %.invoke85 unwind label %.loopexit.split-lp62.loopexit.split-lp ; 2 uses

.loopexit.split-lp62.loopexit.split-lp:           ; preds = %.invoke87, %.invoke85
  %lpad.loopexit.split-lp76 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3FigHW6Y7TR_11proc_macro2(ptr nonnull align 8 %i.b) #18
          to label %.loopexit.split-lp.loopexit.split-lp unwind label %bb.az

.invoke85:                                        ; preds = %.invoke87
  %i.cm = extractvalue { ptr, i64 } %i.cl, 0
  %i.cn = extractvalue { ptr, i64 } %i.cl, 1
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, ptr %i.cm, i64 %i.cn)
          to label %.invoke unwind label %.loopexit.split-lp62.loopexit.split-lp

.invoke:                                          ; preds = %.invoke85
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3FigHW6Y7TR_11proc_macro2(ptr nonnull align 8 %i.b)
          to label %.backedge.peel.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !7

.backedge.peel.preheader:                         ; preds = %bb.an, %.invoke
  br label %.backedge.peel

bb.az:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp81.loopexit.split-lp, %.loopexit.split-lp62.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit: ; preds = %bb.z
  %i.cp = invoke { ptr, i64 } @_RNvXsx_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.ay)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ba:                                            ; preds = %_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature14text_signature0Bb_.exit
  %i.cq = extractvalue { ptr, i64 } %i.cp, 0
  %i.cr = extractvalue { ptr, i64 } %i.cp, 1
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, ptr %i.cq, i64 %i.cr)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ba
  %.not11 = icmp eq ptr %i.ba, null
  br i1 %.not11, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4pushCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.k, i32 61)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bh, %bb.bb
  %i.cs = load i64, ptr %i.al, align 8            ; 2 uses
  %.not12 = icmp ne i64 %i.cs, 0
  %i.ct = add i64 %i.az, 1
  %i.cu = icmp eq i64 %i.ct, %i.cs
  %or.cond = select i1 %.not12, i1 %i.cu, i1 false
  br i1 %or.cond, label %.invoke84, label %.backedge34.peel, !llvm.loop !8

bb.be:                                            ; preds = %bb.bc
  invoke void @_RNvNtCsbi23obv45GP_19pyo3_macros_backend5utils14expr_to_python(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.ba)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  %i.cv = invoke { ptr, i64 } @_RNvXsx_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.d)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp81.loopexit.split-lp ; 2 uses

.loopexit.split-lp.loopexit.split-lp81.loopexit.split-lp: ; preds = %bb.bg, %bb.bf, %bb.u, %bb.v
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3FigHW6Y7TR_11proc_macro2(ptr nonnull align 8 %i.d) #18
          to label %.loopexit.split-lp.loopexit.split-lp unwind label %bb.az

end_hunk_0
