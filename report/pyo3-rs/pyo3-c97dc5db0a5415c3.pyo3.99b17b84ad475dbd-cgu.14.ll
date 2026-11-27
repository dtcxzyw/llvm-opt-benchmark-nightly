Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3-c97dc5db0a5415c3.pyo3.99b17b84ad475dbd-cgu.14?download=true
inline.NumInlined: 228
inline.NumDeleted: 126
begin_hunk_0_@_RNvNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods11add_wrapped5inner:bb.a
  store ptr %.sroa.09.0.copyload, ptr %i.o, align 8
  store i64 1, ptr %0, align 8
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !247, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  %i.s = load i64, ptr %i.r, align 8, !noalias !247, !noundef !4
  %i.t = and i64 %i.s, 268435456
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.g, label %_RINvNvMs_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_5BoundpE9cast_into5innerNtNtNtB9_5types6string8PyStringEB9_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr @PyUnicode_Type, align 8, !noalias !247, !noundef !4
  %i.v = add i32 %i.u, 1                          ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.v, ptr @PyUnicode_Type, align 8, !noalias !247
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo33err10cast_errorNtB7_5PyErrINtNtCskKLDkoKarTP_4core7convert4FromNtB5_13CastIntoErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %.sroa.09.0.copyload, ptr noundef nonnull @PyUnicode_Type)
          to label %bb.j unwind label %bb.n

_RINvNvMs_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_5BoundpE9cast_into5innerNtNtNtB9_5types6string8PyStringEB9_.exit: ; preds = %bb.f
  call void @_RINvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addIBG_NtNtB7_6string8PyStringEIBG_NtNtB7_3any5PyAnyEEB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %.sroa.09.0.copyload, ptr noundef nonnull %2)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit: ; preds = %_RINvNvMs_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_5BoundpE9cast_into5innerNtNtNtB9_5types6string8PyStringEB9_.exit, %bb.m, %bb.l, %bb.k
  ret void

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %i.y = load i64, ptr %2, align 8, !noundef !4   ; 2 uses
  %i.z = and i64 %i.y, 2147483648
  %.not.i.i18 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i18, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

bb.l:                                             ; preds = %bb.k
  %i.aa = add i64 %i.y, -1                        ; 2 uses
  store i64 %i.aa, ptr %2, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

bb.m:                                             ; preds = %bb.l
  call void @_Py_Dealloc(ptr noundef nonnull %2) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit20: ; preds = %bb.p, %bb.o, %bb.n
  resume { ptr, i32 } %lpad.thr_comm

bb.n:                                             ; preds = %bb.i, %bb.a, %bb.c, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.ac = load i64, ptr %2, align 8, !noundef !4  ; 2 uses
  %i.ad = and i64 %i.ac, 2147483648
  %.not.i.i19 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i19, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit20

bb.o:                                             ; preds = %bb.n
  %i.ae = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ae, ptr %2, align 8
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit20

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %2) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit20
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods3add5inner(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types6moduleINtNtB8_8instance5BoundNtB4_8PyModuleENtB4_15PyModuleMethods5index(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.e = load i64, ptr %i.b, align 8, !range !5, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.06.0.copyload = load ptr, ptr %i.g, align 8 ; 8 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.06.0.copyload, ptr %i.h, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.06.0.copyload, ptr %i.c, align 8
  invoke void @_RINvXs0_NtNtCsdc6yCHiM2ZJ_4pyo35types4listINtNtBa_8instance5BoundNtB6_6PyListENtB6_13PyListMethods6appendINtBH_8BorrowedNtNtB8_6string8PyStringEEBa_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef nonnull %2)
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.q, %bb.i ]
  %i.j = load i64, ptr %.sroa.06.0.copyload, align 8, !noundef !4 ; 2 uses
  %i.k = and i64 %i.j, 2147483648
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEEBG_.exit

bb.e:                                             ; preds = %.body
  %i.l = add i64 %i.j, -1                         ; 2 uses
  store i64 %i.l, ptr %.sroa.06.0.copyload, align 8
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEEBG_.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %.sroa.06.0.copyload) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEEBG_.exit

bb.g:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.n = load i64, ptr %i.d, align 8, !range !5, !alias.scope !250, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.h, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrE6expectBM_.exit, !prof !9

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !250
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.p, i64 48, i1 false)
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 36, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #15
          to label %bb.j unwind label %bb.i, !noalias !250

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #16
          to label %.body unwind label %bb.k, !noalias !250

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !250
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrE6expectBM_.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.s = load i64, ptr %.sroa.06.0.copyload, align 8, !noundef !4 ; 2 uses
  %i.t = and i64 %i.s, 2147483648
  %.not.i.i13 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i13, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEEBG_.exit14

bb.l:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrE6expectBM_.exit
  %i.u = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.u, ptr %.sroa.06.0.copyload, align 8
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEEBG_.exit14

bb.m:                                             ; preds = %bb.l
  call void @_Py_Dealloc(ptr noundef nonnull %.sroa.06.0.copyload) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEEBG_.exit14

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEEBG_.exit14: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrE6expectBM_.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7setattrINtBF_8BorrowedNtNtB7_6string8PyStringEIB1D_BZ_EEB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEEBG_.exit14, %bb.b
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEEBG_.exit: ; preds = %bb.f, %bb.e, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, 4785070309113859) i64 @_RNvXNtNtCskKLDkoKarTP_4core4char6decodeINtB2_11DecodeUtf16INtNtNtNtB6_4iter8adapters6cloned6ClonedINtNtNtB6_5slice4iter4ItertEEENtNtNtB11_6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !range !251, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.d = load i16, ptr %i.c, align 2
  store i16 0, ptr %i.a, align 8
  %i.e = trunc nuw i16 %i.b to i1
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call { i16, i16 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4ItertEENtNtNtB8_6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.g = extractvalue { i16, i16 } %i.f, 0
  %i.h = trunc i16 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { i16, i16 } %i.f, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.020.0 = phi i16 [ %i.i, %bb.c ], [ %i.d, %bb.a ] ; 7 uses
  %i.j = and i16 %.sroa.020.0, -2048
  %or.cond = icmp eq i16 %i.j, -10240
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.428.4.insert.ext = zext i16 %.sroa.020.0 to i64
  %.sroa.428.4.insert.shift = shl nuw nsw i64 %.sroa.428.4.insert.ext, 16
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i16 %.sroa.020.0, -9217
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call { i16, i16 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4ItertEENtNtNtB8_6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  %.fr = freeze { i16, i16 } %i.l                 ; 2 uses
  %i.m = extractvalue { i16, i16 } %.fr, 0        ; 2 uses
  %i.n = extractvalue { i16, i16 } %.fr, 1        ; 3 uses
  %i.o = trunc i16 %i.m to i1
  br i1 %i.o, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %.sroa.430.2.insert.ext = zext i16 %.sroa.020.0 to i64
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.p = add i16 %i.n, 8192
  %or.cond1 = icmp ult i16 %i.p, -1024
  br i1 %or.cond1, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  %.sroa.436.2.insert.ext = zext i16 %.sroa.020.0 to i64
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %1 = zext i16 %i.m to i32
  %2 = zext i16 %i.n to i32
  %3 = shl nuw i32 %2, 16
  %4 = or disjoint i32 %3, %1
  store i32 %4, ptr %i.a, align 8
  %.sroa.438.2.insert.ext = zext i16 %.sroa.020.0 to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.q = and i16 %.sroa.020.0, 1023
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.n, 1023
  %i.t = zext nneg i16 %i.s to i64
  %i.u = shl nuw nsw i64 %i.r, 26
  %i.v = shl nuw nsw i64 %i.t, 16
  %.sroa.440.4.insert.ext = add nuw nsw i64 %i.u, 4294967296
  %.sroa.440.4.insert.shift = or disjoint i64 %.sroa.440.4.insert.ext, %i.v
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.h, %bb.l, %bb.j, %bb.k, %bb.e
  %.sroa.7.sroa.0.0 = phi i64 [ %.sroa.430.2.insert.ext, %bb.h ], [ %.sroa.438.2.insert.ext, %bb.k ], [ %.sroa.440.4.insert.shift, %bb.l ], [ %.sroa.436.2.insert.ext, %bb.j ], [ %.sroa.428.4.insert.shift, %bb.e ], [ 0, %bb.b ]
  %.sroa.0.0 = phi i64 [ 1, %bb.h ], [ 1, %bb.k ], [ 0, %bb.l ], [ 1, %bb.j ], [ 0, %bb.e ], [ 2, %bb.b ]
  %.sroa.7.0.insert.ext = shl nuw nsw i64 %.sroa.7.sroa.0.0, 16
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.ext, %.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXs1_NtNtCsdc6yCHiM2ZJ_4pyo35types5sliceNtB5_14PySliceIndicesNtNtB9_10conversion12IntoPyObject13into_pyobject(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = tail call noundef ptr @PyLong_FromSsize_t(i64 noundef %i.a) #13
  %i.g = tail call noundef ptr @PyLong_FromSsize_t(i64 noundef %i.c) #13
  %i.h = tail call noundef ptr @PyLong_FromSsize_t(i64 noundef %i.e) #13
  %i.i = tail call noundef ptr @PySlice_New(ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h) #13 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo35types5sliceNtB4_7PySlice3new.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsdc6yCHiM2ZJ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #15
  unreachable

_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo35types5sliceNtB4_7PySlice3new.exit: ; preds = %bb.a
  ret ptr %i.i
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXs2_NtNtCsdc6yCHiM2ZJ_4pyo35types5sliceRNtB5_14PySliceIndicesNtNtB9_10conversion12IntoPyObject13into_pyobject(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = tail call noundef ptr @PyLong_FromSsize_t(i64 noundef %i.a) #13
  %i.g = tail call noundef ptr @PyLong_FromSsize_t(i64 noundef %i.c) #13
  %i.h = tail call noundef ptr @PyLong_FromSsize_t(i64 noundef %i.e) #13
  %i.i = tail call noundef ptr @PySlice_New(ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h) #13 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo35types5sliceNtB4_7PySlice3new.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsdc6yCHiM2ZJ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #15
  unreachable

_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo35types5sliceNtB4_7PySlice3new.exit: ; preds = %bb.a
  ret ptr %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsq_NtCskKLDkoKarTP_4core3fmtONtNtB7_3ffi6c_voidNtB5_5Debug3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = tail call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt17pointer_fmt_inner(i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB5_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getBU_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs3_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEEB6_(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @PyImport_Import(ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvNtCsjCbDjdVFjRH_9once_cell3imp18initialize_or_wait(ptr noundef nonnull align 8, ptr noundef, ptr) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo33err10cast_errorNtB7_5PyErrINtNtCskKLDkoKarTP_4core7convert4FromNtB5_13CastIntoErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringNtB4_8PyString6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @PyModule_FromDefAndSpec2(ptr noundef, ptr noundef, i32 noundef) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @PyModule_ExecDef(ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXNtNtNtCsdc6yCHiM2ZJ_4pyo35types7weakref5proxyNtB2_14PyWeakrefProxyNtNtB8_11type_object11PyTypeCheck16classinfo_object() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsdc6yCHiM2ZJ_4pyo35types5tupleNtB3_7PyTuple3newINtNtB7_8instance5BoundNtNtB5_3any5PyAnyEINtNtNtCskKLDkoKarTP_4core5array4iter8IntoIterBT_Kj2_EABT_B2m_EB7_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvCs971naDxHMnY_8pyo3_ffi32__cstr_from_utf8_with_nul_checked(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr8new_type(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance), i64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsdc6yCHiM2ZJ_4pyo33errNtB5_5PyErrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringNtB4_8PyString3new(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @PyModule_NewObject(ptr noundef) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @Py_CompileStringExFlags(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @PyImport_ExecCodeModuleEx(ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsdc6yCHiM2ZJ_4pyo35types5tupleNtB3_7PyTuple3newdINtNtNtCskKLDkoKarTP_4core5array4iter8IntoIterdKj1_EAdB1G_EB7_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvNtCs971naDxHMnY_8pyo3_ffi8datetime20PyDate_FromTimestamp(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsn_NtNtCsdc6yCHiM2ZJ_4pyo35types5tupleTdINtNtCskKLDkoKarTP_4core6option6OptionRINtNtB9_8instance5BoundNtNtB7_8datetime8PyTzInfoEEENtNtB9_10conversion12IntoPyObject13into_pyobjectB9_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), double noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvNtCs971naDxHMnY_8pyo3_ffi8datetime24PyDateTime_FromTimestamp(ptr noundef) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsdc6yCHiM2ZJ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @PyLong_FromSsize_t(i64 noundef) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @PySlice_New(ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @PyType_IsSubtype(ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs971naDxHMnY_8pyo3_ffi8datetime17PyDateTime_IMPORT() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_Py_Dealloc(ptr noundef) unnamed_addr #3

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXsA_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_2PypENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

end_hunk_0
