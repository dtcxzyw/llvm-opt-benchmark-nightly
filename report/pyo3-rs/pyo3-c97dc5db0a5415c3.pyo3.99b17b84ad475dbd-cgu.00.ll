Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3-c97dc5db0a5415c3.pyo3.99b17b84ad475dbd-cgu.00?download=true
inline.NumInlined: 464
inline.NumDeleted: 192
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addINtNtCsexYYUdYSQU6_5alloc6borrow3CoweERBF_EB9_:bb.a
bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdc6yCHiM2ZJ_4pyo3.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.h, %bb.i, %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.e, %bb.e ], [ %i.j, %bb.i ], [ %i.j, %bb.h ], [ %i.j, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdc6yCHiM2ZJ_4pyo3.exit.i.i: ; preds = %bb.d
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.h:                                             ; preds = %bb.j
  %i.h = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.h, ptr %i.a, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.i, label %common.resume

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #15
  br label %common.resume

bb.j:                                             ; preds = %bb.k
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.k = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.l = and i64 %i.k, 2147483648
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.h, label %common.resume

bb.k:                                             ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdc6yCHiM2ZJ_4pyo3.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void @_RNvNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods3add5inner(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.a, ptr noundef nonnull %.0.val)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.m = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.n = and i64 %i.m, 2147483648
  %.not.i.i21 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i21, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEEBG_.exit22

bb.m:                                             ; preds = %bb.l
  %i.o = add i64 %i.m, -1                         ; 2 uses
  store i64 %i.o, ptr %i.a, align 8
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEEBG_.exit22

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #15
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEEBG_.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEEBG_.exit22: ; preds = %bb.l, %bb.m, %bb.n
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, i64 } @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo35types5bytesINtNtB9_8instance8BorrowedNtB5_7PyBytesE8as_bytes(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @PyBytes_AsString(ptr noundef nonnull %0) #15
  %i.b = tail call noundef i64 @PyBytes_Size(ptr noundef nonnull %0) #15
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %i.b, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo35types9bytearrayINtNtB9_8instance8BorrowedNtB5_11PyByteArrayE8as_bytes(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @PyByteArray_AsString(ptr noundef nonnull %0) #15
  %i.b = tail call noundef i64 @PyByteArray_Size(ptr noundef nonnull %0) #15
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %i.b, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, i64 } @_RNvMs1_NtNtCsdc6yCHiM2ZJ_4pyo35types5bytesINtNtB9_8instance2PyNtB5_7PyBytesE8as_bytes(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = tail call noundef ptr @PyBytes_AsString(ptr noundef nonnull %i.a) #15
  %i.c = tail call noundef i64 @PyBytes_Size(ptr noundef nonnull %i.a) #15
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.c, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringINtNtB9_8instance8BorrowedNtB5_8PyStringE15to_string_lossy(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73
  store i64 0, ptr %i.c, align 8, !noalias !73
  %i.g = call noundef ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %1, ptr noundef nonnull %i.c) #15, !noalias !73 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultReNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB13_.exit13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !74
  call void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a), !noalias !74
  %i.i = load i64, ptr %i.a, align 8, !range !6, !noalias !74, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !73
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultReNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB13_.exit

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b), !noalias !73
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultReNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB13_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultReNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB13_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !74
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  store i64 1, ptr %i.f, align 8, !alias.scope !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = call noundef ptr @PyUnicode_AsEncodedString(ptr noundef nonnull %1, ptr noundef nonnull @7, ptr noundef nonnull @8) #15 ; 9 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultReNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB13_.exit
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultReNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB13_.exit13: ; preds = %bb.a
  %i.o = load i64, ptr %i.c, align 8, !noalias !73, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEEBG_.exit15

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEEBG_.exit15: ; preds = %bb.r, %bb.q, %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultReNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB13_.exit13
  ret void

bb.f:                                             ; preds = %bb.m, %bb.k, %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %i.t = and i64 %i.s, 2147483648
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEEBG_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.u, ptr %i.m, align 8
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEEBG_.exit

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.m) #15
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEEBG_.exit

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultReNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB13_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.w = call noundef ptr @PyBytes_AsString(ptr noundef nonnull %i.m) #15
  %i.x = call noundef i64 @PyBytes_Size(ptr noundef nonnull %i.m) #15
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.x)
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  %i.y = load i64, ptr %i.e, align 8, !range !5, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.y, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ac = load i64, ptr %i.ab, align 8            ; 5 uses
  br i1 %.not, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.l unwind label %bb.f

bb.l:                                             ; preds = %bb.k
  %i.ad = load i64, ptr %i.d, align 8, !range !6, !noundef !4
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !9, !noundef !4 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ae, label %bb.m, label %bb.n, !prof !10

bb.m:                                             ; preds = %bb.l
  %i.ai = load i64, ptr %i.ah, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ag, i64 %i.ai) #18
          to label %bb.s unwind label %bb.f

bb.n:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ak = icmp ule i64 %i.ac, %i.ag
  call void @llvm.assume(i1 %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not11 = icmp eq i64 %i.ac, 0
  br i1 %.not11, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 1 %i.aa, i64 %i.ac, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.n, %bb.o
  %.sroa.5.0 = phi ptr [ %i.aj, %bb.n ], [ %i.aj, %bb.o ], [ %i.aa, %bb.j ]
  %.sroa.01.0 = phi i64 [ %i.ag, %bb.n ], [ %i.ag, %bb.o ], [ %i.y, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %.sroa.01.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx3, align 8
  %.sroa.65.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ac, ptr %.sroa.65.0..sroa_idx6, align 8
  %i.al = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %i.am = and i64 %i.al, 2147483648
  %.not.i.i14 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i14, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEEBG_.exit15

bb.q:                                             ; preds = %bb.p
  %i.an = add i64 %i.al, -1                       ; 2 uses
  store i64 %i.an, ptr %i.m, align 8
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEEBG_.exit15

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.m) #15
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEEBG_.exit15

bb.s:                                             ; preds = %bb.m
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEEBG_.exit: ; preds = %bb.h, %bb.g, %bb.f
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringINtNtB9_8instance8BorrowedNtB5_8PyStringE6to_cow(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 32)) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !79
  store i64 0, ptr %i.c, align 8, !noalias !79
  %i.e = call noundef ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %1, ptr noundef nonnull %i.c) #15, !noalias !79 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !80
  call void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a), !noalias !80
  %i.g = load i64, ptr %i.a, align 8, !range !6, !noalias !80, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !80
  %.sroa.5.8.copyload1 = load ptr, ptr %i.b, align 8
  %.sroa.9.8..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.8.copyload3 = load i64, ptr %.sroa.9.8..sroa_idx2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !79
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.8.copyload1, ptr %i.j, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.8.copyload3, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.59.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.c, align 8, !noalias !79, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !79
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.k, ptr %.sroa.56.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i64 [ 0, %bb.f ], [ 1, %bb.e ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringINtNtB9_8instance8BorrowedNtB5_8PyStringE6to_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 24)) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.d = call noundef ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %1, ptr noundef nonnull %i.c) #15 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8
  store i64 0, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !83
  call void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a), !noalias !83
  %i.i = load i64, ptr %i.a, align 8, !range !6, !noalias !83, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  br label %_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr5fetch.exit

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b)
  br label %_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr5fetch.exit

_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr5fetch.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !83
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr5fetch.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringINtNtB9_8instance2PyNtB5_8PyStringE15to_string_lossy(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RNvMs1_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringINtNtB9_8instance8BorrowedNtB5_8PyStringE15to_string_lossy(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringINtNtB9_8instance2PyNtB5_8PyStringE6to_cow(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !91
  store i64 0, ptr %i.c, align 8, !noalias !91
  %i.f = call noundef ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #15, !noalias !91 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92
  call void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a), !noalias !92
  %i.h = load i64, ptr %i.a, align 8, !range !6, !noalias !92, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !noalias !90
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b), !noalias !90
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !92
  %.sroa.5.8.copyload1.i = load ptr, ptr %i.b, align 8, !noalias !90
  %.sroa.9.8..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.8.copyload3.i = load i64, ptr %.sroa.9.8..sroa_idx2.i, align 8, !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !91
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.8.copyload1.i, ptr %i.k, align 8, !alias.scope !90
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.8.copyload3.i, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !90
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.59.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  br label %_RNvMs1_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringINtNtB9_8instance8BorrowedNtB5_8PyStringE6to_cow.exit

bb.f:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.c, align 8, !noalias !91, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !91
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.m, align 8, !alias.scope !90
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !90
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.l, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !90
  br label %_RNvMs1_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringINtNtB9_8instance8BorrowedNtB5_8PyStringE6to_cow.exit

_RNvMs1_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringINtNtB9_8instance8BorrowedNtB5_8PyStringE6to_cow.exit: ; preds = %bb.e, %bb.f
  %.sink.i = phi i64 [ 0, %bb.f ], [ 1, %bb.e ]
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types5rangeINtNtB8_8instance5BoundNtB4_7PyRangeENtB4_14PyRangeMethods4step:bb.a
  call void @_Py_Dealloc(ptr noundef nonnull %.sroa.06.0.copyload) #15, !noalias !418
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15: ; preds = %bb.j, %bb.i, %bb.h, %bb.c
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit: ; preds = %bb.g, %bb.f, %bb.e
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types5rangeINtNtB8_8instance5BoundNtB4_7PyRangeENtB4_14PyRangeMethods4stop(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load ptr, ptr @_RNvNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types5rangeINtNtBa_8instance5BoundNtB6_7PyRangeENtB6_14PyRangeMethods4stop8INTERNED, align 8, !nonnull !4, !noundef !4
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types5rangeINtNtBa_8instance5BoundNtB6_7PyRangeENtB6_14PyRangeMethods4stop8INTERNED, i64 8), align 8, !noundef !4
  store ptr %i.a, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.e, ptr %i.g, align 8
  %i.h = call noundef align 8 ptr @_RNvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB5_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getBU_(ptr noundef nonnull align 8 getelementptr inbounds nuw (i8, ptr @_RNvNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types5rangeINtNtBa_8instance5BoundNtB6_7PyRangeENtB6_14PyRangeMethods4stop8INTERNED, i64 16)), !noalias !429 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs3_B5_NtB5_8Interned3get0EB7_.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef nonnull align 8 ptr @_RINvNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs3_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEEB6_(ptr noundef nonnull align 8 getelementptr inbounds nuw (i8, ptr @_RNvNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types5rangeINtNtBa_8instance5BoundNtB6_7PyRangeENtB6_14PyRangeMethods4stop8INTERNED, i64 16), ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  br label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs3_B5_NtB5_8Interned3get0EB7_.exit

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs3_B5_NtB5_8Interned3get0EB7_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.i, %bb.b ], [ %i.h, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %.val.i = load ptr, ptr %.sroa.0.0.i, align 8, !alias.scope !430, !noalias !431, !nonnull !4, !noundef !4
  call void @_RNvNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types3anyINtNtBa_8instance5BoundNtB6_5PyAnyENtB6_12PyAnyMethods7getattr5inner(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %.val.i), !noalias !430
  %i.j = load i64, ptr %i.c, align 8, !range !6, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.06.0.copyload = load ptr, ptr %i.l, align 8 ; 8 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs3_B5_NtB5_8Interned3get0EB7_.exit
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.06.0.copyload, ptr %i.m, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15

bb.d:                                             ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs3_B5_NtB5_8Interned3get0EB7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsn_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numiNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %.sroa.06.0.copyload)
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load i64, ptr %.sroa.06.0.copyload, align 8, !noalias !432, !noundef !4 ; 2 uses
  %i.p = and i64 %i.o, 2147483648
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = add i64 %i.o, -1                         ; 2 uses
  store i64 %i.q, ptr %.sroa.06.0.copyload, align 8, !noalias !432
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %.sroa.06.0.copyload) #15, !noalias !432
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

bb.h:                                             ; preds = %bb.d
  %i.s = load i64, ptr %.sroa.06.0.copyload, align 8, !noalias !433, !noundef !4 ; 2 uses
  %i.t = and i64 %i.s, 2147483648
  %.not.i.i14 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i14, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15

bb.i:                                             ; preds = %bb.h
  %i.u = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.u, ptr %.sroa.06.0.copyload, align 8, !noalias !433
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %.sroa.06.0.copyload) #15, !noalias !433
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15: ; preds = %bb.j, %bb.i, %bb.h, %bb.c
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit: ; preds = %bb.g, %bb.f, %bb.e
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types5rangeINtNtB8_8instance5BoundNtB4_7PyRangeENtB4_14PyRangeMethods5start(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load ptr, ptr @_RNvNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types5rangeINtNtBa_8instance5BoundNtB6_7PyRangeENtB6_14PyRangeMethods5start8INTERNED, align 8, !nonnull !4, !noundef !4
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types5rangeINtNtBa_8instance5BoundNtB6_7PyRangeENtB6_14PyRangeMethods5start8INTERNED, i64 8), align 8, !noundef !4
  store ptr %i.a, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.e, ptr %i.g, align 8
  %i.h = call noundef align 8 ptr @_RNvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB5_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getBU_(ptr noundef nonnull align 8 getelementptr inbounds nuw (i8, ptr @_RNvNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types5rangeINtNtBa_8instance5BoundNtB6_7PyRangeENtB6_14PyRangeMethods5start8INTERNED, i64 16)), !noalias !444 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs3_B5_NtB5_8Interned3get0EB7_.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef nonnull align 8 ptr @_RINvNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs3_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEEB6_(ptr noundef nonnull align 8 getelementptr inbounds nuw (i8, ptr @_RNvNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types5rangeINtNtBa_8instance5BoundNtB6_7PyRangeENtB6_14PyRangeMethods5start8INTERNED, i64 16), ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  br label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs3_B5_NtB5_8Interned3get0EB7_.exit

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs3_B5_NtB5_8Interned3get0EB7_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.i, %bb.b ], [ %i.h, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %.val.i = load ptr, ptr %.sroa.0.0.i, align 8, !alias.scope !445, !noalias !446, !nonnull !4, !noundef !4
  call void @_RNvNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types3anyINtNtBa_8instance5BoundNtB6_5PyAnyENtB6_12PyAnyMethods7getattr5inner(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %.val.i), !noalias !445
  %i.j = load i64, ptr %i.c, align 8, !range !6, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.06.0.copyload = load ptr, ptr %i.l, align 8 ; 8 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs3_B5_NtB5_8Interned3get0EB7_.exit
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.06.0.copyload, ptr %i.m, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15

bb.d:                                             ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs3_B5_NtB5_8Interned3get0EB7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsn_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numiNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %.sroa.06.0.copyload)
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load i64, ptr %.sroa.06.0.copyload, align 8, !noalias !447, !noundef !4 ; 2 uses
  %i.p = and i64 %i.o, 2147483648
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = add i64 %i.o, -1                         ; 2 uses
  store i64 %i.q, ptr %.sroa.06.0.copyload, align 8, !noalias !447
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %.sroa.06.0.copyload) #15, !noalias !447
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

bb.h:                                             ; preds = %bb.d
  %i.s = load i64, ptr %.sroa.06.0.copyload, align 8, !noalias !448, !noundef !4 ; 2 uses
  %i.t = and i64 %i.s, 2147483648
  %.not.i.i14 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i14, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15

bb.i:                                             ; preds = %bb.h
  %i.u = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.u, ptr %.sroa.06.0.copyload, align 8, !noalias !448
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %.sroa.06.0.copyload) #15, !noalias !448
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit15: ; preds = %bb.j, %bb.i, %bb.h, %bb.c
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit: ; preds = %bb.g, %bb.f, %bb.e
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types5tupleINtNtB8_8instance5BoundNtB4_7PyTupleENtB4_14PyTupleMethods17get_borrowed_item(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.d = tail call noundef ptr @PyTuple_GetItem(ptr noundef nonnull %i.c, i64 noundef %2) #15, !noalias !457 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8, !alias.scope !459
  store i64 0, ptr %0, align 8, !alias.scope !459
  br label %_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo35types5tupleINtNtB9_8instance8BorrowedNtB5_7PyTupleE17get_borrowed_item.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !461
  call void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a), !noalias !461
  %i.f = load i64, ptr %i.a, align 8, !range !6, !noalias !461, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !461
  br label %_RNCNvMsd_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_8BorrowedNtNtNtB9_5types3any5PyAnyE15from_ptr_or_err0B9_.exit.i.i

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b), !noalias !461
  br label %_RNCNvMsd_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_8BorrowedNtNtNtB9_5types3any5PyAnyE15from_ptr_or_err0B9_.exit.i.i

_RNCNvMsd_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_8BorrowedNtNtNtB9_5types3any5PyAnyE15from_ptr_or_err0B9_.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !461
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  store i64 1, ptr %0, align 8, !alias.scope !461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !461
  br label %_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo35types5tupleINtNtB9_8instance8BorrowedNtB5_7PyTupleE17get_borrowed_item.exit

_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo35types5tupleINtNtB9_8instance8BorrowedNtB5_7PyTupleE17get_borrowed_item.exit: ; preds = %bb.b, %_RNCNvMsd_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_8BorrowedNtNtNtB9_5types3any5PyAnyE15from_ptr_or_err0B9_.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types5tupleINtNtB8_8instance5BoundNtB4_7PyTupleENtB4_14PyTupleMethods7to_list(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.e = tail call noundef ptr @PySequence_List(ptr noundef nonnull %.val) #15, !noalias !466 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBM_5types4list6PyListENtNtBM_3err5PyErrE6expectBM_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !466
  call void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c), !noalias !466
  %i.g = load i64, ptr %i.c, align 8, !range !6, !noalias !466, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !466
  %.sroa.4.8.copyload.i = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !467
  store ptr %.sroa.4.8.copyload.i, ptr %i.a, align 8
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 31, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #18
          to label %bb.g unwind label %bb.f, !noalias !467

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #17
          to label %bb.i unwind label %bb.h, !noalias !467

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !noalias !467
  unreachable

bb.i:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.j

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBM_5types4list6PyListENtNtBM_3err5PyErrE6expectBM_.exit: ; preds = %bb.a
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types5tupleINtNtB8_8instance5BoundNtB4_7PyTupleENtB4_14PyTupleMethods8get_item(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !477, !noalias !478, !nonnull !4, !noundef !4
  %i.e = tail call noundef ptr @PyTuple_GetItem(ptr noundef nonnull %i.d, i64 noundef %2) #15, !noalias !479 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types5tupleINtNtB8_8instance5BoundNtB4_7PyTupleENtB4_14PyTupleMethods17get_borrowed_item.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !480
  call void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a), !noalias !480
  %i.g = load i64, ptr %i.a, align 8, !range !6, !noalias !480, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !480
  %.sroa.5.8.copyload1 = load ptr, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.8.copyload1, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  br label %bb.h

_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types5tupleINtNtB8_8instance5BoundNtB4_7PyTupleENtB4_14PyTupleMethods17get_borrowed_item.exit: ; preds = %bb.a
  %i.k = load i32, ptr %i.e, align 8, !noundef !4
  %i.l = add i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types5tupleINtNtB8_8instance5BoundNtB4_7PyTupleENtB4_14PyTupleMethods17get_borrowed_item.exit
  store i32 %i.l, ptr %i.e, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types5tupleINtNtB8_8instance5BoundNtB4_7PyTupleENtB4_14PyTupleMethods17get_borrowed_item.exit, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.n, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sink = phi i64 [ 0, %bb.g ], [ 1, %bb.e ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types5tupleINtNtB8_8instance5BoundNtB4_7PyTupleENtB4_14PyTupleMethods9get_slice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef i64 @_RNvNtCsdc6yCHiM2ZJ_4pyo315internal_tricks15get_ssize_index(i64 noundef %1)
  %i.c = tail call noundef i64 @_RNvNtCsdc6yCHiM2ZJ_4pyo315internal_tricks15get_ssize_index(i64 noundef %2)
  %i.d = tail call noundef ptr @PyTuple_GetSlice(ptr noundef nonnull %i.a, i64 noundef %i.b, i64 noundef %i.c) #15 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  ret ptr %i.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsdc6yCHiM2ZJ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types6moduleINtNtB8_8instance5BoundNtB4_8PyModuleENtB4_15PyModuleMethods12add_function(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = invoke noundef nonnull align 8 ptr @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35types6module8___name__()
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !494, !noalias !495, !nonnull !4, !noundef !4
  invoke void @_RNvNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types3anyINtNtBa_8instance5BoundNtB6_5PyAnyENtB6_12PyAnyMethods7getattr5inner(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef nonnull %.val.i)
          to label %_RINvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEEB9_.exit unwind label %bb.s

_RINvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEEB9_.exit: ; preds = %bb.b
  %i.e = load i64, ptr %i.b, align 8, !range !6, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.09.0.copyload = load ptr, ptr %i.g, align 8 ; 10 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEEB9_.exit
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.412.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.410.0..sroa_idx, i64 40, i1 false)
end_hunk_1
