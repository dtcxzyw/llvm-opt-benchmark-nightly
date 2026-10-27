Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.12?download=true
inline.NumInlined: 1137
inline.NumDeleted: 369
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image:bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !125
  store i8 3, ptr %i.a, align 8, !alias.scope !125
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder19DecodingFormatErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6, !noundef !5 ; 5 uses
  %i.b = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.b(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !9, !invariant.load !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsa5QsYiPB8Gl_5image.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !10, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #21
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !9, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !10, !invariant.load !5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #21
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit4.i

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur27box_blur_vertical_pass_implfEB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, i64 noundef range(i64 3, 17179869181) %2, ptr noalias nofree noundef nonnull align 4 %3, i64 noundef range(i64 0, 2305843009213693952) %4, i64 noundef range(i64 3, 17179869181) %5, i32 noundef range(i32 1, 0) %6, i32 noundef range(i32 1, 0) %7, i64 noundef %8, i64 noundef range(i64 3, 5) %9) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 4 uses
  %i.h = alloca [112 x i8], align 8               ; 9 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [72 x i8], align 8                ; 2 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 11 uses
  %i.m = zext i32 %6 to i64                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.n = add i64 %8, %i.m                         ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  br i1 %i.o, label %bb.b, label %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 7, ptr %i.e, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #24
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e) #22
          to label %common.resume unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.l, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.cu, %bb.l ], [ %i.p, %bb.c ], [ %lpad.loopexit.split-lp205, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.n, ptr %i.r, align 8
  store i8 -1, ptr %i.e, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.s = shl i64 %8, 1
  %i.t = or disjoint i64 %i.s, 1
  %i.u = and i64 %8, 9223372036854775807          ; 4 uses
  %i.v = add nuw i64 %i.u, 1                      ; 2 uses
  %i.w = uitofp i64 %i.v to float                 ; 7 uses
  %i.x = uitofp i64 %i.t to float
  %i.y = fdiv nnan float 1.000000e+00, %i.x       ; 2 uses
  %i.z = mul nuw nsw i64 %9, %i.m                 ; 7 uses
  %i.aa = zext i32 %7 to i64                      ; 2 uses
  %i.ab = add nsw i64 %i.aa, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !151
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.z, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !151
  %i.ac = load i64, ptr %i.d, align 8, !range !13, !noalias !151, !noundef !5
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !14, !noalias !151, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ad, label %bb.f, label %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit, !prof !12

bb.f:                                             ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !151
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.af, i64 %i.ah) #24, !noalias !151
  unreachable

_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit
  %i.ai = load ptr, ptr %i.ag, align 8, !noalias !151, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !151
  store i64 %i.af, ptr %i.l, align 8, !alias.scope !151
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !alias.scope !151
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 %i.z, ptr %i.ak, align 8, !alias.scope !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.z
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noundef nonnull %0, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.am)
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_7IterMutfEECsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECsa5QsYiPB8Gl_5image.exit, %bb.p, %bb.k, %.invoke, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit, %bb.u
  %lpad.loopexit.split-lp205 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.i

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.w

bb.i:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_7IterMutfEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.k, align 8 ; 9 uses
  %.sroa.0.sroa.0.0.copyload164 = ptrtoaddr ptr %.sroa.0.sroa.0.0.copyload to i64
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 9 uses
  %.sroa.0.sroa.3.0.copyload163 = ptrtoaddr ptr %.sroa.0.sroa.3.0.copyload to i64
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.0.sroa.6.0.copyload = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ap = icmp ult i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  br i1 %i.ap, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_7IterMutfEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.3.0.copyload) ]
  %.not.i116 = icmp eq i64 %i.u, 0
  %i.aq = sub nuw i64 %.sroa.0.sroa.6.0.copyload, %.sroa.0.sroa.5.0.copyload ; 4 uses
  br i1 %.not.i116, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %min.iters.check = icmp ult i64 %i.aq, 8
  %i.ar = sub i64 %.sroa.0.sroa.0.0.copyload164, %.sroa.0.sroa.3.0.copyload163
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond204 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond204, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader206, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %n.vec = and i64 %i.aq, -8                      ; 3 uses
  %i.as = add i64 %.sroa.0.sroa.5.0.copyload, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.w, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = add nuw i64 %.sroa.0.sroa.5.0.copyload, %index ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.at ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <4 x float>, ptr %i.av, align 4
  %wide.load165 = load <4 x float>, ptr %i.aw, align 4
  %i.ax = fmul <4 x float> %wide.load, %broadcast.splat
  %i.ay = fmul <4 x float> %wide.load165, %broadcast.splat
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <4 x float> %i.ax, ptr %i.au, align 4
  store <4 x float> %i.ay, ptr %i.az, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader206

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader206: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %middle.block
  %.sroa.559.0120.us.ph = phi i64 [ %.sroa.0.sroa.5.0.copyload, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.as, %middle.block ] ; 4 uses
  %i.bb = sub i64 %.sroa.0.sroa.6.0.copyload, %.sroa.559.0120.us.ph
  %xtraiter = and i64 %i.bb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader206, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol
  %.sroa.559.0120.us.prol = phi i64 [ %i.bc, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ %.sroa.559.0120.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader206 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader206 ]
  %i.bc = add nuw i64 %.sroa.559.0120.us.prol, 1  ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.559.0120.us.prol
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.559.0120.us.prol
  %.val44.us.prol = load float, ptr %i.be, align 4, !noundef !5
  %i.bf = fmul float %.val44.us.prol, %i.w
  store float %i.bf, ptr %i.bd, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol, !llvm.loop !129

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader206
  %.sroa.559.0120.us.unr = phi i64 [ %.sroa.559.0120.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader206 ], [ %i.bc, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.bg = sub i64 %.sroa.559.0120.us.ph, %.sroa.0.sroa.6.0.copyload
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.sroa.559.0120.us = phi i64 [ %i.bu, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %.sroa.559.0120.us.unr, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit ] ; 6 uses
  %i.bi = add nuw i64 %.sroa.559.0120.us, 1       ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.559.0120.us
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.559.0120.us
  %.val44.us = load float, ptr %i.bk, align 4, !noundef !5
  %i.bl = fmul float %.val44.us, %i.w
  store float %i.bl, ptr %i.bj, align 4
  %i.bm = add nuw i64 %.sroa.559.0120.us, 2       ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.bi
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bi
  %.val44.us.1 = load float, ptr %i.bo, align 4, !noundef !5
  %i.bp = fmul float %.val44.us.1, %i.w
  store float %i.bp, ptr %i.bn, align 4
  %i.bq = add nuw i64 %.sroa.559.0120.us, 3       ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.bm
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bm
  %.val44.us.2 = load float, ptr %i.bs, align 4, !noundef !5
  %i.bt = fmul float %.val44.us.2, %i.w
  store float %i.bt, ptr %i.br, align 4
  %i.bu = add nuw i64 %.sroa.559.0120.us, 4       ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.bq
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bq
  %.val44.us.3 = load float, ptr %i.bw, align 4, !noundef !5
  %i.bx = fmul float %.val44.us.3, %i.w
  store float %i.bx, ptr %i.bv, align 4
  %exitcond135.not.3 = icmp eq i64 %i.bu, %.sroa.0.sroa.6.0.copyload
  br i1 %exitcond135.not.3, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !130

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %._crit_edge
  %.sroa.559.0120 = phi i64 [ %i.by, %._crit_edge ], [ %.sroa.0.sroa.5.0.copyload, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 3 uses
  %.sroa.8.0119 = phi i64 [ %i.ca, %._crit_edge ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %i.by = add nuw i64 %.sroa.559.0120, 1
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.559.0120
  %i.ca = add i64 %.sroa.8.0119, 1                ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.559.0120
  %.val44 = load float, ptr %i.cb, align 4, !noundef !5
  %i.cc = fmul float %.val44, %i.w
  br label %bb.t

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, %middle.block, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_7IterMutfEECsa5QsYiPB8Gl_5image.exit
  %i.cd = urem i64 %4, %5                         ; 2 uses
  %i.ce = sub nuw nsw i64 %4, %i.cd               ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !152
  store ptr %i.cf, ptr %i.c, align 8, !noalias !153
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.cd, ptr %.sroa.466.0..sroa_idx, align 8, !noalias !153
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %3, ptr %.sroa.567.0..sroa_idx, align 8, !noalias !153
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.ce, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !153
  %.sroa.768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %5, ptr %.sroa.768.0..sroa_idx, align 8, !noalias !153
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, i64 noundef 0, i64 noundef range(i64 1, 4294967296) %i.aa)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.ci = load i64, ptr %i.cg, align 8, !alias.scope !154, !noundef !5 ; 2 uses
  %i.cj = load i64, ptr %i.ch, align 8, !alias.scope !154, !noundef !5
  %i.ck = icmp ult i64 %i.ci, %i.cj
  br i1 %i.ck, label %.lr.ph, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread

.lr.ph:                                           ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.882.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %.sroa.983.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %broadcast.splatinsert193 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat194 = shufflevector <4 x float> %broadcast.splatinsert193, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.k

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit, %middle.block201, %bb.r
  %i.cm = load i64, ptr %i.cg, align 8, !alias.scope !154, !noundef !5 ; 2 uses
  %i.cn = load i64, ptr %i.ch, align 8, !alias.scope !154, !noundef !5
  %i.co = icmp ult i64 %i.cm, %i.cn
  br i1 %i.co, label %bb.k, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread

bb.k:                                             ; preds = %.lr.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit
  %i.cp = phi i64 [ %i.ci, %.lr.ph ], [ %i.cm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit ] ; 3 uses
  %i.cq = add nuw i64 %i.cp, 1
  store i64 %i.cq, ptr %i.cg, align 8, !alias.scope !154
  %i.cr = invoke { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMutfENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i, i64 noundef %i.cp)
          to label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.k
  %i.cs = extractvalue { ptr, i64 } %i.cr, 0      ; 3 uses
  %i.ct = extractvalue { ptr, i64 } %i.cr, 1
  %.not37 = icmp eq ptr %i.cs, null
  br i1 %.not37, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread, label %bb.n

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit47 unwind label %bb.l

bb.l:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit47: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.n:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit
  %.val.i = load i64, ptr %i.cl, align 8, !alias.scope !155, !noundef !5
  %i.cw = add nuw i64 %.val.i, %i.cp              ; 2 uses
  %i.cx = add i64 %i.v, %i.cw
  %..i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.ab, i64 %i.cx)
  %i.cy = mul i64 %..i, %2                        ; 4 uses
  %i.cz = sub i64 %i.cw, %i.u
  %..i48 = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.cz, i64 0)
  %i.da = mul i64 %..i48, %2                      ; 4 uses
  %i.db = add i64 %i.cy, %i.z                     ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.cy
  %.not38 = icmp ugt i64 %i.db, %1
  %or.cond = or i1 %i.dc, %.not38
  br i1 %or.cond, label %.invoke, label %bb.o, !prof !18

bb.o:                                             ; preds = %bb.n
  %i.dd = add i64 %i.da, %i.z                     ; 3 uses
  %i.de = icmp ult i64 %i.dd, %i.da
  %.not39 = icmp ugt i64 %i.dd, %1
  %or.cond41 = or i1 %i.de, %.not39
  br i1 %or.cond41, label %.invoke, label %bb.p, !prof !18

.invoke:                                          ; preds = %bb.o, %bb.n
  %i.df = phi i64 [ %i.cy, %bb.n ], [ %i.da, %bb.o ]
  %i.dg = phi i64 [ %i.db, %bb.n ], [ %i.dd, %bb.o ]
  %i.dh = phi ptr [ @9, %bb.n ], [ @8, %bb.o ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.df, i64 noundef %i.dg, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cy ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.da ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.z
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.z
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull %i.di, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dl)
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.p
  %i.dm = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dn = load i64, ptr %i.ak, align 8, !noundef !5
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !157
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterfEB10_EINtB13_7IterMutfEEINtB5_7ZipImplBW_B1x_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.do)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !159
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.a, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.dp)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.072.0.copyload = load ptr, ptr %i.h, align 8 ; 5 uses
  %.sroa.474.0.copyload = load ptr, ptr %.sroa.474.0..sroa_idx, align 8 ; 5 uses
  %.sroa.576.0.copyload = load i64, ptr %.sroa.576.0..sroa_idx, align 8 ; 3 uses
  %.sroa.678.0.copyload = load ptr, ptr %.sroa.678.0..sroa_idx, align 8 ; 5 uses
  %.sroa.780.0.copyload = load i64, ptr %.sroa.780.0..sroa_idx, align 8 ; 5 uses
  %.sroa.882.0.copyload = load ptr, ptr %.sroa.882.0..sroa_idx, align 8 ; 5 uses
  %.sroa.983.0.copyload = load i64, ptr %.sroa.983.0..sroa_idx, align 8 ; 9 uses
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 6 uses
  %i.dq = icmp ult i64 %.sroa.983.0.copyload, %.sroa.11.0.copyload
  br i1 %i.dq, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.072.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.474.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.678.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.882.0.copyload) ]
  %i.dr = sub nuw i64 %.sroa.11.0.copyload, %.sroa.983.0.copyload ; 3 uses
  %min.iters.check190 = icmp ult i64 %i.dr, 8
  br i1 %min.iters.check190, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.preheader, label %vector.memcheck166

vector.memcheck166:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.ds = shl i64 %.sroa.983.0.copyload, 2
  %scevgep = getelementptr i8, ptr %.sroa.882.0.copyload, i64 %i.ds ; 3 uses
  %i.dt = shl i64 %.sroa.11.0.copyload, 2
  %scevgep167 = getelementptr i8, ptr %.sroa.882.0.copyload, i64 %i.dt ; 3 uses
  %i.du = add i64 %.sroa.780.0.copyload, %.sroa.983.0.copyload
  %i.dv = shl i64 %i.du, 2
  %scevgep168 = getelementptr i8, ptr %.sroa.678.0.copyload, i64 %i.dv ; 3 uses
  %i.dw = add i64 %.sroa.780.0.copyload, %.sroa.11.0.copyload
  %i.dx = shl i64 %i.dw, 2
  %scevgep169 = getelementptr i8, ptr %.sroa.678.0.copyload, i64 %i.dx ; 3 uses
  %i.dy = add i64 %.sroa.576.0.copyload, %.sroa.780.0.copyload ; 2 uses
  %i.dz = add i64 %i.dy, %.sroa.983.0.copyload
  %i.ea = shl i64 %i.dz, 2                        ; 2 uses
  %scevgep170 = getelementptr i8, ptr %.sroa.072.0.copyload, i64 %i.ea ; 2 uses
  %i.eb = add i64 %i.dy, %.sroa.11.0.copyload
  %i.ec = shl i64 %i.eb, 2                        ; 2 uses
  %scevgep171 = getelementptr i8, ptr %.sroa.072.0.copyload, i64 %i.ec ; 2 uses
  %scevgep172 = getelementptr i8, ptr %.sroa.474.0.copyload, i64 %i.ea ; 2 uses
  %scevgep173 = getelementptr i8, ptr %.sroa.474.0.copyload, i64 %i.ec ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep169
  %bound1 = icmp ult ptr %scevgep168, %scevgep167
  %found.conflict = and i1 %bound0, %bound1
  %bound0174 = icmp ult ptr %scevgep, %scevgep171
  %bound1175 = icmp ult ptr %scevgep170, %scevgep167
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx = or i1 %found.conflict, %found.conflict176
  %bound0177 = icmp ult ptr %scevgep, %scevgep173
  %bound1178 = icmp ult ptr %scevgep172, %scevgep167
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %conflict.rdx, %found.conflict179
  %bound0181 = icmp ult ptr %scevgep168, %scevgep171
  %bound1182 = icmp ult ptr %scevgep170, %scevgep169
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx180, %found.conflict183
  %bound0185 = icmp ult ptr %scevgep168, %scevgep173
  %bound1186 = icmp ult ptr %scevgep172, %scevgep169
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %conflict.rdx184, %found.conflict187
  br i1 %conflict.rdx188, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.preheader, label %vector.ph191

vector.ph191:                                     ; preds = %vector.memcheck166
  %n.vec192 = and i64 %i.dr, -4                   ; 3 uses
  %i.ed = add i64 %.sroa.983.0.copyload, %n.vec192
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph191
  %index196 = phi i64 [ 0, %vector.ph191 ], [ %index.next200, %vector.body195 ] ; 2 uses
  %i.ee = add nuw i64 %.sroa.983.0.copyload, %index196 ; 2 uses
  %i.ef = add i64 %i.ee, %.sroa.780.0.copyload    ; 2 uses
  %i.eg = add i64 %i.ef, %.sroa.576.0.copyload    ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.072.0.copyload, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.882.0.copyload, i64 %i.ee
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.sroa.678.0.copyload, i64 %i.ef ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.sroa.474.0.copyload, i64 %i.eg
  %wide.load197 = load <4 x float>, ptr %i.ej, align 4, !alias.scope !160, !noalias !161 ; 2 uses
  %i.el = fmul <4 x float> %broadcast.splat194, %wide.load197
  %i.em = call nsz <4 x float> @llvm.minimumnum.v4f32(<4 x float> %i.el, <4 x float> splat (float 1.000000e+00))
  %i.en = call nsz <4 x float> @llvm.maximumnum.v4f32(<4 x float> %i.em, <4 x float> zeroinitializer)
  store <4 x float> %i.en, ptr %i.ei, align 4, !alias.scope !162, !noalias !163
  %wide.load198 = load <4 x float>, ptr %i.eh, align 4, !alias.scope !164
  %i.eo = fadd <4 x float> %wide.load197, %wide.load198
  %wide.load199 = load <4 x float>, ptr %i.ek, align 4, !alias.scope !165
  %i.ep = fsub <4 x float> %i.eo, %wide.load199
  store <4 x float> %i.ep, ptr %i.ej, align 4, !alias.scope !160, !noalias !161
  %index.next200 = add nuw i64 %index196, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next200, %n.vec192
  br i1 %i.eq, label %middle.block201, label %vector.body195, !llvm.loop !149

middle.block201:                                  ; preds = %vector.body195
  %cmp.n202 = icmp eq i64 %i.dr, %n.vec192
  br i1 %cmp.n202, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.preheader: ; preds = %vector.memcheck166, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %middle.block201
  %.sroa.983.0121.ph = phi i64 [ %.sroa.983.0.copyload, %vector.memcheck166 ], [ %.sroa.983.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ], [ %i.ed, %middle.block201 ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit
  %.sroa.983.0121 = phi i64 [ %i.ex, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit ], [ %.sroa.983.0121.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.preheader ] ; 3 uses
  %i.er = add i64 %.sroa.983.0121, %.sroa.780.0.copyload ; 2 uses
  %i.es = add i64 %i.er, %.sroa.576.0.copyload    ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.sroa.072.0.copyload, i64 %i.es
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.882.0.copyload, i64 %.sroa.983.0121
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.sroa.678.0.copyload, i64 %i.er ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.sroa.474.0.copyload, i64 %i.es
  %i.ex = add nuw i64 %.sroa.983.0121, 1          ; 2 uses
  %i.ey = load float, ptr %i.ev, align 4, !noundef !5 ; 2 uses
  %i.ez = fmul float %i.y, %i.ey
  %i.fa = call nsz float @llvm.minimumnum.f32(float %i.ez, float 1.000000e+00)
  %i.fb = call nsz noundef float @llvm.maximumnum.f32(float %i.fa, float 0.000000e+00)
  store float %i.fb, ptr %i.eu, align 4
  %.val43 = load float, ptr %i.et, align 4, !noundef !5
  %i.fc = fadd float %i.ey, %.val43
  %.val42 = load float, ptr %i.ew, align 4, !noundef !5
  %i.fd = fsub float %i.fc, %.val42
  store float %i.fd, ptr %i.ev, align 4
  %exitcond136.not = icmp eq i64 %i.ex, %.sroa.11.0.copyload
  br i1 %exitcond136.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit, !llvm.loop !150

bb.s:                                             ; preds = %bb.u
  unreachable

._crit_edge:                                      ; preds = %bb.v
  store float %i.fj, ptr %i.bz, align 4
  %exitcond134.not = icmp eq i64 %i.ca, %i.aq
  br i1 %exitcond134.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.t:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %bb.v
  %.sroa.01.0118 = phi float [ %i.cc, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ], [ %i.fj, %bb.v ]
  %.sroa.062.0117 = phi i64 [ 1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ], [ %i.fh, %bb.v ] ; 3 uses
  %..i56 = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.ab, i64 %.sroa.062.0117)
  %i.fe = mul i64 %..i56, %2
  %i.ff = add i64 %i.fe, %.sroa.8.0119            ; 3 uses
  %i.fg = icmp ult i64 %i.ff, %1
  br i1 %i.fg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ff, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.t
  %i.fh = add nuw i64 %.sroa.062.0117, 1
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ff
  %.val = load float, ptr %i.fi, align 4, !noundef !5
  %i.fj = fadd float %.sroa.01.0118, %.val        ; 2 uses
  %exitcond = icmp eq i64 %.sroa.062.0117, %i.u
  br i1 %exitcond, label %._crit_edge, label %bb.t

bb.w:                                             ; preds = %bb.h
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.g, %bb.w
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur27box_blur_vertical_pass_implhEB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef range(i64 1, 17179869181) %2, ptr noalias nofree noundef nonnull %3, i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, 17179869181) %5, i32 noundef range(i32 1, 0) %6, i32 noundef range(i32 1, 0) %7, i64 noundef %8, i64 noundef range(i64 1, 5) %9) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 4 uses
  %i.h = alloca [112 x i8], align 8               ; 9 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [72 x i8], align 8                ; 2 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 11 uses
  %i.m = zext i32 %6 to i64                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.n = add i64 %8, %i.m                         ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  br i1 %i.o, label %bb.b, label %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 7, ptr %i.e, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #24
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e) #22
          to label %common.resume unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.l, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.dh, %bb.l ], [ %i.p, %bb.c ], [ %lpad.loopexit.split-lp180, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.n, ptr %i.r, align 8
  store i8 -1, ptr %i.e, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.s = shl i64 %8, 1
  %i.t = or disjoint i64 %i.s, 1
  %i.u = and i64 %8, 9223372036854775807          ; 4 uses
  %i.v = add nuw i64 %i.u, 1                      ; 2 uses
  %i.w = uitofp i64 %i.v to float                 ; 7 uses
  %i.x = uitofp i64 %i.t to float
  %i.y = fdiv nnan float 1.000000e+00, %i.x
  %i.z = mul nuw nsw i64 %9, %i.m                 ; 7 uses
  %i.aa = zext i32 %7 to i64                      ; 2 uses
  %i.ab = add nsw i64 %i.aa, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !187
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.z, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !187
  %i.ac = load i64, ptr %i.d, align 8, !range !13, !noalias !187, !noundef !5
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !14, !noalias !187, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ad, label %bb.f, label %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit, !prof !12

bb.f:                                             ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !187
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.af, i64 %i.ah) #24, !noalias !187
  unreachable

_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit
  %i.ai = load ptr, ptr %i.ag, align 8, !noalias !187, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !187
  store i64 %i.af, ptr %i.l, align 8, !alias.scope !187
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !alias.scope !187
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 %i.z, ptr %i.ak, align 8, !alias.scope !187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.z
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noundef nonnull %0, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.am)
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_7IterMutfEECsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECsa5QsYiPB8Gl_5image.exit, %bb.p, %bb.k, %.invoke, %bb.s, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit, %bb.w
  %lpad.loopexit.split-lp180 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.i

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.y

bb.i:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_7IterMutfEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.k, align 8 ; 10 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 10 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 9 uses
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.0.sroa.6.0.copyload = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ap = icmp ult i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  br i1 %i.ap, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_7IterMutfEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.3.0.copyload) ]
  %.not.i121 = icmp eq i64 %i.u, 0
  %i.aq = sub nuw i64 %.sroa.0.sroa.6.0.copyload, %.sroa.0.sroa.5.0.copyload ; 4 uses
  br i1 %.not.i121, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %min.iters.check = icmp ult i64 %i.aq, 8
  br i1 %min.iters.check, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.ar = shl i64 %.sroa.0.sroa.5.0.copyload, 2
  %i.as = getelementptr i8, ptr %.sroa.0.sroa.3.0.copyload, i64 %i.ar
  %i.at = shl i64 %.sroa.0.sroa.6.0.copyload, 2
  %i.au = getelementptr i8, ptr %.sroa.0.sroa.3.0.copyload, i64 %i.at
  %i.av = getelementptr i8, ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %i.aw = getelementptr i8, ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.0.sroa.6.0.copyload
  %bound0 = icmp ult ptr %i.as, %i.aw
  %bound1 = icmp ult ptr %i.av, %i.au
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, -8                      ; 3 uses
  %i.ax = add i64 %.sroa.0.sroa.5.0.copyload, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.w, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = add nuw i64 %.sroa.0.sroa.5.0.copyload, %index ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 %i.ay ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %wide.load = load <4 x i8>, ptr %i.ba, align 1, !alias.scope !188
  %wide.load179 = load <4 x i8>, ptr %i.bb, align 1, !alias.scope !188
  %i.bc = uitofp <4 x i8> %wide.load to <4 x float>
  %i.bd = uitofp <4 x i8> %wide.load179 to <4 x float>
  %i.be = fmul nnan <4 x float> %broadcast.splat, %i.bc
  %i.bf = fmul nnan <4 x float> %broadcast.splat, %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <4 x float> %i.be, ptr %i.az, align 4, !alias.scope !189, !noalias !188
  store <4 x float> %i.bf, ptr %i.bg, align 4, !alias.scope !189, !noalias !188
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader181

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader181: ; preds = %vector.memcheck, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %middle.block
  %.sroa.560.0125.us.ph = phi i64 [ %.sroa.0.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.0.sroa.5.0.copyload, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.ax, %middle.block ] ; 4 uses
  %i.bi = sub i64 %.sroa.0.sroa.6.0.copyload, %.sroa.560.0125.us.ph
  %xtraiter = and i64 %i.bi, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader181, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol
  %.sroa.560.0125.us.prol = phi i64 [ %i.bj, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ %.sroa.560.0125.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader181 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader181 ]
  %i.bj = add nuw i64 %.sroa.560.0125.us.prol, 1  ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.560.0125.us.prol
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.560.0125.us.prol
  %.val44.us.prol = load i8, ptr %i.bl, align 1, !noundef !5
  %i.bm = uitofp i8 %.val44.us.prol to float
  %i.bn = fmul nnan float %i.w, %i.bm
  store float %i.bn, ptr %i.bk, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol, !llvm.loop !172

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader181
  %.sroa.560.0125.us.unr = phi i64 [ %.sroa.560.0125.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader181 ], [ %i.bj, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.bo = sub i64 %.sroa.560.0125.us.ph, %.sroa.0.sroa.6.0.copyload
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.sroa.560.0125.us = phi i64 [ %i.cf, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %.sroa.560.0125.us.unr, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit ] ; 6 uses
  %i.bq = add nuw i64 %.sroa.560.0125.us, 1       ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.560.0125.us
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.560.0125.us
  %.val44.us = load i8, ptr %i.bs, align 1, !noundef !5
  %i.bt = uitofp i8 %.val44.us to float
  %i.bu = fmul nnan float %i.w, %i.bt
  store float %i.bu, ptr %i.br, align 4
  %i.bv = add nuw i64 %.sroa.560.0125.us, 2       ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.bq
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bq
  %.val44.us.1 = load i8, ptr %i.bx, align 1, !noundef !5
  %i.by = uitofp i8 %.val44.us.1 to float
  %i.bz = fmul nnan float %i.w, %i.by
  store float %i.bz, ptr %i.bw, align 4
  %i.ca = add nuw i64 %.sroa.560.0125.us, 3       ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.bv
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bv
  %.val44.us.2 = load i8, ptr %i.cc, align 1, !noundef !5
  %i.cd = uitofp i8 %.val44.us.2 to float
  %i.ce = fmul nnan float %i.w, %i.cd
  store float %i.ce, ptr %i.cb, align 4
  %i.cf = add nuw i64 %.sroa.560.0125.us, 4       ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.ca
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 %i.ca
  %.val44.us.3 = load i8, ptr %i.ch, align 1, !noundef !5
  %i.ci = uitofp i8 %.val44.us.3 to float
  %i.cj = fmul nnan float %i.w, %i.ci
  store float %i.cj, ptr %i.cg, align 4
  %exitcond144.not.3 = icmp eq i64 %i.cf, %.sroa.0.sroa.6.0.copyload
  br i1 %exitcond144.not.3, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !173

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %._crit_edge
  %.sroa.560.0125 = phi i64 [ %i.ck, %._crit_edge ], [ %.sroa.0.sroa.5.0.copyload, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 3 uses
  %.sroa.8.0124 = phi i64 [ %i.cm, %._crit_edge ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %i.ck = add nuw i64 %.sroa.560.0125, 1
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.560.0125
  %i.cm = add i64 %.sroa.8.0124, 1                ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.560.0125
  %.val44 = load i8, ptr %i.cn, align 1, !noundef !5
  %i.co = uitofp i8 %.val44 to float
  %i.cp = fmul nnan float %i.w, %i.co
  br label %bb.v

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, %middle.block, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_7IterMutfEECsa5QsYiPB8Gl_5image.exit
  %i.cq = urem i64 %4, %5                         ; 2 uses
  %i.cr = sub nuw nsw i64 %4, %i.cq               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 %i.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !190
  store ptr %i.cs, ptr %i.c, align 8, !noalias !191
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.cq, ptr %.sroa.467.0..sroa_idx, align 8, !noalias !191
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %3, ptr %.sroa.568.0..sroa_idx, align 8, !noalias !191
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.cr, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !191
  %.sroa.769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %5, ptr %.sroa.769.0..sroa_idx, align 8, !noalias !191
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, i64 noundef 0, i64 noundef range(i64 1, 4294967296) %i.aa)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.cv = load i64, ptr %i.ct, align 8, !alias.scope !192, !noundef !5 ; 2 uses
  %i.cw = load i64, ptr %i.cu, align 8, !alias.scope !192, !noundef !5
  %i.cx = icmp ult i64 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread

.lr.ph:                                           ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.883.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %.sroa.984.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  br label %bb.k

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EINtB17_7IterMutfEEIB1C_hEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit: ; preds = %bb.u, %bb.r
  %i.cz = load i64, ptr %i.ct, align 8, !alias.scope !192, !noundef !5 ; 2 uses
  %i.da = load i64, ptr %i.cu, align 8, !alias.scope !192, !noundef !5
  %i.db = icmp ult i64 %i.cz, %i.da
  br i1 %i.db, label %bb.k, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread

bb.k:                                             ; preds = %.lr.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EINtB17_7IterMutfEEIB1C_hEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit
  %i.dc = phi i64 [ %i.cv, %.lr.ph ], [ %i.cz, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EINtB17_7IterMutfEEIB1C_hEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit ] ; 3 uses
  %i.dd = add nuw i64 %i.dc, 1
  store i64 %i.dd, ptr %i.ct, align 8, !alias.scope !192
  %i.de = invoke { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i, i64 noundef %i.dc)
          to label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.k
  %i.df = extractvalue { ptr, i64 } %i.de, 0      ; 3 uses
  %i.dg = extractvalue { ptr, i64 } %i.de, 1
  %.not37 = icmp eq ptr %i.df, null
  br i1 %.not37, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread, label %bb.n

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EINtB17_7IterMutfEEIB1C_hEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit47 unwind label %bb.l

bb.l:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit47: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.n:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit
  %.val.i = load i64, ptr %i.cy, align 8, !alias.scope !193, !noundef !5
  %i.dj = add nuw i64 %.val.i, %i.dc              ; 2 uses
  %i.dk = add i64 %i.v, %i.dj
  %..i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.ab, i64 %i.dk)
  %i.dl = mul i64 %..i, %2                        ; 4 uses
  %i.dm = sub i64 %i.dj, %i.u
  %..i48 = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.dm, i64 0)
  %i.dn = mul i64 %..i48, %2                      ; 4 uses
  %i.do = add i64 %i.dl, %i.z                     ; 3 uses
  %i.dp = icmp ult i64 %i.do, %i.dl
  %.not38 = icmp ugt i64 %i.do, %1
  %or.cond = or i1 %i.dp, %.not38
  br i1 %or.cond, label %.invoke, label %bb.o, !prof !18

bb.o:                                             ; preds = %bb.n
  %i.dq = add i64 %i.dn, %i.z                     ; 3 uses
  %i.dr = icmp ult i64 %i.dq, %i.dn
  %.not39 = icmp ugt i64 %i.dq, %1
  %or.cond41 = or i1 %i.dr, %.not39
  br i1 %or.cond41, label %.invoke, label %bb.p, !prof !18

.invoke:                                          ; preds = %bb.o, %bb.n
  %i.ds = phi i64 [ %i.dl, %bb.n ], [ %i.dn, %bb.o ]
  %i.dt = phi i64 [ %i.do, %bb.n ], [ %i.dq, %bb.o ]
  %i.du = phi ptr [ @9, %bb.n ], [ @8, %bb.o ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ds, i64 noundef %i.dt, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.du) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %i.dl ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %i.dn ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.z
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.z
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dy)
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.p
  %i.dz = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ea = load i64, ptr %i.ak, align 8, !noundef !5
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !195
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EINtB13_7IterMutfEEINtB5_7ZipImplBW_B1x_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.eb)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !197
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EINtB17_7IterMutfEEIB1C_hEEINtB5_7ZipImplBW_B1T_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.a, ptr noundef nonnull %i.df, ptr noundef nonnull %i.ec)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.073.0.copyload = load ptr, ptr %i.h, align 8 ; 2 uses
  %.sroa.475.0.copyload = load ptr, ptr %.sroa.475.0..sroa_idx, align 8 ; 2 uses
  %.sroa.577.0.copyload = load i64, ptr %.sroa.577.0..sroa_idx, align 8
  %.sroa.679.0.copyload = load ptr, ptr %.sroa.679.0..sroa_idx, align 8 ; 2 uses
  %.sroa.781.0.copyload = load i64, ptr %.sroa.781.0..sroa_idx, align 8
  %.sroa.883.0.copyload = load ptr, ptr %.sroa.883.0..sroa_idx, align 8 ; 2 uses
  %.sroa.984.0.copyload = load i64, ptr %.sroa.984.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %i.ed = icmp ult i64 %.sroa.984.0.copyload, %.sroa.11.0.copyload
  br i1 %i.ed, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EINtB17_7IterMutfEEIB1C_hEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EINtB17_7IterMutfEEIB1C_hEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EINtB17_7IterMutfEEIB1C_hEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.073.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.475.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.679.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.883.0.copyload) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EINtB17_7IterMutfEEIB1C_hEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EINtB17_7IterMutfEEIB1C_hEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EINtB17_7IterMutfEEIB1C_hEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %bb.u
  %.sroa.984.0126 = phi i64 [ %.sroa.984.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EINtB17_7IterMutfEEIB1C_hEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ], [ %i.eq, %bb.u ] ; 3 uses
  %i.ee = add i64 %.sroa.984.0126, %.sroa.781.0.copyload ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.sroa.679.0.copyload, i64 %i.ee ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !noundef !5 ; 2 uses
  %i.eh = fmul float %i.y, %i.eg
  %i.ei = call float @llvm.round.f32(float %i.eh)
  %i.ej = call nsz float @llvm.minimumnum.f32(float %i.ei, float 2.550000e+02)
  %i.ek = call nsz float @llvm.maximumnum.f32(float %i.ej, float 0.000000e+00) ; 2 uses
  %i.el = fcmp olt float %i.ek, 2.560000e+02
  br i1 %i.el, label %bb.u, label %bb.s, !prof !19

bb.s:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EINtB17_7IterMutfEEIB1C_hEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.w
  unreachable

bb.u:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EINtB17_7IterMutfEEIB1C_hEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.883.0.copyload, i64 %.sroa.984.0126
  %i.en = add i64 %i.ee, %.sroa.577.0.copyload    ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.475.0.copyload, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.073.0.copyload, i64 %i.en
  %i.eq = add i64 %.sroa.984.0126, 1              ; 2 uses
  %i.er = fptoui float %i.ek to i8
  store i8 %i.er, ptr %i.em, align 1
  %.val43 = load i8, ptr %i.ep, align 1, !noundef !5
  %i.es = uitofp i8 %.val43 to float
  %i.et = fadd float %i.eg, %i.es
  %.val42 = load i8, ptr %i.eo, align 1, !noundef !5
  %i.eu = uitofp i8 %.val42 to float
  %i.ev = fsub float %i.et, %i.eu
  store float %i.ev, ptr %i.ef, align 4
  %exitcond145.not = icmp eq i64 %i.eq, %.sroa.11.0.copyload
  br i1 %exitcond145.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EINtB17_7IterMutfEEIB1C_hEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EINtB17_7IterMutfEEIB1C_hEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit

._crit_edge:                                      ; preds = %bb.x
  store float %i.fc, ptr %i.cl, align 4
  %exitcond143.not = icmp eq i64 %i.cm, %i.aq
  br i1 %exitcond143.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.v:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %bb.x
  %.sroa.01.0123 = phi float [ %i.cp, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ], [ %i.fc, %bb.x ]
  %.sroa.063.0122 = phi i64 [ 1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ], [ %i.ez, %bb.x ] ; 3 uses
  %..i57 = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.ab, i64 %.sroa.063.0122)
  %i.ew = mul i64 %..i57, %2
  %i.ex = add i64 %i.ew, %.sroa.8.0124            ; 3 uses
  %i.ey = icmp ult i64 %i.ex, %1
  br i1 %i.ey, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ex, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.v
  %i.ez = add nuw i64 %.sroa.063.0122, 1
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 %i.ex
  %.val = load i8, ptr %i.fa, align 1, !noundef !5
  %i.fb = uitofp i8 %.val to float
  %i.fc = fadd float %.sroa.01.0123, %i.fb        ; 2 uses
  %exitcond = icmp eq i64 %.sroa.063.0122, %i.u
  br i1 %exitcond, label %._crit_edge, label %bb.v

bb.y:                                             ; preds = %bb.h
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.g, %bb.y
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur27box_blur_vertical_pass_impltEB6_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef range(i64 0, 4611686018427387904) %1, i64 noundef range(i64 1, 17179869181) %2, ptr noalias nofree noundef nonnull align 2 %3, i64 noundef range(i64 0, 4611686018427387904) %4, i64 noundef range(i64 1, 17179869181) %5, i32 noundef range(i32 1, 0) %6, i32 noundef range(i32 1, 0) %7, i64 noundef %8, i64 noundef range(i64 1, 5) %9) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 4 uses
  %i.h = alloca [112 x i8], align 8               ; 9 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [72 x i8], align 8                ; 2 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 11 uses
  %i.m = zext i32 %6 to i64                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.n = add i64 %8, %i.m                         ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  br i1 %i.o, label %bb.b, label %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 7, ptr %i.e, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #24
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e) #22
          to label %common.resume unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.l, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.dj, %bb.l ], [ %i.p, %bb.c ], [ %lpad.loopexit.split-lp180, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.n, ptr %i.r, align 8
  store i8 -1, ptr %i.e, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.s = shl i64 %8, 1
  %i.t = or disjoint i64 %i.s, 1
  %i.u = and i64 %8, 9223372036854775807          ; 4 uses
  %i.v = add nuw i64 %i.u, 1                      ; 2 uses
  %i.w = uitofp i64 %i.v to float                 ; 7 uses
  %i.x = uitofp i64 %i.t to float
  %i.y = fdiv nnan float 1.000000e+00, %i.x
  %i.z = mul nuw nsw i64 %9, %i.m                 ; 7 uses
  %i.aa = zext i32 %7 to i64                      ; 2 uses
  %i.ab = add nsw i64 %i.aa, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !219
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.z, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !219
  %i.ac = load i64, ptr %i.d, align 8, !range !13, !noalias !219, !noundef !5
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !14, !noalias !219, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ad, label %bb.f, label %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit, !prof !12

bb.f:                                             ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !219
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.af, i64 %i.ah) #24, !noalias !219
  unreachable

_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit
  %i.ai = load ptr, ptr %i.ag, align 8, !noalias !219, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !219
  store i64 %i.af, ptr %i.l, align 8, !alias.scope !219
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !alias.scope !219
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 %i.z, ptr %i.ak, align 8, !alias.scope !219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.z
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noundef nonnull %0, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.am)
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4ItertENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_7IterMutfEECsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4ItertENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECsa5QsYiPB8Gl_5image.exit, %bb.p, %bb.k, %.invoke, %bb.s, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit, %bb.w
  %lpad.loopexit.split-lp180 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.i

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.y

bb.i:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4ItertENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_7IterMutfEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.k, align 8 ; 10 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 10 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 9 uses
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.0.sroa.6.0.copyload = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ap = icmp ult i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  br i1 %i.ap, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4ItertENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_7IterMutfEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.3.0.copyload) ]
  %.not.i121 = icmp eq i64 %i.u, 0
  %i.aq = sub nuw i64 %.sroa.0.sroa.6.0.copyload, %.sroa.0.sroa.5.0.copyload ; 4 uses
  br i1 %.not.i121, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %min.iters.check = icmp ult i64 %i.aq, 8
  br i1 %min.iters.check, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.ar = shl i64 %.sroa.0.sroa.5.0.copyload, 2
  %i.as = getelementptr i8, ptr %.sroa.0.sroa.3.0.copyload, i64 %i.ar
  %i.at = shl i64 %.sroa.0.sroa.6.0.copyload, 2
  %i.au = getelementptr i8, ptr %.sroa.0.sroa.3.0.copyload, i64 %i.at
  %i.av = shl i64 %.sroa.0.sroa.5.0.copyload, 1
  %i.aw = getelementptr i8, ptr %.sroa.0.sroa.0.0.copyload, i64 %i.av
  %i.ax = shl i64 %.sroa.0.sroa.6.0.copyload, 1
  %i.ay = getelementptr i8, ptr %.sroa.0.sroa.0.0.copyload, i64 %i.ax
  %bound0 = icmp ult ptr %i.as, %i.ay
  %bound1 = icmp ult ptr %i.aw, %i.au
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, -8                      ; 3 uses
  %i.az = add i64 %.sroa.0.sroa.5.0.copyload, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.w, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = add nuw i64 %.sroa.0.sroa.5.0.copyload, %index ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.ba ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %wide.load = load <4 x i16>, ptr %i.bc, align 2, !alias.scope !220
  %wide.load179 = load <4 x i16>, ptr %i.bd, align 2, !alias.scope !220
  %i.be = uitofp <4 x i16> %wide.load to <4 x float>
  %i.bf = uitofp <4 x i16> %wide.load179 to <4 x float>
  %i.bg = fmul nnan <4 x float> %broadcast.splat, %i.be
  %i.bh = fmul nnan <4 x float> %broadcast.splat, %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <4 x float> %i.bg, ptr %i.bb, align 4, !alias.scope !221, !noalias !220
  store <4 x float> %i.bh, ptr %i.bi, align 4, !alias.scope !221, !noalias !220
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader181

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader181: ; preds = %vector.memcheck, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %middle.block
  %.sroa.560.0125.us.ph = phi i64 [ %.sroa.0.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.0.sroa.5.0.copyload, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.az, %middle.block ] ; 4 uses
  %i.bk = sub i64 %.sroa.0.sroa.6.0.copyload, %.sroa.560.0125.us.ph
  %xtraiter = and i64 %i.bk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader181, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol
  %.sroa.560.0125.us.prol = phi i64 [ %i.bl, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ %.sroa.560.0125.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader181 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader181 ]
  %i.bl = add nuw i64 %.sroa.560.0125.us.prol, 1  ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.560.0125.us.prol
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.560.0125.us.prol
  %.val44.us.prol = load i16, ptr %i.bn, align 2, !noundef !5
  %i.bo = uitofp i16 %.val44.us.prol to float
  %i.bp = fmul nnan float %i.w, %i.bo
  store float %i.bp, ptr %i.bm, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol, !llvm.loop !204

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader181
  %.sroa.560.0125.us.unr = phi i64 [ %.sroa.560.0125.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader181 ], [ %i.bl, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.bq = sub i64 %.sroa.560.0125.us.ph, %.sroa.0.sroa.6.0.copyload
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.sroa.560.0125.us = phi i64 [ %i.ch, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %.sroa.560.0125.us.unr, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit ] ; 6 uses
  %i.bs = add nuw i64 %.sroa.560.0125.us, 1       ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.560.0125.us
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.560.0125.us
  %.val44.us = load i16, ptr %i.bu, align 2, !noundef !5
  %i.bv = uitofp i16 %.val44.us to float
  %i.bw = fmul nnan float %i.w, %i.bv
  store float %i.bw, ptr %i.bt, align 4
  %i.bx = add nuw i64 %.sroa.560.0125.us, 2       ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.bs
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bs
  %.val44.us.1 = load i16, ptr %i.bz, align 2, !noundef !5
  %i.ca = uitofp i16 %.val44.us.1 to float
  %i.cb = fmul nnan float %i.w, %i.ca
  store float %i.cb, ptr %i.by, align 4
  %i.cc = add nuw i64 %.sroa.560.0125.us, 3       ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.bx
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bx
  %.val44.us.2 = load i16, ptr %i.ce, align 2, !noundef !5
  %i.cf = uitofp i16 %.val44.us.2 to float
  %i.cg = fmul nnan float %i.w, %i.cf
  store float %i.cg, ptr %i.cd, align 4
  %i.ch = add nuw i64 %.sroa.560.0125.us, 4       ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.cc
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.cc
  %.val44.us.3 = load i16, ptr %i.cj, align 2, !noundef !5
  %i.ck = uitofp i16 %.val44.us.3 to float
  %i.cl = fmul nnan float %i.w, %i.ck
  store float %i.cl, ptr %i.ci, align 4
  %exitcond144.not.3 = icmp eq i64 %i.ch, %.sroa.0.sroa.6.0.copyload
  br i1 %exitcond144.not.3, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !205

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %._crit_edge
  %.sroa.560.0125 = phi i64 [ %i.cm, %._crit_edge ], [ %.sroa.0.sroa.5.0.copyload, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 3 uses
  %.sroa.8.0124 = phi i64 [ %i.co, %._crit_edge ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %i.cm = add nuw i64 %.sroa.560.0125, 1
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.560.0125
  %i.co = add i64 %.sroa.8.0124, 1                ; 2 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.560.0125
  %.val44 = load i16, ptr %i.cp, align 2, !noundef !5
  %i.cq = uitofp i16 %.val44 to float
  %i.cr = fmul nnan float %i.w, %i.cq
  br label %bb.v

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, %middle.block, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4ItertENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_7IterMutfEECsa5QsYiPB8Gl_5image.exit
  %i.cs = urem i64 %4, %5                         ; 2 uses
  %i.ct = sub nuw nsw i64 %4, %i.cs               ; 2 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !222
  store ptr %i.cu, ptr %i.c, align 8, !noalias !223
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.cs, ptr %.sroa.467.0..sroa_idx, align 8, !noalias !223
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %3, ptr %.sroa.568.0..sroa_idx, align 8, !noalias !223
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.ct, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !223
  %.sroa.769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %5, ptr %.sroa.769.0..sroa_idx, align 8, !noalias !223
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, i64 noundef 0, i64 noundef range(i64 1, 4294967296) %i.aa)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.cx = load i64, ptr %i.cv, align 8, !alias.scope !224, !noundef !5 ; 2 uses
  %i.cy = load i64, ptr %i.cw, align 8, !alias.scope !224, !noundef !5
  %i.cz = icmp ult i64 %i.cx, %i.cy
  br i1 %i.cz, label %.lr.ph, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread

.lr.ph:                                           ; preds = %bb.j
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.883.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %.sroa.984.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  br label %bb.k

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4ItertEB14_EINtB17_7IterMutfEEIB1C_tEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit: ; preds = %bb.u, %bb.r
  %i.db = load i64, ptr %i.cv, align 8, !alias.scope !224, !noundef !5 ; 2 uses
  %i.dc = load i64, ptr %i.cw, align 8, !alias.scope !224, !noundef !5
  %i.dd = icmp ult i64 %i.db, %i.dc
  br i1 %i.dd, label %bb.k, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread

bb.k:                                             ; preds = %.lr.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4ItertEB14_EINtB17_7IterMutfEEIB1C_tEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit
  %i.de = phi i64 [ %i.cx, %.lr.ph ], [ %i.db, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4ItertEB14_EINtB17_7IterMutfEEIB1C_tEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit ] ; 3 uses
  %i.df = add nuw i64 %i.de, 1
  store i64 %i.df, ptr %i.cv, align 8, !alias.scope !224
  %i.dg = invoke { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuttENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i, i64 noundef %i.de)
          to label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.k
  %i.dh = extractvalue { ptr, i64 } %i.dg, 0      ; 3 uses
  %i.di = extractvalue { ptr, i64 } %i.dg, 1
  %.not37 = icmp eq ptr %i.dh, null
  br i1 %.not37, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread, label %bb.n

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4ItertEB14_EINtB17_7IterMutfEEIB1C_tEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit47 unwind label %bb.l

bb.l:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit47: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.n:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit
  %.val.i = load i64, ptr %i.da, align 8, !alias.scope !225, !noundef !5
  %i.dl = add nuw i64 %.val.i, %i.de              ; 2 uses
  %i.dm = add i64 %i.v, %i.dl
  %..i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.ab, i64 %i.dm)
  %i.dn = mul i64 %..i, %2                        ; 4 uses
  %i.do = sub i64 %i.dl, %i.u
  %..i48 = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.do, i64 0)
  %i.dp = mul i64 %..i48, %2                      ; 4 uses
  %i.dq = add i64 %i.dn, %i.z                     ; 3 uses
  %i.dr = icmp ult i64 %i.dq, %i.dn
  %.not38 = icmp ugt i64 %i.dq, %1
  %or.cond = or i1 %i.dr, %.not38
  br i1 %or.cond, label %.invoke, label %bb.o, !prof !18

bb.o:                                             ; preds = %bb.n
  %i.ds = add i64 %i.dp, %i.z                     ; 3 uses
  %i.dt = icmp ult i64 %i.ds, %i.dp
  %.not39 = icmp ugt i64 %i.ds, %1
  %or.cond41 = or i1 %i.dt, %.not39
  br i1 %or.cond41, label %.invoke, label %bb.p, !prof !18

.invoke:                                          ; preds = %bb.o, %bb.n
  %i.du = phi i64 [ %i.dn, %bb.n ], [ %i.dp, %bb.o ]
  %i.dv = phi i64 [ %i.dq, %bb.n ], [ %i.ds, %bb.o ]
  %i.dw = phi ptr [ @9, %bb.n ], [ @8, %bb.o ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.du, i64 noundef %i.dv, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dw) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dn ; 2 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dp ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %i.z
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dy, i64 %i.z
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEBW_EINtB5_7ZipImplBW_BW_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.dy, ptr noundef nonnull %i.ea)
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4ItertENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4ItertENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.p
  %i.eb = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ec = load i64, ptr %i.ak, align 8, !noundef !5
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !227
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4ItertEB10_EINtB13_7IterMutfEEINtB5_7ZipImplBW_B1x_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull %i.eb, ptr noundef nonnull %i.ed)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4ItertENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !229
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4ItertEB14_EINtB17_7IterMutfEEIB1C_tEEINtB5_7ZipImplBW_B1T_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.a, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.ee)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.073.0.copyload = load ptr, ptr %i.h, align 8 ; 2 uses
  %.sroa.475.0.copyload = load ptr, ptr %.sroa.475.0..sroa_idx, align 8 ; 2 uses
  %.sroa.577.0.copyload = load i64, ptr %.sroa.577.0..sroa_idx, align 8
  %.sroa.679.0.copyload = load ptr, ptr %.sroa.679.0..sroa_idx, align 8 ; 2 uses
  %.sroa.781.0.copyload = load i64, ptr %.sroa.781.0..sroa_idx, align 8
  %.sroa.883.0.copyload = load ptr, ptr %.sroa.883.0..sroa_idx, align 8 ; 2 uses
  %.sroa.984.0.copyload = load i64, ptr %.sroa.984.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %i.ef = icmp ult i64 %.sroa.984.0.copyload, %.sroa.11.0.copyload
  br i1 %i.ef, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4ItertEB14_EINtB17_7IterMutfEEIB1C_tEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4ItertEB14_EINtB17_7IterMutfEEIB1C_tEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4ItertEB14_EINtB17_7IterMutfEEIB1C_tEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.073.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.475.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.679.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.883.0.copyload) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4ItertEB14_EINtB17_7IterMutfEEIB1C_tEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4ItertEB14_EINtB17_7IterMutfEEIB1C_tEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4ItertEB14_EINtB17_7IterMutfEEIB1C_tEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %bb.u
  %.sroa.984.0126 = phi i64 [ %.sroa.984.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4ItertEB14_EINtB17_7IterMutfEEIB1C_tEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ], [ %i.es, %bb.u ] ; 3 uses
  %i.eg = add i64 %.sroa.984.0126, %.sroa.781.0.copyload ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.679.0.copyload, i64 %i.eg ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !noundef !5 ; 2 uses
  %i.ej = fmul float %i.y, %i.ei
  %i.ek = call float @llvm.round.f32(float %i.ej)
  %i.el = call nsz float @llvm.minimumnum.f32(float %i.ek, float 6.553500e+04)
  %i.em = call nsz float @llvm.maximumnum.f32(float %i.el, float 0.000000e+00) ; 2 uses
  %i.en = fcmp olt float %i.em, 6.553600e+04
  br i1 %i.en, label %bb.u, label %bb.s, !prof !19

bb.s:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4ItertEB14_EINtB17_7IterMutfEEIB1C_tEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.w
  unreachable

bb.u:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4ItertEB14_EINtB17_7IterMutfEEIB1C_tEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.883.0.copyload, i64 %.sroa.984.0126
  %i.ep = add i64 %i.eg, %.sroa.577.0.copyload    ; 2 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.475.0.copyload, i64 %i.ep
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %.sroa.073.0.copyload, i64 %i.ep
  %i.es = add i64 %.sroa.984.0126, 1              ; 2 uses
  %i.et = fptoui float %i.em to i16
  store i16 %i.et, ptr %i.eo, align 2
  %.val43 = load i16, ptr %i.er, align 2, !noundef !5
  %i.eu = uitofp i16 %.val43 to float
  %i.ev = fadd float %i.ei, %i.eu
  %.val42 = load i16, ptr %i.eq, align 2, !noundef !5
  %i.ew = uitofp i16 %.val42 to float
  %i.ex = fsub float %i.ev, %i.ew
  store float %i.ex, ptr %i.eh, align 4
  %exitcond145.not = icmp eq i64 %i.es, %.sroa.11.0.copyload
  br i1 %exitcond145.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4ItertEB14_EINtB17_7IterMutfEEIB1C_tEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4ItertEB14_EINtB17_7IterMutfEEIB1C_tEEINtB5_7ZipImplBW_B1T_E4nextCsa5QsYiPB8Gl_5image.exit

._crit_edge:                                      ; preds = %bb.x
  store float %i.fe, ptr %i.cn, align 4
  %exitcond143.not = icmp eq i64 %i.co, %i.aq
  br i1 %exitcond143.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.v:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %bb.x
  %.sroa.01.0123 = phi float [ %i.cr, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ], [ %i.fe, %bb.x ]
  %.sroa.063.0122 = phi i64 [ 1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4ItertEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ], [ %i.fb, %bb.x ] ; 3 uses
  %..i57 = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.ab, i64 %.sroa.063.0122)
  %i.ey = mul i64 %..i57, %2
  %i.ez = add i64 %i.ey, %.sroa.8.0124            ; 3 uses
  %i.fa = icmp ult i64 %i.ez, %1
  br i1 %i.fa, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ez, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.v
  %i.fb = add nuw i64 %.sroa.063.0122, 1
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ez
  %.val = load i16, ptr %i.fc, align 2, !noundef !5
  %i.fd = uitofp i16 %.val to float
  %i.fe = fadd float %.sroa.01.0123, %i.fd        ; 2 uses
  %exitcond = icmp eq i64 %.sroa.063.0122, %i.u
  br i1 %exitcond, label %._crit_edge, label %bb.v

bb.y:                                             ; preds = %bb.h
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.g, %bb.y
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur33box_blur_horizontal_pass_strategyINtNtB6_5color3RgbfEfEB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, i64 noundef range(i64 3, 12884901886) %2, ptr noalias nofree noundef nonnull align 4 %3, i64 noundef range(i64 0, 2305843009213693952) %4, i64 noundef range(i64 3, 12884901886) %5, i32 noundef range(i32 1, 0) %6, i64 noundef %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [80 x i8], align 8                ; 9 uses
  %i.f = alloca [96 x i8], align 8                ; 7 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = zext i32 %6 to i64                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !246
  %i.i = add i64 %7, %i.h                         ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  br i1 %i.j, label %bb.b, label %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 7, ptr %i.d, align 8, !noalias !246
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !246
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #24
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d) #22
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.i, ptr %i.m, align 8, !noalias !246
  store i8 -1, ptr %i.d, align 8, !noalias !246
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d), !noalias !246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !246
  %i.n = shl i64 %7, 1
  %i.o = or disjoint i64 %i.n, 1
  %i.p = and i64 %7, 9223372036854775807          ; 10 uses
  %i.q = add nuw i64 %i.p, 1                      ; 4 uses
  %i.r = uitofp i64 %i.q to float                 ; 2 uses
  %i.s = uitofp i64 %i.o to float
  %i.t = fdiv float 1.000000e+00, %i.s            ; 6 uses
  %i.u = add nsw i64 %i.h, -1                     ; 6 uses
  %i.v = urem i64 %4, %5                          ; 2 uses
  %i.w = sub nuw nsw i64 %4, %i.v                 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.w
  %i.y = urem i64 %1, %2                          ; 2 uses
  %i.z = sub nuw nsw i64 %1, %i.y                 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !247
  store ptr %i.x, ptr %i.c, align 8, !noalias !248
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.v, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !248
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !248
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !248
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %5, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !247
  store ptr %0, ptr %i.b, align 8, !alias.scope !249, !noalias !250
  %.sroa.4184.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.z, ptr %.sroa.4184.0..sroa_idx.i, align 8, !alias.scope !249, !noalias !250
  %.sroa.5185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.aa, ptr %.sroa.5185.0..sroa_idx.i, align 8, !alias.scope !249, !noalias !250
  %.sroa.6186.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.y, ptr %.sroa.6186.0..sroa_idx.i, align 8, !alias.scope !249, !noalias !250
  %.sroa.7187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %2, ptr %.sroa.7187.0..sroa_idx.i, align 8, !alias.scope !249, !noalias !250
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExactfEEINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b), !noalias !251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !246
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !252, !noalias !246, !noundef !5 ; 2 uses
  %i.ae = load i64, ptr %i.ac, align 8, !alias.scope !252, !noalias !246, !noundef !5
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExactfEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implfKj3_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExactfEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %..i175.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %i.p)
  %i.ah = call i64 @llvm.usub.sat.i64(i64 %i.u, i64 %i.q) ; 4 uses
  %i.ai = mul i64 %i.p, 6
  %i.aj = add i64 %i.ai, 3                        ; 3 uses
  %i.ak = mul nuw nsw i64 %i.ah, 3                ; 4 uses
  %invariant.umax.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ak)
  %i.al = mul i64 %i.p, 3                         ; 3 uses
  %i.am = icmp ult i64 %i.ak, %i.al
  %i.an = sub nsw i64 %i.ah, %i.p
  %i.ao = mul i64 %i.an, 3
  %i.ap = udiv i64 %i.ao, 3
  %.sroa.4208.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.7214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.9215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.aq = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %xtraiter = and i64 %7, 1
  %i.as = icmp eq i64 %i.p, 1                     ; 0 uses
  %unroll_iter = and i64 %7, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod387 = trunc i64 %7 to i1
  %i.at = insertelement <2 x float> poison, float %i.t, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = insertelement <2 x float> poison, float %i.t, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExactfEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.loopexit.i:                                      ; preds = %bb.r, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i
  %i.az = load i64, ptr %i.ab, align 8, !alias.scope !252, !noalias !246, !noundef !5 ; 2 uses
  %i.ba = load i64, ptr %i.ac, align 8, !alias.scope !252, !noalias !246, !noundef !5
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExactfEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implfKj3_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExactfEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExactfEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %i.bc = phi i64 [ %i.ad, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExactfEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.az, %.loopexit.i ] ; 3 uses
  %i.bd = add nuw i64 %i.bc, 1
  store i64 %i.bd, ptr %i.ab, align 8, !alias.scope !252, !noalias !246
  %i.be = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMutfENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.f, i64 noundef %i.bc), !noalias !253 ; 2 uses
  %i.bf = extractvalue { ptr, i64 } %i.be, 0      ; 4 uses
  %i.bg = extractvalue { ptr, i64 } %i.be, 1      ; 6 uses
  %i.bh = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactfENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag, i64 noundef %i.bc), !noalias !253 ; 2 uses
  %i.bi = extractvalue { ptr, i64 } %i.bh, 0      ; 13 uses
  %i.bj = extractvalue { ptr, i64 } %i.bh, 1      ; 17 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implfKj3_EB6_.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExactfEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  %i.bk = icmp ugt i64 %i.bj, 2
  br i1 %i.bk, label %bb.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %.val174.i = load float, ptr %i.bi, align 4, !noundef !5
  %i.bm = fmul float %.val174.i, %i.r             ; 3 uses
  %i.bn = load <2 x float>, ptr %i.bl, align 4
  %i.bo = fmul <2 x float> %i.bn, %i.ar           ; 3 uses
  switch i64 %i.p, label %.lr.ph.i [
    i64 0, label %._crit_edge312.i
    i64 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i:                                         ; preds = %bb.i, %bb.y
  %.sroa.022.0301.i = phi float [ %i.fx, %bb.y ], [ %i.bm, %bb.i ]
  %.sroa.0191.0300.i = phi i64 [ %i.fv, %bb.y ], [ 1, %bb.i ] ; 3 uses
  %i.bp = phi <2 x float> [ %i.ga, %bb.y ], [ %i.bo, %bb.i ]
  %niter = phi i64 [ %niter.next.1, %bb.y ], [ 0, %bb.i ]
  %..i.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %.sroa.0191.0300.i)
  %i.bq = mul nuw nsw i64 %..i.i, 3               ; 3 uses
  %i.br = add nuw nsw i64 %i.bq, 3                ; 2 uses
  %.not144.i = icmp ugt i64 %i.br, %i.bj
  br i1 %.not144.i, label %.loopexit, label %.lr.ph.i.1, !prof !18

._crit_edge312.i:                                 ; preds = %bb.x, %bb.i
  %.sroa.022.1.lcssa.i = phi float [ %i.bm, %bb.i ], [ %i.fh, %bb.x ] ; 3 uses
  %i.bs = phi <2 x float> [ %i.bo, %bb.i ], [ %i.fm, %bb.x ] ; 3 uses
  %or.cond.i = icmp ugt i64 %i.bj, %invariant.umax.i
  br i1 %or.cond.i, label %bb.j, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

.lr.ph311.i:                                      ; preds = %.lr.ph311.i.preheader, %bb.x
  %.sroa.022.1307.i = phi float [ %i.fh, %bb.x ], [ %.lcssa318, %.lr.ph311.i.preheader ] ; 2 uses
  %.sroa.0111.0306.i = phi i64 [ %i.bu, %bb.x ], [ 0, %.lr.ph311.i.preheader ] ; 4 uses
  %i.bt = phi <2 x float> [ %i.fm, %bb.x ], [ %.lcssa317, %.lr.ph311.i.preheader ] ; 3 uses
  %i.bu = add nuw nsw i64 %.sroa.0111.0306.i, 1   ; 2 uses
  %i.bv = add nuw i64 %.sroa.0111.0306.i, %i.q
  %..i176.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %i.bv)
  %i.bw = mul nuw nsw i64 %..i176.i, 3            ; 3 uses
  %i.bx = sub nsw i64 %.sroa.0111.0306.i, %i.p
  %..i177.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bx, i64 0)
  %i.by = mul i64 %..i177.i, 3                    ; 3 uses
  %i.bz = mul nuw nsw i64 %.sroa.0111.0306.i, 3   ; 3 uses
  %i.ca = add nuw nsw i64 %i.bz, 3                ; 2 uses
  %.not141.i = icmp ugt i64 %i.ca, %i.bg
  br i1 %.not141.i, label %bb.t, label %bb.s, !prof !18

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, %bb.k, %._crit_edge312.i
  %.sroa.0116.0.i = phi i64 [ %i.p, %._crit_edge312.i ], [ %i.ah, %bb.k ], [ %i.ah, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i ] ; 2 uses
  %.sroa.022.2.i = phi float [ %.sroa.022.1.lcssa.i, %._crit_edge312.i ], [ %.sroa.022.1.lcssa.i, %bb.k ], [ %i.dh, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i ]
  %i.cb = phi <2 x float> [ %i.bs, %._crit_edge312.i ], [ %i.bs, %bb.k ], [ %i.dm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i ] ; 2 uses
  %i.cc = icmp ult i64 %.sroa.0116.0.i, %i.h
  br i1 %i.cc, label %.lr.ph327.i.preheader, label %.loopexit.i

.lr.ph327.i.preheader:                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i
  %i.cd = extractelement <2 x float> %i.cb, i64 1
  %i.ce = insertelement <2 x float> poison, float %.sroa.022.2.i, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> %i.cb, <2 x i32> <i32 0, i32 2>
  br label %.lr.ph327.i

bb.j:                                             ; preds = %._crit_edge312.i
  %.not136.i = icmp ugt i64 %i.ak, %i.bg
  %or.cond145.i = or i1 %i.am, %.not136.i
  br i1 %or.cond145.i, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.aj ; 2 uses
  %i.ch = sub nuw i64 %i.bj, %i.aj
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.al ; 2 uses
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.ci, i64 %i.ap
  %i.ck = udiv i64 %i.bj, 3
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %i.bi, i64 %i.ck
  %i.cm = udiv i64 %i.ch, 3
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %i.cg, i64 %i.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !254
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutAfj3_EINtBZ_4IterB1p_EEINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.cl)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.cn), !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !254
  %.sroa.0206.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !246 ; 2 uses
  %.sroa.4208.0.copyload.i = load ptr, ptr %.sroa.4208.0..sroa_idx.i, align 8, !noalias !246 ; 2 uses
  %.sroa.5210.0.copyload.i = load i64, ptr %.sroa.5210.0..sroa_idx.i, align 8, !noalias !246
  %.sroa.6212.0.copyload.i = load ptr, ptr %.sroa.6212.0..sroa_idx.i, align 8, !noalias !246 ; 2 uses
  %.sroa.7214.0.copyload.i = load i64, ptr %.sroa.7214.0..sroa_idx.i, align 8, !noalias !246 ; 2 uses
  %.sroa.9215.0.copyload.i = load i64, ptr %.sroa.9215.0..sroa_idx.i, align 8, !noalias !246 ; 2 uses
  %i.co = icmp ult i64 %.sroa.7214.0.copyload.i, %.sroa.9215.0.copyload.i
  br i1 %i.co, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0206.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4208.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6212.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.al, i64 noundef %i.ak, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.022.3317.i = phi float [ %.sroa.022.1.lcssa.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.dh, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i ] ; 2 uses
  %.sroa.7214.0316.i = phi i64 [ %.sroa.7214.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.cu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i ] ; 3 uses
  %i.cp = phi <2 x float> [ %i.bs, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.dm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i ] ; 3 uses
  %i.cq = add i64 %.sroa.7214.0316.i, %.sroa.5210.0.copyload.i ; 2 uses
  %i.cr = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0206.0.copyload.i, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %.sroa.6212.0.copyload.i, i64 %.sroa.7214.0316.i ; 2 uses
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %.sroa.4208.0.copyload.i, i64 %i.cq ; 2 uses
  %i.cu = add nuw i64 %.sroa.7214.0316.i, 1       ; 2 uses
  %i.cv = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cw = insertelement <2 x float> %i.cv, float %.sroa.022.3317.i, i64 0
  %i.cx = fmul <2 x float> %i.aw, %i.cw
  %i.cy = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.cx, <2 x float> splat (float 1.000000e+00))
  %i.cz = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.cy, <2 x float> zeroinitializer)
  store <2 x float> %i.cz, ptr %i.cr, align 4
  %i.da = extractelement <2 x float> %i.cp, i64 1
  %i.db = fmul float %i.t, %i.da
  %i.dc = call nsz float @llvm.minimumnum.f32(float %i.db, float 1.000000e+00)
  %i.dd = call nsz noundef float @llvm.maximumnum.f32(float %i.dc, float 0.000000e+00)
  %i.de = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store float %i.dd, ptr %i.de, align 4
  %.val165.i = load float, ptr %i.cs, align 4, !noundef !5
  %i.df = fadd float %.sroa.022.3317.i, %.val165.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %.val162.i = load float, ptr %i.ct, align 4, !noundef !5
  %i.dh = fsub float %i.df, %.val162.i            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.dj = load <2 x float>, ptr %i.dg, align 4
  %i.dk = fadd <2 x float> %i.cp, %i.dj
  %i.dl = load <2 x float>, ptr %i.di, align 4
  %i.dm = fsub <2 x float> %i.dk, %i.dl           ; 2 uses
  %exitcond404.not.i = icmp eq i64 %i.cu, %.sroa.9215.0.copyload.i
  br i1 %exitcond404.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.lr.ph327.i:                                      ; preds = %.lr.ph327.i.preheader, %bb.r
  %.sroa.011.4325.i = phi float [ %i.ep, %bb.r ], [ %i.cd, %.lr.ph327.i.preheader ] ; 2 uses
  %.sroa.0116.1323.i = phi i64 [ %i.do, %bb.r ], [ %.sroa.0116.0.i, %.lr.ph327.i.preheader ] ; 4 uses
  %i.dn = phi <2 x float> [ %i.en, %bb.r ], [ %i.cf, %.lr.ph327.i.preheader ] ; 2 uses
  %i.do = add i64 %.sroa.0116.1323.i, 1           ; 2 uses
  %i.dp = add nuw i64 %.sroa.0116.1323.i, %i.q
  %..i181.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %i.dp)
  %i.dq = mul nuw nsw i64 %..i181.i, 3            ; 3 uses
  %i.dr = sub nsw i64 %.sroa.0116.1323.i, %i.p
  %..i182.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.dr, i64 0)
  %i.ds = mul i64 %..i182.i, 3                    ; 4 uses
  %i.dt = mul nuw nsw i64 %.sroa.0116.1323.i, 3   ; 3 uses
  %i.du = add nuw nsw i64 %i.dt, 3                ; 2 uses
  %.not138.i = icmp ugt i64 %i.du, %i.bg
  br i1 %.not138.i, label %bb.n, label %bb.m, !prof !12

bb.m:                                             ; preds = %.lr.ph327.i
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.dt ; 2 uses
  %i.dw = fmul <2 x float> %i.ay, %i.dn
  %i.dx = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.dw, <2 x float> splat (float 1.000000e+00))
  %i.dy = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.dx, <2 x float> zeroinitializer)
  store <2 x float> %i.dy, ptr %i.dv, align 4
  %i.dz = fmul float %i.t, %.sroa.011.4325.i
  %i.ea = call nsz float @llvm.minimumnum.f32(float %i.dz, float 1.000000e+00)
  %i.eb = call nsz noundef float @llvm.maximumnum.f32(float %i.ea, float 0.000000e+00)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store float %i.eb, ptr %i.ec, align 4
  %i.ed = add nuw nsw i64 %i.dq, 3                ; 2 uses
  %.not139.i = icmp ugt i64 %i.ed, %i.bj
  br i1 %.not139.i, label %bb.o, label %bb.p, !prof !18

bb.n:                                             ; preds = %.lr.ph327.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.dt, i64 noundef %i.du, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.dq, i64 noundef %i.ed, i64 noundef %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.ee = add i64 %i.ds, 3                        ; 2 uses
  %i.ef = icmp ugt i64 %i.ds, -4
  %.not140.i = icmp ugt i64 %i.ee, %i.bj
  %or.cond147.i = or i1 %i.ef, %.not140.i
  br i1 %or.cond147.i, label %bb.q, label %bb.r, !prof !18

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ds, i64 noundef %i.ee, i64 noundef %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.dq ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ds ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.val169.i = load float, ptr %i.ei, align 4, !noundef !5
  %i.ej = fadd float %.sroa.011.4325.i, %.val169.i
  %i.ek = load <2 x float>, ptr %i.eg, align 4
  %i.el = fadd <2 x float> %i.dn, %i.ek
  %i.em = load <2 x float>, ptr %i.eh, align 4
  %i.en = fsub <2 x float> %i.el, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.val166.i = load float, ptr %i.eo, align 4, !noundef !5
  %i.ep = fsub float %i.ej, %.val166.i
  %exitcond405.not.i = icmp eq i64 %i.do, %i.h
  br i1 %exitcond405.not.i, label %.loopexit.i, label %.lr.ph327.i

bb.s:                                             ; preds = %.lr.ph311.i
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bz ; 2 uses
  %i.er = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.es = insertelement <2 x float> %i.er, float %.sroa.022.1307.i, i64 0
  %i.et = fmul <2 x float> %i.au, %i.es
  %i.eu = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.et, <2 x float> splat (float 1.000000e+00))
  %i.ev = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.eu, <2 x float> zeroinitializer)
  store <2 x float> %i.ev, ptr %i.eq, align 4
  %i.ew = extractelement <2 x float> %i.bt, i64 1
  %i.ex = fmul float %i.t, %i.ew
  %i.ey = call nsz float @llvm.minimumnum.f32(float %i.ex, float 1.000000e+00)
  %i.ez = call nsz noundef float @llvm.maximumnum.f32(float %i.ey, float 0.000000e+00)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store float %i.ez, ptr %i.fa, align 4
  %i.fb = add nuw nsw i64 %i.bw, 3                ; 2 uses
  %.not142.i = icmp ugt i64 %i.fb, %i.bj
  br i1 %.not142.i, label %bb.u, label %bb.v, !prof !18

bb.t:                                             ; preds = %.lr.ph311.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bz, i64 noundef %i.ca, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #20
  unreachable

bb.u:                                             ; preds = %bb.s
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bw, i64 noundef %i.fb, i64 noundef %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.fc = add i64 %i.by, 3                        ; 2 uses
  %.not143.i = icmp ugt i64 %i.fc, %i.bj
  br i1 %.not143.i, label %bb.w, label %bb.x, !prof !18

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.by, i64 noundef %i.fc, i64 noundef %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #20
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bw ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.by ; 2 uses
  %.val159.i = load float, ptr %i.fd, align 4, !noundef !5
  %i.ff = fadd float %.sroa.022.1307.i, %.val159.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %.val156.i = load float, ptr %i.fe, align 4, !noundef !5
  %i.fh = fsub float %i.ff, %.val156.i            ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fj = load <2 x float>, ptr %i.fg, align 4
  %i.fk = fadd <2 x float> %i.bt, %i.fj
  %i.fl = load <2 x float>, ptr %i.fi, align 4
  %i.fm = fsub <2 x float> %i.fk, %i.fl           ; 2 uses
  %exitcond403.not.i = icmp eq i64 %i.bu, %..i175.i
  br i1 %exitcond403.not.i, label %._crit_edge312.i, label %.lr.ph311.i

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.lr.ph.i, %.lr.ph.i.1
  %.lcssa315 = phi i64 [ %i.fo, %.lr.ph.i.1 ], [ %i.bq, %.lr.ph.i ], [ %i.gb, %.lr.ph.i.epil.preheader ]
  %.lcssa = phi i64 [ %i.fp, %.lr.ph.i.1 ], [ %i.br, %.lr.ph.i ], [ %i.gc, %.lr.ph.i.epil.preheader ]
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa315, i64 noundef %.lcssa, i64 noundef %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #20
  unreachable

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.fn = add nuw i64 %.sroa.0191.0300.i, 1
  %..i.i.1 = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %i.fn)
  %i.fo = mul nuw nsw i64 %..i.i.1, 3             ; 3 uses
  %i.fp = add nuw nsw i64 %i.fo, 3                ; 2 uses
  %.not144.i.1 = icmp ugt i64 %i.fp, %i.bj
  br i1 %.not144.i.1, label %.loopexit, label %bb.y, !prof !18

bb.y:                                             ; preds = %.lr.ph.i.1
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bq ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = load <2 x float>, ptr %i.fr, align 4
  %i.ft = fadd <2 x float> %i.bp, %i.fs
  %.val153.i = load float, ptr %i.fq, align 4, !noundef !5
  %i.fu = fadd float %.sroa.022.0301.i, %.val153.i
  %i.fv = add nuw i64 %.sroa.0191.0300.i, 2       ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.fo ; 2 uses
  %.val153.i.1 = load float, ptr %i.fw, align 4, !noundef !5
  %i.fx = fadd float %i.fu, %.val153.i.1          ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.fz = load <2 x float>, ptr %i.fy, align 4
  %i.ga = fadd <2 x float> %i.ft, %i.fz           ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph311.i.preheader.unr-lcssa, label %.lr.ph.i

.lr.ph311.i.preheader.unr-lcssa:                  ; preds = %bb.y
  br i1 %lcmp.mod.not, label %.lr.ph311.i.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.i, %.lr.ph311.i.preheader.unr-lcssa
  %.sroa.022.0301.i.epil.init = phi float [ %i.bm, %bb.i ], [ %i.fx, %.lr.ph311.i.preheader.unr-lcssa ]
  %.sroa.0191.0300.i.epil.init = phi i64 [ 1, %bb.i ], [ %i.fv, %.lr.ph311.i.preheader.unr-lcssa ]
  %.epil.init = phi <2 x float> [ %i.bo, %bb.i ], [ %i.ga, %.lr.ph311.i.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod387)
  %..i.i.epil = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %.sroa.0191.0300.i.epil.init)
  %i.gb = mul nuw nsw i64 %..i.i.epil, 3          ; 3 uses
  %i.gc = add nuw nsw i64 %i.gb, 3                ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur33box_blur_horizontal_pass_strategyINtNtB6_5color3RgbhEhEB6_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.i, ptr %i.m, align 8, !noalias !272
  store i8 -1, ptr %i.d, align 8, !noalias !272
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !272
  %i.n = shl i64 %7, 1
  %i.o = or disjoint i64 %i.n, 1
  %i.p = and i64 %7, 9223372036854775807          ; 10 uses
  %i.q = add nuw i64 %i.p, 1                      ; 4 uses
  %i.r = uitofp i64 %i.q to float                 ; 2 uses
  %i.s = uitofp i64 %i.o to float
  %i.t = fdiv float 1.000000e+00, %i.s            ; 9 uses
  %i.u = add nsw i64 %i.h, -1                     ; 6 uses
  %i.v = urem i64 %4, %5                          ; 2 uses
  %i.w = sub nuw nsw i64 %4, %i.v                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %i.w
  %i.y = urem i64 %1, %2                          ; 2 uses
  %i.z = sub nuw nsw i64 %1, %i.y                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !273
  store ptr %i.x, ptr %i.c, align 8, !noalias !274
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.v, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !274
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !274
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !274
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %5, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !273
  store ptr %0, ptr %i.b, align 8, !alias.scope !275, !noalias !276
  %.sroa.4192.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.z, ptr %.sroa.4192.0..sroa_idx.i, align 8, !alias.scope !275, !noalias !276
  %.sroa.5193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.aa, ptr %.sroa.5193.0..sroa_idx.i, align 8, !alias.scope !275, !noalias !276
  %.sroa.6194.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.y, ptr %.sroa.6194.0..sroa_idx.i, align 8, !alias.scope !275, !noalias !276
  %.sroa.7195.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %2, ptr %.sroa.7195.0..sroa_idx.i, align 8, !alias.scope !275, !noalias !276
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b), !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !272
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !278, !noalias !272, !noundef !5 ; 2 uses
  %i.ae = load i64, ptr %i.ac, align 8, !alias.scope !278, !noalias !272, !noundef !5
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implhKj3_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %..i175.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %i.p)
  %i.ah = call i64 @llvm.usub.sat.i64(i64 %i.u, i64 %i.q) ; 4 uses
  %i.ai = mul i64 %i.p, 6
  %i.aj = add i64 %i.ai, 3                        ; 3 uses
  %i.ak = mul nuw nsw i64 %i.ah, 3                ; 4 uses
  %invariant.umax.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ak)
  %i.al = mul i64 %i.p, 3                         ; 3 uses
  %i.am = icmp ult i64 %i.ak, %i.al
  %i.an = sub nsw i64 %i.ah, %i.p
  %i.ao = mul i64 %i.an, 3
  %i.ap = udiv i64 %i.ao, 3
  %.sroa.4216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.7222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.9223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.aq = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %xtraiter = and i64 %7, 1
  %i.as = icmp eq i64 %i.p, 1                     ; 0 uses
  %unroll_iter = and i64 %7, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod607 = trunc i64 %7 to i1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.loopexit.i:                                      ; preds = %bb.x, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i
  %i.at = load i64, ptr %i.ab, align 8, !alias.scope !278, !noalias !272, !noundef !5 ; 2 uses
  %i.au = load i64, ptr %i.ac, align 8, !alias.scope !278, !noalias !272, !noundef !5
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implhKj3_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %i.aw = phi i64 [ %i.ad, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.at, %.loopexit.i ] ; 3 uses
  %i.ax = add nuw i64 %i.aw, 1
  store i64 %i.ax, ptr %i.ab, align 8, !alias.scope !278, !noalias !272
  %i.ay = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.f, i64 noundef %i.aw), !noalias !279 ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ay, 0      ; 4 uses
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1      ; 6 uses
  %i.bb = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag, i64 noundef %i.aw), !noalias !279 ; 2 uses
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0      ; 13 uses
  %i.bd = extractvalue { ptr, i64 } %i.bb, 1      ; 17 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implhKj3_EB6_.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.be = icmp ugt i64 %i.bd, 2
  br i1 %i.be, label %bb.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %.val174.i = load i8, ptr %i.bc, align 1, !noundef !5
  %i.bf = uitofp i8 %.val174.i to float
  %i.bg = fmul nnan float %i.r, %i.bf             ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.bi = load <2 x i8>, ptr %i.bh, align 1
  %i.bj = uitofp <2 x i8> %i.bi to <2 x float>
  %i.bk = fmul nnan <2 x float> %i.ar, %i.bj      ; 3 uses
  switch i64 %i.p, label %.lr.ph.i [
    i64 0, label %._crit_edge389.i
    i64 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i:                                         ; preds = %bb.i, %bb.ah
  %.sroa.022.0378.i = phi float [ %i.hv, %bb.ah ], [ %i.bg, %bb.i ]
  %.sroa.0199.0377.i = phi i64 [ %i.hs, %bb.ah ], [ 1, %bb.i ] ; 3 uses
  %i.bl = phi <2 x float> [ %i.hz, %bb.ah ], [ %i.bk, %bb.i ]
  %niter = phi i64 [ %niter.next.1, %bb.ah ], [ 0, %bb.i ]
  %..i.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %.sroa.0199.0377.i)
  %i.bm = mul nuw nsw i64 %..i.i, 3               ; 3 uses
  %i.bn = add nuw nsw i64 %i.bm, 3                ; 2 uses
  %.not144.i = icmp ugt i64 %i.bn, %i.bd
  br i1 %.not144.i, label %.loopexit, label %.lr.ph.i.1, !prof !18

._crit_edge389.i:                                 ; preds = %bb.ag, %bb.i
  %.sroa.022.1.lcssa.i = phi float [ %i.bg, %bb.i ], [ %i.ha, %bb.ag ] ; 3 uses
  %i.bo = phi <2 x float> [ %i.bk, %bb.i ], [ %i.hh, %bb.ag ] ; 3 uses
  %or.cond.i = icmp ugt i64 %i.bd, %invariant.umax.i
  br i1 %or.cond.i, label %bb.j, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

.lr.ph388.i:                                      ; preds = %.lr.ph388.i.preheader, %bb.ag
  %.sroa.022.1384.i = phi float [ %i.ha, %bb.ag ], [ %.lcssa496, %.lr.ph388.i.preheader ] ; 2 uses
  %.sroa.0111.0383.i = phi i64 [ %i.bq, %bb.ag ], [ 0, %.lr.ph388.i.preheader ] ; 4 uses
  %i.bp = phi <2 x float> [ %i.hh, %bb.ag ], [ %.lcssa495, %.lr.ph388.i.preheader ] ; 3 uses
  %i.bq = add nuw nsw i64 %.sroa.0111.0383.i, 1   ; 2 uses
  %i.br = add nuw i64 %.sroa.0111.0383.i, %i.q
  %..i176.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %i.br)
  %i.bs = mul nuw nsw i64 %..i176.i, 3            ; 3 uses
  %i.bt = sub nsw i64 %.sroa.0111.0383.i, %i.p
  %..i177.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bt, i64 0)
  %i.bu = mul i64 %..i177.i, 3                    ; 3 uses
  %i.bv = mul nuw nsw i64 %.sroa.0111.0383.i, 3   ; 3 uses
  %i.bw = add nuw nsw i64 %i.bv, 3                ; 2 uses
  %.not141.i = icmp ugt i64 %i.bw, %i.ba
  br i1 %.not141.i, label %bb.ac, label %bb.y, !prof !18

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit182.i, %bb.k, %._crit_edge389.i
  %.sroa.0116.0.i = phi i64 [ %i.p, %._crit_edge389.i ], [ %i.ah, %bb.k ], [ %i.ah, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit182.i ] ; 2 uses
  %.sroa.022.2.i = phi float [ %.sroa.022.1.lcssa.i, %._crit_edge389.i ], [ %.sroa.022.1.lcssa.i, %bb.k ], [ %i.dq, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit182.i ]
  %i.bx = phi <2 x float> [ %i.bo, %._crit_edge389.i ], [ %i.bo, %bb.k ], [ %i.dx, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit182.i ] ; 2 uses
  %i.by = icmp ult i64 %.sroa.0116.0.i, %i.h
  br i1 %i.by, label %.lr.ph404.i.preheader, label %.loopexit.i

.lr.ph404.i.preheader:                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i
  %i.bz = extractelement <2 x float> %i.bx, i64 1
  %i.ca = extractelement <2 x float> %i.bx, i64 0
  br label %.lr.ph404.i

bb.j:                                             ; preds = %._crit_edge389.i
  %.not136.i = icmp ugt i64 %i.ak, %i.ba
  %or.cond145.i = or i1 %i.am, %.not136.i
  br i1 %or.cond145.i, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.aj ; 2 uses
  %i.cc = sub nuw i64 %i.bd, %i.aj
  %i.cd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.al ; 2 uses
  %i.ce = getelementptr inbounds nuw [3 x i8], ptr %i.cd, i64 %i.ap
  %i.cf = udiv i64 %i.bd, 3
  %i.cg = getelementptr inbounds nuw [3 x i8], ptr %i.bc, i64 %i.cf
  %i.ch = udiv i64 %i.cc, 3
  %i.ci = getelementptr inbounds nuw [3 x i8], ptr %i.cb, i64 %i.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !280
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutAhj3_EINtBZ_4IterB1p_EEINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ce, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.cg)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.ci), !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !280
  %.sroa.0214.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !272 ; 2 uses
  %.sroa.4216.0.copyload.i = load ptr, ptr %.sroa.4216.0..sroa_idx.i, align 8, !noalias !272 ; 2 uses
  %.sroa.5218.0.copyload.i = load i64, ptr %.sroa.5218.0..sroa_idx.i, align 8, !noalias !272
  %.sroa.6220.0.copyload.i = load ptr, ptr %.sroa.6220.0..sroa_idx.i, align 8, !noalias !272 ; 2 uses
  %.sroa.7222.0.copyload.i = load i64, ptr %.sroa.7222.0..sroa_idx.i, align 8, !noalias !272 ; 2 uses
  %.sroa.9223.0.copyload.i = load i64, ptr %.sroa.9223.0..sroa_idx.i, align 8, !noalias !272 ; 2 uses
  %i.cj = icmp ult i64 %.sroa.7222.0.copyload.i, %.sroa.9223.0.copyload.i
  br i1 %i.cj, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0214.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4216.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6220.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.al, i64 noundef %i.ak, i64 noundef %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit182.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.022.3394.i = phi float [ %.sroa.022.1.lcssa.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.dq, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit182.i ] ; 2 uses
  %.sroa.7222.0393.i = phi i64 [ %.sroa.7222.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.cl, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit182.i ] ; 3 uses
  %i.ck = phi <2 x float> [ %i.bo, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.dx, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit182.i ] ; 3 uses
  %i.cl = add i64 %.sroa.7222.0393.i, 1           ; 2 uses
  %i.cm = add i64 %.sroa.7222.0393.i, %.sroa.5218.0.copyload.i ; 2 uses
  %i.cn = getelementptr inbounds nuw [3 x i8], ptr %.sroa.0214.0.copyload.i, i64 %i.cm ; 3 uses
  %i.co = getelementptr inbounds nuw [3 x i8], ptr %.sroa.4216.0.copyload.i, i64 %i.cm ; 2 uses
  %i.cp = getelementptr inbounds nuw [3 x i8], ptr %.sroa.6220.0.copyload.i, i64 %.sroa.7222.0393.i ; 2 uses
  %i.cq = fmul float %i.t, %.sroa.022.3394.i
  %i.cr = call float @llvm.round.f32(float %i.cq)
  %i.cs = call nsz float @llvm.minimumnum.f32(float %i.cr, float 2.550000e+02)
  %i.ct = call nsz float @llvm.maximumnum.f32(float %i.cs, float 0.000000e+00) ; 2 uses
  %i.cu = fcmp olt float %i.ct, 2.560000e+02
  br i1 %i.cu, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i, label %bb.m, !prof !19

bb.m:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.cv = fptoui float %i.ct to i8
  store i8 %i.cv, ptr %i.cn, align 1
  %i.cw = extractelement <2 x float> %i.ck, i64 0
  %i.cx = fmul float %i.t, %i.cw
  %i.cy = call float @llvm.round.f32(float %i.cx)
  %i.cz = call nsz float @llvm.minimumnum.f32(float %i.cy, float 2.550000e+02)
  %i.da = call nsz float @llvm.maximumnum.f32(float %i.cz, float 0.000000e+00) ; 2 uses
  %i.db = fcmp olt float %i.da, 2.560000e+02
  br i1 %i.db, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit181.i, label %bb.n, !prof !19

bb.n:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit181.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i
  %i.dc = fptoui float %i.da to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store i8 %i.dc, ptr %i.dd, align 1
  %i.de = extractelement <2 x float> %i.ck, i64 1
  %i.df = fmul float %i.t, %i.de
  %i.dg = call float @llvm.round.f32(float %i.df)
  %i.dh = call nsz float @llvm.minimumnum.f32(float %i.dg, float 2.550000e+02)
  %i.di = call nsz float @llvm.maximumnum.f32(float %i.dh, float 0.000000e+00) ; 2 uses
  %i.dj = fcmp olt float %i.di, 2.560000e+02
  br i1 %i.dj, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit182.i, label %bb.o, !prof !19

bb.o:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit181.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit182.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit181.i
  %i.dk = fptoui float %i.di to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  store i8 %i.dk, ptr %i.dl, align 1
  %.val165.i = load i8, ptr %i.cp, align 1, !noundef !5
  %i.dm = uitofp i8 %.val165.i to float
  %i.dn = fadd float %.sroa.022.3394.i, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %.val162.i = load i8, ptr %i.co, align 1, !noundef !5
  %i.dp = uitofp i8 %.val162.i to float
  %i.dq = fsub float %i.dn, %i.dp                 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.ds = load <2 x i8>, ptr %i.do, align 1
  %i.dt = uitofp <2 x i8> %i.ds to <2 x float>
  %i.du = fadd <2 x float> %i.ck, %i.dt
  %i.dv = load <2 x i8>, ptr %i.dr, align 1
  %i.dw = uitofp <2 x i8> %i.dv to <2 x float>
  %i.dx = fsub <2 x float> %i.du, %i.dw           ; 2 uses
  %exitcond523.not.i = icmp eq i64 %i.cl, %.sroa.9223.0.copyload.i
  br i1 %exitcond523.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.lr.ph404.i:                                      ; preds = %.lr.ph404.i.preheader, %bb.x
  %.sroa.0.4403.i = phi float [ %i.fr, %bb.x ], [ %i.ca, %.lr.ph404.i.preheader ] ; 2 uses
  %.sroa.011.4402.i = phi float [ %i.fu, %bb.x ], [ %i.bz, %.lr.ph404.i.preheader ] ; 2 uses
  %.sroa.022.4401.i = phi float [ %i.fo, %bb.x ], [ %.sroa.022.2.i, %.lr.ph404.i.preheader ] ; 2 uses
  %.sroa.0116.1400.i = phi i64 [ %i.dy, %bb.x ], [ %.sroa.0116.0.i, %.lr.ph404.i.preheader ] ; 4 uses
  %i.dy = add i64 %.sroa.0116.1400.i, 1           ; 2 uses
  %i.dz = add nuw i64 %.sroa.0116.1400.i, %i.q
  %..i183.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %i.dz)
  %i.ea = mul nuw nsw i64 %..i183.i, 3            ; 3 uses
  %i.eb = sub nsw i64 %.sroa.0116.1400.i, %i.p
  %..i184.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.eb, i64 0)
  %i.ec = mul i64 %..i184.i, 3                    ; 4 uses
  %i.ed = mul nuw nsw i64 %.sroa.0116.1400.i, 3   ; 3 uses
  %i.ee = add nuw nsw i64 %i.ed, 3                ; 2 uses
  %.not138.i = icmp ugt i64 %i.ee, %i.ba
  br i1 %.not138.i, label %bb.t, label %bb.p, !prof !12

bb.p:                                             ; preds = %.lr.ph404.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ed ; 3 uses
  %i.eg = fmul float %i.t, %.sroa.022.4401.i
  %i.eh = call float @llvm.round.f32(float %i.eg)
  %i.ei = call nsz float @llvm.minimumnum.f32(float %i.eh, float 2.550000e+02)
  %i.ej = call nsz float @llvm.maximumnum.f32(float %i.ei, float 0.000000e+00) ; 2 uses
  %i.ek = fcmp olt float %i.ej, 2.560000e+02
  br i1 %i.ek, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit185.i, label %bb.q, !prof !19

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit185.i: ; preds = %bb.p
  %i.el = fptoui float %i.ej to i8
  store i8 %i.el, ptr %i.ef, align 1
  %i.em = fmul float %i.t, %.sroa.0.4403.i
  %i.en = call float @llvm.round.f32(float %i.em)
  %i.eo = call nsz float @llvm.minimumnum.f32(float %i.en, float 2.550000e+02)
  %i.ep = call nsz float @llvm.maximumnum.f32(float %i.eo, float 0.000000e+00) ; 2 uses
  %i.eq = fcmp olt float %i.ep, 2.560000e+02
  br i1 %i.eq, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit186.i, label %bb.r, !prof !19

bb.r:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit185.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit186.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit185.i
  %i.er = fptoui float %i.ep to i8
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  store i8 %i.er, ptr %i.es, align 1
  %i.et = fmul float %i.t, %.sroa.011.4402.i
  %i.eu = call float @llvm.round.f32(float %i.et)
  %i.ev = call nsz float @llvm.minimumnum.f32(float %i.eu, float 2.550000e+02)
  %i.ew = call nsz float @llvm.maximumnum.f32(float %i.ev, float 0.000000e+00) ; 2 uses
  %i.ex = fcmp olt float %i.ew, 2.560000e+02
  br i1 %i.ex, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit187.i, label %bb.s, !prof !19

bb.s:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit186.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit187.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit186.i
  %i.ey = fptoui float %i.ew to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  store i8 %i.ey, ptr %i.ez, align 1
  %i.fa = add nuw nsw i64 %i.ea, 3                ; 2 uses
  %.not139.i = icmp ugt i64 %i.fa, %i.bd
  br i1 %.not139.i, label %bb.u, label %bb.v, !prof !18

bb.t:                                             ; preds = %.lr.ph404.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ed, i64 noundef %i.ee, i64 noundef %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
  unreachable

bb.u:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit187.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ea, i64 noundef %i.fa, i64 noundef %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20
  unreachable

bb.v:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit187.i
  %i.fb = add i64 %i.ec, 3                        ; 2 uses
  %i.fc = icmp ugt i64 %i.ec, -4
  %.not140.i = icmp ugt i64 %i.fb, %i.bd
  %or.cond147.i = or i1 %i.fc, %.not140.i
  br i1 %or.cond147.i, label %bb.w, label %bb.x, !prof !18

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ec, i64 noundef %i.fb, i64 noundef %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ea ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ec ; 3 uses
  %.val171.i = load i8, ptr %i.fd, align 1, !noundef !5
  %i.ff = uitofp i8 %.val171.i to float
  %i.fg = fadd float %.sroa.022.4401.i, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  %.val170.i = load i8, ptr %i.fh, align 1, !noundef !5
  %i.fi = uitofp i8 %.val170.i to float
  %i.fj = fadd float %.sroa.0.4403.i, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %.val169.i = load i8, ptr %i.fk, align 1, !noundef !5
  %i.fl = uitofp i8 %.val169.i to float
  %i.fm = fadd float %.sroa.011.4402.i, %i.fl
  %.val168.i = load i8, ptr %i.fe, align 1, !noundef !5
  %i.fn = uitofp i8 %.val168.i to float
  %i.fo = fsub float %i.fg, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  %.val167.i = load i8, ptr %i.fp, align 1, !noundef !5
  %i.fq = uitofp i8 %.val167.i to float
  %i.fr = fsub float %i.fj, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %.val166.i = load i8, ptr %i.fs, align 1, !noundef !5
  %i.ft = uitofp i8 %.val166.i to float
  %i.fu = fsub float %i.fm, %i.ft
  %exitcond524.not.i = icmp eq i64 %i.dy, %i.h
  br i1 %exitcond524.not.i, label %.loopexit.i, label %.lr.ph404.i

bb.y:                                             ; preds = %.lr.ph388.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bv ; 3 uses
  %i.fw = fmul float %i.t, %.sroa.022.1384.i
  %i.fx = call float @llvm.round.f32(float %i.fw)
  %i.fy = call nsz float @llvm.minimumnum.f32(float %i.fx, float 2.550000e+02)
  %i.fz = call nsz float @llvm.maximumnum.f32(float %i.fy, float 0.000000e+00) ; 2 uses
  %i.ga = fcmp olt float %i.fz, 2.560000e+02
  br i1 %i.ga, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit188.i, label %bb.z, !prof !19
end_hunk_1
begin_hunk_2_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur33box_blur_horizontal_pass_strategyINtNtB6_5color3RgbtEtEB6_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.i, ptr %i.m, align 8, !noalias !298
  store i8 -1, ptr %i.d, align 8, !noalias !298
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !298
  %i.n = shl i64 %7, 1
  %i.o = or disjoint i64 %i.n, 1
  %i.p = and i64 %7, 9223372036854775807          ; 10 uses
  %i.q = add nuw i64 %i.p, 1                      ; 4 uses
  %i.r = uitofp i64 %i.q to float                 ; 2 uses
  %i.s = uitofp i64 %i.o to float
  %i.t = fdiv float 1.000000e+00, %i.s            ; 9 uses
  %i.u = add nsw i64 %i.h, -1                     ; 6 uses
  %i.v = urem i64 %4, %5                          ; 2 uses
  %i.w = sub nuw nsw i64 %4, %i.v                 ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.w
  %i.y = urem i64 %1, %2                          ; 2 uses
  %i.z = sub nuw nsw i64 %1, %i.y                 ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !299
  store ptr %i.x, ptr %i.c, align 8, !noalias !300
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.v, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !300
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !300
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !300
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %5, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !299
  store ptr %0, ptr %i.b, align 8, !alias.scope !301, !noalias !302
  %.sroa.4192.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.z, ptr %.sroa.4192.0..sroa_idx.i, align 8, !alias.scope !301, !noalias !302
  %.sroa.5193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.aa, ptr %.sroa.5193.0..sroa_idx.i, align 8, !alias.scope !301, !noalias !302
  %.sroa.6194.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.y, ptr %.sroa.6194.0..sroa_idx.i, align 8, !alias.scope !301, !noalias !302
  %.sroa.7195.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %2, ptr %.sroa.7195.0..sroa_idx.i, align 8, !alias.scope !301, !noalias !302
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b), !noalias !303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !298
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !304, !noalias !298, !noundef !5 ; 2 uses
  %i.ae = load i64, ptr %i.ac, align 8, !alias.scope !304, !noalias !298, !noundef !5
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_impltKj3_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %..i175.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %i.p)
  %i.ah = call i64 @llvm.usub.sat.i64(i64 %i.u, i64 %i.q) ; 4 uses
  %i.ai = mul i64 %i.p, 6
  %i.aj = add i64 %i.ai, 3                        ; 3 uses
  %i.ak = mul nuw nsw i64 %i.ah, 3                ; 4 uses
  %invariant.umax.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ak)
  %i.al = mul i64 %i.p, 3                         ; 3 uses
  %i.am = icmp ult i64 %i.ak, %i.al
  %i.an = sub nsw i64 %i.ah, %i.p
  %i.ao = mul i64 %i.an, 3
  %i.ap = udiv i64 %i.ao, 3
  %.sroa.4216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.7222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.9223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.aq = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %xtraiter = and i64 %7, 1
  %i.as = icmp eq i64 %i.p, 1                     ; 0 uses
  %unroll_iter = and i64 %7, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod607 = trunc i64 %7 to i1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.loopexit.i:                                      ; preds = %bb.x, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i
  %i.at = load i64, ptr %i.ab, align 8, !alias.scope !304, !noalias !298, !noundef !5 ; 2 uses
  %i.au = load i64, ptr %i.ac, align 8, !alias.scope !304, !noalias !298, !noundef !5
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_impltKj3_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %i.aw = phi i64 [ %i.ad, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.at, %.loopexit.i ] ; 3 uses
  %i.ax = add nuw i64 %i.aw, 1
  store i64 %i.ax, ptr %i.ab, align 8, !alias.scope !304, !noalias !298
  %i.ay = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuttENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.f, i64 noundef %i.aw), !noalias !305 ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ay, 0      ; 4 uses
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1      ; 6 uses
  %i.bb = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacttENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag, i64 noundef %i.aw), !noalias !305 ; 2 uses
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0      ; 13 uses
  %i.bd = extractvalue { ptr, i64 } %i.bb, 1      ; 17 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_impltKj3_EB6_.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.be = icmp ugt i64 %i.bd, 2
  br i1 %i.be, label %bb.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %.val174.i = load i16, ptr %i.bc, align 2, !noundef !5
  %i.bf = uitofp i16 %.val174.i to float
  %i.bg = fmul nnan float %i.r, %i.bf             ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bi = load <2 x i16>, ptr %i.bh, align 2
  %i.bj = uitofp <2 x i16> %i.bi to <2 x float>
  %i.bk = fmul nnan <2 x float> %i.ar, %i.bj      ; 3 uses
  switch i64 %i.p, label %.lr.ph.i [
    i64 0, label %._crit_edge389.i
    i64 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i:                                         ; preds = %bb.i, %bb.ah
  %.sroa.022.0378.i = phi float [ %i.hv, %bb.ah ], [ %i.bg, %bb.i ]
  %.sroa.0199.0377.i = phi i64 [ %i.hs, %bb.ah ], [ 1, %bb.i ] ; 3 uses
  %i.bl = phi <2 x float> [ %i.hz, %bb.ah ], [ %i.bk, %bb.i ]
  %niter = phi i64 [ %niter.next.1, %bb.ah ], [ 0, %bb.i ]
  %..i.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %.sroa.0199.0377.i)
  %i.bm = mul nuw nsw i64 %..i.i, 3               ; 3 uses
  %i.bn = add nuw nsw i64 %i.bm, 3                ; 2 uses
  %.not144.i = icmp ugt i64 %i.bn, %i.bd
  br i1 %.not144.i, label %.loopexit, label %.lr.ph.i.1, !prof !18

._crit_edge389.i:                                 ; preds = %bb.ag, %bb.i
  %.sroa.022.1.lcssa.i = phi float [ %i.bg, %bb.i ], [ %i.ha, %bb.ag ] ; 3 uses
  %i.bo = phi <2 x float> [ %i.bk, %bb.i ], [ %i.hh, %bb.ag ] ; 3 uses
  %or.cond.i = icmp ugt i64 %i.bd, %invariant.umax.i
  br i1 %or.cond.i, label %bb.j, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

.lr.ph388.i:                                      ; preds = %.lr.ph388.i.preheader, %bb.ag
  %.sroa.022.1384.i = phi float [ %i.ha, %bb.ag ], [ %.lcssa496, %.lr.ph388.i.preheader ] ; 2 uses
  %.sroa.0111.0383.i = phi i64 [ %i.bq, %bb.ag ], [ 0, %.lr.ph388.i.preheader ] ; 4 uses
  %i.bp = phi <2 x float> [ %i.hh, %bb.ag ], [ %.lcssa495, %.lr.ph388.i.preheader ] ; 3 uses
  %i.bq = add nuw nsw i64 %.sroa.0111.0383.i, 1   ; 2 uses
  %i.br = add nuw i64 %.sroa.0111.0383.i, %i.q
  %..i176.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %i.br)
  %i.bs = mul nuw nsw i64 %..i176.i, 3            ; 3 uses
  %i.bt = sub nsw i64 %.sroa.0111.0383.i, %i.p
  %..i177.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bt, i64 0)
  %i.bu = mul i64 %..i177.i, 3                    ; 3 uses
  %i.bv = mul nuw nsw i64 %.sroa.0111.0383.i, 3   ; 3 uses
  %i.bw = add nuw nsw i64 %i.bv, 3                ; 2 uses
  %.not141.i = icmp ugt i64 %i.bw, %i.ba
  br i1 %.not141.i, label %bb.ac, label %bb.y, !prof !18

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit182.i, %bb.k, %._crit_edge389.i
  %.sroa.0116.0.i = phi i64 [ %i.p, %._crit_edge389.i ], [ %i.ah, %bb.k ], [ %i.ah, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit182.i ] ; 2 uses
  %.sroa.022.2.i = phi float [ %.sroa.022.1.lcssa.i, %._crit_edge389.i ], [ %.sroa.022.1.lcssa.i, %bb.k ], [ %i.dq, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit182.i ]
  %i.bx = phi <2 x float> [ %i.bo, %._crit_edge389.i ], [ %i.bo, %bb.k ], [ %i.dx, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit182.i ] ; 2 uses
  %i.by = icmp ult i64 %.sroa.0116.0.i, %i.h
  br i1 %i.by, label %.lr.ph404.i.preheader, label %.loopexit.i

.lr.ph404.i.preheader:                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i
  %i.bz = extractelement <2 x float> %i.bx, i64 1
  %i.ca = extractelement <2 x float> %i.bx, i64 0
  br label %.lr.ph404.i

bb.j:                                             ; preds = %._crit_edge389.i
  %.not136.i = icmp ugt i64 %i.ak, %i.ba
  %or.cond145.i = or i1 %i.am, %.not136.i
  br i1 %or.cond145.i, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.aj ; 2 uses
  %i.cc = sub nuw i64 %i.bd, %i.aj
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.al ; 2 uses
  %i.ce = getelementptr inbounds nuw [6 x i8], ptr %i.cd, i64 %i.ap
  %i.cf = udiv i64 %i.bd, 3
  %i.cg = getelementptr inbounds nuw [6 x i8], ptr %i.bc, i64 %i.cf
  %i.ch = udiv i64 %i.cc, 3
  %i.ci = getelementptr inbounds nuw [6 x i8], ptr %i.cb, i64 %i.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !306
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutAtj3_EINtBZ_4IterB1p_EEINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ce, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.cg)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.ci), !noalias !307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !306
  %.sroa.0214.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !298 ; 2 uses
  %.sroa.4216.0.copyload.i = load ptr, ptr %.sroa.4216.0..sroa_idx.i, align 8, !noalias !298 ; 2 uses
  %.sroa.5218.0.copyload.i = load i64, ptr %.sroa.5218.0..sroa_idx.i, align 8, !noalias !298
  %.sroa.6220.0.copyload.i = load ptr, ptr %.sroa.6220.0..sroa_idx.i, align 8, !noalias !298 ; 2 uses
  %.sroa.7222.0.copyload.i = load i64, ptr %.sroa.7222.0..sroa_idx.i, align 8, !noalias !298 ; 2 uses
  %.sroa.9223.0.copyload.i = load i64, ptr %.sroa.9223.0..sroa_idx.i, align 8, !noalias !298 ; 2 uses
  %i.cj = icmp ult i64 %.sroa.7222.0.copyload.i, %.sroa.9223.0.copyload.i
  br i1 %i.cj, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0214.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4216.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6220.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.al, i64 noundef %i.ak, i64 noundef %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit182.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.022.3394.i = phi float [ %.sroa.022.1.lcssa.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.dq, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit182.i ] ; 2 uses
  %.sroa.7222.0393.i = phi i64 [ %.sroa.7222.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.cl, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit182.i ] ; 3 uses
  %i.ck = phi <2 x float> [ %i.bo, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.dx, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit182.i ] ; 3 uses
  %i.cl = add i64 %.sroa.7222.0393.i, 1           ; 2 uses
  %i.cm = add i64 %.sroa.7222.0393.i, %.sroa.5218.0.copyload.i ; 2 uses
  %i.cn = getelementptr inbounds nuw [6 x i8], ptr %.sroa.0214.0.copyload.i, i64 %i.cm ; 3 uses
  %i.co = getelementptr inbounds nuw [6 x i8], ptr %.sroa.4216.0.copyload.i, i64 %i.cm ; 2 uses
  %i.cp = getelementptr inbounds nuw [6 x i8], ptr %.sroa.6220.0.copyload.i, i64 %.sroa.7222.0393.i ; 2 uses
  %i.cq = fmul float %i.t, %.sroa.022.3394.i
  %i.cr = call float @llvm.round.f32(float %i.cq)
  %i.cs = call nsz float @llvm.minimumnum.f32(float %i.cr, float 6.553500e+04)
  %i.ct = call nsz float @llvm.maximumnum.f32(float %i.cs, float 0.000000e+00) ; 2 uses
  %i.cu = fcmp olt float %i.ct, 6.553600e+04
  br i1 %i.cu, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i, label %bb.m, !prof !19

bb.m:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.cv = fptoui float %i.ct to i16
  store i16 %i.cv, ptr %i.cn, align 2
  %i.cw = extractelement <2 x float> %i.ck, i64 0
  %i.cx = fmul float %i.t, %i.cw
  %i.cy = call float @llvm.round.f32(float %i.cx)
  %i.cz = call nsz float @llvm.minimumnum.f32(float %i.cy, float 6.553500e+04)
  %i.da = call nsz float @llvm.maximumnum.f32(float %i.cz, float 0.000000e+00) ; 2 uses
  %i.db = fcmp olt float %i.da, 6.553600e+04
  br i1 %i.db, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit181.i, label %bb.n, !prof !19

bb.n:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit181.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i
  %i.dc = fptoui float %i.da to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  store i16 %i.dc, ptr %i.dd, align 2
  %i.de = extractelement <2 x float> %i.ck, i64 1
  %i.df = fmul float %i.t, %i.de
  %i.dg = call float @llvm.round.f32(float %i.df)
  %i.dh = call nsz float @llvm.minimumnum.f32(float %i.dg, float 6.553500e+04)
  %i.di = call nsz float @llvm.maximumnum.f32(float %i.dh, float 0.000000e+00) ; 2 uses
  %i.dj = fcmp olt float %i.di, 6.553600e+04
  br i1 %i.dj, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit182.i, label %bb.o, !prof !19

bb.o:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit181.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit182.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit181.i
  %i.dk = fptoui float %i.di to i16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store i16 %i.dk, ptr %i.dl, align 2
  %.val165.i = load i16, ptr %i.cp, align 2, !noundef !5
  %i.dm = uitofp i16 %.val165.i to float
  %i.dn = fadd float %.sroa.022.3394.i, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %.val162.i = load i16, ptr %i.co, align 2, !noundef !5
  %i.dp = uitofp i16 %.val162.i to float
  %i.dq = fsub float %i.dn, %i.dp                 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.ds = load <2 x i16>, ptr %i.do, align 2
  %i.dt = uitofp <2 x i16> %i.ds to <2 x float>
  %i.du = fadd <2 x float> %i.ck, %i.dt
  %i.dv = load <2 x i16>, ptr %i.dr, align 2
  %i.dw = uitofp <2 x i16> %i.dv to <2 x float>
  %i.dx = fsub <2 x float> %i.du, %i.dw           ; 2 uses
  %exitcond523.not.i = icmp eq i64 %i.cl, %.sroa.9223.0.copyload.i
  br i1 %exitcond523.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj3_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.lr.ph404.i:                                      ; preds = %.lr.ph404.i.preheader, %bb.x
  %.sroa.0.4403.i = phi float [ %i.fr, %bb.x ], [ %i.ca, %.lr.ph404.i.preheader ] ; 2 uses
  %.sroa.011.4402.i = phi float [ %i.fu, %bb.x ], [ %i.bz, %.lr.ph404.i.preheader ] ; 2 uses
  %.sroa.022.4401.i = phi float [ %i.fo, %bb.x ], [ %.sroa.022.2.i, %.lr.ph404.i.preheader ] ; 2 uses
  %.sroa.0116.1400.i = phi i64 [ %i.dy, %bb.x ], [ %.sroa.0116.0.i, %.lr.ph404.i.preheader ] ; 4 uses
  %i.dy = add i64 %.sroa.0116.1400.i, 1           ; 2 uses
  %i.dz = add nuw i64 %.sroa.0116.1400.i, %i.q
  %..i183.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %i.dz)
  %i.ea = mul nuw nsw i64 %..i183.i, 3            ; 3 uses
  %i.eb = sub nsw i64 %.sroa.0116.1400.i, %i.p
  %..i184.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.eb, i64 0)
  %i.ec = mul i64 %..i184.i, 3                    ; 4 uses
  %i.ed = mul nuw nsw i64 %.sroa.0116.1400.i, 3   ; 3 uses
  %i.ee = add nuw nsw i64 %i.ed, 3                ; 2 uses
  %.not138.i = icmp ugt i64 %i.ee, %i.ba
  br i1 %.not138.i, label %bb.t, label %bb.p, !prof !12

bb.p:                                             ; preds = %.lr.ph404.i
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.ed ; 3 uses
  %i.eg = fmul float %i.t, %.sroa.022.4401.i
  %i.eh = call float @llvm.round.f32(float %i.eg)
  %i.ei = call nsz float @llvm.minimumnum.f32(float %i.eh, float 6.553500e+04)
  %i.ej = call nsz float @llvm.maximumnum.f32(float %i.ei, float 0.000000e+00) ; 2 uses
  %i.ek = fcmp olt float %i.ej, 6.553600e+04
  br i1 %i.ek, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit185.i, label %bb.q, !prof !19

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit185.i: ; preds = %bb.p
  %i.el = fptoui float %i.ej to i16
  store i16 %i.el, ptr %i.ef, align 2
  %i.em = fmul float %i.t, %.sroa.0.4403.i
  %i.en = call float @llvm.round.f32(float %i.em)
  %i.eo = call nsz float @llvm.minimumnum.f32(float %i.en, float 6.553500e+04)
  %i.ep = call nsz float @llvm.maximumnum.f32(float %i.eo, float 0.000000e+00) ; 2 uses
  %i.eq = fcmp olt float %i.ep, 6.553600e+04
  br i1 %i.eq, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit186.i, label %bb.r, !prof !19

bb.r:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit185.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit186.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit185.i
  %i.er = fptoui float %i.ep to i16
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  store i16 %i.er, ptr %i.es, align 2
  %i.et = fmul float %i.t, %.sroa.011.4402.i
  %i.eu = call float @llvm.round.f32(float %i.et)
  %i.ev = call nsz float @llvm.minimumnum.f32(float %i.eu, float 6.553500e+04)
  %i.ew = call nsz float @llvm.maximumnum.f32(float %i.ev, float 0.000000e+00) ; 2 uses
  %i.ex = fcmp olt float %i.ew, 6.553600e+04
  br i1 %i.ex, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit187.i, label %bb.s, !prof !19

bb.s:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit186.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit187.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit186.i
  %i.ey = fptoui float %i.ew to i16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i16 %i.ey, ptr %i.ez, align 2
  %i.fa = add nuw nsw i64 %i.ea, 3                ; 2 uses
  %.not139.i = icmp ugt i64 %i.fa, %i.bd
  br i1 %.not139.i, label %bb.u, label %bb.v, !prof !18

bb.t:                                             ; preds = %.lr.ph404.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ed, i64 noundef %i.ee, i64 noundef %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
  unreachable

bb.u:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit187.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ea, i64 noundef %i.fa, i64 noundef %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20
  unreachable

bb.v:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit187.i
  %i.fb = add i64 %i.ec, 3                        ; 2 uses
  %i.fc = icmp ugt i64 %i.ec, -4
  %.not140.i = icmp ugt i64 %i.fb, %i.bd
  %or.cond147.i = or i1 %i.fc, %.not140.i
  br i1 %or.cond147.i, label %bb.w, label %bb.x, !prof !18

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ec, i64 noundef %i.fb, i64 noundef %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.ea ; 3 uses
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.ec ; 3 uses
  %.val171.i = load i16, ptr %i.fd, align 2, !noundef !5
  %i.ff = uitofp i16 %.val171.i to float
  %i.fg = fadd float %.sroa.022.4401.i, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %.val170.i = load i16, ptr %i.fh, align 2, !noundef !5
  %i.fi = uitofp i16 %.val170.i to float
  %i.fj = fadd float %.sroa.0.4403.i, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %.val169.i = load i16, ptr %i.fk, align 2, !noundef !5
  %i.fl = uitofp i16 %.val169.i to float
  %i.fm = fadd float %.sroa.011.4402.i, %i.fl
  %.val168.i = load i16, ptr %i.fe, align 2, !noundef !5
  %i.fn = uitofp i16 %.val168.i to float
  %i.fo = fsub float %i.fg, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %.val167.i = load i16, ptr %i.fp, align 2, !noundef !5
  %i.fq = uitofp i16 %.val167.i to float
  %i.fr = fsub float %i.fj, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %.val166.i = load i16, ptr %i.fs, align 2, !noundef !5
  %i.ft = uitofp i16 %.val166.i to float
  %i.fu = fsub float %i.fm, %i.ft
  %exitcond524.not.i = icmp eq i64 %i.dy, %i.h
  br i1 %exitcond524.not.i, label %.loopexit.i, label %.lr.ph404.i

bb.y:                                             ; preds = %.lr.ph388.i
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bv ; 3 uses
  %i.fw = fmul float %i.t, %.sroa.022.1384.i
  %i.fx = call float @llvm.round.f32(float %i.fw)
  %i.fy = call nsz float @llvm.minimumnum.f32(float %i.fx, float 6.553500e+04)
  %i.fz = call nsz float @llvm.maximumnum.f32(float %i.fy, float 0.000000e+00) ; 2 uses
  %i.ga = fcmp olt float %i.fz, 6.553600e+04
  br i1 %i.ga, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit188.i, label %bb.z, !prof !19
end_hunk_2
begin_hunk_3_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur33box_blur_horizontal_pass_strategyINtNtB6_5color4LumahEhEB6_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !324
  %i.i = add i64 %7, %i.h                         ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  br i1 %i.j, label %bb.b, label %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 7, ptr %i.d, align 8, !noalias !324
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !324
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #24
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d) #22
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.i, ptr %i.m, align 8, !noalias !324
  store i8 -1, ptr %i.d, align 8, !noalias !324
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !324
  %i.n = shl i64 %7, 1
  %i.o = or disjoint i64 %i.n, 1
  %i.p = and i64 %7, 9223372036854775807          ; 12 uses
  %i.q = add nuw i64 %i.p, 1                      ; 4 uses
  %i.r = uitofp i64 %i.q to float
  %i.s = uitofp i64 %i.o to float
  %i.t = fdiv float 1.000000e+00, %i.s            ; 3 uses
  %i.u = add nsw i64 %i.h, -1                     ; 6 uses
  %i.v = urem i64 %4, %5                          ; 2 uses
  %i.w = sub nuw nsw i64 %4, %i.v                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %i.w
  %i.y = urem i64 %1, %2                          ; 2 uses
  %i.z = sub nuw nsw i64 %1, %i.y                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !325
  store ptr %i.x, ptr %i.c, align 8, !noalias !326
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.v, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %5, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !325
  store ptr %0, ptr %i.b, align 8, !alias.scope !327, !noalias !328
  %.sroa.4102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.z, ptr %.sroa.4102.0..sroa_idx.i, align 8, !alias.scope !327, !noalias !328
  %.sroa.5103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.aa, ptr %.sroa.5103.0..sroa_idx.i, align 8, !alias.scope !327, !noalias !328
  %.sroa.6104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.y, ptr %.sroa.6104.0..sroa_idx.i, align 8, !alias.scope !327, !noalias !328
  %.sroa.7105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %2, ptr %.sroa.7105.0..sroa_idx.i, align 8, !alias.scope !327, !noalias !328
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b), !noalias !329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !324
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !330, !noalias !324, !noundef !5 ; 2 uses
  %i.ae = load i64, ptr %i.ac, align 8, !alias.scope !330, !noalias !324, !noundef !5
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implhKj1_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %..i91.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %i.p)
  %i.ah = call i64 @llvm.usub.sat.i64(i64 %i.u, i64 %i.q) ; 7 uses
  %i.ai = shl nuw i64 %i.p, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 3 uses
  %invariant.umax.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ah)
  %i.ak = icmp samesign ult i64 %i.ah, %i.p
  %i.al = sub nuw nsw i64 %i.ah, %i.p
  %.sroa.4126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.7132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.9133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %xtraiter = and i64 %7, 1
  %i.am = icmp eq i64 %i.p, 1                     ; 0 uses
  %unroll_iter = and i64 %7, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod306 = trunc i64 %7 to i1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.loopexit.i:                                      ; preds = %bb.t, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i
  %i.an = load i64, ptr %i.ab, align 8, !alias.scope !330, !noalias !324, !noundef !5 ; 2 uses
  %i.ao = load i64, ptr %i.ac, align 8, !alias.scope !330, !noalias !324, !noundef !5
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implhKj1_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %i.aq = phi i64 [ %i.ad, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.an, %.loopexit.i ] ; 3 uses
  %i.ar = add nuw i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ab, align 8, !alias.scope !330, !noalias !324
  %i.as = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.f, i64 noundef %i.aq), !noalias !331 ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.as, 0      ; 4 uses
  %i.au = extractvalue { ptr, i64 } %i.as, 1      ; 7 uses
  %i.av = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag, i64 noundef %i.aq), !noalias !331 ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 0      ; 12 uses
  %i.ax = extractvalue { ptr, i64 } %i.av, 1      ; 16 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implhKj1_EB6_.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %.not68.i = icmp eq i64 %i.ax, 0
  br i1 %.not68.i, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 1, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %.val90.i = load i8, ptr %i.aw, align 1, !noundef !5
  %i.ay = uitofp i8 %.val90.i to float
  %i.az = fmul nnan float %i.r, %i.ay             ; 3 uses
  switch i64 %i.p, label %.lr.ph.i [
    i64 0, label %._crit_edge221.i
    i64 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i:                                         ; preds = %bb.i, %bb.ab
  %.sroa.04.0216.i = phi float [ %i.dp, %bb.ab ], [ %i.az, %bb.i ]
  %.sroa.0109.0215.i = phi i64 [ %i.dm, %bb.ab ], [ 1, %bb.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.ab ], [ 0, %bb.i ]
  %..i.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %.sroa.0109.0215.i) ; 3 uses
  %.not77.not.i = icmp ult i64 %..i.i, %i.ax
  br i1 %.not77.not.i, label %.lr.ph.i.1, label %.loopexit, !prof !20

._crit_edge221.i:                                 ; preds = %bb.aa, %bb.i
  %.sroa.04.1.lcssa.i = phi float [ %i.az, %bb.i ], [ %i.dg, %bb.aa ] ; 3 uses
  %or.cond.i = icmp ugt i64 %i.ax, %invariant.umax.i
  br i1 %or.cond.i, label %bb.j, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

.lr.ph220.i:                                      ; preds = %.lr.ph220.i.preheader, %bb.aa
  %.sroa.04.1218.i = phi float [ %i.dg, %bb.aa ], [ %.lcssa, %.lr.ph220.i.preheader ] ; 2 uses
  %.sroa.045.0217.i = phi i64 [ %i.ba, %bb.aa ], [ 0, %.lr.ph220.i.preheader ] ; 5 uses
  %i.ba = add nuw nsw i64 %.sroa.045.0217.i, 1    ; 3 uses
  %i.bb = add nuw i64 %.sroa.045.0217.i, %i.q
  %..i92.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %i.bb) ; 4 uses
  %i.bc = sub nsw i64 %.sroa.045.0217.i, %i.p
  %..i93.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bc, i64 0) ; 4 uses
  %exitcond293.not.i = icmp eq i64 %.sroa.045.0217.i, %i.au
  br i1 %exitcond293.not.i, label %bb.w, label %bb.u, !prof !12

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i, %bb.k, %._crit_edge221.i
  %.sroa.050.0.i = phi i64 [ %i.p, %._crit_edge221.i ], [ %i.ah, %bb.k ], [ %i.ah, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i ] ; 3 uses
  %.sroa.04.2.i = phi float [ %.sroa.04.1.lcssa.i, %._crit_edge221.i ], [ %.sroa.04.1.lcssa.i, %bb.k ], [ %i.bz, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i ]
  %i.bd = icmp ult i64 %.sroa.050.0.i, %i.h
  br i1 %i.bd, label %.lr.ph228.preheader.i, label %.loopexit.i

.lr.ph228.preheader.i:                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i
  %umax.i = call i64 @llvm.umax.i64(i64 %i.au, i64 %.sroa.050.0.i) ; 2 uses
  br label %.lr.ph228.i

bb.j:                                             ; preds = %._crit_edge221.i
  %.not69.i = icmp ugt i64 %i.ah, %i.au
  %or.cond78.i = or i1 %i.ak, %.not69.i
  br i1 %or.cond78.i, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aj ; 2 uses
  %i.bf = sub nuw i64 %i.ax, %i.aj
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.p ; 2 uses
  %i.bh = getelementptr inbounds nuw [1 x i8], ptr %i.bg, i64 %i.al
  %i.bi = getelementptr inbounds nuw [1 x i8], ptr %i.aw, i64 %i.ax
  %i.bj = getelementptr inbounds nuw [1 x i8], ptr %i.be, i64 %i.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !332
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutAhj1_EINtBZ_4IterB1p_EEINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.bi)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bj), !noalias !333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !332
  %.sroa.0124.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !324 ; 2 uses
  %.sroa.4126.0.copyload.i = load ptr, ptr %.sroa.4126.0..sroa_idx.i, align 8, !noalias !324 ; 2 uses
  %.sroa.5128.0.copyload.i = load i64, ptr %.sroa.5128.0..sroa_idx.i, align 8, !noalias !324
  %.sroa.6130.0.copyload.i = load ptr, ptr %.sroa.6130.0..sroa_idx.i, align 8, !noalias !324 ; 2 uses
  %.sroa.7132.0.copyload.i = load i64, ptr %.sroa.7132.0..sroa_idx.i, align 8, !noalias !324 ; 2 uses
  %.sroa.9133.0.copyload.i = load i64, ptr %.sroa.9133.0..sroa_idx.i, align 8, !noalias !324 ; 2 uses
  %i.bk = icmp ult i64 %.sroa.7132.0.copyload.i, %.sroa.9133.0.copyload.i
  br i1 %i.bk, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0124.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4126.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6130.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.p, i64 noundef %i.ah, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.04.3224.i = phi float [ %.sroa.04.1.lcssa.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.bz, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i ] ; 2 uses
  %.sroa.7132.0223.i = phi i64 [ %.sroa.7132.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.bu, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i ] ; 3 uses
  %i.bl = fmul float %i.t, %.sroa.04.3224.i
  %i.bm = call float @llvm.round.f32(float %i.bl)
  %i.bn = call nsz float @llvm.minimumnum.f32(float %i.bm, float 2.550000e+02)
  %i.bo = call nsz float @llvm.maximumnum.f32(float %i.bn, float 0.000000e+00) ; 2 uses
  %i.bp = fcmp olt float %i.bo, 2.560000e+02
  br i1 %i.bp, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i, label %bb.m, !prof !19

bb.m:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.bq = getelementptr inbounds nuw [1 x i8], ptr %.sroa.6130.0.copyload.i, i64 %.sroa.7132.0223.i
  %i.br = add i64 %.sroa.7132.0223.i, %.sroa.5128.0.copyload.i ; 2 uses
  %i.bs = getelementptr inbounds nuw [1 x i8], ptr %.sroa.4126.0.copyload.i, i64 %i.br
  %i.bt = getelementptr inbounds nuw [1 x i8], ptr %.sroa.0124.0.copyload.i, i64 %i.br
  %i.bu = add i64 %.sroa.7132.0223.i, 1           ; 2 uses
  %i.bv = fptoui float %i.bo to i8
  store i8 %i.bv, ptr %i.bt, align 1
  %.val87.i = load i8, ptr %i.bq, align 1, !noundef !5
  %i.bw = uitofp i8 %.val87.i to float
  %.val86.i = load i8, ptr %i.bs, align 1, !noundef !5
  %i.bx = uitofp i8 %.val86.i to float
  %i.by = fadd float %.sroa.04.3224.i, %i.bw
  %i.bz = fsub float %i.by, %i.bx                 ; 2 uses
  %exitcond295.not.i = icmp eq i64 %i.bu, %.sroa.9133.0.copyload.i
  br i1 %exitcond295.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.lr.ph228.i:                                      ; preds = %bb.t, %.lr.ph228.preheader.i
  %.sroa.04.4227.i = phi float [ %i.cr, %bb.t ], [ %.sroa.04.2.i, %.lr.ph228.preheader.i ] ; 2 uses
  %.sroa.050.1226.i = phi i64 [ %i.ca, %bb.t ], [ %.sroa.050.0.i, %.lr.ph228.preheader.i ] ; 5 uses
  %i.ca = add i64 %.sroa.050.1226.i, 1            ; 3 uses
  %i.cb = add nuw i64 %.sroa.050.1226.i, %i.q
  %..i97.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %i.cb) ; 4 uses
  %i.cc = sub nsw i64 %.sroa.050.1226.i, %i.p
  %..i98.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.cc, i64 0) ; 4 uses
  %exitcond296.not.i = icmp eq i64 %.sroa.050.1226.i, %umax.i
  br i1 %exitcond296.not.i, label %bb.p, label %bb.n, !prof !12

bb.n:                                             ; preds = %.lr.ph228.i
  %i.cd = fmul float %i.t, %.sroa.04.4227.i
  %i.ce = call float @llvm.round.f32(float %i.cd)
  %i.cf = call nsz float @llvm.minimumnum.f32(float %i.ce, float 2.550000e+02)
  %i.cg = call nsz float @llvm.maximumnum.f32(float %i.cf, float 0.000000e+00) ; 2 uses
  %i.ch = fcmp olt float %i.cg, 2.560000e+02
  br i1 %i.ch, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit99.i, label %bb.o, !prof !19

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit99.i: ; preds = %bb.n
  %i.ci = fptoui float %i.cg to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.050.1226.i
  store i8 %i.ci, ptr %i.cj, align 1
  %.not72.not.i = icmp ult i64 %..i97.i, %i.ax
  br i1 %.not72.not.i, label %bb.r, label %bb.q, !prof !20

bb.p:                                             ; preds = %.lr.ph228.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %umax.i, i64 noundef %i.ca, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
  unreachable

bb.q:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit99.i
  %i.ck = add nuw nsw i64 %..i97.i, 1
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %..i97.i, i64 noundef %i.ck, i64 noundef %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20
  unreachable

bb.r:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit99.i
  %.not73.not.i = icmp ult i64 %..i98.i, %i.ax
  br i1 %.not73.not.i, label %bb.t, label %bb.s, !prof !20

bb.s:                                             ; preds = %bb.r
  %i.cl = add nuw i64 %..i98.i, 1
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %..i98.i, i64 noundef %i.cl, i64 noundef %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aw, i64 %..i97.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aw, i64 %..i98.i
  %.val89.i = load i8, ptr %i.cm, align 1, !noundef !5
  %i.co = uitofp i8 %.val89.i to float
  %i.cp = fadd float %.sroa.04.4227.i, %i.co
  %.val88.i = load i8, ptr %i.cn, align 1, !noundef !5
  %i.cq = uitofp i8 %.val88.i to float
  %i.cr = fsub float %i.cp, %i.cq
  %exitcond297.not.i = icmp eq i64 %i.ca, %i.h
  br i1 %exitcond297.not.i, label %.loopexit.i, label %.lr.ph228.i

bb.u:                                             ; preds = %.lr.ph220.i
  %i.cs = fmul float %i.t, %.sroa.04.1218.i
  %i.ct = call float @llvm.round.f32(float %i.cs)
  %i.cu = call nsz float @llvm.minimumnum.f32(float %i.ct, float 2.550000e+02)
  %i.cv = call nsz float @llvm.maximumnum.f32(float %i.cu, float 0.000000e+00) ; 2 uses
  %i.cw = fcmp olt float %i.cv, 2.560000e+02
  br i1 %i.cw, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit100.i, label %bb.v, !prof !19

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit100.i: ; preds = %bb.u
  %i.cx = fptoui float %i.cv to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.045.0217.i
  store i8 %i.cx, ptr %i.cy, align 1
  %.not75.not.i = icmp ult i64 %..i92.i, %i.ax
  br i1 %.not75.not.i, label %bb.y, label %bb.x, !prof !20

bb.w:                                             ; preds = %.lr.ph220.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.au, i64 noundef %i.ba, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #20
  unreachable

bb.x:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit100.i
  %i.cz = add nuw nsw i64 %..i92.i, 1
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %..i92.i, i64 noundef %i.cz, i64 noundef %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20
  unreachable

bb.y:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit100.i
  %.not76.not.i = icmp ult i64 %..i93.i, %i.ax
  br i1 %.not76.not.i, label %bb.aa, label %bb.z, !prof !20

bb.z:                                             ; preds = %bb.y
  %i.da = add nuw nsw i64 %..i93.i, 1
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %..i93.i, i64 noundef %i.da, i64 noundef %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #20
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.db = getelementptr inbounds nuw i8, ptr %i.aw, i64 %..i92.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %..i93.i
  %.val85.i = load i8, ptr %i.db, align 1, !noundef !5
  %i.dd = uitofp i8 %.val85.i to float
  %i.de = fadd float %.sroa.04.1218.i, %i.dd
  %.val84.i = load i8, ptr %i.dc, align 1, !noundef !5
  %i.df = uitofp i8 %.val84.i to float
  %i.dg = fsub float %i.de, %i.df                 ; 2 uses
  %exitcond294.not.i = icmp eq i64 %i.ba, %..i91.i
  br i1 %exitcond294.not.i, label %._crit_edge221.i, label %.lr.ph220.i

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.lr.ph.i, %.lr.ph.i.1
  %..i.i.lcssa = phi i64 [ %..i.i.1, %.lr.ph.i.1 ], [ %..i.i, %.lr.ph.i ], [ %..i.i.epil, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.dh = add nuw nsw i64 %..i.i.lcssa, 1
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %..i.i.lcssa, i64 noundef %i.dh, i64 noundef %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #20
  unreachable

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.di = add nuw i64 %.sroa.0109.0215.i, 1
  %..i.i.1 = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %i.di) ; 3 uses
  %.not77.not.i.1 = icmp ult i64 %..i.i.1, %i.ax
  br i1 %.not77.not.i.1, label %bb.ab, label %.loopexit, !prof !20

bb.ab:                                            ; preds = %.lr.ph.i.1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aw, i64 %..i.i
  %.val.i = load i8, ptr %i.dj, align 1, !noundef !5
  %i.dk = uitofp i8 %.val.i to float
  %i.dl = fadd float %.sroa.04.0216.i, %i.dk
  %i.dm = add nuw i64 %.sroa.0109.0215.i, 2       ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aw, i64 %..i.i.1
  %.val.i.1 = load i8, ptr %i.dn, align 1, !noundef !5
  %i.do = uitofp i8 %.val.i.1 to float
  %i.dp = fadd float %i.dl, %i.do                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph220.i.preheader.unr-lcssa, label %.lr.ph.i

.lr.ph220.i.preheader.unr-lcssa:                  ; preds = %bb.ab
  br i1 %lcmp.mod.not, label %.lr.ph220.i.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.i, %.lr.ph220.i.preheader.unr-lcssa
  %.sroa.04.0216.i.epil.init = phi float [ %i.az, %bb.i ], [ %i.dp, %.lr.ph220.i.preheader.unr-lcssa ]
  %.sroa.0109.0215.i.epil.init = phi i64 [ 1, %bb.i ], [ %i.dm, %.lr.ph220.i.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod306)
  %..i.i.epil = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %.sroa.0109.0215.i.epil.init) ; 3 uses
  %.not77.not.i.epil = icmp ult i64 %..i.i.epil, %i.ax
  br i1 %.not77.not.i.epil, label %.lr.ph220.i.preheader.epilog-lcssa, label %.loopexit, !prof !20

.lr.ph220.i.preheader.epilog-lcssa:               ; preds = %.lr.ph.i.epil.preheader
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aw, i64 %..i.i.epil
  %.val.i.epil = load i8, ptr %i.dq, align 1, !noundef !5
  %i.dr = uitofp i8 %.val.i.epil to float
  %i.ds = fadd float %.sroa.04.0216.i.epil.init, %i.dr
  br label %.lr.ph220.i.preheader

.lr.ph220.i.preheader:                            ; preds = %.lr.ph220.i.preheader.unr-lcssa, %.lr.ph220.i.preheader.epilog-lcssa
  %.lcssa = phi float [ %i.dp, %.lr.ph220.i.preheader.unr-lcssa ], [ %i.ds, %.lr.ph220.i.preheader.epilog-lcssa ]
  br label %.lr.ph220.i

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implhKj1_EB6_.exit: ; preds = %.loopexit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}
end_hunk_3
begin_hunk_4_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur33box_blur_horizontal_pass_strategyINtNtB6_5color4LumatEtEB6_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = zext i32 %6 to i64                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !350
  %i.i = add i64 %7, %i.h                         ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  br i1 %i.j, label %bb.b, label %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 7, ptr %i.d, align 8, !noalias !350
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !350
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #24
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d) #22
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.i, ptr %i.m, align 8, !noalias !350
  store i8 -1, ptr %i.d, align 8, !noalias !350
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !350
  %i.n = shl i64 %7, 1
  %i.o = or disjoint i64 %i.n, 1
  %i.p = and i64 %7, 9223372036854775807          ; 11 uses
  %i.q = add nuw i64 %i.p, 1                      ; 4 uses
  %i.r = uitofp i64 %i.q to float
  %i.s = uitofp i64 %i.o to float
  %i.t = fdiv float 1.000000e+00, %i.s            ; 3 uses
  %i.u = add nsw i64 %i.h, -1                     ; 6 uses
  %i.v = urem i64 %4, %5                          ; 2 uses
  %i.w = sub nuw nsw i64 %4, %i.v                 ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.w
  %i.y = urem i64 %1, %2                          ; 2 uses
  %i.z = sub nuw nsw i64 %1, %i.y                 ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !351
  store ptr %i.x, ptr %i.c, align 8, !noalias !352
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.v, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !352
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !352
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !352
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %5, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !351
  store ptr %0, ptr %i.b, align 8, !alias.scope !353, !noalias !354
  %.sroa.4102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.z, ptr %.sroa.4102.0..sroa_idx.i, align 8, !alias.scope !353, !noalias !354
  %.sroa.5103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.aa, ptr %.sroa.5103.0..sroa_idx.i, align 8, !alias.scope !353, !noalias !354
  %.sroa.6104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.y, ptr %.sroa.6104.0..sroa_idx.i, align 8, !alias.scope !353, !noalias !354
  %.sroa.7105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %2, ptr %.sroa.7105.0..sroa_idx.i, align 8, !alias.scope !353, !noalias !354
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b), !noalias !355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !350
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !356, !noalias !350, !noundef !5 ; 2 uses
  %i.ae = load i64, ptr %i.ac, align 8, !alias.scope !356, !noalias !350, !noundef !5
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_impltKj1_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %..i91.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %i.p)
  %i.ah = call i64 @llvm.usub.sat.i64(i64 %i.u, i64 %i.q) ; 7 uses
  %i.ai = shl nuw i64 %i.p, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %invariant.umax.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ah)
  %i.ak = icmp samesign ult i64 %i.ah, %i.p
  %.sroa.4126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.7132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.9133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %xtraiter = and i64 %7, 1
  %i.al = icmp eq i64 %i.p, 1                     ; 0 uses
  %unroll_iter = and i64 %7, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod306 = trunc i64 %7 to i1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.loopexit.i:                                      ; preds = %bb.t, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i
  %i.am = load i64, ptr %i.ab, align 8, !alias.scope !356, !noalias !350, !noundef !5 ; 2 uses
  %i.an = load i64, ptr %i.ac, align 8, !alias.scope !356, !noalias !350, !noundef !5
  %i.ao = icmp ult i64 %i.am, %i.an
  br i1 %i.ao, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_impltKj1_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %i.ap = phi i64 [ %i.ad, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.am, %.loopexit.i ] ; 3 uses
  %i.aq = add nuw i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ab, align 8, !alias.scope !356, !noalias !350
  %i.ar = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuttENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.f, i64 noundef %i.ap), !noalias !357 ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.ar, 0      ; 5 uses
  %i.at = extractvalue { ptr, i64 } %i.ar, 1      ; 7 uses
  %i.au = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacttENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag, i64 noundef %i.ap), !noalias !357 ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.au, 0      ; 12 uses
  %i.aw = extractvalue { ptr, i64 } %i.au, 1      ; 15 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_impltKj1_EB6_.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %.not68.i = icmp eq i64 %i.aw, 0
  br i1 %.not68.i, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 1, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %.val90.i = load i16, ptr %i.av, align 2, !noundef !5
  %i.ax = uitofp i16 %.val90.i to float
  %i.ay = fmul nnan float %i.r, %i.ax             ; 3 uses
  switch i64 %i.p, label %.lr.ph.i [
    i64 0, label %._crit_edge221.i
    i64 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i:                                         ; preds = %bb.i, %bb.ab
  %.sroa.04.0216.i = phi float [ %i.dm, %bb.ab ], [ %i.ay, %bb.i ]
  %.sroa.0109.0215.i = phi i64 [ %i.dj, %bb.ab ], [ 1, %bb.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.ab ], [ 0, %bb.i ]
  %..i.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %.sroa.0109.0215.i) ; 3 uses
  %.not77.not.i = icmp ult i64 %..i.i, %i.aw
  br i1 %.not77.not.i, label %.lr.ph.i.1, label %.loopexit, !prof !20

._crit_edge221.i:                                 ; preds = %bb.aa, %bb.i
  %.sroa.04.1.lcssa.i = phi float [ %i.ay, %bb.i ], [ %i.dd, %bb.aa ] ; 3 uses
  %or.cond.i = icmp ugt i64 %i.aw, %invariant.umax.i
  br i1 %or.cond.i, label %bb.j, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

.lr.ph220.i:                                      ; preds = %.lr.ph220.i.preheader, %bb.aa
  %.sroa.04.1218.i = phi float [ %i.dd, %bb.aa ], [ %.lcssa, %.lr.ph220.i.preheader ] ; 2 uses
  %.sroa.045.0217.i = phi i64 [ %i.az, %bb.aa ], [ 0, %.lr.ph220.i.preheader ] ; 5 uses
  %i.az = add nuw nsw i64 %.sroa.045.0217.i, 1    ; 3 uses
  %i.ba = add nuw i64 %.sroa.045.0217.i, %i.q
  %..i92.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %i.ba) ; 4 uses
  %i.bb = sub nsw i64 %.sroa.045.0217.i, %i.p
  %..i93.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bb, i64 0) ; 4 uses
  %exitcond293.not.i = icmp eq i64 %.sroa.045.0217.i, %i.at
  br i1 %exitcond293.not.i, label %bb.w, label %bb.u, !prof !12

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i, %bb.k, %._crit_edge221.i
  %.sroa.050.0.i = phi i64 [ %i.p, %._crit_edge221.i ], [ %i.ah, %bb.k ], [ %i.ah, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i ] ; 3 uses
  %.sroa.04.2.i = phi float [ %.sroa.04.1.lcssa.i, %._crit_edge221.i ], [ %.sroa.04.1.lcssa.i, %bb.k ], [ %i.bw, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i ]
  %i.bc = icmp ult i64 %.sroa.050.0.i, %i.h
  br i1 %i.bc, label %.lr.ph228.preheader.i, label %.loopexit.i

.lr.ph228.preheader.i:                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i
  %umax.i = call i64 @llvm.umax.i64(i64 %i.at, i64 %.sroa.050.0.i) ; 2 uses
  br label %.lr.ph228.i

bb.j:                                             ; preds = %._crit_edge221.i
  %.not69.i = icmp ugt i64 %i.ah, %i.at
  %or.cond78.i = or i1 %i.ak, %.not69.i
  br i1 %or.cond78.i, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.aj
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.p
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.ah
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !358
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutAtj1_EINtBZ_4IterB1p_EEINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.av, ptr noundef nonnull %i.bg)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bg), !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !358
  %.sroa.0124.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !350 ; 2 uses
  %.sroa.4126.0.copyload.i = load ptr, ptr %.sroa.4126.0..sroa_idx.i, align 8, !noalias !350 ; 2 uses
  %.sroa.5128.0.copyload.i = load i64, ptr %.sroa.5128.0..sroa_idx.i, align 8, !noalias !350
  %.sroa.6130.0.copyload.i = load ptr, ptr %.sroa.6130.0..sroa_idx.i, align 8, !noalias !350 ; 2 uses
  %.sroa.7132.0.copyload.i = load i64, ptr %.sroa.7132.0..sroa_idx.i, align 8, !noalias !350 ; 2 uses
  %.sroa.9133.0.copyload.i = load i64, ptr %.sroa.9133.0..sroa_idx.i, align 8, !noalias !350 ; 2 uses
  %i.bh = icmp ult i64 %.sroa.7132.0.copyload.i, %.sroa.9133.0.copyload.i
  br i1 %i.bh, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0124.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4126.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6130.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.p, i64 noundef %i.ah, i64 noundef %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.04.3224.i = phi float [ %.sroa.04.1.lcssa.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.bw, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i ] ; 2 uses
  %.sroa.7132.0223.i = phi i64 [ %.sroa.7132.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.br, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i ] ; 3 uses
  %i.bi = fmul float %i.t, %.sroa.04.3224.i
  %i.bj = call float @llvm.round.f32(float %i.bi)
  %i.bk = call nsz float @llvm.minimumnum.f32(float %i.bj, float 6.553500e+04)
  %i.bl = call nsz float @llvm.maximumnum.f32(float %i.bk, float 0.000000e+00) ; 2 uses
  %i.bm = fcmp olt float %i.bl, 6.553600e+04
  br i1 %i.bm, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i, label %bb.m, !prof !19

bb.m:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6130.0.copyload.i, i64 %.sroa.7132.0223.i
  %i.bo = add i64 %.sroa.7132.0223.i, %.sroa.5128.0.copyload.i ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4126.0.copyload.i, i64 %i.bo
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0124.0.copyload.i, i64 %i.bo
  %i.br = add i64 %.sroa.7132.0223.i, 1           ; 2 uses
  %i.bs = fptoui float %i.bl to i16
  store i16 %i.bs, ptr %i.bq, align 2
  %.val87.i = load i16, ptr %i.bn, align 2, !noundef !5
  %i.bt = uitofp i16 %.val87.i to float
  %.val86.i = load i16, ptr %i.bp, align 2, !noundef !5
  %i.bu = uitofp i16 %.val86.i to float
  %i.bv = fadd float %.sroa.04.3224.i, %i.bt
  %i.bw = fsub float %i.bv, %i.bu                 ; 2 uses
  %exitcond295.not.i = icmp eq i64 %i.br, %.sroa.9133.0.copyload.i
  br i1 %exitcond295.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj1_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.lr.ph228.i:                                      ; preds = %bb.t, %.lr.ph228.preheader.i
  %.sroa.04.4227.i = phi float [ %i.co, %bb.t ], [ %.sroa.04.2.i, %.lr.ph228.preheader.i ] ; 2 uses
  %.sroa.050.1226.i = phi i64 [ %i.bx, %bb.t ], [ %.sroa.050.0.i, %.lr.ph228.preheader.i ] ; 5 uses
  %i.bx = add i64 %.sroa.050.1226.i, 1            ; 3 uses
  %i.by = add nuw i64 %.sroa.050.1226.i, %i.q
  %..i97.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %i.by) ; 4 uses
  %i.bz = sub nsw i64 %.sroa.050.1226.i, %i.p
  %..i98.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bz, i64 0) ; 4 uses
  %exitcond296.not.i = icmp eq i64 %.sroa.050.1226.i, %umax.i
  br i1 %exitcond296.not.i, label %bb.p, label %bb.n, !prof !12

bb.n:                                             ; preds = %.lr.ph228.i
  %i.ca = fmul float %i.t, %.sroa.04.4227.i
  %i.cb = call float @llvm.round.f32(float %i.ca)
  %i.cc = call nsz float @llvm.minimumnum.f32(float %i.cb, float 6.553500e+04)
  %i.cd = call nsz float @llvm.maximumnum.f32(float %i.cc, float 0.000000e+00) ; 2 uses
  %i.ce = fcmp olt float %i.cd, 6.553600e+04
  br i1 %i.ce, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit99.i, label %bb.o, !prof !19

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit99.i: ; preds = %bb.n
  %i.cf = fptoui float %i.cd to i16
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %.sroa.050.1226.i
  store i16 %i.cf, ptr %i.cg, align 2
  %.not72.not.i = icmp ult i64 %..i97.i, %i.aw
  br i1 %.not72.not.i, label %bb.r, label %bb.q, !prof !20

bb.p:                                             ; preds = %.lr.ph228.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %umax.i, i64 noundef %i.bx, i64 noundef %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
  unreachable

bb.q:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit99.i
  %i.ch = add nuw nsw i64 %..i97.i, 1
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %..i97.i, i64 noundef %i.ch, i64 noundef %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20
  unreachable

bb.r:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit99.i
  %.not73.not.i = icmp ult i64 %..i98.i, %i.aw
  br i1 %.not73.not.i, label %bb.t, label %bb.s, !prof !20

bb.s:                                             ; preds = %bb.r
  %i.ci = add nuw i64 %..i98.i, 1
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %..i98.i, i64 noundef %i.ci, i64 noundef %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %..i97.i
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %..i98.i
  %.val89.i = load i16, ptr %i.cj, align 2, !noundef !5
  %i.cl = uitofp i16 %.val89.i to float
  %i.cm = fadd float %.sroa.04.4227.i, %i.cl
  %.val88.i = load i16, ptr %i.ck, align 2, !noundef !5
  %i.cn = uitofp i16 %.val88.i to float
  %i.co = fsub float %i.cm, %i.cn
  %exitcond297.not.i = icmp eq i64 %i.bx, %i.h
  br i1 %exitcond297.not.i, label %.loopexit.i, label %.lr.ph228.i

bb.u:                                             ; preds = %.lr.ph220.i
  %i.cp = fmul float %i.t, %.sroa.04.1218.i
  %i.cq = call float @llvm.round.f32(float %i.cp)
  %i.cr = call nsz float @llvm.minimumnum.f32(float %i.cq, float 6.553500e+04)
  %i.cs = call nsz float @llvm.maximumnum.f32(float %i.cr, float 0.000000e+00) ; 2 uses
  %i.ct = fcmp olt float %i.cs, 6.553600e+04
  br i1 %i.ct, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit100.i, label %bb.v, !prof !19

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit100.i: ; preds = %bb.u
  %i.cu = fptoui float %i.cs to i16
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %.sroa.045.0217.i
  store i16 %i.cu, ptr %i.cv, align 2
  %.not75.not.i = icmp ult i64 %..i92.i, %i.aw
  br i1 %.not75.not.i, label %bb.y, label %bb.x, !prof !20

bb.w:                                             ; preds = %.lr.ph220.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.at, i64 noundef %i.az, i64 noundef %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #20
  unreachable

bb.x:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit100.i
  %i.cw = add nuw nsw i64 %..i92.i, 1
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %..i92.i, i64 noundef %i.cw, i64 noundef %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20
  unreachable

bb.y:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit100.i
  %.not76.not.i = icmp ult i64 %..i93.i, %i.aw
  br i1 %.not76.not.i, label %bb.aa, label %bb.z, !prof !20

bb.z:                                             ; preds = %bb.y
  %i.cx = add nuw nsw i64 %..i93.i, 1
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %..i93.i, i64 noundef %i.cx, i64 noundef %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #20
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %..i92.i
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %..i93.i
  %.val85.i = load i16, ptr %i.cy, align 2, !noundef !5
  %i.da = uitofp i16 %.val85.i to float
  %i.db = fadd float %.sroa.04.1218.i, %i.da
  %.val84.i = load i16, ptr %i.cz, align 2, !noundef !5
  %i.dc = uitofp i16 %.val84.i to float
  %i.dd = fsub float %i.db, %i.dc                 ; 2 uses
  %exitcond294.not.i = icmp eq i64 %i.az, %..i91.i
  br i1 %exitcond294.not.i, label %._crit_edge221.i, label %.lr.ph220.i

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.lr.ph.i, %.lr.ph.i.1
  %..i.i.lcssa = phi i64 [ %..i.i.1, %.lr.ph.i.1 ], [ %..i.i, %.lr.ph.i ], [ %..i.i.epil, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.de = add nuw nsw i64 %..i.i.lcssa, 1
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %..i.i.lcssa, i64 noundef %i.de, i64 noundef %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #20
  unreachable

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.df = add nuw i64 %.sroa.0109.0215.i, 1
  %..i.i.1 = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %i.df) ; 3 uses
  %.not77.not.i.1 = icmp ult i64 %..i.i.1, %i.aw
  br i1 %.not77.not.i.1, label %bb.ab, label %.loopexit, !prof !20

bb.ab:                                            ; preds = %.lr.ph.i.1
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %..i.i
  %.val.i = load i16, ptr %i.dg, align 2, !noundef !5
  %i.dh = uitofp i16 %.val.i to float
  %i.di = fadd float %.sroa.04.0216.i, %i.dh
  %i.dj = add nuw i64 %.sroa.0109.0215.i, 2       ; 2 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %..i.i.1
  %.val.i.1 = load i16, ptr %i.dk, align 2, !noundef !5
  %i.dl = uitofp i16 %.val.i.1 to float
  %i.dm = fadd float %i.di, %i.dl                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph220.i.preheader.unr-lcssa, label %.lr.ph.i

.lr.ph220.i.preheader.unr-lcssa:                  ; preds = %bb.ab
  br i1 %lcmp.mod.not, label %.lr.ph220.i.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.i, %.lr.ph220.i.preheader.unr-lcssa
  %.sroa.04.0216.i.epil.init = phi float [ %i.ay, %bb.i ], [ %i.dm, %.lr.ph220.i.preheader.unr-lcssa ]
  %.sroa.0109.0215.i.epil.init = phi i64 [ 1, %bb.i ], [ %i.dj, %.lr.ph220.i.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod306)
  %..i.i.epil = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.u, i64 %.sroa.0109.0215.i.epil.init) ; 3 uses
  %.not77.not.i.epil = icmp ult i64 %..i.i.epil, %i.aw
  br i1 %.not77.not.i.epil, label %.lr.ph220.i.preheader.epilog-lcssa, label %.loopexit, !prof !20

.lr.ph220.i.preheader.epilog-lcssa:               ; preds = %.lr.ph.i.epil.preheader
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %..i.i.epil
  %.val.i.epil = load i16, ptr %i.dn, align 2, !noundef !5
  %i.do = uitofp i16 %.val.i.epil to float
  %i.dp = fadd float %.sroa.04.0216.i.epil.init, %i.do
  br label %.lr.ph220.i.preheader

.lr.ph220.i.preheader:                            ; preds = %.lr.ph220.i.preheader.unr-lcssa, %.lr.ph220.i.preheader.epilog-lcssa
  %.lcssa = phi float [ %i.dm, %.lr.ph220.i.preheader.unr-lcssa ], [ %i.dp, %.lr.ph220.i.preheader.epilog-lcssa ]
  br label %.lr.ph220.i

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_impltKj1_EB6_.exit: ; preds = %.loopexit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}
end_hunk_4
begin_hunk_5_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur33box_blur_horizontal_pass_strategyINtNtB6_5color4RgbafEfEB6_:bb.a
  %i.y = sub nuw nsw i64 %1, %i.x                 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !377
  store ptr %i.w, ptr %i.c, align 8, !noalias !378
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.u, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !378
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !378
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.v, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !378
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %5, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !377
  store ptr %0, ptr %i.b, align 8, !alias.scope !379, !noalias !380
  %.sroa.4225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.y, ptr %.sroa.4225.0..sroa_idx.i, align 8, !alias.scope !379, !noalias !380
  %.sroa.5226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.z, ptr %.sroa.5226.0..sroa_idx.i, align 8, !alias.scope !379, !noalias !380
  %.sroa.6227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.x, ptr %.sroa.6227.0..sroa_idx.i, align 8, !alias.scope !379, !noalias !380
  %.sroa.7228.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %2, ptr %.sroa.7228.0..sroa_idx.i, align 8, !alias.scope !379, !noalias !380
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExactfEEINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b), !noalias !381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !376
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !382, !noalias !376, !noundef !5 ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !382, !noalias !376, !noundef !5
  %i.ae = icmp ult i64 %i.ac, %i.ad
  br i1 %i.ae, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExactfEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implfKj4_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExactfEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i
  %i.af = uitofp i64 %i.q to float
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %..i216.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %i.p)
  %i.ah = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 %i.q) ; 4 uses
  %i.ai = shl i64 %7, 3
  %i.aj = or disjoint i64 %i.ai, 4                ; 3 uses
  %i.ak = shl nuw nsw i64 %i.ah, 2                ; 4 uses
  %invariant.umax.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ak)
  %i.al = shl i64 %7, 2                           ; 3 uses
  %i.am = icmp ult i64 %i.ak, %i.al
  %i.an = sub i64 %i.ah, %7
  %i.ao = and i64 %i.an, 4611686018427387903
  %.sroa.4249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5251.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6253.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.7255.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.9256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ap = insertelement <4 x float> poison, float %i.af, i64 0
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> zeroinitializer
  %xtraiter = and i64 %7, 1
  %i.ar = icmp eq i64 %i.p, 1                     ; 0 uses
  %unroll_iter = and i64 %7, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod313 = trunc i64 %7 to i1
  %i.as = insertelement <4 x float> poison, float %i.s, i64 0
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = insertelement <4 x float> poison, float %i.s, i64 0
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aw = insertelement <4 x float> poison, float %i.s, i64 0
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> zeroinitializer
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExactfEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.loopexit.i:                                      ; preds = %bb.r, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i
  %i.ay = load i64, ptr %i.aa, align 8, !alias.scope !382, !noalias !376, !noundef !5 ; 2 uses
  %i.az = load i64, ptr %i.ab, align 8, !alias.scope !382, !noalias !376, !noundef !5
  %i.ba = icmp ult i64 %i.ay, %i.az
  br i1 %i.ba, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExactfEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implfKj4_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExactfEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExactfEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %i.bb = phi i64 [ %i.ac, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExactfEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.ay, %.loopexit.i ] ; 3 uses
  %i.bc = add nuw i64 %i.bb, 1
  store i64 %i.bc, ptr %i.aa, align 8, !alias.scope !382, !noalias !376
  %i.bd = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMutfENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.f, i64 noundef %i.bb), !noalias !383 ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 0      ; 4 uses
  %i.bf = extractvalue { ptr, i64 } %i.bd, 1      ; 6 uses
  %i.bg = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactfENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag, i64 noundef %i.bb), !noalias !383 ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bg, 0      ; 12 uses
  %i.bi = extractvalue { ptr, i64 } %i.bg, 1      ; 17 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implfKj4_EB6_.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExactfEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  %i.bj = icmp ugt i64 %i.bi, 3
  br i1 %i.bj, label %bb.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bk = load <4 x float>, ptr %i.bh, align 4
  %i.bl = fmul <4 x float> %i.bk, %i.aq           ; 3 uses
  switch i64 %i.p, label %.lr.ph.i.preheader.new [
    i64 0, label %._crit_edge.thread.i
    i64 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.i
  %invariant.op = sub nuw i64 %i.bi, 3
  br label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.i
  %invariant.op456.i = add i64 %i.bi, -3
  br label %._crit_edge350.i

.lr.ph.i:                                         ; preds = %bb.y, %.lr.ph.i.preheader.new
  %.sroa.0232.0335.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %i.eq, %bb.y ] ; 3 uses
  %i.bm = phi <4 x float> [ %i.bl, %.lr.ph.i.preheader.new ], [ %i.et, %bb.y ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.y ]
  %..i.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %.sroa.0232.0335.i)
  %i.bn = shl nuw nsw i64 %..i.i, 2               ; 3 uses
  %i.bo = or disjoint i64 %i.bn, 3
  %or.cond184.not.i = icmp ult i64 %i.bo, %i.bi
  br i1 %or.cond184.not.i, label %.lr.ph.i.1, label %.loopexit, !prof !20

.lr.ph349.preheader.i.unr-lcssa:                  ; preds = %bb.y
  br i1 %lcmp.mod.not, label %.lr.ph349.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.i, %.lr.ph349.preheader.i.unr-lcssa
  %.sroa.0232.0335.i.epil.init = phi i64 [ 1, %bb.i ], [ %i.eq, %.lr.ph349.preheader.i.unr-lcssa ]
  %.epil.init = phi <4 x float> [ %i.bl, %bb.i ], [ %i.et, %.lr.ph349.preheader.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod313)
  %..i.i.epil = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %.sroa.0232.0335.i.epil.init)
  %i.bp = shl nuw nsw i64 %..i.i.epil, 2          ; 3 uses
  %i.bq = or disjoint i64 %i.bp, 3
  %or.cond184.not.i.epil = icmp ult i64 %i.bq, %i.bi
  br i1 %or.cond184.not.i.epil, label %.lr.ph349.preheader.i.epilog-lcssa, label %.loopexit, !prof !20

.lr.ph349.preheader.i.epilog-lcssa:               ; preds = %.lr.ph.i.epil.preheader
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bp
  %i.bs = load <4 x float>, ptr %i.br, align 4
  %i.bt = fadd <4 x float> %.epil.init, %i.bs
  br label %.lr.ph349.preheader.i

.lr.ph349.preheader.i:                            ; preds = %.lr.ph349.preheader.i.unr-lcssa, %.lr.ph349.preheader.i.epilog-lcssa
  %.lcssa261 = phi <4 x float> [ %i.et, %.lr.ph349.preheader.i.unr-lcssa ], [ %i.bt, %.lr.ph349.preheader.i.epilog-lcssa ]
  %invariant.op.i = add i64 %i.bi, -3             ; 2 uses
  br label %.lr.ph349.i

._crit_edge350.i:                                 ; preds = %bb.x, %._crit_edge.thread.i
  %invariant.op457.i = phi i64 [ %invariant.op456.i, %._crit_edge.thread.i ], [ %invariant.op.i, %bb.x ]
  %i.bu = phi <4 x float> [ %i.bl, %._crit_edge.thread.i ], [ %i.ej, %bb.x ] ; 3 uses
  %or.cond.i = icmp ugt i64 %i.bi, %invariant.umax.i
  br i1 %or.cond.i, label %bb.j, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

.lr.ph349.i:                                      ; preds = %bb.x, %.lr.ph349.preheader.i
  %.sroa.0144.0343.i = phi i64 [ %i.bw, %bb.x ], [ 0, %.lr.ph349.preheader.i ] ; 4 uses
  %i.bv = phi <4 x float> [ %i.ej, %bb.x ], [ %.lcssa261, %.lr.ph349.preheader.i ] ; 2 uses
  %i.bw = add nuw nsw i64 %.sroa.0144.0343.i, 1   ; 2 uses
  %i.bx = add nuw i64 %.sroa.0144.0343.i, %i.q
  %..i217.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %i.bx)
  %i.by = shl nuw nsw i64 %..i217.i, 2            ; 4 uses
  %i.bz = sub nsw i64 %.sroa.0144.0343.i, %i.p
  %..i218.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bz, i64 0)
  %i.ca = shl i64 %..i218.i, 2                    ; 4 uses
  %i.cb = shl nuw nsw i64 %.sroa.0144.0343.i, 2   ; 4 uses
  %i.cc = or disjoint i64 %i.cb, 3
  %or.cond181.not.i = icmp ult i64 %i.cc, %i.bf
  br i1 %or.cond181.not.i, label %bb.s, label %bb.t, !prof !20

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, %bb.k, %._crit_edge350.i
  %.sroa.0149.0.i = phi i64 [ %i.p, %._crit_edge350.i ], [ %i.ah, %bb.k ], [ %i.ah, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i ] ; 2 uses
  %i.cd = phi <4 x float> [ %i.bu, %._crit_edge350.i ], [ %i.bu, %bb.k ], [ %i.da, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i ]
  %i.ce = icmp ult i64 %.sroa.0149.0.i, %i.h
  br i1 %i.ce, label %.lr.ph370.i, label %.loopexit.i

bb.j:                                             ; preds = %._crit_edge350.i
  %.not169.i = icmp ugt i64 %i.ak, %i.bf
  %or.cond178.i = or i1 %i.am, %.not169.i
  br i1 %or.cond178.i, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.aj ; 2 uses
  %i.cg = sub nuw i64 %i.bi, %i.aj
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.al ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.ao
  %i.cj = lshr i64 %i.bi, 2
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.cj
  %i.cl = lshr i64 %i.cg, 2
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !384
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutAfj4_EINtBZ_4IterB1p_EEINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.ck)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cm), !noalias !385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !384
  %.sroa.0247.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !376 ; 2 uses
  %.sroa.4249.0.copyload.i = load ptr, ptr %.sroa.4249.0..sroa_idx.i, align 8, !noalias !376 ; 2 uses
  %.sroa.5251.0.copyload.i = load i64, ptr %.sroa.5251.0..sroa_idx.i, align 8, !noalias !376
  %.sroa.6253.0.copyload.i = load ptr, ptr %.sroa.6253.0..sroa_idx.i, align 8, !noalias !376 ; 2 uses
  %.sroa.7255.0.copyload.i = load i64, ptr %.sroa.7255.0..sroa_idx.i, align 8, !noalias !376 ; 2 uses
  %.sroa.9256.0.copyload.i = load i64, ptr %.sroa.9256.0..sroa_idx.i, align 8, !noalias !376 ; 2 uses
  %i.cn = icmp ult i64 %.sroa.7255.0.copyload.i, %.sroa.9256.0.copyload.i
  br i1 %i.cn, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0247.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4249.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6253.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.al, i64 noundef %i.ak, i64 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.7255.0355.i = phi i64 [ %.sroa.7255.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.ct, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i ] ; 3 uses
  %i.co = phi <4 x float> [ %i.bu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.da, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i ] ; 2 uses
  %i.cp = add i64 %.sroa.7255.0355.i, %.sroa.5251.0.copyload.i ; 2 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0247.0.copyload.i, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.6253.0.copyload.i, i64 %.sroa.7255.0355.i
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4249.0.copyload.i, i64 %i.cp
  %i.ct = add nuw i64 %.sroa.7255.0355.i, 1       ; 2 uses
  %i.cu = fmul <4 x float> %i.av, %i.co
  %i.cv = call nsz <4 x float> @llvm.minimumnum.v4f32(<4 x float> %i.cu, <4 x float> splat (float 1.000000e+00))
  %i.cw = call nsz <4 x float> @llvm.maximumnum.v4f32(<4 x float> %i.cv, <4 x float> zeroinitializer)
  store <4 x float> %i.cw, ptr %i.cq, align 4
  %i.cx = load <4 x float>, ptr %i.cr, align 4
  %i.cy = fadd <4 x float> %i.co, %i.cx
  %i.cz = load <4 x float>, ptr %i.cs, align 4
  %i.da = fsub <4 x float> %i.cy, %i.cz           ; 2 uses
  %exitcond434.not.i = icmp eq i64 %i.ct, %.sroa.9256.0.copyload.i
  br i1 %exitcond434.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.lr.ph370.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %bb.r
  %.sroa.0149.1365.i = phi i64 [ %i.dc, %bb.r ], [ %.sroa.0149.0.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ] ; 4 uses
  %i.db = phi <4 x float> [ %i.dv, %bb.r ], [ %i.cd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAfj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ] ; 2 uses
  %i.dc = add i64 %.sroa.0149.1365.i, 1           ; 2 uses
  %i.dd = add nuw i64 %.sroa.0149.1365.i, %i.q
  %..i222.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %i.dd)
  %i.de = shl nuw nsw i64 %..i222.i, 2            ; 4 uses
  %i.df = sub nsw i64 %.sroa.0149.1365.i, %i.p
  %..i223.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.df, i64 0)
  %i.dg = shl i64 %..i223.i, 2                    ; 4 uses
  %i.dh = shl nuw nsw i64 %.sroa.0149.1365.i, 2   ; 3 uses
  %i.di = add nuw nsw i64 %i.dh, 4                ; 2 uses
  %.not171.i = icmp ugt i64 %i.di, %i.bf
  br i1 %.not171.i, label %bb.n, label %bb.m, !prof !12

bb.m:                                             ; preds = %.lr.ph370.i
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.dh
  %i.dk = fmul <4 x float> %i.ax, %i.db
  %i.dl = call nsz <4 x float> @llvm.minimumnum.v4f32(<4 x float> %i.dk, <4 x float> splat (float 1.000000e+00))
  %i.dm = call nsz <4 x float> @llvm.maximumnum.v4f32(<4 x float> %i.dl, <4 x float> zeroinitializer)
  store <4 x float> %i.dm, ptr %i.dj, align 4
  %i.dn = or disjoint i64 %i.de, 3
  %or.cond179.not.i = icmp ult i64 %i.dn, %i.bi
  br i1 %or.cond179.not.i, label %bb.p, label %bb.o, !prof !20

bb.n:                                             ; preds = %.lr.ph370.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.dh, i64 noundef %i.di, i64 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.do = add nuw nsw i64 %i.de, 4
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.de, i64 noundef %i.do, i64 noundef %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20
  unreachable

bb.p:                                             ; preds = %bb.m
  %or.cond180.not.i = icmp ult i64 %i.dg, %invariant.op457.i
  br i1 %or.cond180.not.i, label %bb.r, label %bb.q, !prof !20

bb.q:                                             ; preds = %bb.p
  %i.dp = add i64 %i.dg, 4
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.dg, i64 noundef %i.dp, i64 noundef %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.de
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.dg
  %i.ds = load <4 x float>, ptr %i.dq, align 4
  %i.dt = fadd <4 x float> %i.db, %i.ds
  %i.du = load <4 x float>, ptr %i.dr, align 4
  %i.dv = fsub <4 x float> %i.dt, %i.du
  %exitcond435.not.i = icmp eq i64 %i.dc, %i.h
  br i1 %exitcond435.not.i, label %.loopexit.i, label %.lr.ph370.i

bb.s:                                             ; preds = %.lr.ph349.i
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cb
  %i.dx = fmul <4 x float> %i.at, %i.bv
  %i.dy = call nsz <4 x float> @llvm.minimumnum.v4f32(<4 x float> %i.dx, <4 x float> splat (float 1.000000e+00))
  %i.dz = call nsz <4 x float> @llvm.maximumnum.v4f32(<4 x float> %i.dy, <4 x float> zeroinitializer)
  store <4 x float> %i.dz, ptr %i.dw, align 4
  %i.ea = or disjoint i64 %i.by, 3
  %or.cond182.not.i = icmp ult i64 %i.ea, %i.bi
  br i1 %or.cond182.not.i, label %bb.v, label %bb.u, !prof !20

bb.t:                                             ; preds = %.lr.ph349.i
  %i.eb = add nuw i64 %i.cb, 4
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cb, i64 noundef %i.eb, i64 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #20
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ec = add nuw nsw i64 %i.by, 4
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.by, i64 noundef %i.ec, i64 noundef %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20
  unreachable

bb.v:                                             ; preds = %bb.s
  %or.cond183.not.i = icmp ult i64 %i.ca, %invariant.op.i
  br i1 %or.cond183.not.i, label %bb.x, label %bb.w, !prof !20

bb.w:                                             ; preds = %bb.v
  %i.ed = add i64 %i.ca, 4
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ca, i64 noundef %i.ed, i64 noundef %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #20
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.by
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ca
  %i.eg = load <4 x float>, ptr %i.ee, align 4
  %i.eh = fadd <4 x float> %i.bv, %i.eg
  %i.ei = load <4 x float>, ptr %i.ef, align 4
  %i.ej = fsub <4 x float> %i.eh, %i.ei           ; 2 uses
  %exitcond433.not.i = icmp eq i64 %i.bw, %..i216.i
  br i1 %exitcond433.not.i, label %._crit_edge350.i, label %.lr.ph349.i

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.lr.ph.i, %.lr.ph.i.1
  %.lcssa = phi i64 [ %i.em, %.lr.ph.i.1 ], [ %i.bn, %.lr.ph.i ], [ %i.bp, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.ek = add nuw nsw i64 %.lcssa, 4
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa, i64 noundef %i.ek, i64 noundef %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #20
  unreachable

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.el = add nuw i64 %.sroa.0232.0335.i, 1
  %..i.i.1 = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %i.el)
  %i.em = shl nuw nsw i64 %..i.i.1, 2             ; 3 uses
  %or.cond184.not.i.1 = icmp ult i64 %i.em, %invariant.op
  br i1 %or.cond184.not.i.1, label %bb.y, label %.loopexit, !prof !20

bb.y:                                             ; preds = %.lr.ph.i.1
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bn
  %i.eo = load <4 x float>, ptr %i.en, align 4
  %i.ep = fadd <4 x float> %i.bm, %i.eo
  %i.eq = add nuw i64 %.sroa.0232.0335.i, 2       ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.em
  %i.es = load <4 x float>, ptr %i.er, align 4
  %i.et = fadd <4 x float> %i.ep, %i.es           ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph349.preheader.i.unr-lcssa, label %.lr.ph.i

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implfKj4_EB6_.exit: ; preds = %.loopexit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExactfEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur33box_blur_horizontal_pass_strategyINtNtB6_5color4RgbahEhEB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef range(i64 4, 17179869181) %2, ptr noalias nofree noundef nonnull %3, i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 4, 17179869181) %5, i32 noundef range(i32 1, 0) %6, i64 noundef %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [80 x i8], align 8                ; 9 uses
  %i.f = alloca [96 x i8], align 8                ; 7 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = zext i32 %6 to i64                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !402
  %i.i = add i64 %7, %i.h                         ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  br i1 %i.j, label %bb.b, label %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 7, ptr %i.d, align 8, !noalias !402
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !402
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #24
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d) #22
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.i, ptr %i.m, align 8, !noalias !402
  store i8 -1, ptr %i.d, align 8, !noalias !402
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !402
  %i.n = shl i64 %7, 1
  %i.o = or disjoint i64 %i.n, 1
end_hunk_5
begin_hunk_6_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur33box_blur_horizontal_pass_strategyINtNtB6_5color4RgbahEhEB6_:bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.u, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !404
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !404
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.v, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !404
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %5, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !403
  store ptr %0, ptr %i.b, align 8, !alias.scope !405, !noalias !406
  %.sroa.4236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.y, ptr %.sroa.4236.0..sroa_idx.i, align 8, !alias.scope !405, !noalias !406
  %.sroa.5237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.z, ptr %.sroa.5237.0..sroa_idx.i, align 8, !alias.scope !405, !noalias !406
  %.sroa.6238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.x, ptr %.sroa.6238.0..sroa_idx.i, align 8, !alias.scope !405, !noalias !406
  %.sroa.7239.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %2, ptr %.sroa.7239.0..sroa_idx.i, align 8, !alias.scope !405, !noalias !406
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !402
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !402
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !408, !noalias !402, !noundef !5 ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !408, !noalias !402, !noundef !5
  %i.ae = icmp ult i64 %i.ac, %i.ad
  br i1 %i.ae, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implhKj4_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i
  %i.af = uitofp i64 %i.q to float
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %..i216.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %i.p)
  %i.ah = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 %i.q) ; 4 uses
  %i.ai = shl i64 %7, 3
  %i.aj = or disjoint i64 %i.ai, 4                ; 3 uses
  %i.ak = shl nuw nsw i64 %i.ah, 2                ; 4 uses
  %invariant.umax.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ak)
  %i.al = shl i64 %7, 2                           ; 3 uses
  %i.am = icmp ult i64 %i.ak, %i.al
  %i.an = sub i64 %i.ah, %7
  %i.ao = and i64 %i.an, 4611686018427387903
  %.sroa.4260.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.7266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.9267.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ap = insertelement <4 x float> poison, float %i.af, i64 0
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> zeroinitializer
  %xtraiter = and i64 %7, 1
  %i.ar = icmp eq i64 %i.p, 1                     ; 0 uses
  %unroll_iter = and i64 %7, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod586 = trunc i64 %7 to i1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.loopexit.i:                                      ; preds = %bb.z, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i
  %i.as = load i64, ptr %i.aa, align 8, !alias.scope !408, !noalias !402, !noundef !5 ; 2 uses
  %i.at = load i64, ptr %i.ab, align 8, !alias.scope !408, !noalias !402, !noundef !5
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implhKj4_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %i.av = phi i64 [ %i.ac, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.as, %.loopexit.i ] ; 3 uses
  %i.aw = add nuw i64 %i.av, 1
  store i64 %i.aw, ptr %i.aa, align 8, !alias.scope !408, !noalias !402
  %i.ax = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.f, i64 noundef %i.av), !noalias !409 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0      ; 4 uses
  %i.az = extractvalue { ptr, i64 } %i.ax, 1      ; 6 uses
  %i.ba = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag, i64 noundef %i.av), !noalias !409 ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.ba, 0      ; 12 uses
  %i.bc = extractvalue { ptr, i64 } %i.ba, 1      ; 17 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implhKj4_EB6_.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  %i.bd = icmp ugt i64 %i.bc, 3
  br i1 %i.bd, label %bb.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.be = load <4 x i8>, ptr %i.bb, align 1
  %i.bf = uitofp <4 x i8> %i.be to <4 x float>
  %i.bg = fmul nnan <4 x float> %i.aq, %i.bf      ; 3 uses
  switch i64 %i.p, label %.lr.ph.i.preheader.new [
    i64 0, label %._crit_edge.thread.i
    i64 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.i
  %invariant.op = sub nuw i64 %i.bc, 3
  br label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.i
  %invariant.op628.i = add i64 %i.bc, -3
  br label %._crit_edge457.i

.lr.ph.i:                                         ; preds = %bb.ak, %.lr.ph.i.preheader.new
  %.sroa.0243.0442.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %i.id, %bb.ak ] ; 3 uses
  %i.bh = phi <4 x float> [ %i.bg, %.lr.ph.i.preheader.new ], [ %i.ih, %bb.ak ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.ak ]
  %..i.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %.sroa.0243.0442.i)
  %i.bi = shl nuw nsw i64 %..i.i, 2               ; 3 uses
  %i.bj = or disjoint i64 %i.bi, 3
  %or.cond184.not.i = icmp ult i64 %i.bj, %i.bc
  br i1 %or.cond184.not.i, label %.lr.ph.i.1, label %.loopexit, !prof !20

.lr.ph456.preheader.i.unr-lcssa:                  ; preds = %bb.ak
  br i1 %lcmp.mod.not, label %.lr.ph456.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.i, %.lr.ph456.preheader.i.unr-lcssa
  %.sroa.0243.0442.i.epil.init = phi i64 [ 1, %bb.i ], [ %i.id, %.lr.ph456.preheader.i.unr-lcssa ]
  %.epil.init = phi <4 x float> [ %i.bg, %bb.i ], [ %i.ih, %.lr.ph456.preheader.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod586)
  %..i.i.epil = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %.sroa.0243.0442.i.epil.init)
  %i.bk = shl nuw nsw i64 %..i.i.epil, 2          ; 3 uses
  %i.bl = or disjoint i64 %i.bk, 3
  %or.cond184.not.i.epil = icmp ult i64 %i.bl, %i.bc
  br i1 %or.cond184.not.i.epil, label %.lr.ph456.preheader.i.epilog-lcssa, label %.loopexit, !prof !20

.lr.ph456.preheader.i.epilog-lcssa:               ; preds = %.lr.ph.i.epil.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bn = load <4 x i8>, ptr %i.bm, align 1
  %i.bo = uitofp <4 x i8> %i.bn to <4 x float>
  %i.bp = fadd <4 x float> %.epil.init, %i.bo
  br label %.lr.ph456.preheader.i

.lr.ph456.preheader.i:                            ; preds = %.lr.ph456.preheader.i.unr-lcssa, %.lr.ph456.preheader.i.epilog-lcssa
  %.lcssa482 = phi <4 x float> [ %i.ih, %.lr.ph456.preheader.i.unr-lcssa ], [ %i.bp, %.lr.ph456.preheader.i.epilog-lcssa ] ; 5 uses
  %invariant.op.i = add i64 %i.bc, -3             ; 2 uses
  %i.bq = extractelement <4 x float> %.lcssa482, i64 0
  %i.br = extractelement <4 x float> %.lcssa482, i64 1
  %i.bs = extractelement <4 x float> %.lcssa482, i64 2
  %i.bt = extractelement <4 x float> %.lcssa482, i64 3
  br label %.lr.ph456.i

._crit_edge457.i:                                 ; preds = %bb.aj, %._crit_edge.thread.i
  %invariant.op629.i = phi i64 [ %invariant.op628.i, %._crit_edge.thread.i ], [ %invariant.op.i, %bb.aj ]
  %i.bu = phi <4 x float> [ %i.bg, %._crit_edge.thread.i ], [ %i.hr, %bb.aj ] ; 3 uses
  %or.cond.i = icmp ugt i64 %i.bc, %invariant.umax.i
  br i1 %or.cond.i, label %bb.j, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

.lr.ph456.i:                                      ; preds = %bb.aj, %.lr.ph456.preheader.i
  %.sroa.0.1454.i = phi float [ %i.hu, %bb.aj ], [ %i.br, %.lr.ph456.preheader.i ]
  %.sroa.011.1453.i = phi float [ %i.ht, %bb.aj ], [ %i.bs, %.lr.ph456.preheader.i ]
  %.sroa.021.1452.i = phi float [ %i.hs, %bb.aj ], [ %i.bt, %.lr.ph456.preheader.i ]
  %.sroa.031.1451.i = phi float [ %i.hv, %bb.aj ], [ %i.bq, %.lr.ph456.preheader.i ]
  %.sroa.0144.0450.i = phi i64 [ %i.bw, %bb.aj ], [ 0, %.lr.ph456.preheader.i ] ; 4 uses
  %i.bv = phi <4 x float> [ %i.hr, %bb.aj ], [ %.lcssa482, %.lr.ph456.preheader.i ]
  %i.bw = add nuw nsw i64 %.sroa.0144.0450.i, 1   ; 2 uses
  %i.bx = add nuw i64 %.sroa.0144.0450.i, %i.q
  %..i217.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %i.bx)
  %i.by = shl nuw nsw i64 %..i217.i, 2            ; 4 uses
  %i.bz = sub nsw i64 %.sroa.0144.0450.i, %i.p
  %..i218.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bz, i64 0)
  %i.ca = shl i64 %..i218.i, 2                    ; 4 uses
  %i.cb = shl nuw nsw i64 %.sroa.0144.0450.i, 2   ; 4 uses
  %i.cc = or disjoint i64 %i.cb, 3
  %or.cond181.not.i = icmp ult i64 %i.cc, %i.az
  br i1 %or.cond181.not.i, label %bb.aa, label %bb.af, !prof !20

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit224.i, %bb.k, %._crit_edge457.i
  %.sroa.0149.0.i = phi i64 [ %i.p, %._crit_edge457.i ], [ %i.ah, %bb.k ], [ %i.ah, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit224.i ] ; 2 uses
  %i.cd = phi <4 x float> [ %i.bu, %._crit_edge457.i ], [ %i.bu, %bb.k ], [ %i.ee, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit224.i ]
  %i.ce = icmp ult i64 %.sroa.0149.0.i, %i.h
  br i1 %i.ce, label %.lr.ph477.i, label %.loopexit.i

bb.j:                                             ; preds = %._crit_edge457.i
  %.not169.i = icmp ugt i64 %i.ak, %i.az
  %or.cond178.i = or i1 %i.am, %.not169.i
  br i1 %or.cond178.i, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.aj ; 2 uses
  %i.cg = sub nuw i64 %i.bc, %i.aj
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.al ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ao
  %i.cj = lshr i64 %i.bc, 2
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.cj
  %i.cl = lshr i64 %i.cg, 2
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !410
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutAhj4_EINtBZ_4IterB1p_EEINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.ck)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cm), !noalias !411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !410
  %.sroa.0258.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !402 ; 2 uses
  %.sroa.4260.0.copyload.i = load ptr, ptr %.sroa.4260.0..sroa_idx.i, align 8, !noalias !402 ; 2 uses
  %.sroa.5262.0.copyload.i = load i64, ptr %.sroa.5262.0..sroa_idx.i, align 8, !noalias !402
  %.sroa.6264.0.copyload.i = load ptr, ptr %.sroa.6264.0..sroa_idx.i, align 8, !noalias !402 ; 2 uses
  %.sroa.7266.0.copyload.i = load i64, ptr %.sroa.7266.0..sroa_idx.i, align 8, !noalias !402 ; 2 uses
  %.sroa.9267.0.copyload.i = load i64, ptr %.sroa.9267.0..sroa_idx.i, align 8, !noalias !402 ; 2 uses
  %i.cn = icmp ult i64 %.sroa.7266.0.copyload.i, %.sroa.9267.0.copyload.i
  br i1 %i.cn, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0258.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4260.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6264.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.al, i64 noundef %i.ak, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit224.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.7266.0462.i = phi i64 [ %.sroa.7266.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.cp, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit224.i ] ; 3 uses
  %i.co = phi <4 x float> [ %i.bu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.ee, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit224.i ] ; 5 uses
  %i.cp = add i64 %.sroa.7266.0462.i, 1           ; 2 uses
  %i.cq = add i64 %.sroa.7266.0462.i, %.sroa.5262.0.copyload.i ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0258.0.copyload.i, i64 %i.cq ; 4 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4260.0.copyload.i, i64 %i.cq
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6264.0.copyload.i, i64 %.sroa.7266.0462.i
  %i.cu = extractelement <4 x float> %i.co, i64 0
  %i.cv = fmul float %i.s, %i.cu
  %i.cw = call float @llvm.round.f32(float %i.cv)
  %i.cx = call nsz float @llvm.minimumnum.f32(float %i.cw, float 2.550000e+02)
  %i.cy = call nsz float @llvm.maximumnum.f32(float %i.cx, float 0.000000e+00) ; 2 uses
  %i.cz = fcmp olt float %i.cy, 2.560000e+02
  br i1 %i.cz, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i, label %bb.m, !prof !19

bb.m:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.da = fptoui float %i.cy to i8
  store i8 %i.da, ptr %i.cr, align 1
  %i.db = extractelement <4 x float> %i.co, i64 1
  %i.dc = fmul float %i.s, %i.db
  %i.dd = call float @llvm.round.f32(float %i.dc)
  %i.de = call nsz float @llvm.minimumnum.f32(float %i.dd, float 2.550000e+02)
  %i.df = call nsz float @llvm.maximumnum.f32(float %i.de, float 0.000000e+00) ; 2 uses
  %i.dg = fcmp olt float %i.df, 2.560000e+02
  br i1 %i.dg, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit222.i, label %bb.n, !prof !19

bb.n:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit222.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i
  %i.dh = fptoui float %i.df to i8
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store i8 %i.dh, ptr %i.di, align 1
  %i.dj = extractelement <4 x float> %i.co, i64 2
  %i.dk = fmul float %i.s, %i.dj
  %i.dl = call float @llvm.round.f32(float %i.dk)
  %i.dm = call nsz float @llvm.minimumnum.f32(float %i.dl, float 2.550000e+02)
  %i.dn = call nsz float @llvm.maximumnum.f32(float %i.dm, float 0.000000e+00) ; 2 uses
  %i.do = fcmp olt float %i.dn, 2.560000e+02
  br i1 %i.do, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit223.i, label %bb.o, !prof !19

bb.o:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit222.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit223.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit222.i
  %i.dp = fptoui float %i.dn to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i8 %i.dp, ptr %i.dq, align 1
  %i.dr = extractelement <4 x float> %i.co, i64 3
  %i.ds = fmul float %i.s, %i.dr
  %i.dt = call float @llvm.round.f32(float %i.ds)
  %i.du = call nsz float @llvm.minimumnum.f32(float %i.dt, float 2.550000e+02)
  %i.dv = call nsz float @llvm.maximumnum.f32(float %i.du, float 0.000000e+00) ; 2 uses
  %i.dw = fcmp olt float %i.dv, 2.560000e+02
  br i1 %i.dw, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit224.i, label %bb.p, !prof !19

bb.p:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit223.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit224.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit223.i
  %i.dx = fptoui float %i.dv to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  store i8 %i.dx, ptr %i.dy, align 1
  %i.dz = load <4 x i8>, ptr %i.ct, align 1
  %i.ea = uitofp <4 x i8> %i.dz to <4 x float>
  %i.eb = fadd <4 x float> %i.co, %i.ea
  %i.ec = load <4 x i8>, ptr %i.cs, align 1
  %i.ed = uitofp <4 x i8> %i.ec to <4 x float>
  %i.ee = fsub <4 x float> %i.eb, %i.ed           ; 2 uses
  %exitcond593.not.i = icmp eq i64 %i.cp, %.sroa.9267.0.copyload.i
  br i1 %exitcond593.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.lr.ph477.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %bb.z
  %.sroa.0149.1472.i = phi i64 [ %i.eg, %bb.z ], [ %.sroa.0149.0.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ] ; 4 uses
  %i.ef = phi <4 x float> [ %i.gd, %bb.z ], [ %i.cd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ] ; 5 uses
  %i.eg = add i64 %.sroa.0149.1472.i, 1           ; 2 uses
  %i.eh = add nuw i64 %.sroa.0149.1472.i, %i.q
  %..i225.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %i.eh)
  %i.ei = shl nuw nsw i64 %..i225.i, 2            ; 4 uses
  %i.ej = sub nsw i64 %.sroa.0149.1472.i, %i.p
  %..i226.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ej, i64 0)
  %i.ek = shl i64 %..i226.i, 2                    ; 4 uses
  %i.el = shl nuw nsw i64 %.sroa.0149.1472.i, 2   ; 3 uses
  %i.em = add nuw nsw i64 %i.el, 4                ; 2 uses
  %.not171.i = icmp ugt i64 %i.em, %i.az
  br i1 %.not171.i, label %bb.v, label %bb.q, !prof !12

bb.q:                                             ; preds = %.lr.ph477.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.el ; 4 uses
  %i.eo = extractelement <4 x float> %i.ef, i64 0
  %i.ep = fmul float %i.s, %i.eo
  %i.eq = call float @llvm.round.f32(float %i.ep)
  %i.er = call nsz float @llvm.minimumnum.f32(float %i.eq, float 2.550000e+02)
  %i.es = call nsz float @llvm.maximumnum.f32(float %i.er, float 0.000000e+00) ; 2 uses
  %i.et = fcmp olt float %i.es, 2.560000e+02
  br i1 %i.et, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit227.i, label %bb.r, !prof !19

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit227.i: ; preds = %bb.q
  %i.eu = fptoui float %i.es to i8
  store i8 %i.eu, ptr %i.en, align 1
  %i.ev = extractelement <4 x float> %i.ef, i64 1
  %i.ew = fmul float %i.s, %i.ev
  %i.ex = call float @llvm.round.f32(float %i.ew)
  %i.ey = call nsz float @llvm.minimumnum.f32(float %i.ex, float 2.550000e+02)
  %i.ez = call nsz float @llvm.maximumnum.f32(float %i.ey, float 0.000000e+00) ; 2 uses
  %i.fa = fcmp olt float %i.ez, 2.560000e+02
  br i1 %i.fa, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit228.i, label %bb.s, !prof !19

bb.s:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit227.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit228.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit227.i
  %i.fb = fptoui float %i.ez to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  store i8 %i.fb, ptr %i.fc, align 1
  %i.fd = extractelement <4 x float> %i.ef, i64 2
  %i.fe = fmul float %i.s, %i.fd
  %i.ff = call float @llvm.round.f32(float %i.fe)
  %i.fg = call nsz float @llvm.minimumnum.f32(float %i.ff, float 2.550000e+02)
  %i.fh = call nsz float @llvm.maximumnum.f32(float %i.fg, float 0.000000e+00) ; 2 uses
  %i.fi = fcmp olt float %i.fh, 2.560000e+02
  br i1 %i.fi, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit229.i, label %bb.t, !prof !19

bb.t:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit228.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit229.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit228.i
  %i.fj = fptoui float %i.fh to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  store i8 %i.fj, ptr %i.fk, align 1
  %i.fl = extractelement <4 x float> %i.ef, i64 3
  %i.fm = fmul float %i.s, %i.fl
  %i.fn = call float @llvm.round.f32(float %i.fm)
  %i.fo = call nsz float @llvm.minimumnum.f32(float %i.fn, float 2.550000e+02)
  %i.fp = call nsz float @llvm.maximumnum.f32(float %i.fo, float 0.000000e+00) ; 2 uses
  %i.fq = fcmp olt float %i.fp, 2.560000e+02
  br i1 %i.fq, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit230.i, label %bb.u, !prof !19

bb.u:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit229.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit230.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit229.i
  %i.fr = fptoui float %i.fp to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  store i8 %i.fr, ptr %i.fs, align 1
  %i.ft = or disjoint i64 %i.ei, 3
  %or.cond179.not.i = icmp ult i64 %i.ft, %i.bc
  br i1 %or.cond179.not.i, label %bb.x, label %bb.w, !prof !20

bb.v:                                             ; preds = %.lr.ph477.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.el, i64 noundef %i.em, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
  unreachable

bb.w:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit230.i
  %i.fu = add nuw nsw i64 %i.ei, 4
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ei, i64 noundef %i.fu, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20
  unreachable

bb.x:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit230.i
  %or.cond180.not.i = icmp ult i64 %i.ek, %invariant.op629.i
  br i1 %or.cond180.not.i, label %bb.z, label %bb.y, !prof !20

bb.y:                                             ; preds = %bb.x
  %i.fv = add i64 %i.ek, 4
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ek, i64 noundef %i.fv, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ei
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ek
  %i.fy = load <4 x i8>, ptr %i.fw, align 1
  %i.fz = uitofp <4 x i8> %i.fy to <4 x float>
  %i.ga = fadd <4 x float> %i.ef, %i.fz
  %i.gb = load <4 x i8>, ptr %i.fx, align 1
  %i.gc = uitofp <4 x i8> %i.gb to <4 x float>
  %i.gd = fsub <4 x float> %i.ga, %i.gc
  %exitcond594.not.i = icmp eq i64 %i.eg, %i.h
  br i1 %exitcond594.not.i, label %.loopexit.i, label %.lr.ph477.i

end_hunk_6
begin_hunk_7_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur33box_blur_horizontal_pass_strategyINtNtB6_5color4RgbatEtEB6_:bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.u, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !430
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !430
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.v, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !430
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %5, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !429
  store ptr %0, ptr %i.b, align 8, !alias.scope !431, !noalias !432
  %.sroa.4236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.y, ptr %.sroa.4236.0..sroa_idx.i, align 8, !alias.scope !431, !noalias !432
  %.sroa.5237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.z, ptr %.sroa.5237.0..sroa_idx.i, align 8, !alias.scope !431, !noalias !432
  %.sroa.6238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.x, ptr %.sroa.6238.0..sroa_idx.i, align 8, !alias.scope !431, !noalias !432
  %.sroa.7239.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %2, ptr %.sroa.7239.0..sroa_idx.i, align 8, !alias.scope !431, !noalias !432
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b), !noalias !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !428
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !434, !noalias !428, !noundef !5 ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !434, !noalias !428, !noundef !5
  %i.ae = icmp ult i64 %i.ac, %i.ad
  br i1 %i.ae, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_impltKj4_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i
  %i.af = uitofp i64 %i.q to float
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %..i216.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %i.p)
  %i.ah = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 %i.q) ; 4 uses
  %i.ai = shl i64 %7, 3
  %i.aj = or disjoint i64 %i.ai, 4                ; 3 uses
  %i.ak = shl nuw nsw i64 %i.ah, 2                ; 4 uses
  %invariant.umax.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ak)
  %i.al = shl i64 %7, 2                           ; 3 uses
  %i.am = icmp ult i64 %i.ak, %i.al
  %i.an = sub i64 %i.ah, %7
  %i.ao = and i64 %i.an, 4611686018427387903
  %.sroa.4260.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.7266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.9267.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ap = insertelement <4 x float> poison, float %i.af, i64 0
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> zeroinitializer
  %xtraiter = and i64 %7, 1
  %i.ar = icmp eq i64 %i.p, 1                     ; 0 uses
  %unroll_iter = and i64 %7, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod586 = trunc i64 %7 to i1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.loopexit.i:                                      ; preds = %bb.z, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i
  %i.as = load i64, ptr %i.aa, align 8, !alias.scope !434, !noalias !428, !noundef !5 ; 2 uses
  %i.at = load i64, ptr %i.ab, align 8, !alias.scope !434, !noalias !428, !noundef !5
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_impltKj4_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %i.av = phi i64 [ %i.ac, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.as, %.loopexit.i ] ; 3 uses
  %i.aw = add nuw i64 %i.av, 1
  store i64 %i.aw, ptr %i.aa, align 8, !alias.scope !434, !noalias !428
  %i.ax = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuttENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.f, i64 noundef %i.av), !noalias !435 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0      ; 4 uses
  %i.az = extractvalue { ptr, i64 } %i.ax, 1      ; 6 uses
  %i.ba = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacttENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag, i64 noundef %i.av), !noalias !435 ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.ba, 0      ; 12 uses
  %i.bc = extractvalue { ptr, i64 } %i.ba, 1      ; 17 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_impltKj4_EB6_.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  %i.bd = icmp ugt i64 %i.bc, 3
  br i1 %i.bd, label %bb.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.be = load <4 x i16>, ptr %i.bb, align 2
  %i.bf = uitofp <4 x i16> %i.be to <4 x float>
  %i.bg = fmul nnan <4 x float> %i.aq, %i.bf      ; 3 uses
  switch i64 %i.p, label %.lr.ph.i.preheader.new [
    i64 0, label %._crit_edge.thread.i
    i64 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.i
  %invariant.op = sub nuw i64 %i.bc, 3
  br label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.i
  %invariant.op628.i = add i64 %i.bc, -3
  br label %._crit_edge457.i

.lr.ph.i:                                         ; preds = %bb.ak, %.lr.ph.i.preheader.new
  %.sroa.0243.0442.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %i.id, %bb.ak ] ; 3 uses
  %i.bh = phi <4 x float> [ %i.bg, %.lr.ph.i.preheader.new ], [ %i.ih, %bb.ak ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.ak ]
  %..i.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %.sroa.0243.0442.i)
  %i.bi = shl nuw nsw i64 %..i.i, 2               ; 3 uses
  %i.bj = or disjoint i64 %i.bi, 3
  %or.cond184.not.i = icmp ult i64 %i.bj, %i.bc
  br i1 %or.cond184.not.i, label %.lr.ph.i.1, label %.loopexit, !prof !20

.lr.ph456.preheader.i.unr-lcssa:                  ; preds = %bb.ak
  br i1 %lcmp.mod.not, label %.lr.ph456.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.i, %.lr.ph456.preheader.i.unr-lcssa
  %.sroa.0243.0442.i.epil.init = phi i64 [ 1, %bb.i ], [ %i.id, %.lr.ph456.preheader.i.unr-lcssa ]
  %.epil.init = phi <4 x float> [ %i.bg, %bb.i ], [ %i.ih, %.lr.ph456.preheader.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod586)
  %..i.i.epil = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %.sroa.0243.0442.i.epil.init)
  %i.bk = shl nuw nsw i64 %..i.i.epil, 2          ; 3 uses
  %i.bl = or disjoint i64 %i.bk, 3
  %or.cond184.not.i.epil = icmp ult i64 %i.bl, %i.bc
  br i1 %or.cond184.not.i.epil, label %.lr.ph456.preheader.i.epilog-lcssa, label %.loopexit, !prof !20

.lr.ph456.preheader.i.epilog-lcssa:               ; preds = %.lr.ph.i.epil.preheader
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.bk
  %i.bn = load <4 x i16>, ptr %i.bm, align 2
  %i.bo = uitofp <4 x i16> %i.bn to <4 x float>
  %i.bp = fadd <4 x float> %.epil.init, %i.bo
  br label %.lr.ph456.preheader.i

.lr.ph456.preheader.i:                            ; preds = %.lr.ph456.preheader.i.unr-lcssa, %.lr.ph456.preheader.i.epilog-lcssa
  %.lcssa482 = phi <4 x float> [ %i.ih, %.lr.ph456.preheader.i.unr-lcssa ], [ %i.bp, %.lr.ph456.preheader.i.epilog-lcssa ] ; 5 uses
  %invariant.op.i = add i64 %i.bc, -3             ; 2 uses
  %i.bq = extractelement <4 x float> %.lcssa482, i64 0
  %i.br = extractelement <4 x float> %.lcssa482, i64 1
  %i.bs = extractelement <4 x float> %.lcssa482, i64 2
  %i.bt = extractelement <4 x float> %.lcssa482, i64 3
  br label %.lr.ph456.i

._crit_edge457.i:                                 ; preds = %bb.aj, %._crit_edge.thread.i
  %invariant.op629.i = phi i64 [ %invariant.op628.i, %._crit_edge.thread.i ], [ %invariant.op.i, %bb.aj ]
  %i.bu = phi <4 x float> [ %i.bg, %._crit_edge.thread.i ], [ %i.hr, %bb.aj ] ; 3 uses
  %or.cond.i = icmp ugt i64 %i.bc, %invariant.umax.i
  br i1 %or.cond.i, label %bb.j, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

.lr.ph456.i:                                      ; preds = %bb.aj, %.lr.ph456.preheader.i
  %.sroa.0.1454.i = phi float [ %i.hu, %bb.aj ], [ %i.br, %.lr.ph456.preheader.i ]
  %.sroa.011.1453.i = phi float [ %i.ht, %bb.aj ], [ %i.bs, %.lr.ph456.preheader.i ]
  %.sroa.021.1452.i = phi float [ %i.hs, %bb.aj ], [ %i.bt, %.lr.ph456.preheader.i ]
  %.sroa.031.1451.i = phi float [ %i.hv, %bb.aj ], [ %i.bq, %.lr.ph456.preheader.i ]
  %.sroa.0144.0450.i = phi i64 [ %i.bw, %bb.aj ], [ 0, %.lr.ph456.preheader.i ] ; 4 uses
  %i.bv = phi <4 x float> [ %i.hr, %bb.aj ], [ %.lcssa482, %.lr.ph456.preheader.i ]
  %i.bw = add nuw nsw i64 %.sroa.0144.0450.i, 1   ; 2 uses
  %i.bx = add nuw i64 %.sroa.0144.0450.i, %i.q
  %..i217.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %i.bx)
  %i.by = shl nuw nsw i64 %..i217.i, 2            ; 4 uses
  %i.bz = sub nsw i64 %.sroa.0144.0450.i, %i.p
  %..i218.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bz, i64 0)
  %i.ca = shl i64 %..i218.i, 2                    ; 4 uses
  %i.cb = shl nuw nsw i64 %.sroa.0144.0450.i, 2   ; 4 uses
  %i.cc = or disjoint i64 %i.cb, 3
  %or.cond181.not.i = icmp ult i64 %i.cc, %i.az
  br i1 %or.cond181.not.i, label %bb.aa, label %bb.af, !prof !20

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit224.i, %bb.k, %._crit_edge457.i
  %.sroa.0149.0.i = phi i64 [ %i.p, %._crit_edge457.i ], [ %i.ah, %bb.k ], [ %i.ah, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit224.i ] ; 2 uses
  %i.cd = phi <4 x float> [ %i.bu, %._crit_edge457.i ], [ %i.bu, %bb.k ], [ %i.ee, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit224.i ]
  %i.ce = icmp ult i64 %.sroa.0149.0.i, %i.h
  br i1 %i.ce, label %.lr.ph477.i, label %.loopexit.i

bb.j:                                             ; preds = %._crit_edge457.i
  %.not169.i = icmp ugt i64 %i.ak, %i.az
  %or.cond178.i = or i1 %i.am, %.not169.i
  br i1 %or.cond178.i, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.aj ; 2 uses
  %i.cg = sub nuw i64 %i.bc, %i.aj
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.al ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ao
  %i.cj = lshr i64 %i.bc, 2
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.cj
  %i.cl = lshr i64 %i.cg, 2
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !436
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutAtj4_EINtBZ_4IterB1p_EEINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.ck)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cm), !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !436
  %.sroa.0258.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !428 ; 2 uses
  %.sroa.4260.0.copyload.i = load ptr, ptr %.sroa.4260.0..sroa_idx.i, align 8, !noalias !428 ; 2 uses
  %.sroa.5262.0.copyload.i = load i64, ptr %.sroa.5262.0..sroa_idx.i, align 8, !noalias !428
  %.sroa.6264.0.copyload.i = load ptr, ptr %.sroa.6264.0..sroa_idx.i, align 8, !noalias !428 ; 2 uses
  %.sroa.7266.0.copyload.i = load i64, ptr %.sroa.7266.0..sroa_idx.i, align 8, !noalias !428 ; 2 uses
  %.sroa.9267.0.copyload.i = load i64, ptr %.sroa.9267.0..sroa_idx.i, align 8, !noalias !428 ; 2 uses
  %i.cn = icmp ult i64 %.sroa.7266.0.copyload.i, %.sroa.9267.0.copyload.i
  br i1 %i.cn, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0258.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4260.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6264.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.al, i64 noundef %i.ak, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit224.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.7266.0462.i = phi i64 [ %.sroa.7266.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.cp, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit224.i ] ; 3 uses
  %i.co = phi <4 x float> [ %i.bu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.ee, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit224.i ] ; 5 uses
  %i.cp = add i64 %.sroa.7266.0462.i, 1           ; 2 uses
  %i.cq = add i64 %.sroa.7266.0462.i, %.sroa.5262.0.copyload.i ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0258.0.copyload.i, i64 %i.cq ; 4 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4260.0.copyload.i, i64 %i.cq
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6264.0.copyload.i, i64 %.sroa.7266.0462.i
  %i.cu = extractelement <4 x float> %i.co, i64 0
  %i.cv = fmul float %i.s, %i.cu
  %i.cw = call float @llvm.round.f32(float %i.cv)
  %i.cx = call nsz float @llvm.minimumnum.f32(float %i.cw, float 6.553500e+04)
  %i.cy = call nsz float @llvm.maximumnum.f32(float %i.cx, float 0.000000e+00) ; 2 uses
  %i.cz = fcmp olt float %i.cy, 6.553600e+04
  br i1 %i.cz, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i, label %bb.m, !prof !19

bb.m:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.da = fptoui float %i.cy to i16
  store i16 %i.da, ptr %i.cr, align 2
  %i.db = extractelement <4 x float> %i.co, i64 1
  %i.dc = fmul float %i.s, %i.db
  %i.dd = call float @llvm.round.f32(float %i.dc)
  %i.de = call nsz float @llvm.minimumnum.f32(float %i.dd, float 6.553500e+04)
  %i.df = call nsz float @llvm.maximumnum.f32(float %i.de, float 0.000000e+00) ; 2 uses
  %i.dg = fcmp olt float %i.df, 6.553600e+04
  br i1 %i.dg, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit222.i, label %bb.n, !prof !19

bb.n:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit222.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i
  %i.dh = fptoui float %i.df to i16
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i16 %i.dh, ptr %i.di, align 2
  %i.dj = extractelement <4 x float> %i.co, i64 2
  %i.dk = fmul float %i.s, %i.dj
  %i.dl = call float @llvm.round.f32(float %i.dk)
  %i.dm = call nsz float @llvm.minimumnum.f32(float %i.dl, float 6.553500e+04)
  %i.dn = call nsz float @llvm.maximumnum.f32(float %i.dm, float 0.000000e+00) ; 2 uses
  %i.do = fcmp olt float %i.dn, 6.553600e+04
  br i1 %i.do, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit223.i, label %bb.o, !prof !19

bb.o:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit222.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit223.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit222.i
  %i.dp = fptoui float %i.dn to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i16 %i.dp, ptr %i.dq, align 2
  %i.dr = extractelement <4 x float> %i.co, i64 3
  %i.ds = fmul float %i.s, %i.dr
  %i.dt = call float @llvm.round.f32(float %i.ds)
  %i.du = call nsz float @llvm.minimumnum.f32(float %i.dt, float 6.553500e+04)
  %i.dv = call nsz float @llvm.maximumnum.f32(float %i.du, float 0.000000e+00) ; 2 uses
  %i.dw = fcmp olt float %i.dv, 6.553600e+04
  br i1 %i.dw, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit224.i, label %bb.p, !prof !19

bb.p:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit223.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit224.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit223.i
  %i.dx = fptoui float %i.dv to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cr, i64 6
  store i16 %i.dx, ptr %i.dy, align 2
  %i.dz = load <4 x i16>, ptr %i.ct, align 2
  %i.ea = uitofp <4 x i16> %i.dz to <4 x float>
  %i.eb = fadd <4 x float> %i.co, %i.ea
  %i.ec = load <4 x i16>, ptr %i.cs, align 2
  %i.ed = uitofp <4 x i16> %i.ec to <4 x float>
  %i.ee = fsub <4 x float> %i.eb, %i.ed           ; 2 uses
  %exitcond593.not.i = icmp eq i64 %i.cp, %.sroa.9267.0.copyload.i
  br i1 %exitcond593.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.lr.ph477.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %bb.z
  %.sroa.0149.1472.i = phi i64 [ %i.eg, %bb.z ], [ %.sroa.0149.0.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ] ; 4 uses
  %i.ef = phi <4 x float> [ %i.gd, %bb.z ], [ %i.cd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj4_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ] ; 5 uses
  %i.eg = add i64 %.sroa.0149.1472.i, 1           ; 2 uses
  %i.eh = add nuw i64 %.sroa.0149.1472.i, %i.q
  %..i225.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %i.eh)
  %i.ei = shl nuw nsw i64 %..i225.i, 2            ; 4 uses
  %i.ej = sub nsw i64 %.sroa.0149.1472.i, %i.p
  %..i226.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ej, i64 0)
  %i.ek = shl i64 %..i226.i, 2                    ; 4 uses
  %i.el = shl nuw nsw i64 %.sroa.0149.1472.i, 2   ; 3 uses
  %i.em = add nuw nsw i64 %i.el, 4                ; 2 uses
  %.not171.i = icmp ugt i64 %i.em, %i.az
  br i1 %.not171.i, label %bb.v, label %bb.q, !prof !12

bb.q:                                             ; preds = %.lr.ph477.i
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.el ; 4 uses
  %i.eo = extractelement <4 x float> %i.ef, i64 0
  %i.ep = fmul float %i.s, %i.eo
  %i.eq = call float @llvm.round.f32(float %i.ep)
  %i.er = call nsz float @llvm.minimumnum.f32(float %i.eq, float 6.553500e+04)
  %i.es = call nsz float @llvm.maximumnum.f32(float %i.er, float 0.000000e+00) ; 2 uses
  %i.et = fcmp olt float %i.es, 6.553600e+04
  br i1 %i.et, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit227.i, label %bb.r, !prof !19

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit227.i: ; preds = %bb.q
  %i.eu = fptoui float %i.es to i16
  store i16 %i.eu, ptr %i.en, align 2
  %i.ev = extractelement <4 x float> %i.ef, i64 1
  %i.ew = fmul float %i.s, %i.ev
  %i.ex = call float @llvm.round.f32(float %i.ew)
  %i.ey = call nsz float @llvm.minimumnum.f32(float %i.ex, float 6.553500e+04)
  %i.ez = call nsz float @llvm.maximumnum.f32(float %i.ey, float 0.000000e+00) ; 2 uses
  %i.fa = fcmp olt float %i.ez, 6.553600e+04
  br i1 %i.fa, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit228.i, label %bb.s, !prof !19

bb.s:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit227.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit228.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit227.i
  %i.fb = fptoui float %i.ez to i16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  store i16 %i.fb, ptr %i.fc, align 2
  %i.fd = extractelement <4 x float> %i.ef, i64 2
  %i.fe = fmul float %i.s, %i.fd
  %i.ff = call float @llvm.round.f32(float %i.fe)
  %i.fg = call nsz float @llvm.minimumnum.f32(float %i.ff, float 6.553500e+04)
  %i.fh = call nsz float @llvm.maximumnum.f32(float %i.fg, float 0.000000e+00) ; 2 uses
  %i.fi = fcmp olt float %i.fh, 6.553600e+04
  br i1 %i.fi, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit229.i, label %bb.t, !prof !19

bb.t:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit228.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit229.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit228.i
  %i.fj = fptoui float %i.fh to i16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i16 %i.fj, ptr %i.fk, align 2
  %i.fl = extractelement <4 x float> %i.ef, i64 3
  %i.fm = fmul float %i.s, %i.fl
  %i.fn = call float @llvm.round.f32(float %i.fm)
  %i.fo = call nsz float @llvm.minimumnum.f32(float %i.fn, float 6.553500e+04)
  %i.fp = call nsz float @llvm.maximumnum.f32(float %i.fo, float 0.000000e+00) ; 2 uses
  %i.fq = fcmp olt float %i.fp, 6.553600e+04
  br i1 %i.fq, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit230.i, label %bb.u, !prof !19

bb.u:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit229.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit230.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit229.i
  %i.fr = fptoui float %i.fp to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.en, i64 6
  store i16 %i.fr, ptr %i.fs, align 2
  %i.ft = or disjoint i64 %i.ei, 3
  %or.cond179.not.i = icmp ult i64 %i.ft, %i.bc
  br i1 %or.cond179.not.i, label %bb.x, label %bb.w, !prof !20

bb.v:                                             ; preds = %.lr.ph477.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.el, i64 noundef %i.em, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
  unreachable

bb.w:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit230.i
  %i.fu = add nuw nsw i64 %i.ei, 4
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ei, i64 noundef %i.fu, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20
  unreachable

bb.x:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit230.i
  %or.cond180.not.i = icmp ult i64 %i.ek, %invariant.op629.i
  br i1 %or.cond180.not.i, label %bb.z, label %bb.y, !prof !20

bb.y:                                             ; preds = %bb.x
  %i.fv = add i64 %i.ek, 4
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ek, i64 noundef %i.fv, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.ei
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.ek
  %i.fy = load <4 x i16>, ptr %i.fw, align 2
  %i.fz = uitofp <4 x i16> %i.fy to <4 x float>
  %i.ga = fadd <4 x float> %i.ef, %i.fz
  %i.gb = load <4 x i16>, ptr %i.fx, align 2
  %i.gc = uitofp <4 x i16> %i.gb to <4 x float>
  %i.gd = fsub <4 x float> %i.ga, %i.gc
  %exitcond594.not.i = icmp eq i64 %i.eg, %i.h
  br i1 %exitcond594.not.i, label %.loopexit.i, label %.lr.ph477.i

end_hunk_7
begin_hunk_8_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur33box_blur_horizontal_pass_strategyINtNtB6_5color5LumaAhEhEB6_:bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d) #22
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.i, ptr %i.m, align 8, !noalias !454
  store i8 -1, ptr %i.d, align 8, !noalias !454
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !454
  %i.n = shl i64 %7, 1
  %i.o = or disjoint i64 %i.n, 1
  %i.p = and i64 %7, 9223372036854775807          ; 8 uses
  %i.q = add nuw i64 %i.p, 1                      ; 4 uses
  %i.r = uitofp i64 %i.o to float
  %i.s = fdiv float 1.000000e+00, %i.r            ; 6 uses
  %i.t = add nsw i64 %i.h, -1                     ; 6 uses
  %i.u = urem i64 %4, %5                          ; 2 uses
  %i.v = sub nuw nsw i64 %4, %i.u                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %i.v
  %i.x = urem i64 %1, %2                          ; 2 uses
  %i.y = sub nuw nsw i64 %1, %i.x                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !455
  store ptr %i.w, ptr %i.c, align 8, !noalias !456
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.u, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !456
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !456
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.v, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !456
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %5, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !455
  store ptr %0, ptr %i.b, align 8, !alias.scope !457, !noalias !458
  %.sroa.4148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.y, ptr %.sroa.4148.0..sroa_idx.i, align 8, !alias.scope !457, !noalias !458
  %.sroa.5149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.z, ptr %.sroa.5149.0..sroa_idx.i, align 8, !alias.scope !457, !noalias !458
  %.sroa.6150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.x, ptr %.sroa.6150.0..sroa_idx.i, align 8, !alias.scope !457, !noalias !458
  %.sroa.7151.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %2, ptr %.sroa.7151.0..sroa_idx.i, align 8, !alias.scope !457, !noalias !458
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b), !noalias !459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !454
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !460, !noalias !454, !noundef !5 ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !460, !noalias !454, !noundef !5
  %i.ae = icmp ult i64 %i.ac, %i.ad
  br i1 %i.ae, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implhKj2_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i
  %i.af = uitofp i64 %i.q to float
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %..i134.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %i.p)
  %i.ah = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 %i.q) ; 4 uses
  %i.ai = shl nuw i64 %i.p, 1                     ; 3 uses
  %i.aj = shl i64 %7, 2
  %i.ak = or disjoint i64 %i.aj, 2                ; 3 uses
  %i.al = shl nuw nsw i64 %i.ah, 1                ; 4 uses
  %invariant.umax.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 %i.al)
  %i.am = icmp ult i64 %i.al, %i.ai
  %i.an = sub i64 %i.ah, %7
  %i.ao = and i64 %i.an, 9223372036854775807
  %.sroa.4172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5174.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6176.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.7178.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.9179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ap = insertelement <2 x float> poison, float %i.af, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %xtraiter = and i64 %7, 1
  %i.ar = icmp eq i64 %i.p, 1                     ; 0 uses
  %unroll_iter = and i64 %7, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod447 = trunc i64 %7 to i1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.loopexit.i:                                      ; preds = %bb.v, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i
  %i.as = load i64, ptr %i.aa, align 8, !alias.scope !460, !noalias !454, !noundef !5 ; 2 uses
  %i.at = load i64, ptr %i.ab, align 8, !alias.scope !460, !noalias !454, !noundef !5
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implhKj2_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %i.av = phi i64 [ %i.ac, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.as, %.loopexit.i ] ; 3 uses
  %i.aw = add nuw i64 %i.av, 1
  store i64 %i.aw, ptr %i.aa, align 8, !alias.scope !460, !noalias !454
  %i.ax = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.f, i64 noundef %i.av), !noalias !461 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0      ; 4 uses
  %i.az = extractvalue { ptr, i64 } %i.ax, 1      ; 6 uses
  %i.ba = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag, i64 noundef %i.av), !noalias !461 ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.ba, 0      ; 12 uses
  %i.bc = extractvalue { ptr, i64 } %i.ba, 1      ; 17 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implhKj2_EB6_.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  %i.bd = icmp ugt i64 %i.bc, 1
  br i1 %i.bd, label %bb.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 2, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.be = load <2 x i8>, ptr %i.bb, align 1
  %i.bf = uitofp <2 x i8> %i.be to <2 x float>
  %i.bg = fmul nnan <2 x float> %i.aq, %i.bf      ; 3 uses
  switch i64 %i.p, label %.lr.ph.i.preheader.new [
    i64 0, label %._crit_edge301.i
    i64 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.i
  %invariant.op = sub nuw i64 %i.bc, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ae, %.lr.ph.i.preheader.new
  %.sroa.0155.0292.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %i.fy, %bb.ae ] ; 3 uses
  %i.bh = phi <2 x float> [ %i.bg, %.lr.ph.i.preheader.new ], [ %i.gc, %bb.ae ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.ae ]
  %..i.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %.sroa.0155.0292.i)
  %i.bi = shl nuw nsw i64 %..i.i, 1               ; 3 uses
  %i.bj = or disjoint i64 %i.bi, 1
  %or.cond118.not.i = icmp ult i64 %i.bj, %i.bc
  br i1 %or.cond118.not.i, label %.lr.ph.i.1, label %.loopexit, !prof !20

._crit_edge301.i:                                 ; preds = %bb.ad, %bb.i
  %i.bk = phi <2 x float> [ %i.bg, %bb.i ], [ %i.fo, %bb.ad ] ; 3 uses
  %or.cond.i = icmp ugt i64 %i.bc, %invariant.umax.i
  br i1 %or.cond.i, label %bb.j, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

.lr.ph300.i:                                      ; preds = %.lr.ph300.i.preheader, %bb.ad
  %.sroa.0.1298.i = phi float [ %i.fp, %bb.ad ], [ %.lcssa361, %.lr.ph300.i.preheader ]
  %.sroa.013.1297.i = phi float [ %i.fq, %bb.ad ], [ %.lcssa362, %.lr.ph300.i.preheader ]
  %.sroa.078.0296.i = phi i64 [ %i.bm, %bb.ad ], [ 0, %.lr.ph300.i.preheader ] ; 4 uses
  %i.bl = phi <2 x float> [ %i.fo, %bb.ad ], [ %.lcssa363, %.lr.ph300.i.preheader ]
  %i.bm = add nuw nsw i64 %.sroa.078.0296.i, 1    ; 2 uses
  %i.bn = add nuw i64 %.sroa.078.0296.i, %i.q
  %..i135.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %i.bn)
  %i.bo = shl nuw nsw i64 %..i135.i, 1            ; 4 uses
  %i.bp = sub nsw i64 %.sroa.078.0296.i, %i.p
  %..i136.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bp, i64 0)
  %i.bq = shl nuw i64 %..i136.i, 1                ; 3 uses
  %i.br = shl nuw nsw i64 %.sroa.078.0296.i, 1    ; 4 uses
  %i.bs = or disjoint i64 %i.br, 1
  %or.cond115.not.i = icmp ult i64 %i.bs, %i.az
  br i1 %or.cond115.not.i, label %bb.w, label %bb.z, !prof !20

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit140.i, %bb.k, %._crit_edge301.i
  %.sroa.083.0.i = phi i64 [ %i.p, %._crit_edge301.i ], [ %i.ah, %bb.k ], [ %i.ah, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit140.i ] ; 2 uses
  %i.bt = phi <2 x float> [ %i.bk, %._crit_edge301.i ], [ %i.bk, %bb.k ], [ %i.de, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit140.i ]
  %i.bu = icmp ult i64 %.sroa.083.0.i, %i.h
  br i1 %i.bu, label %.lr.ph312.i, label %.loopexit.i

bb.j:                                             ; preds = %._crit_edge301.i
  %.not103.i = icmp ugt i64 %i.al, %i.az
  %or.cond112.i = or i1 %i.am, %.not103.i
  br i1 %or.cond112.i, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ak ; 2 uses
  %i.bw = sub nuw i64 %i.bc, %i.ak
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ai ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.ao
  %i.bz = lshr i64 %i.bc, 1
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.bz
  %i.cb = lshr i64 %i.bw, 1
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !462
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutAhj2_EINtBZ_4IterB1p_EEINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.by, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.ca)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.cc), !noalias !463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !462
  %.sroa.0170.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !454 ; 2 uses
  %.sroa.4172.0.copyload.i = load ptr, ptr %.sroa.4172.0..sroa_idx.i, align 8, !noalias !454 ; 2 uses
  %.sroa.5174.0.copyload.i = load i64, ptr %.sroa.5174.0..sroa_idx.i, align 8, !noalias !454
  %.sroa.6176.0.copyload.i = load ptr, ptr %.sroa.6176.0..sroa_idx.i, align 8, !noalias !454 ; 2 uses
  %.sroa.7178.0.copyload.i = load i64, ptr %.sroa.7178.0..sroa_idx.i, align 8, !noalias !454 ; 2 uses
  %.sroa.9179.0.copyload.i = load i64, ptr %.sroa.9179.0..sroa_idx.i, align 8, !noalias !454 ; 2 uses
  %i.cd = icmp ult i64 %.sroa.7178.0.copyload.i, %.sroa.9179.0.copyload.i
  br i1 %i.cd, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0170.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4172.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6176.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ai, i64 noundef %i.al, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit140.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.7178.0304.i = phi i64 [ %.sroa.7178.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.cf, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit140.i ] ; 3 uses
  %i.ce = phi <2 x float> [ %i.bk, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.de, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit140.i ] ; 3 uses
  %i.cf = add i64 %.sroa.7178.0304.i, 1           ; 2 uses
  %i.cg = add i64 %.sroa.7178.0304.i, %.sroa.5174.0.copyload.i ; 2 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0170.0.copyload.i, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4172.0.copyload.i, i64 %i.cg
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6176.0.copyload.i, i64 %.sroa.7178.0304.i
  %i.ck = extractelement <2 x float> %i.ce, i64 0
  %i.cl = fmul float %i.s, %i.ck
  %i.cm = call float @llvm.round.f32(float %i.cl)
  %i.cn = call nsz float @llvm.minimumnum.f32(float %i.cm, float 2.550000e+02)
  %i.co = call nsz float @llvm.maximumnum.f32(float %i.cn, float 0.000000e+00) ; 2 uses
  %i.cp = fcmp olt float %i.co, 2.560000e+02
  br i1 %i.cp, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i, label %bb.m, !prof !19

bb.m:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.cq = fptoui float %i.co to i8
  store i8 %i.cq, ptr %i.ch, align 1
  %i.cr = extractelement <2 x float> %i.ce, i64 1
  %i.cs = fmul float %i.s, %i.cr
  %i.ct = call float @llvm.round.f32(float %i.cs)
  %i.cu = call nsz float @llvm.minimumnum.f32(float %i.ct, float 2.550000e+02)
  %i.cv = call nsz float @llvm.maximumnum.f32(float %i.cu, float 0.000000e+00) ; 2 uses
  %i.cw = fcmp olt float %i.cv, 2.560000e+02
  br i1 %i.cw, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit140.i, label %bb.n, !prof !19

bb.n:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit140.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i
  %i.cx = fptoui float %i.cv to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store i8 %i.cx, ptr %i.cy, align 1
  %i.cz = load <2 x i8>, ptr %i.cj, align 1
  %i.da = uitofp <2 x i8> %i.cz to <2 x float>
  %i.db = fadd <2 x float> %i.ce, %i.da
  %i.dc = load <2 x i8>, ptr %i.ci, align 1
  %i.dd = uitofp <2 x i8> %i.dc to <2 x float>
  %i.de = fsub <2 x float> %i.db, %i.dd           ; 2 uses
  %exitcond400.not.i = icmp eq i64 %i.cf, %.sroa.9179.0.copyload.i
  br i1 %exitcond400.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.lr.ph312.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %bb.v
  %.sroa.083.1309.i = phi i64 [ %i.dg, %bb.v ], [ %.sroa.083.0.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ] ; 4 uses
  %i.df = phi <2 x float> [ %i.eo, %bb.v ], [ %i.bt, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ] ; 3 uses
  %i.dg = add i64 %.sroa.083.1309.i, 1            ; 2 uses
  %i.dh = add nuw i64 %.sroa.083.1309.i, %i.q
  %..i141.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %i.dh)
  %i.di = shl nuw nsw i64 %..i141.i, 1            ; 4 uses
  %i.dj = sub nsw i64 %.sroa.083.1309.i, %i.p     ; 2 uses
  %..i142.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.dj, i64 0)
  %i.dk = shl nuw i64 %..i142.i, 1                ; 3 uses
  %i.dl = shl nuw nsw i64 %.sroa.083.1309.i, 1    ; 3 uses
  %i.dm = add nuw nsw i64 %i.dl, 2                ; 2 uses
  %.not105.i = icmp ugt i64 %i.dm, %i.az
  br i1 %.not105.i, label %bb.r, label %bb.o, !prof !12

bb.o:                                             ; preds = %.lr.ph312.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.dl ; 2 uses
  %i.do = extractelement <2 x float> %i.df, i64 0
  %i.dp = fmul float %i.s, %i.do
  %i.dq = call float @llvm.round.f32(float %i.dp)
  %i.dr = call nsz float @llvm.minimumnum.f32(float %i.dq, float 2.550000e+02)
  %i.ds = call nsz float @llvm.maximumnum.f32(float %i.dr, float 0.000000e+00) ; 2 uses
  %i.dt = fcmp olt float %i.ds, 2.560000e+02
  br i1 %i.dt, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit143.i, label %bb.p, !prof !19

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit143.i: ; preds = %bb.o
  %i.du = fptoui float %i.ds to i8
  store i8 %i.du, ptr %i.dn, align 1
  %i.dv = extractelement <2 x float> %i.df, i64 1
  %i.dw = fmul float %i.s, %i.dv
  %i.dx = call float @llvm.round.f32(float %i.dw)
  %i.dy = call nsz float @llvm.minimumnum.f32(float %i.dx, float 2.550000e+02)
  %i.dz = call nsz float @llvm.maximumnum.f32(float %i.dy, float 0.000000e+00) ; 2 uses
  %i.ea = fcmp olt float %i.dz, 2.560000e+02
  br i1 %i.ea, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit144.i, label %bb.q, !prof !19

bb.q:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit143.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit144.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit143.i
  %i.eb = fptoui float %i.dz to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store i8 %i.eb, ptr %i.ec, align 1
  %i.ed = or disjoint i64 %i.di, 1
  %or.cond113.not.i = icmp ult i64 %i.ed, %i.bc
  br i1 %or.cond113.not.i, label %bb.t, label %bb.s, !prof !20

bb.r:                                             ; preds = %.lr.ph312.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.dl, i64 noundef %i.dm, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
  unreachable

bb.s:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit144.i
  %i.ee = add nuw nsw i64 %i.di, 2
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.di, i64 noundef %i.ee, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20
  unreachable

bb.t:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit144.i
  %i.ef = add i64 %i.dk, 2                        ; 2 uses
  %i.eg = icmp eq i64 %i.dj, 9223372036854775807
  %.not107.i = icmp ugt i64 %i.ef, %i.bc
  %or.cond114.i = or i1 %i.eg, %.not107.i
  br i1 %or.cond114.i, label %bb.u, label %bb.v, !prof !18

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.dk, i64 noundef %i.ef, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.di
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.dk
  %i.ej = load <2 x i8>, ptr %i.eh, align 1
  %i.ek = uitofp <2 x i8> %i.ej to <2 x float>
  %i.el = fadd <2 x float> %i.df, %i.ek
  %i.em = load <2 x i8>, ptr %i.ei, align 1
  %i.en = uitofp <2 x i8> %i.em to <2 x float>
  %i.eo = fsub <2 x float> %i.el, %i.en
  %exitcond401.not.i = icmp eq i64 %i.dg, %i.h
  br i1 %exitcond401.not.i, label %.loopexit.i, label %.lr.ph312.i

bb.w:                                             ; preds = %.lr.ph300.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.br ; 2 uses
  %i.eq = fmul float %i.s, %.sroa.013.1297.i
  %i.er = call float @llvm.round.f32(float %i.eq)
  %i.es = call nsz float @llvm.minimumnum.f32(float %i.er, float 2.550000e+02)
  %i.et = call nsz float @llvm.maximumnum.f32(float %i.es, float 0.000000e+00) ; 2 uses
  %i.eu = fcmp olt float %i.et, 2.560000e+02
  br i1 %i.eu, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit145.i, label %bb.x, !prof !19

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit145.i: ; preds = %bb.w
  %i.ev = fptoui float %i.et to i8
  store i8 %i.ev, ptr %i.ep, align 1
  %i.ew = fmul float %i.s, %.sroa.0.1298.i
  %i.ex = call float @llvm.round.f32(float %i.ew)
  %i.ey = call nsz float @llvm.minimumnum.f32(float %i.ex, float 2.550000e+02)
  %i.ez = call nsz float @llvm.maximumnum.f32(float %i.ey, float 0.000000e+00) ; 2 uses
  %i.fa = fcmp olt float %i.ez, 2.560000e+02
  br i1 %i.fa, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit146.i, label %bb.y, !prof !19

bb.y:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit145.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit146.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit145.i
  %i.fb = fptoui float %i.ez to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  store i8 %i.fb, ptr %i.fc, align 1
  %i.fd = or disjoint i64 %i.bo, 1
  %or.cond116.not.i = icmp ult i64 %i.fd, %i.bc
  br i1 %or.cond116.not.i, label %bb.ab, label %bb.aa, !prof !20

bb.z:                                             ; preds = %.lr.ph300.i
  %i.fe = add nuw i64 %i.br, 2
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.br, i64 noundef %i.fe, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #20
  unreachable

bb.aa:                                            ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit146.i
  %i.ff = add nuw nsw i64 %i.bo, 2
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bo, i64 noundef %i.ff, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20
  unreachable

bb.ab:                                            ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit146.i
  %i.fg = add nuw i64 %i.bq, 2                    ; 2 uses
  %.not110.i = icmp ugt i64 %i.fg, %i.bc
  br i1 %.not110.i, label %bb.ac, label %bb.ad, !prof !18

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bq, i64 noundef %i.fg, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #20
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bo
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bq
  %i.fj = load <2 x i8>, ptr %i.fh, align 1
  %i.fk = uitofp <2 x i8> %i.fj to <2 x float>
  %i.fl = fadd <2 x float> %i.bl, %i.fk
  %i.fm = load <2 x i8>, ptr %i.fi, align 1
  %i.fn = uitofp <2 x i8> %i.fm to <2 x float>
end_hunk_8
begin_hunk_9_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur33box_blur_horizontal_pass_strategyINtNtB6_5color5LumaAtEtEB6_:bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d) #22
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.i, ptr %i.m, align 8, !noalias !480
  store i8 -1, ptr %i.d, align 8, !noalias !480
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !480
  %i.n = shl i64 %7, 1
  %i.o = or disjoint i64 %i.n, 1
  %i.p = and i64 %7, 9223372036854775807          ; 8 uses
  %i.q = add nuw i64 %i.p, 1                      ; 4 uses
  %i.r = uitofp i64 %i.o to float
  %i.s = fdiv float 1.000000e+00, %i.r            ; 6 uses
  %i.t = add nsw i64 %i.h, -1                     ; 6 uses
  %i.u = urem i64 %4, %5                          ; 2 uses
  %i.v = sub nuw nsw i64 %4, %i.u                 ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.v
  %i.x = urem i64 %1, %2                          ; 2 uses
  %i.y = sub nuw nsw i64 %1, %i.x                 ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !481
  store ptr %i.w, ptr %i.c, align 8, !noalias !482
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.u, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !482
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !482
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.v, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !482
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %5, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !481
  store ptr %0, ptr %i.b, align 8, !alias.scope !483, !noalias !484
  %.sroa.4148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.y, ptr %.sroa.4148.0..sroa_idx.i, align 8, !alias.scope !483, !noalias !484
  %.sroa.5149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.z, ptr %.sroa.5149.0..sroa_idx.i, align 8, !alias.scope !483, !noalias !484
  %.sroa.6150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.x, ptr %.sroa.6150.0..sroa_idx.i, align 8, !alias.scope !483, !noalias !484
  %.sroa.7151.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %2, ptr %.sroa.7151.0..sroa_idx.i, align 8, !alias.scope !483, !noalias !484
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b), !noalias !485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !480
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !486, !noalias !480, !noundef !5 ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !486, !noalias !480, !noundef !5
  %i.ae = icmp ult i64 %i.ac, %i.ad
  br i1 %i.ae, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_impltKj2_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i
  %i.af = uitofp i64 %i.q to float
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %..i134.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %i.p)
  %i.ah = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 %i.q) ; 4 uses
  %i.ai = shl nuw i64 %i.p, 1                     ; 3 uses
  %i.aj = shl i64 %7, 2
  %i.ak = or disjoint i64 %i.aj, 2                ; 3 uses
  %i.al = shl nuw nsw i64 %i.ah, 1                ; 4 uses
  %invariant.umax.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 %i.al)
  %i.am = icmp ult i64 %i.al, %i.ai
  %i.an = sub i64 %i.ah, %7
  %i.ao = and i64 %i.an, 9223372036854775807
  %.sroa.4172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5174.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6176.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.7178.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.9179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ap = insertelement <2 x float> poison, float %i.af, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %xtraiter = and i64 %7, 1
  %i.ar = icmp eq i64 %i.p, 1                     ; 0 uses
  %unroll_iter = and i64 %7, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod447 = trunc i64 %7 to i1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.loopexit.i:                                      ; preds = %bb.v, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i
  %i.as = load i64, ptr %i.aa, align 8, !alias.scope !486, !noalias !480, !noundef !5 ; 2 uses
  %i.at = load i64, ptr %i.ab, align 8, !alias.scope !486, !noalias !480, !noundef !5
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_impltKj2_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %i.av = phi i64 [ %i.ac, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.as, %.loopexit.i ] ; 3 uses
  %i.aw = add nuw i64 %i.av, 1
  store i64 %i.aw, ptr %i.aa, align 8, !alias.scope !486, !noalias !480
  %i.ax = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuttENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.f, i64 noundef %i.av), !noalias !487 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0      ; 4 uses
  %i.az = extractvalue { ptr, i64 } %i.ax, 1      ; 6 uses
  %i.ba = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacttENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag, i64 noundef %i.av), !noalias !487 ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.ba, 0      ; 12 uses
  %i.bc = extractvalue { ptr, i64 } %i.ba, 1      ; 17 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_impltKj2_EB6_.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  %i.bd = icmp ugt i64 %i.bc, 1
  br i1 %i.bd, label %bb.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 2, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.be = load <2 x i16>, ptr %i.bb, align 2
  %i.bf = uitofp <2 x i16> %i.be to <2 x float>
  %i.bg = fmul nnan <2 x float> %i.aq, %i.bf      ; 3 uses
  switch i64 %i.p, label %.lr.ph.i.preheader.new [
    i64 0, label %._crit_edge301.i
    i64 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.i
  %invariant.op = sub nuw i64 %i.bc, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ae, %.lr.ph.i.preheader.new
  %.sroa.0155.0292.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %i.fy, %bb.ae ] ; 3 uses
  %i.bh = phi <2 x float> [ %i.bg, %.lr.ph.i.preheader.new ], [ %i.gc, %bb.ae ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.ae ]
  %..i.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %.sroa.0155.0292.i)
  %i.bi = shl nuw nsw i64 %..i.i, 1               ; 3 uses
  %i.bj = or disjoint i64 %i.bi, 1
  %or.cond118.not.i = icmp ult i64 %i.bj, %i.bc
  br i1 %or.cond118.not.i, label %.lr.ph.i.1, label %.loopexit, !prof !20

._crit_edge301.i:                                 ; preds = %bb.ad, %bb.i
  %i.bk = phi <2 x float> [ %i.bg, %bb.i ], [ %i.fo, %bb.ad ] ; 3 uses
  %or.cond.i = icmp ugt i64 %i.bc, %invariant.umax.i
  br i1 %or.cond.i, label %bb.j, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

.lr.ph300.i:                                      ; preds = %.lr.ph300.i.preheader, %bb.ad
  %.sroa.0.1298.i = phi float [ %i.fp, %bb.ad ], [ %.lcssa361, %.lr.ph300.i.preheader ]
  %.sroa.013.1297.i = phi float [ %i.fq, %bb.ad ], [ %.lcssa362, %.lr.ph300.i.preheader ]
  %.sroa.078.0296.i = phi i64 [ %i.bm, %bb.ad ], [ 0, %.lr.ph300.i.preheader ] ; 4 uses
  %i.bl = phi <2 x float> [ %i.fo, %bb.ad ], [ %.lcssa363, %.lr.ph300.i.preheader ]
  %i.bm = add nuw nsw i64 %.sroa.078.0296.i, 1    ; 2 uses
  %i.bn = add nuw i64 %.sroa.078.0296.i, %i.q
  %..i135.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %i.bn)
  %i.bo = shl nuw nsw i64 %..i135.i, 1            ; 4 uses
  %i.bp = sub nsw i64 %.sroa.078.0296.i, %i.p
  %..i136.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bp, i64 0)
  %i.bq = shl nuw i64 %..i136.i, 1                ; 3 uses
  %i.br = shl nuw nsw i64 %.sroa.078.0296.i, 1    ; 4 uses
  %i.bs = or disjoint i64 %i.br, 1
  %or.cond115.not.i = icmp ult i64 %i.bs, %i.az
  br i1 %or.cond115.not.i, label %bb.w, label %bb.z, !prof !20

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit140.i, %bb.k, %._crit_edge301.i
  %.sroa.083.0.i = phi i64 [ %i.p, %._crit_edge301.i ], [ %i.ah, %bb.k ], [ %i.ah, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit140.i ] ; 2 uses
  %i.bt = phi <2 x float> [ %i.bk, %._crit_edge301.i ], [ %i.bk, %bb.k ], [ %i.de, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit140.i ]
  %i.bu = icmp ult i64 %.sroa.083.0.i, %i.h
  br i1 %i.bu, label %.lr.ph312.i, label %.loopexit.i

bb.j:                                             ; preds = %._crit_edge301.i
  %.not103.i = icmp ugt i64 %i.al, %i.az
  %or.cond112.i = or i1 %i.am, %.not103.i
  br i1 %or.cond112.i, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.ak ; 2 uses
  %i.bw = sub nuw i64 %i.bc, %i.ak
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.ai ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ao
  %i.bz = lshr i64 %i.bc, 1
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bz
  %i.cb = lshr i64 %i.bw, 1
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !488
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutAtj2_EINtBZ_4IterB1p_EEINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.by, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.ca)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.cc), !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !488
  %.sroa.0170.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !480 ; 2 uses
  %.sroa.4172.0.copyload.i = load ptr, ptr %.sroa.4172.0..sroa_idx.i, align 8, !noalias !480 ; 2 uses
  %.sroa.5174.0.copyload.i = load i64, ptr %.sroa.5174.0..sroa_idx.i, align 8, !noalias !480
  %.sroa.6176.0.copyload.i = load ptr, ptr %.sroa.6176.0..sroa_idx.i, align 8, !noalias !480 ; 2 uses
  %.sroa.7178.0.copyload.i = load i64, ptr %.sroa.7178.0..sroa_idx.i, align 8, !noalias !480 ; 2 uses
  %.sroa.9179.0.copyload.i = load i64, ptr %.sroa.9179.0..sroa_idx.i, align 8, !noalias !480 ; 2 uses
  %i.cd = icmp ult i64 %.sroa.7178.0.copyload.i, %.sroa.9179.0.copyload.i
  br i1 %i.cd, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0170.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4172.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6176.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ai, i64 noundef %i.al, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit140.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.7178.0304.i = phi i64 [ %.sroa.7178.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.cf, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit140.i ] ; 3 uses
  %i.ce = phi <2 x float> [ %i.bk, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.de, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit140.i ] ; 3 uses
  %i.cf = add i64 %.sroa.7178.0304.i, 1           ; 2 uses
  %i.cg = add i64 %.sroa.7178.0304.i, %.sroa.5174.0.copyload.i ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0170.0.copyload.i, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4172.0.copyload.i, i64 %i.cg
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6176.0.copyload.i, i64 %.sroa.7178.0304.i
  %i.ck = extractelement <2 x float> %i.ce, i64 0
  %i.cl = fmul float %i.s, %i.ck
  %i.cm = call float @llvm.round.f32(float %i.cl)
  %i.cn = call nsz float @llvm.minimumnum.f32(float %i.cm, float 6.553500e+04)
  %i.co = call nsz float @llvm.maximumnum.f32(float %i.cn, float 0.000000e+00) ; 2 uses
  %i.cp = fcmp olt float %i.co, 6.553600e+04
  br i1 %i.cp, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i, label %bb.m, !prof !19

bb.m:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.cq = fptoui float %i.co to i16
  store i16 %i.cq, ptr %i.ch, align 2
  %i.cr = extractelement <2 x float> %i.ce, i64 1
  %i.cs = fmul float %i.s, %i.cr
  %i.ct = call float @llvm.round.f32(float %i.cs)
  %i.cu = call nsz float @llvm.minimumnum.f32(float %i.ct, float 6.553500e+04)
  %i.cv = call nsz float @llvm.maximumnum.f32(float %i.cu, float 0.000000e+00) ; 2 uses
  %i.cw = fcmp olt float %i.cv, 6.553600e+04
  br i1 %i.cw, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit140.i, label %bb.n, !prof !19

bb.n:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit140.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i
  %i.cx = fptoui float %i.cv to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  store i16 %i.cx, ptr %i.cy, align 2
  %i.cz = load <2 x i16>, ptr %i.cj, align 2
  %i.da = uitofp <2 x i16> %i.cz to <2 x float>
  %i.db = fadd <2 x float> %i.ce, %i.da
  %i.dc = load <2 x i16>, ptr %i.ci, align 2
  %i.dd = uitofp <2 x i16> %i.dc to <2 x float>
  %i.de = fsub <2 x float> %i.db, %i.dd           ; 2 uses
  %exitcond400.not.i = icmp eq i64 %i.cf, %.sroa.9179.0.copyload.i
  br i1 %exitcond400.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.lr.ph312.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %bb.v
  %.sroa.083.1309.i = phi i64 [ %i.dg, %bb.v ], [ %.sroa.083.0.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ] ; 4 uses
  %i.df = phi <2 x float> [ %i.eo, %bb.v ], [ %i.bt, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ] ; 3 uses
  %i.dg = add i64 %.sroa.083.1309.i, 1            ; 2 uses
  %i.dh = add nuw i64 %.sroa.083.1309.i, %i.q
  %..i141.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %i.dh)
  %i.di = shl nuw nsw i64 %..i141.i, 1            ; 4 uses
  %i.dj = sub nsw i64 %.sroa.083.1309.i, %i.p     ; 2 uses
  %..i142.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.dj, i64 0)
  %i.dk = shl nuw i64 %..i142.i, 1                ; 3 uses
  %i.dl = shl nuw nsw i64 %.sroa.083.1309.i, 1    ; 3 uses
  %i.dm = add nuw nsw i64 %i.dl, 2                ; 2 uses
  %.not105.i = icmp ugt i64 %i.dm, %i.az
  br i1 %.not105.i, label %bb.r, label %bb.o, !prof !12

bb.o:                                             ; preds = %.lr.ph312.i
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.dl ; 2 uses
  %i.do = extractelement <2 x float> %i.df, i64 0
  %i.dp = fmul float %i.s, %i.do
  %i.dq = call float @llvm.round.f32(float %i.dp)
  %i.dr = call nsz float @llvm.minimumnum.f32(float %i.dq, float 6.553500e+04)
  %i.ds = call nsz float @llvm.maximumnum.f32(float %i.dr, float 0.000000e+00) ; 2 uses
  %i.dt = fcmp olt float %i.ds, 6.553600e+04
  br i1 %i.dt, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit143.i, label %bb.p, !prof !19

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit143.i: ; preds = %bb.o
  %i.du = fptoui float %i.ds to i16
  store i16 %i.du, ptr %i.dn, align 2
  %i.dv = extractelement <2 x float> %i.df, i64 1
  %i.dw = fmul float %i.s, %i.dv
  %i.dx = call float @llvm.round.f32(float %i.dw)
  %i.dy = call nsz float @llvm.minimumnum.f32(float %i.dx, float 6.553500e+04)
  %i.dz = call nsz float @llvm.maximumnum.f32(float %i.dy, float 0.000000e+00) ; 2 uses
  %i.ea = fcmp olt float %i.dz, 6.553600e+04
  br i1 %i.ea, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit144.i, label %bb.q, !prof !19

bb.q:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit143.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit144.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit143.i
  %i.eb = fptoui float %i.dz to i16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store i16 %i.eb, ptr %i.ec, align 2
  %i.ed = or disjoint i64 %i.di, 1
  %or.cond113.not.i = icmp ult i64 %i.ed, %i.bc
  br i1 %or.cond113.not.i, label %bb.t, label %bb.s, !prof !20

bb.r:                                             ; preds = %.lr.ph312.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.dl, i64 noundef %i.dm, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
  unreachable

bb.s:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit144.i
  %i.ee = add nuw nsw i64 %i.di, 2
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.di, i64 noundef %i.ee, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20
  unreachable

bb.t:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit144.i
  %i.ef = add i64 %i.dk, 2                        ; 2 uses
  %i.eg = icmp eq i64 %i.dj, 9223372036854775807
  %.not107.i = icmp ugt i64 %i.ef, %i.bc
  %or.cond114.i = or i1 %i.eg, %.not107.i
  br i1 %or.cond114.i, label %bb.u, label %bb.v, !prof !18

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.dk, i64 noundef %i.ef, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.di
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.dk
  %i.ej = load <2 x i16>, ptr %i.eh, align 2
  %i.ek = uitofp <2 x i16> %i.ej to <2 x float>
  %i.el = fadd <2 x float> %i.df, %i.ek
  %i.em = load <2 x i16>, ptr %i.ei, align 2
  %i.en = uitofp <2 x i16> %i.em to <2 x float>
  %i.eo = fsub <2 x float> %i.el, %i.en
  %exitcond401.not.i = icmp eq i64 %i.dg, %i.h
  br i1 %exitcond401.not.i, label %.loopexit.i, label %.lr.ph312.i

bb.w:                                             ; preds = %.lr.ph300.i
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.br ; 2 uses
  %i.eq = fmul float %i.s, %.sroa.013.1297.i
  %i.er = call float @llvm.round.f32(float %i.eq)
  %i.es = call nsz float @llvm.minimumnum.f32(float %i.er, float 6.553500e+04)
  %i.et = call nsz float @llvm.maximumnum.f32(float %i.es, float 0.000000e+00) ; 2 uses
  %i.eu = fcmp olt float %i.et, 6.553600e+04
  br i1 %i.eu, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit145.i, label %bb.x, !prof !19

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit145.i: ; preds = %bb.w
  %i.ev = fptoui float %i.et to i16
  store i16 %i.ev, ptr %i.ep, align 2
  %i.ew = fmul float %i.s, %.sroa.0.1298.i
  %i.ex = call float @llvm.round.f32(float %i.ew)
  %i.ey = call nsz float @llvm.minimumnum.f32(float %i.ex, float 6.553500e+04)
  %i.ez = call nsz float @llvm.maximumnum.f32(float %i.ey, float 0.000000e+00) ; 2 uses
  %i.fa = fcmp olt float %i.ez, 6.553600e+04
  br i1 %i.fa, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit146.i, label %bb.y, !prof !19

bb.y:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit145.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit146.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit145.i
  %i.fb = fptoui float %i.ez to i16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  store i16 %i.fb, ptr %i.fc, align 2
  %i.fd = or disjoint i64 %i.bo, 1
  %or.cond116.not.i = icmp ult i64 %i.fd, %i.bc
  br i1 %or.cond116.not.i, label %bb.ab, label %bb.aa, !prof !20

bb.z:                                             ; preds = %.lr.ph300.i
  %i.fe = add nuw i64 %i.br, 2
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.br, i64 noundef %i.fe, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #20
  unreachable

bb.aa:                                            ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit146.i
  %i.ff = add nuw nsw i64 %i.bo, 2
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bo, i64 noundef %i.ff, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20
  unreachable

bb.ab:                                            ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit146.i
  %i.fg = add nuw i64 %i.bq, 2                    ; 2 uses
  %.not110.i = icmp ugt i64 %i.fg, %i.bc
  br i1 %.not110.i, label %bb.ac, label %bb.ad, !prof !18

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bq, i64 noundef %i.fg, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #20
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.bo
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.bq
  %i.fj = load <2 x i16>, ptr %i.fh, align 2
  %i.fk = uitofp <2 x i16> %i.fj to <2 x float>
  %i.fl = fadd <2 x float> %i.bl, %i.fk
  %i.fm = load <2 x i16>, ptr %i.fi, align 2
  %i.fn = uitofp <2 x i16> %i.fm to <2 x float>
end_hunk_9
