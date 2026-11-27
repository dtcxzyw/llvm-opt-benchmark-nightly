Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3-c97dc5db0a5415c3.pyo3.99b17b84ad475dbd-cgu.07?download=true
inline.NumInlined: 139
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3vec16extract_sequencehEB8_:bb.a

bb.al:                                            ; preds = %bb.ak
  %i.cb = add i64 %i.bz, -1                       ; 2 uses
  store i64 %i.cb, ptr %.sroa.57.0.copyload, align 8
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit50

bb.am:                                            ; preds = %bb.al
  call void @_Py_Dealloc(ptr noundef nonnull %.sroa.57.0.copyload) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit50

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit50: ; preds = %bb.am, %bb.al, %bb.ak, %bb.z
  %.val = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.cd = load i64, ptr %.val, align 8, !noundef !4 ; 2 uses
  %i.ce = and i64 %i.cd, 2147483648
  %.not.i.i51 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i51, label %bb.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types8iterator10PyIteratorEEBG_.exit52

bb.an:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit50
  %i.cf = add i64 %i.cd, -1                       ; 2 uses
  store i64 %i.cf, ptr %.val, align 8
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.ao, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types8iterator10PyIteratorEEBG_.exit52

bb.ao:                                            ; preds = %bb.an
  call void @_Py_Dealloc(ptr noundef nonnull %.val) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types8iterator10PyIteratorEEBG_.exit52

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types8iterator10PyIteratorEEBG_.exit
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types8iterator10PyIteratorEEBG_.exit52: ; preds = %bb.ao, %bb.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types8iterator10PyIteratorEEBG_.exit52, %bb.p
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdc6yCHiM2ZJ_4pyo3.exit unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %bb.aq
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBc_5PyErr3newNtNtBe_10exceptions12PyValueErrorNtNtCsexYYUdYSQU6_5alloc6string6StringE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTNtNtBe_6marker6PythonEE9call_once6vtableBe_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr @PyExc_ValueError, align 8, !noalias !37, !nonnull !4, !noundef !4 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !noalias !37, !noundef !4
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions12PyValueErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.d, ptr %i.b, align 8, !noalias !37
  br label %_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions12PyValueErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i

_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions12PyValueErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.f = invoke noundef nonnull ptr @_RNvXNtCsdc6yCHiM2ZJ_4pyo33errNtNtCsexYYUdYSQU6_5alloc6string6StringNtB2_14PyErrArguments9argumentsB4_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions12PyValueErrorNtNtCsexYYUdYSQU6_5alloc6string6StringE0B9_.exit unwind label %bb.c, !noalias !37

bb.c:                                             ; preds = %_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions12PyValueErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEEBG_(ptr nonnull %i.b) #25
          to label %bb.e unwind label %bb.d, !noalias !37

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !37
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions12PyValueErrorNtNtCsexYYUdYSQU6_5alloc6string6StringE0B9_.exit: ; preds = %_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions12PyValueErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.f, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBc_5PyErr3newNtNtBe_10exceptions13PyBufferErrorReE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTNtNtBe_6marker6PythonEE9call_once6vtableBe_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = load ptr, ptr @PyExc_BufferError, align 8, !noalias !40, !nonnull !4, !noundef !4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !noalias !40, !noundef !4
  %i.f = add i32 %i.e, 1                          ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions13PyBufferErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.f, ptr %i.d, align 8, !noalias !40
  br label %_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions13PyBufferErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i

_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions13PyBufferErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i: ; preds = %bb.b, %bb.a
  %i.h = invoke noundef nonnull ptr @_RNvXNtCsdc6yCHiM2ZJ_4pyo33errReNtB2_14PyErrArguments9argumentsB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c)
          to label %_RNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions13PyBufferErrorReE0B9_.exit unwind label %bb.c

bb.c:                                             ; preds = %_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions13PyBufferErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEEBG_(ptr nonnull %i.d) #25
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i

_RNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions13PyBufferErrorReE0B9_.exit: ; preds = %_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions13PyBufferErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %i.h, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo310exceptions6socketNtB2_6herror15type_object_raw() unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo35impl_10exceptionsNtB2_27ImportedExceptionTypeObject3get(ptr noundef nonnull align 8 @_RNvNvMNtNtCsdc6yCHiM2ZJ_4pyo310exceptions6socketNtB4_6herror15type_object_raw11TYPE_OBJECT)
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo35types9frozensetNtB2_18PyFrozenSetBuilder3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = tail call noundef ptr @PyFrozenSet_New(ptr noundef null) #21, !noalias !43 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !43
  call void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b), !noalias !43
  %i.f = load i64, ptr %i.b, align 8, !range !6, !noalias !43, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43
  %.sroa.4.8.copyload.i = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.8.copyload.i, ptr %i.i, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.j, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i64 [ 0, %bb.f ], [ 1, %bb.e ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo35types9tracebackNtB2_11PyTraceback3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i32, ptr @PyTraceBack_Type, align 8, !noundef !4
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.d, ptr @PyTraceBack_Type, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.f, align 8
  store ptr %2, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %5 = zext i32 %3 to i64
  %6 = zext i32 %4 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or disjoint i64 %7, %5
  store i64 %8, ptr %i.g, align 8
  invoke void @_RNvXsE_NtNtCsdc6yCHiM2ZJ_4pyo35types5tupleTINtNtCskKLDkoKarTP_4core6option6OptionINtNtB9_8instance5BoundNtNtB7_9traceback11PyTracebackEEIB1i_NtNtB7_5frame7PyFrameEllENtNtB9_4call10PyCallArgs15call_positionalB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull @PyTraceBack_Type)
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load i64, ptr @PyTraceBack_Type, align 8, !noundef !4 ; 2 uses
  %i.j = and i64 %i.i, 2147483648
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.k, ptr @PyTraceBack_Type, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull @PyTraceBack_Type) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = load i64, ptr %i.b, align 8, !range !6, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.06.0.copyload = load ptr, ptr %i.o, align 8 ; 2 uses
  br i1 %i.n, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.06.0.copyload, ptr %i.p, align 8
  store i64 1, ptr %0, align 8
  %i.q = load i64, ptr @PyTraceBack_Type, align 8, !noundef !4 ; 2 uses
  %i.r = and i64 %i.q, 2147483648
  %.not.i.i14 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i14, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15

bb.i:                                             ; preds = %bb.h
  %i.s = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.s, ptr @PyTraceBack_Type, align 8
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.06.0.copyload, ptr %i.u, align 8
  store i64 0, ptr %0, align 8
  %i.v = load i64, ptr @PyTraceBack_Type, align 8, !noundef !4 ; 2 uses
  %i.w = and i64 %i.v, 2147483648
  %.not.i.i16 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i16, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15

bb.k:                                             ; preds = %bb.j
  %i.x = add i64 %i.v, -1                         ; 2 uses
  store i64 %i.x, ptr @PyTraceBack_Type, align 8
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15.sink.split: ; preds = %bb.k, %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull @PyTraceBack_Type) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15.sink.split, %bb.k, %bb.j, %bb.i, %bb.h
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit: ; preds = %bb.f, %bb.e, %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define { i64, i64 } @_RNvMs2_NtCsdc6yCHiM2ZJ_4pyo36bufferNtB5_11ElementType11from_format(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = icmp ne i64 %1, 0
  tail call void @llvm.assume(i1 %i.a)
  switch i64 %1, label %_RNvNtCsdc6yCHiM2ZJ_4pyo36buffer34native_element_type_from_type_char.exit [
    i64 2, label %bb.b
    i64 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.d
  %.sroa.01.0 = phi ptr [ %i.e, %bb.d ], [ %0, %bb.a ]
  %i.b = load i8, ptr %.sroa.01.0, align 1, !noundef !4
  %switch.tableidx = add i8 %i.b, -63             ; 2 uses
  %i.c = icmp ult i8 %switch.tableidx, 51
  br i1 %i.c, label %_RNvNtCsdc6yCHiM2ZJ_4pyo36buffer34native_element_type_from_type_char.exit.sink.split, label %_RNvNtCsdc6yCHiM2ZJ_4pyo36buffer34native_element_type_from_type_char.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !noundef !4
  switch i8 %i.d, label %_RNvNtCsdc6yCHiM2ZJ_4pyo36buffer34native_element_type_from_type_char.exit [
    i8 64, label %bb.d
    i8 61, label %bb.e
    i8 60, label %bb.e
    i8 62, label %bb.e
    i8 33, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.b

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !noundef !4
  %switch.tableidx5 = add i8 %i.g, -63            ; 2 uses
  %i.h = icmp ult i8 %switch.tableidx5, 51
  br i1 %i.h, label %_RNvNtCsdc6yCHiM2ZJ_4pyo36buffer34native_element_type_from_type_char.exit.sink.split, label %_RNvNtCsdc6yCHiM2ZJ_4pyo36buffer34native_element_type_from_type_char.exit

_RNvNtCsdc6yCHiM2ZJ_4pyo36buffer34native_element_type_from_type_char.exit.sink.split: ; preds = %bb.e, %bb.b
  %switch.tableidx5.sink13 = phi i8 [ %switch.tableidx, %bb.b ], [ %switch.tableidx5, %bb.e ] ; 2 uses
  %switch.table._RNvMs2_NtCsdc6yCHiM2ZJ_4pyo36bufferNtB5_11ElementType11from_format.49.sink = phi ptr [ @switch.table._RNvMs2_NtCsdc6yCHiM2ZJ_4pyo36bufferNtB5_11ElementType11from_format, %bb.b ], [ @switch.table._RNvMs2_NtCsdc6yCHiM2ZJ_4pyo36bufferNtB5_11ElementType11from_format.49, %bb.e ]
  %switch.table._RNvMs2_NtCsdc6yCHiM2ZJ_4pyo36bufferNtB5_11ElementType11from_format.50.sink = phi ptr [ @switch.table._RNvMs2_NtCsdc6yCHiM2ZJ_4pyo36bufferNtB5_11ElementType11from_format.48, %bb.b ], [ @switch.table._RNvMs2_NtCsdc6yCHiM2ZJ_4pyo36bufferNtB5_11ElementType11from_format.50, %bb.e ]
  %i.i = zext nneg i8 %switch.tableidx5.sink13 to i64
  %switch.gep7 = getelementptr inbounds nuw i8, ptr %switch.table._RNvMs2_NtCsdc6yCHiM2ZJ_4pyo36bufferNtB5_11ElementType11from_format.49.sink, i64 %i.i
  %switch.load8 = load i8, ptr %switch.gep7, align 1
  %switch.ext9 = zext i8 %switch.load8 to i64
  %i.j = zext nneg i8 %switch.tableidx5.sink13 to i64
  %switch.gep10 = getelementptr inbounds nuw i8, ptr %switch.table._RNvMs2_NtCsdc6yCHiM2ZJ_4pyo36bufferNtB5_11ElementType11from_format.50.sink, i64 %i.j
  %switch.load11 = load i8, ptr %switch.gep10, align 1
  %switch.ext12 = zext i8 %switch.load11 to i64
  br label %_RNvNtCsdc6yCHiM2ZJ_4pyo36buffer34native_element_type_from_type_char.exit

_RNvNtCsdc6yCHiM2ZJ_4pyo36buffer34native_element_type_from_type_char.exit: ; preds = %_RNvNtCsdc6yCHiM2ZJ_4pyo36buffer34native_element_type_from_type_char.exit.sink.split, %bb.e, %bb.b, %bb.c, %bb.a
  %.sroa.16.0 = phi i64 [ undef, %bb.a ], [ undef, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ], [ %switch.ext9, %_RNvNtCsdc6yCHiM2ZJ_4pyo36buffer34native_element_type_from_type_char.exit.sink.split ]
  %.sroa.0.0 = phi i64 [ 4, %bb.a ], [ 4, %bb.e ], [ 4, %bb.c ], [ 4, %bb.b ], [ %switch.ext12, %_RNvNtCsdc6yCHiM2ZJ_4pyo36buffer34native_element_type_from_type_char.exit.sink.split ]
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.16.0, 1
  ret { i64, i64 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs3_NtNtCsdc6yCHiM2ZJ_4pyo35types9frozensetNtB5_22BoundFrozenSetIterator3new(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo35types8iteratorNtB2_10PyIterator11from_object(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.l, %bb.g ]
  %i.e = load i64, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.f = and i64 %i.e, 2147483648
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types9frozenset11PyFrozenSetEEBG_.exit

bb.c:                                             ; preds = %.body
  %i.g = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.g, ptr %0, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types9frozenset11PyFrozenSetEEBG_.exit

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %0) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types9frozenset11PyFrozenSetEEBG_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.i = load i64, ptr %i.b, align 8, !range !6, !alias.scope !46, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.j, !prof !9

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 35, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #24
          to label %bb.h unwind label %bb.g, !noalias !46

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #25
          to label %.body unwind label %bb.i, !noalias !46

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !46
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !46, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_0
begin_hunk_1_@_RNvNvMNtNtCsdc6yCHiM2ZJ_4pyo35types9frozensetNtB4_18PyFrozenSetBuilder3add5inner:bb.a

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b), !noalias !63
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !63
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  store i64 1, ptr %0, align 8, !alias.scope !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !63
  br label %_RINvNtCsdc6yCHiM2ZJ_4pyo33err17error_on_minusonelEB4_.exit

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !63
  br label %_RINvNtCsdc6yCHiM2ZJ_4pyo33err17error_on_minusonelEB4_.exit

_RINvNtCsdc6yCHiM2ZJ_4pyo33err17error_on_minusonelEB4_.exit: ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvXs0_NtNtCsdc6yCHiM2ZJ_4pyo35types4listINtNtBb_8instance5BoundNtB7_6PyListENtB7_13PyListMethods6append5inner(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = tail call noundef i32 @PyList_Append(ptr noundef nonnull %i.c, ptr noundef nonnull %2) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %.not.i = icmp eq i32 %i.d, -1
  br i1 %.not.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66
  call void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a), !noalias !66
  %i.e = load i64, ptr %i.a, align 8, !range !6, !noalias !66, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !66
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b), !noalias !66
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  store i64 1, ptr %0, align 8, !alias.scope !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !66
  br label %_RINvNtCsdc6yCHiM2ZJ_4pyo33err17error_on_minusonelEB4_.exit

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !66
  br label %_RINvNtCsdc6yCHiM2ZJ_4pyo33err17error_on_minusonelEB4_.exit

_RINvNtCsdc6yCHiM2ZJ_4pyo33err17error_on_minusonelEB4_.exit: ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvXs0_NtNtCsdc6yCHiM2ZJ_4pyo35types4listINtNtBb_8instance5BoundNtB7_6PyListENtB7_13PyListMethods6insert5inner(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, ptr noundef nonnull %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = tail call noundef i64 @_RNvNtCsdc6yCHiM2ZJ_4pyo315internal_tricks15get_ssize_index(i64 noundef %2)
  %i.e = tail call noundef i32 @PyList_Insert(ptr noundef nonnull %i.c, i64 noundef %i.d, ptr noundef nonnull %3) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %.not.i = icmp eq i32 %i.e, -1
  br i1 %.not.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  call void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a), !noalias !69
  %i.f = load i64, ptr %i.a, align 8, !range !6, !noalias !69, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !69
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b), !noalias !69
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  store i64 1, ptr %0, align 8, !alias.scope !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69
  br label %_RINvNtCsdc6yCHiM2ZJ_4pyo33err17error_on_minusonelEB4_.exit

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !69
  br label %_RINvNtCsdc6yCHiM2ZJ_4pyo33err17error_on_minusonelEB4_.exit

_RINvNtCsdc6yCHiM2ZJ_4pyo33err17error_on_minusonelEB4_.exit: ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvXs0_NtNtCsdc6yCHiM2ZJ_4pyo35types4listINtNtBb_8instance5BoundNtB7_6PyListENtB7_13PyListMethods8set_item5inner(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, ptr noundef nonnull %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = invoke noundef i64 @_RNvNtCsdc6yCHiM2ZJ_4pyo315internal_tricks15get_ssize_index(i64 noundef %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @PyList_SetItem(ptr noundef nonnull %i.c, i64 noundef %i.d, ptr noundef nonnull %3) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %.not.i = icmp eq i32 %i.e, -1
  br i1 %.not.i, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !72
  call void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a), !noalias !72
  %i.f = load i64, ptr %i.a, align 8, !range !6, !noalias !72, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %.noexc
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !72
  br label %.noexc2

bb.d:                                             ; preds = %.noexc
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b), !noalias !72
  br label %.noexc2

.noexc2:                                          ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  store i64 1, ptr %0, align 8, !alias.scope !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !72
  br label %_RINvNtCsdc6yCHiM2ZJ_4pyo33err17error_on_minusonelEB4_.exit

bb.e:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !alias.scope !72
  br label %_RINvNtCsdc6yCHiM2ZJ_4pyo33err17error_on_minusonelEB4_.exit

_RINvNtCsdc6yCHiM2ZJ_4pyo33err17error_on_minusonelEB4_.exit: ; preds = %bb.e, %.noexc2
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit: ; preds = %bb.h, %bb.g, %bb.f
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.f:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.j = load i64, ptr %3, align 8, !noundef !4   ; 2 uses
  %i.k = and i64 %i.j, 2147483648
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

bb.g:                                             ; preds = %bb.f
  %i.l = add i64 %i.j, -1                         ; 2 uses
  store i64 %i.l, ptr %3, align 8
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %3) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvXs0_NtNtCsdc6yCHiM2ZJ_4pyo35types9frozensetINtNtBb_8instance5BoundNtB7_11PyFrozenSetENtB7_18PyFrozenSetMethods8contains5inner(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 1)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = tail call noundef i32 @PySet_Contains(ptr noundef nonnull %i.c, ptr noundef nonnull %2) #21
  switch i32 %i.d, label %bb.b [
    i32 1, label %bb.c
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a)
  %i.e = load i64, ptr %i.a, align 8, !range !6, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.f, label %bb.g, !prof !8

bb.c:                                             ; preds = %bb.a
  store i16 256, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i16 0, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d, %bb.c
  ret void

bb.f:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject18sequence_extractor(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvNvMsb_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types5bytes7PyBytesEBa_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull %0)
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvNvMsb_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types9bytearray11PyByteArrayEBa_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noundef nonnull %0)
          to label %bb.g unwind label %bb.f

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB12_5types5bytes7PyBytesENtNtNtB12_3err10cast_error9CastErrorEEB12_.exit

bb.c:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val6 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.g = load i64, ptr %.val6, align 8, !noundef !4 ; 2 uses
  %i.h = and i64 %i.g, 2147483648
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB12_5types5bytes7PyBytesENtNtNtB12_3err10cast_error9CastErrorEEB12_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.i, ptr %.val6, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB12_5types5bytes7PyBytesENtNtNtB12_3err10cast_error9CastErrorEEB12_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val6) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB12_5types5bytes7PyBytesENtNtNtB12_3err10cast_error9CastErrorEEB12_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB12_5types5bytes7PyBytesENtNtNtB12_3err10cast_error9CastErrorEEB12_.exit: ; preds = %.thread, %bb.c, %bb.d, %bb.e
  %.sroa.0.014 = phi i64 [ 0, %.thread ], [ %.sroa.0.1, %bb.e ], [ %.sroa.0.1, %bb.c ], [ %.sroa.0.1, %bb.d ]
  %.sroa.4.013 = phi ptr [ %i.e, %.thread ], [ %.sroa.4.1, %bb.e ], [ %.sroa.4.1, %bb.c ], [ %.sroa.4.1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = insertvalue { i64, ptr } poison, i64 %.sroa.0.014, 0
  %i.l = insertvalue { i64, ptr } %i.k, ptr %.sroa.4.013, 1
  ret { i64, ptr } %i.l

bb.f:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val4 = load ptr, ptr %i.n, align 8
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB12_5types5bytes7PyBytesENtNtNtB12_3err10cast_error9CastErrorEEB12_(ptr nonnull %i.c, ptr %.val4) #25
  resume { ptr, i32 } %i.m

bb.g:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.a, align 8, !noundef !4
  %.not3 = icmp eq ptr %i.o, null                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 5 uses
  %.sroa.4.1 = select i1 %.not3, ptr %i.q, ptr undef ; 3 uses
  %.sroa.0.1 = select i1 %.not3, i64 1, i64 2     ; 3 uses
  br i1 %.not3, label %bb.c, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.r = load i64, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.s = and i64 %i.r, 2147483648
  %.not.i.i.i.i9 = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i9, label %bb.i, label %bb.c

bb.i:                                             ; preds = %bb.h
  %i.t = add i64 %i.r, -1                         ; 2 uses
  store i64 %i.t, ptr %i.q, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.j, label %bb.c

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #21
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5arrayAhj10_NtNtBb_10conversion12FromPyObject7extractBb_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.8.i.i = alloca [54 x i8], align 2        ; 4 uses
  %.sroa.7.i.i = alloca [54 x i8], align 2        ; 4 uses
  %i.c = alloca [16 x i8], align 1                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = tail call fastcc { i64, ptr } @_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject18sequence_extractor(ptr noundef nonnull %1) #27 ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i64, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.j, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.l, align 8
  call void @_RINvXs2_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numNtB6_22BytesSequenceExtractorNtNtNtBc_10conversion23from_py_object_sequence20FromPyObjectSequence8to_arrayKj10_EBc_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %1, ptr %i.g, align 8, !noalias !84
  %i.m = tail call noundef i32 @PySequence_Check(ptr noundef nonnull %1) #21, !noalias !84
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !84
  call void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB5_10PyOnceLockINtNtB9_8instance2PyNtNtNtB9_5types10typeobject6PyTypeEE6importB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.e, ptr noundef nonnull align 8 @_RNvNvXNtNtCsdc6yCHiM2ZJ_4pyo35types8sequenceNtB4_10PySequenceNtNtB8_11type_object10PyTypeInfo15type_object_raw4TYPE, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 8), !noalias !84
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.o = load i64, ptr %i.e, align 8, !range !6, !alias.scope !85, !noalias !84, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.e, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBN_5types10typeobject6PyTypeENtNtBN_3err5PyErrE6unwrapBN_.exit.i, !prof !9

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !86
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !84
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
          to label %bb.g unwind label %bb.f, !noalias !86

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d) #25
          to label %common.resume.i unwind label %bb.h, !noalias !86

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !86
  unreachable

common.resume.i:                                  ; preds = %bb.s, %bb.r, %bb.q, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.am, %bb.s ], [ %i.am, %bb.r ], [ %i.am, %bb.q ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBN_5types10typeobject6PyTypeENtNtBN_3err5PyErrE6unwrapBN_.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !85, !noalias !84, !nonnull !4, !align !10, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !84
  %i.v = load ptr, ptr %i.u, align 8, !noalias !84, !nonnull !4, !noundef !4 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !noalias !84, !noundef !4
  %i.x = add i32 %i.w, 1                          ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !84
  call void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3len(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !noalias !84
  %i.z = load i64, ptr %i.f, align 8, !range !6, !noalias !84, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.06.0.copyload.i = load i64, ptr %i.ab, align 8, !noalias !84 ; 3 uses
  br i1 %i.aa, label %bb.l, label %bb.m

bb.j:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBN_5types10typeobject6PyTypeENtNtBN_3err5PyErrE6unwrapBN_.exit.i
  store i32 %i.x, ptr %i.v, align 8, !noalias !84
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBN_5types10typeobject6PyTypeENtNtBN_3err5PyErrE6unwrapBN_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtNtCsdc6yCHiM2ZJ_4pyo33err10cast_errorNtB7_5PyErrINtNtCskKLDkoKarTP_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ac, ptr noundef nonnull %1, ptr noundef nonnull %i.v)
  store i8 1, ptr %0, align 8, !alias.scope !84
  br label %_RINvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5array21create_array_from_objhKj10_EB8_.exit

bb.l:                                             ; preds = %bb.i
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.49.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !84
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.06.0.copyload.i, ptr %i.ad, align 8, !alias.scope !84
  store i8 1, ptr %0, align 8, !alias.scope !84
  br label %_RINvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5array21create_array_from_objhKj10_EB8_.exit

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !84
  %.not.i = icmp eq i64 %.sroa.06.0.copyload.i, 16
  br i1 %.not.i, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !88
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.8..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %.sroa.8.i.i, i64 6 ; 3 uses
  br label %.noexc.i.i

bb.o:                                             ; preds = %bb.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ah, ptr noundef nonnull align 1 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !89
  store i8 0, ptr %0, align 8, !alias.scope !90
  br label %_RINvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5array17array_try_from_fnNtNtB8_3err5PyErrNCINvB2_21create_array_from_objhKj10_E0hKB1V_EB8_.exit.i

.noexc.i.i:                                       ; preds = %bb.aa, %bb.n
  %.sroa.0.017.i.i = phi ptr [ %i.c, %bb.n ], [ %i.az, %bb.aa ] ; 2 uses
  %.sroa.06.016.i.i = phi i64 [ 0, %bb.n ], [ %i.ai, %bb.aa ] ; 2 uses
  %i.ai = add nuw nsw i64 %.sroa.06.016.i.i, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !91
  call void @_RINvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods8get_itemjEB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, i64 noundef range(i64 0, 16) %.sroa.06.016.i.i), !noalias !92
  %i.aj = load i64, ptr %i.b, align 8, !range !6, !noalias !91, !noundef !4
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %.thread.i.i, label %bb.p

.thread.i.i:                                      ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(48) %.sroa.8.8..sroa_idx11.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 48, i1 false), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !91
  br label %.loopexit.i.i

bb.p:                                             ; preds = %.noexc.i.i
  %i.al = load ptr, ptr %i.ae, align 8, !noalias !91, !nonnull !4, !noundef !4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93
  invoke void @_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull %i.al)
          to label %bb.t unwind label %bb.q, !noalias !94

bb.q:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.an = load i64, ptr %i.al, align 8, !noalias !94, !noundef !4 ; 2 uses
  %i.ao = and i64 %i.an, 2147483648
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %common.resume.i

bb.r:                                             ; preds = %bb.q
  %i.ap = add i64 %i.an, -1                       ; 2 uses
  store i64 %i.ap, ptr %i.al, align 8, !noalias !94
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.s, label %common.resume.i

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21, !noalias !94
  br label %common.resume.i

bb.t:                                             ; preds = %bb.p
  %i.ar = load i8, ptr %i.a, align 8, !range !12, !noalias !93, !noundef !4
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = load i8, ptr %i.af, align 1, !noalias !93, !noundef !4
  %2 = zext i8 %i.at to i16
  %3 = shl nuw i16 %2, 8
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %bb.u
  %.sroa.010.0.i.i = phi i16 [ 1, %bb.y ], [ %3, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !93
  %i.au = load i64, ptr %i.al, align 8, !noalias !94, !noundef !4 ; 2 uses
  %i.av = and i64 %i.au, 2147483648
  %.not.i.i2.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i2.i.i.i.i, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.aw = add i64 %i.au, -1                       ; 2 uses
  store i64 %i.aw, ptr %i.al, align 8, !noalias !94
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21, !noalias !94
  br label %bb.z

bb.y:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(48) %.sroa.8.8..sroa_idx11.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false), !noalias !88
  br label %bb.v

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !91
  %4 = trunc i16 %.sroa.010.0.i.i to i1
  br i1 %4, label %.loopexit.i.i, label %bb.aa

.loopexit.i.i:                                    ; preds = %bb.z, %.thread.i.i
  %.sroa.7.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i, i64 6 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(48) %.sroa.7.8..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(48) %.sroa.8.8..sroa_idx11.i.i, i64 48, i1 false), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull align 2 dereferenceable(48) %.sroa.7.8..sroa_idx.i.i, i64 48, i1 false), !noalias !89
  store i8 1, ptr %0, align 8, !alias.scope !90
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %_RINvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5array17array_try_from_fnNtNtB8_3err5PyErrNCINvB2_21create_array_from_objhKj10_E0hKB1V_EB8_.exit.i

bb.aa:                                            ; preds = %bb.z
  %.sroa.010.1.extract.shift.i.i = lshr exact i16 %.sroa.010.0.i.i, 8
  %.sroa.010.1.extract.trunc.i.i = trunc nuw i16 %.sroa.010.1.extract.shift.i.i to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  store i8 %.sroa.010.1.extract.trunc.i.i, ptr %.sroa.0.017.i.i, align 1, !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 1
  %exitcond.not.i.i = icmp eq i64 %i.ai, 16
  br i1 %exitcond.not.i.i, label %bb.o, label %.noexc.i.i

_RINvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5array17array_try_from_fnNtNtB8_3err5PyErrNCINvB2_21create_array_from_objhKj10_E0hKB1V_EB8_.exit.i: ; preds = %.loopexit.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !88
  br label %_RINvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5array21create_array_from_objhKj10_EB8_.exit

bb.ab:                                            ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5array23invalid_sequence_length(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ba, i64 noundef 16, i64 noundef %.sroa.06.0.copyload.i)
  store i8 1, ptr %0, align 8, !alias.scope !84
  br label %_RINvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5array21create_array_from_objhKj10_EB8_.exit

_RINvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5array21create_array_from_objhKj10_EB8_.exit: ; preds = %bb.k, %bb.l, %_RINvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5array17array_try_from_fnNtNtB8_3err5PyErrNCINvB2_21create_array_from_objhKj10_E0hKB1V_EB8_.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.b, %_RINvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5array21create_array_from_objhKj10_EB8_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5arrayAhj4_NtNtBb_10conversion12FromPyObject7extractBb_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 18 uses
  %i.b = alloca [56 x i8], align 8                ; 18 uses
  %.sroa.8.i.i = alloca [54 x i8], align 2        ; 10 uses
  %.sroa.7.i.i = alloca [54 x i8], align 2        ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = tail call fastcc { i64, ptr } @_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject18sequence_extractor(ptr noundef nonnull %1) #27 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %.not = icmp eq i64 %i.i, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.h, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.k, align 8
  call void @_RINvXs2_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numNtB6_22BytesSequenceExtractorNtNtNtBc_10conversion23from_py_object_sequence20FromPyObjectSequence8to_arrayKj4_EBc_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8, !noalias !106
  %i.l = tail call noundef i32 @PySequence_Check(ptr noundef nonnull %1) #21, !noalias !106
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !106
  call void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB5_10PyOnceLockINtNtB9_8instance2PyNtNtNtB9_5types10typeobject6PyTypeEE6importB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noundef nonnull align 8 @_RNvNvXNtNtCsdc6yCHiM2ZJ_4pyo35types8sequenceNtB4_10PySequenceNtNtB8_11type_object10PyTypeInfo15type_object_raw4TYPE, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 8), !noalias !106
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.n = load i64, ptr %i.d, align 8, !range !6, !alias.scope !107, !noalias !106, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.e, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBN_5types10typeobject6PyTypeENtNtBN_3err5PyErrE6unwrapBN_.exit.i, !prof !9

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !108
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !106
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
          to label %bb.g unwind label %bb.f, !noalias !108

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c) #25
          to label %common.resume.i unwind label %bb.h, !noalias !108

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !108
  unreachable

common.resume.i:                                  ; preds = %bb.r, %bb.q, %bb.p, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.aj, %bb.r ], [ %i.aj, %bb.q ], [ %i.aj, %bb.p ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBN_5types10typeobject6PyTypeENtNtBN_3err5PyErrE6unwrapBN_.exit.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !107, !noalias !106, !nonnull !4, !align !10, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !106
  %i.u = load ptr, ptr %i.t, align 8, !noalias !106, !nonnull !4, !noundef !4 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !noalias !106, !noundef !4
  %i.w = add i32 %i.v, 1                          ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !106
  call void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3len(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f), !noalias !106
  %i.y = load i64, ptr %i.e, align 8, !range !6, !noalias !106, !noundef !4
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.06.0.copyload.i = load i64, ptr %i.aa, align 8, !noalias !106 ; 3 uses
  br i1 %i.z, label %bb.l, label %bb.m

bb.j:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBN_5types10typeobject6PyTypeENtNtBN_3err5PyErrE6unwrapBN_.exit.i
  store i32 %i.w, ptr %i.u, align 8, !noalias !106
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBN_5types10typeobject6PyTypeENtNtBN_3err5PyErrE6unwrapBN_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtNtCsdc6yCHiM2ZJ_4pyo33err10cast_errorNtB7_5PyErrINtNtCskKLDkoKarTP_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ab, ptr noundef nonnull %1, ptr noundef nonnull %i.u)
  store i8 1, ptr %0, align 8, !alias.scope !106
  br label %_RINvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5array21create_array_from_objhKj4_EB8_.exit

bb.l:                                             ; preds = %bb.i
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.49.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !106
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.06.0.copyload.i, ptr %i.ac, align 8, !alias.scope !106
  store i8 1, ptr %0, align 8, !alias.scope !106
  br label %_RINvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5array21create_array_from_objhKj4_EB8_.exit

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !106
  %.not.i = icmp eq i64 %.sroa.06.0.copyload.i, 4
  br i1 %.not.i, label %bb.n, label %bb.ay

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %.sroa.8.8..sroa_idx14.i.i = getelementptr inbounds nuw i8, ptr %.sroa.8.i.i, i64 6 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !110
  call void @_RINvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods8get_itemjEB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, i64 noundef range(i64 0, 4) 0), !noalias !111
  %i.ag = load i64, ptr %i.b, align 8, !range !6, !noalias !110, !noundef !4
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %.thread.i.i, label %bb.o

.thread.i.i:                                      ; preds = %.noexc.3.i.i, %.noexc.2.i.i, %.noexc.1.i.i, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(48) %.sroa.8.8..sroa_idx14.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !110
  br label %.loopexit.i.i

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.ad, align 8, !noalias !110, !nonnull !4, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  invoke void @_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull %i.ai)
          to label %bb.s unwind label %bb.p, !noalias !114

bb.p:                                             ; preds = %bb.ap, %bb.ah, %bb.z, %bb.o
  %.lcssa.i.i = phi ptr [ %i.ai, %bb.o ], [ %i.ay, %bb.z ], [ %i.bi, %bb.ah ], [ %i.bs, %bb.ap ] ; 3 uses
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ak = load i64, ptr %.lcssa.i.i, align 8, !noalias !114, !noundef !4 ; 2 uses
  %i.al = and i64 %i.ak, 2147483648
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.q, label %common.resume.i

bb.q:                                             ; preds = %bb.p
  %i.am = add i64 %i.ak, -1                       ; 2 uses
  store i64 %i.am, ptr %.lcssa.i.i, align 8, !noalias !114
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.r, label %common.resume.i

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %.lcssa.i.i) #21, !noalias !114
  br label %common.resume.i

bb.s:                                             ; preds = %bb.o
  %i.ao = load i8, ptr %i.a, align 8, !range !12, !noalias !113, !noundef !4
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = load i8, ptr %i.ae, align 1, !noalias !113, !noundef !4
  %2 = zext i8 %i.aq to i16
  %3 = shl nuw i16 %2, 8
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %bb.t
  %.sroa.013.0.i.i = phi i16 [ 1, %bb.x ], [ %3, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  %i.ar = load i64, ptr %i.ai, align 8, !noalias !114, !noundef !4 ; 2 uses
  %i.as = and i64 %i.ar, 2147483648
  %.not.i.i2.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i2.i.i.i.i, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.at = add i64 %i.ar, -1                       ; 2 uses
  store i64 %i.at, ptr %i.ai, align 8, !noalias !114
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @_Py_Dealloc(ptr noundef nonnull %i.ai) #21, !noalias !114
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(48) %.sroa.8.8..sroa_idx14.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.af, i64 48, i1 false), !noalias !112
  br label %bb.u

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !110
  %4 = trunc i16 %.sroa.013.0.i.i to i1
  br i1 %4, label %.loopexit.i.i, label %.noexc.1.i.i

.loopexit.i.i:                                    ; preds = %bb.aw, %bb.ao, %bb.ag, %bb.y, %.thread.i.i
  %.sroa.7.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i, i64 6 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(48) %.sroa.7.8..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(48) %.sroa.8.8..sroa_idx14.i.i, i64 48, i1 false), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull align 2 dereferenceable(48) %.sroa.7.8..sroa_idx.i.i, i64 48, i1 false), !noalias !115
  store i8 1, ptr %0, align 8, !alias.scope !116
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %_RINvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5array21create_array_from_objhKj4_EB8_.exit

.noexc.1.i.i:                                     ; preds = %bb.y
  %.sroa.013.1.extract.shift.i.i = lshr exact i16 %.sroa.013.0.i.i, 8
  %.sroa.013.1.extract.trunc.i.i = zext nneg i16 %.sroa.013.1.extract.shift.i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !110
  call void @_RINvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods8get_itemjEB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, i64 noundef range(i64 0, 4) 1), !noalias !111
  %i.aw = load i64, ptr %i.b, align 8, !range !6, !noalias !110, !noundef !4
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %.thread.i.i, label %bb.z

bb.z:                                             ; preds = %.noexc.1.i.i
  %i.ay = load ptr, ptr %i.ad, align 8, !noalias !110, !nonnull !4, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  invoke void @_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull %i.ay)
          to label %bb.aa unwind label %bb.p, !noalias !114

bb.aa:                                            ; preds = %bb.z
  %i.az = load i8, ptr %i.a, align 8, !range !12, !noalias !113, !noundef !4
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bb = load i8, ptr %i.ae, align 1, !noalias !113, !noundef !4
  %5 = zext i8 %i.bb to i16
  %6 = shl nuw i16 %5, 8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(48) %.sroa.8.8..sroa_idx14.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.af, i64 48, i1 false), !noalias !112
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.013.0.1.i.i = phi i16 [ 1, %bb.ac ], [ %6, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  %i.bc = load i64, ptr %i.ay, align 8, !noalias !114, !noundef !4 ; 2 uses
  %i.bd = and i64 %i.bc, 2147483648
  %.not.i.i2.i.i.1.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i2.i.i.1.i.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.be = add i64 %i.bc, -1                       ; 2 uses
  store i64 %i.be, ptr %i.ay, align 8, !noalias !114
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @_Py_Dealloc(ptr noundef nonnull %i.ay) #21, !noalias !114
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !110
  %7 = trunc i16 %.sroa.013.0.1.i.i to i1
  br i1 %7, label %.loopexit.i.i, label %.noexc.2.i.i

.noexc.2.i.i:                                     ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !110
  call void @_RINvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods8get_itemjEB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, i64 noundef range(i64 0, 4) 2), !noalias !111
  %i.bg = load i64, ptr %i.b, align 8, !range !6, !noalias !110, !noundef !4
  %i.bh = trunc nuw i64 %i.bg to i1
  br i1 %i.bh, label %.thread.i.i, label %bb.ah

bb.ah:                                            ; preds = %.noexc.2.i.i
  %i.bi = load ptr, ptr %i.ad, align 8, !noalias !110, !nonnull !4, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  invoke void @_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull %i.bi)
          to label %bb.ai unwind label %bb.p, !noalias !114

bb.ai:                                            ; preds = %bb.ah
  %i.bj = load i8, ptr %i.a, align 8, !range !12, !noalias !113, !noundef !4
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bl = load i8, ptr %i.ae, align 1, !noalias !113, !noundef !4
  %8 = zext i8 %i.bl to i16
  %9 = shl nuw i16 %8, 8
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(48) %.sroa.8.8..sroa_idx14.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.af, i64 48, i1 false), !noalias !112
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.013.0.2.i.i = phi i16 [ 1, %bb.ak ], [ %9, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  %i.bm = load i64, ptr %i.bi, align 8, !noalias !114, !noundef !4 ; 2 uses
  %i.bn = and i64 %i.bm, 2147483648
  %.not.i.i2.i.i.2.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i2.i.i.2.i.i, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.bo = add i64 %i.bm, -1                       ; 2 uses
  store i64 %i.bo, ptr %i.bi, align 8, !noalias !114
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_Py_Dealloc(ptr noundef nonnull %i.bi) #21, !noalias !114
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !110
  %10 = trunc i16 %.sroa.013.0.2.i.i to i1
  br i1 %10, label %.loopexit.i.i, label %.noexc.3.i.i

.noexc.3.i.i:                                     ; preds = %bb.ao
  %.sroa.013.1.extract.shift.2.i.i = lshr exact i16 %.sroa.013.0.2.i.i, 8
  %.sroa.013.1.extract.trunc.2.i.i = zext nneg i16 %.sroa.013.1.extract.shift.2.i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !110
  call void @_RINvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods8get_itemjEB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, i64 noundef range(i64 0, 4) 3), !noalias !111
  %i.bq = load i64, ptr %i.b, align 8, !range !6, !noalias !110, !noundef !4
  %i.br = trunc nuw i64 %i.bq to i1
  br i1 %i.br, label %.thread.i.i, label %bb.ap

bb.ap:                                            ; preds = %.noexc.3.i.i
  %i.bs = load ptr, ptr %i.ad, align 8, !noalias !110, !nonnull !4, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  invoke void @_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull %i.bs)
          to label %bb.aq unwind label %bb.p, !noalias !114

bb.aq:                                            ; preds = %bb.ap
  %i.bt = load i8, ptr %i.a, align 8, !range !12, !noalias !113, !noundef !4
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bv = load i8, ptr %i.ae, align 1, !noalias !113, !noundef !4
  %11 = zext i8 %i.bv to i16
  %12 = shl nuw i16 %11, 8
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(48) %.sroa.8.8..sroa_idx14.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.af, i64 48, i1 false), !noalias !112
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.013.0.3.i.i = phi i16 [ 1, %bb.as ], [ %12, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  %i.bw = load i64, ptr %i.bs, align 8, !noalias !114, !noundef !4 ; 2 uses
  %i.bx = and i64 %i.bw, 2147483648
  %.not.i.i2.i.i.3.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i2.i.i.3.i.i, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.by = add i64 %i.bw, -1                       ; 2 uses
  store i64 %i.by, ptr %i.bs, align 8, !noalias !114
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @_Py_Dealloc(ptr noundef nonnull %i.bs) #21, !noalias !114
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !110
  %13 = trunc i16 %.sroa.013.0.3.i.i to i1
  br i1 %13, label %.loopexit.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.sroa.013.1.extract.shift.3.i.i = lshr exact i16 %.sroa.013.0.3.i.i, 8
  %.sroa.013.1.extract.trunc.3.i.i = zext nneg i16 %.sroa.013.1.extract.shift.3.i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %.sroa.726.0.insert.shift.i.i = shl nuw i32 %.sroa.013.1.extract.trunc.3.i.i, 24
  %.sroa.6.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.013.1.extract.trunc.2.i.i, 16
  %.sroa.6.0.insert.insert.i.i = or disjoint i32 %.sroa.726.0.insert.shift.i.i, %.sroa.6.0.insert.shift.i.i
  %.sroa.5.0.insert.shift.i.i = zext i16 %.sroa.013.0.1.i.i to i32
  %.sroa.5.0.insert.insert.i.i = or disjoint i32 %.sroa.6.0.insert.insert.i.i, %.sroa.5.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.5.0.insert.insert.i.i, %.sroa.013.1.extract.trunc.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %.sroa.0.0.insert.insert.i.i, ptr %i.ca, align 1, !alias.scope !116
  store i8 0, ptr %0, align 8, !alias.scope !116
  br label %_RINvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5array21create_array_from_objhKj4_EB8_.exit

bb.ay:                                            ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5array23invalid_sequence_length(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.cb, i64 noundef 4, i64 noundef %.sroa.06.0.copyload.i)
  store i8 1, ptr %0, align 8, !alias.scope !106
  br label %_RINvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5array21create_array_from_objhKj4_EB8_.exit

_RINvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5array21create_array_from_objhKj4_EB8_.exit: ; preds = %bb.k, %bb.l, %.loopexit.i.i, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.az

bb.az:                                            ; preds = %bb.b, %_RINvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std5array21create_array_from_objhKj4_EB8_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCsdc6yCHiM2ZJ_4pyo36bufferNtB5_15PyUntypedBufferNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsdc6yCHiM2ZJ_4pyo36buffer12debug_buffer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRRSiNtB6_5Debug3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !123, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !123, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !124
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !125
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %i.g = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRiINtNtNtBa_5slice4iter4IteriEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 %i.c, ptr noundef nonnull readonly %i.f), !noalias !123
  %i.h = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !124
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRSiNtB6_5Debug3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !129
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !130
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRiINtNtNtBa_5slice4iter4IteriEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 %i.b, ptr noundef nonnull readonly %i.e)
  %i.g = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !129
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRSjNtB6_5Debug3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !134
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !135
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRjINtNtNtBa_5slice4iter4IterjEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 %i.b, ptr noundef nonnull readonly %i.e)
  %i.g = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !134
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtReNtB6_5Debug3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !138, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRiNtB6_5Debug3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !141, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs7_NtNtCskKLDkoKarTP_4core3fmt3numiNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsT_NtNtCskKLDkoKarTP_4core3fmt3numiNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsj_NtNtNtCskKLDkoKarTP_4core3fmt3num3impiNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsT_NtNtCskKLDkoKarTP_4core3fmt3numiNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs9_NtNtCskKLDkoKarTP_4core3fmt3numiNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsT_NtNtCskKLDkoKarTP_4core3fmt3numiNtB7_5Debug3fmt.exit

_RNvXsT_NtNtCskKLDkoKarTP_4core3fmt3numiNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !144, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt.exit

_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRReNtB6_7Display3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !147, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !147, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !147
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
end_hunk_1
