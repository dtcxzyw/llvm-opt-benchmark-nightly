Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.11?download=true
inline.NumInlined: 1583
inline.NumDeleted: 557
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvXsn_Cs6ObhOmryMwL_8smallvecINtB6_15SmallVecVisitorAhj4_ENtNtCsaeRQ2XwCvzm_10serde_core2de7Visitor9visit_seqINtNvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB1U_12SerdeDecoderpENtBY_12Deserializer17deserialize_tuple6AccessINtNtNtB20_2de7decoder11DecoderImplNtNtB3Z_4read11SliceReaderNtNtB20_6config13ConfigurationuEEECskIqAKC4t9Ft_2yr:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %2, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %.not.i = icmp ugt i64 %2, 4
  br i1 %.not.i, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %2, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true) ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.thread47, label %bb.c, !prof !362

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i64 -1, %i.j
  %i.m = add nuw i64 %i.l, 1
  %i.n = invoke fastcc { i64, i64 } @_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_E8try_growCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.m)
          to label %bb.e unwind label %.loopexit.split-lp ; 2 uses

.loopexit:                                        ; preds = %bb.f, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.thread47, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecAhj4_EECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #25
          to label %common.resume unwind label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.n, 1
  %.not = icmp eq i64 %i.o, -1
  br i1 %.not, label %.thread, label %.thread47

.thread47:                                        ; preds = %bb.b, %bb.e
  %.sroa.0.0.i52 = phi i64 [ %i.o, %bb.e ], [ 0, %bb.b ]
  %.sroa.4.0.i51 = phi i64 [ %i.p, %bb.e ], [ undef, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvXNtNtCslcwApyVHiOd_7bincode8features5serdeNtNtB7_5error11DecodeErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error6customNtCs6ObhOmryMwL_8smallvec18CollectionAllocErrECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %.sroa.0.0.i52, i64 %.sroa.4.0.i51)
          to label %bb.q unwind label %.loopexit.split-lp

.thread:                                          ; preds = %bb.a, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvXNvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB9_12SerdeDecoderpENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer17deserialize_tupleINtB3_6AccessINtNtNtBf_2de7decoder11DecoderImplNtNtB2L_4read11SliceReaderNtNtBf_6config13ConfigurationuEENtB1r_9SeqAccess17next_element_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDatahEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvYINtNvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtBc_12SerdeDecoderpENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer17deserialize_tuple6AccessINtNtNtBi_2de7decoder11DecoderImplNtNtB2I_4read11SliceReaderNtNtBi_6config13ConfigurationuEENtB1u_9SeqAccess12next_elementhECskIqAKC4t9Ft_2yr.exit unwind label %.loopexit

_RINvYINtNvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtBc_12SerdeDecoderpENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer17deserialize_tuple6AccessINtNtNtBi_2de7decoder11DecoderImplNtNtB2I_4read11SliceReaderNtNtBi_6config13ConfigurationuEENtB1u_9SeqAccess12next_elementhECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.f
  %i.s = load i8, ptr %i.c, align 8, !range !552, !noundef !6 ; 2 uses
  %.not39 = icmp eq i8 %i.s, -1
  %i.t = load i8, ptr %i.q, align 1               ; 2 uses
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvYINtNvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtBc_12SerdeDecoderpENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer17deserialize_tuple6AccessINtNtNtBi_2de7decoder11DecoderImplNtNtB2I_4read11SliceReaderNtNtBi_6config13ConfigurationuEENtB1u_9SeqAccess12next_elementhECskIqAKC4t9Ft_2yr.exit
  %.sroa.530.0.copyload = load i8, ptr %i.r, align 2
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.635.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(29) %.sroa.631.0..sroa_idx, i64 29, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 %i.s, ptr %0, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.t, ptr %.sroa.433.0..sroa_idx, align 1
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.530.0.copyload, ptr %.sroa.534.0..sroa_idx, align 2
  br label %bb.m

bb.h:                                             ; preds = %_RINvYINtNvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtBc_12SerdeDecoderpENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer17deserialize_tuple6AccessINtNtNtBi_2de7decoder11DecoderImplNtNtB2I_4read11SliceReaderNtNtBi_6config13ConfigurationuEENtB1u_9SeqAccess12next_elementhECskIqAKC4t9Ft_2yr.exit
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = load i8, ptr %i.r, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr %i.g, align 8, !alias.scope !2076, !noalias !2081, !noundef !6 ; 2 uses
  %i.x = icmp ugt i64 %i.w, 4                     ; 2 uses
  %i.y = load ptr, ptr %i.d, align 8, !alias.scope !2076, !noalias !2081, !nonnull !6
  %.sink10.i.i = select i1 %i.x, ptr %i.y, ptr %i.d
  %.sink9.i.i = select i1 %i.x, ptr %i.h, ptr %i.g ; 2 uses
  %.sink.i.i41 = call i64 @llvm.umax.i64(i64 %i.w, i64 4)
  %i.z = load i64, ptr %.sink9.i.i, align 8, !alias.scope !2083, !noundef !6 ; 2 uses
  %i.aa = icmp eq i64 %i.z, %.sink.i.i41
  br i1 %i.aa, label %bb.j, label %bb.l, !prof !362

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_E21reserve_one_uncheckedCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc43 unwind label %.loopexit

.noexc43:                                         ; preds = %bb.j
  %i.ab = load ptr, ptr %i.d, align 8, !alias.scope !2083, !nonnull !6, !noundef !6
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !2083
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i8 -1, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecAhj4_EECskIqAKC4t9Ft_2yr.exit

bb.l:                                             ; preds = %.noexc43, %bb.i
  %i.ad = phi i64 [ %.pre.i, %.noexc43 ], [ %i.z, %bb.i ]
  %.sroa.01.0.i = phi ptr [ %i.h, %.noexc43 ], [ %.sink9.i.i, %bb.i ] ; 2 uses
  %.sroa.0.0.i42 = phi ptr [ %i.ab, %.noexc43 ], [ %.sink10.i.i, %bb.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i42, i64 %i.ad
  store i8 %i.v, ptr %i.ae, align 1
  %i.af = load i64, ptr %.sroa.01.0.i, align 8, !alias.scope !2083, !noundef !6
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %.sroa.01.0.i, align 8, !alias.scope !2083
  br label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecAhj4_EECskIqAKC4t9Ft_2yr.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i, %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.m:                                             ; preds = %bb.q, %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !2084)
  call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  %i.ah = load i64, ptr %i.g, align 8, !alias.scope !2090, !noundef !6 ; 2 uses
  %i.ai = icmp ugt i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecAhj4_EECskIqAKC4t9Ft_2yr.exit

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %i.d, align 8, !alias.scope !2090, !nonnull !6, !noundef !6
  %i.ak = load i64, ptr %i.h, align 8, !alias.scope !2090, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2090
  store i64 %i.ah, ptr %i.a, align 8, !noalias !2090
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aj, ptr %i.al, align 8, !noalias !2090
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ak, ptr %i.am, align 8, !noalias !2090
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i unwind label %bb.o, !noalias !2090

bb.o:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.p, !noalias !2090

bb.p:                                             ; preds = %bb.o
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2090
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.an, %bb.o ], [ %lpad.phi, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i: ; preds = %bb.n
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !2090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2090
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecAhj4_EECskIqAKC4t9Ft_2yr.exit

bb.q:                                             ; preds = %.thread47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.r:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvYINtNtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spaces20RemoveTrailingSpacesINtNtB8_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB8_6tokens5TokenEL_EEENtB3p_11TokenStream8write_toQINtNtNtB2u_2io6cursor6CursorINtNtB1R_3vec3VechEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 10 uses
  %i.m = alloca [32 x i8], align 8                ; 12 uses
  %i.n = alloca [24 x i8], align 16               ; 12 uses
  %i.o = alloca [104 x i8], align 8               ; 13 uses
  %i.p = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.o, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 19 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 96 ; 25 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 80 ; 11 uses
  %.sroa.19.8..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2091)
  call void @llvm.experimental.noalias.scope.decl(metadata !2094)
  %i.w = load i64, ptr %i.t, align 8, !alias.scope !2097, !noalias !2098, !noundef !6 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit.thread.i, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit.i

_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.b
  %i.y = load i64, ptr %i.u, align 8, !alias.scope !2097, !noalias !2098, !noundef !6 ; 2 uses
  %i.z = add i64 %i.y, 1                          ; 2 uses
  %i.aa = load i64, ptr %i.s, align 8, !range !5, !alias.scope !2097, !noalias !2098, !noundef !6 ; 3 uses
  %.not.i.i = icmp ult i64 %i.z, %i.aa
  %i.ab = select i1 %.not.i.i, i64 0, i64 %i.aa
  %.sroa.0.0.i.i = sub nuw i64 %i.z, %i.ab
  store i64 %.sroa.0.0.i.i, ptr %i.u, align 8, !alias.scope !2097, !noalias !2098
  %i.ac = add i64 %i.w, -1                        ; 2 uses
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !2097, !noalias !2098
  %i.ad = icmp ult i64 %i.ac, %i.aa
  call void @llvm.assume(i1 %i.ad)
  %i.ae = load ptr, ptr %i.v, align 8, !alias.scope !2097, !noalias !2098, !nonnull !6, !noundef !6
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.y ; 3 uses
  %.sroa.080.0.copyload81 = load i16, ptr %i.af, align 8, !noalias !2094 ; 2 uses
  %.sroa.15.sroa.9.0..sroa.15.0..sroa_idx85.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %2 = load <2 x i64>, ptr %.sroa.15.sroa.9.0..sroa.15.0..sroa_idx85.sroa_idx, align 8, !noalias !2094 ; 2 uses
  %.sroa.15.sroa.11.0..sroa.15.0..sroa_idx85.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.15.sroa.11.0.copyload = load i64, ptr %.sroa.15.sroa.11.0..sroa.15.0..sroa_idx85.sroa_idx, align 8, !noalias !2094 ; 2 uses
  %.not.i = icmp eq i16 %.sroa.080.0.copyload81, -1
  br i1 %.not.i, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit.thread.i, label %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129

_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit.thread.i: ; preds = %bb.b, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit.i
  %.sroa.15.sroa.11.0 = phi i64 [ %.sroa.15.sroa.11.0.copyload, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit.i ], [ undef, %bb.b ] ; 2 uses
  %i.ag = phi <2 x i64> [ %2, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit.i ], [ undef, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2101
  invoke void @_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt11indentationINtB4_14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEB1F_4nextCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.o)
          to label %.noexc unwind label %.loopexit.split-lp146.loopexit

.noexc:                                           ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit.thread.i
  %i.ah = load i16, ptr %i.m, align 8, !range !2102, !noalias !2101, !noundef !6
  %.not284.i = icmp eq i16 %i.ah, -1
  br i1 %.not284.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !2101
  %i.ai = load i16, ptr %i.l, align 8, !range !180, !noalias !2101, !noundef !6
  switch i16 %i.ai, label %bb.d [
    i16 9, label %bb.f
    i16 10, label %bb.f
    i16 16, label %bb.j
  ]

._crit_edge.i:                                    ; preds = %.noexc55, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2101
  call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  %i.aj = load i64, ptr %i.t, align 8, !alias.scope !2106, !noalias !2107, !noundef !6 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.al = load i64, ptr %i.u, align 8, !alias.scope !2106, !noalias !2107, !noundef !6 ; 2 uses
  %i.am = add i64 %i.al, 1                        ; 2 uses
  %i.an = load i64, ptr %i.s, align 8, !range !5, !alias.scope !2106, !noalias !2107, !noundef !6 ; 3 uses
  %.not.i4.i = icmp ult i64 %i.am, %i.an
  %i.ao = select i1 %.not.i4.i, i64 0, i64 %i.an
  %.sroa.0.0.i5.i = sub nuw i64 %i.am, %i.ao
  store i64 %.sroa.0.0.i5.i, ptr %i.u, align 8, !alias.scope !2106, !noalias !2107
  %i.ap = add i64 %i.aj, -1                       ; 2 uses
  store i64 %i.ap, ptr %i.t, align 8, !alias.scope !2106, !noalias !2107
  %i.aq = icmp ult i64 %i.ap, %i.an
  call void @llvm.assume(i1 %i.aq)
  %i.ar = load ptr, ptr %i.v, align 8, !alias.scope !2106, !noalias !2107, !nonnull !6, !noundef !6
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %i.al ; 3 uses
  %.sroa.080.0.copyload83 = load i16, ptr %i.as, align 8, !noalias !2103
  %.sroa.15.sroa.9.0..sroa.15.0..sroa_idx87.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %3 = load <2 x i64>, ptr %.sroa.15.sroa.9.0..sroa.15.0..sroa_idx87.sroa_idx, align 8, !noalias !2103
  %.sroa.15.sroa.11.0..sroa.15.0..sroa_idx87.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.15.sroa.11.0.copyload122 = load i64, ptr %.sroa.15.sroa.11.0..sroa.15.0..sroa_idx87.sroa_idx, align 8, !noalias !2103
  br label %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.at = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, i64 8) acquire, align 8, !noalias !2101
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0ECskIqAKC4t9Ft_2yr.exit.i, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2101
  store ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, ptr %i.g, align 8, !noalias !2101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2101
  store ptr %i.g, ptr %i.f, align 8, !noalias !2101
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2109

.noexc.i:                                         ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2101
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0ECskIqAKC4t9Ft_2yr.exit.i

bb.f:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !2101
  %i.av = load i64, ptr %i.t, align 8, !alias.scope !2110, !noalias !2113, !noundef !6 ; 2 uses
  %i.aw = load i64, ptr %i.s, align 8, !range !5, !alias.scope !2110, !noalias !2113, !noundef !6 ; 2 uses
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %bb.am

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE4growCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s)
          to label %._crit_edge.i.i unwind label %bb.h, !noalias !2113

._crit_edge.i.i:                                  ; preds = %bb.g
  %.pre.i.i = load i64, ptr %i.t, align 8, !alias.scope !2110, !noalias !2113
  %.pre6.i.i = load i64, ptr %i.s, align 8, !range !5, !alias.scope !2110, !noalias !2113
  br label %bb.am

bb.h:                                             ; preds = %bb.g
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #25
          to label %.body unwind label %bb.i, !noalias !2109

bb.i:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2109
  unreachable

bb.j:                                             ; preds = %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2115)
  call void @llvm.experimental.noalias.scope.decl(metadata !2118)
  %i.ba = load i64, ptr %i.t, align 8, !alias.scope !2121, !noalias !2109, !noundef !6 ; 5 uses
  %.not62.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not62.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %bb.m
  %.sroa.0.050.i.i.i = phi i64 [ %i.bq, %bb.m ], [ 0, %bb.j ] ; 4 uses
  %i.bb = load i64, ptr %i.t, align 8, !alias.scope !2121, !noalias !2109, !noundef !6
  %i.bc = icmp ult i64 %.sroa.0.050.i.i.i, %i.bb
  br i1 %i.bc, label %bb.k, label %.invoke.i, !prof !7

.loopexit.i.i.i:                                  ; preds = %.noexc10.i, %bb.j
  %.sroa.0.046.i.i.i = phi i64 [ 0, %bb.j ], [ %.sroa.0.050.i.i.i, %.noexc10.i ] ; 2 uses
  %.sroa.05.1.i.i.i = phi i64 [ 0, %bb.j ], [ %i.bq, %.noexc10.i ] ; 3 uses
  %i.bd = icmp ult i64 %.sroa.05.1.i.i.i, %i.ba
  br i1 %i.bd, label %.lr.ph53.i.i.i, label %.outer._crit_edge.i.i.i

.lr.ph53.i.i.i:                                   ; preds = %.loopexit.i.i.i, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE4swapCskIqAKC4t9Ft_2yr.exit.i.i.i
  %.sroa.0.1.ph59.i.i.i = phi i64 [ %i.ew, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE4swapCskIqAKC4t9Ft_2yr.exit.i.i.i ], [ %.sroa.0.046.i.i.i, %.loopexit.i.i.i ] ; 4 uses
  %.sroa.05.2.ph58.i.i.i = phi i64 [ %i.ev, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE4swapCskIqAKC4t9Ft_2yr.exit.i.i.i ], [ %.sroa.05.1.i.i.i, %.loopexit.i.i.i ]
  br label %bb.n

.invoke.i:                                        ; preds = %.lr.ph.i.i.i, %bb.n
  %i.be = phi ptr [ @15, %bb.n ], [ @14, %.lr.ph.i.i.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 20, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be) #29
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, !noalias !2109

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = load i64, ptr %i.u, align 8, !alias.scope !2121, !noalias !2109, !noundef !6
  %i.bg = add i64 %i.bf, %.sroa.0.050.i.i.i       ; 2 uses
  %i.bh = load i64, ptr %i.s, align 8, !range !5, !alias.scope !2121, !noalias !2109, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.bg, %i.bh
  %i.bi = select i1 %.not.i.i.i, i64 0, i64 %i.bh
  %.sroa.018.0.i.i.i = sub nuw i64 %i.bg, %i.bi
  %i.bj = load ptr, ptr %i.v, align 8, !alias.scope !2121, !noalias !2109, !nonnull !6, !noundef !6
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %.sroa.018.0.i.i.i
  %i.bl = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, i64 8) acquire, align 8, !noalias !2122
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_RNCINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB8_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1c_15trailing_spacesINtB24_20RemoveTrailingSpacesINtNtB1c_11indentation14AddIndentationINtNtBc_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB18_EL_EEEB3P_4next0E0CskIqAKC4t9Ft_2yr.exit.i.i.i, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2122
  store ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, ptr %i.e, align 8, !noalias !2122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2122
  store ptr %i.e, ptr %i.d, align 8, !noalias !2122
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !2109

.noexc9.i:                                        ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2122
  br label %_RNCINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB8_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1c_15trailing_spacesINtB24_20RemoveTrailingSpacesINtNtB1c_11indentation14AddIndentationINtNtBc_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB18_EL_EEEB3P_4next0E0CskIqAKC4t9Ft_2yr.exit.i.i.i

_RNCINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB8_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1c_15trailing_spacesINtB24_20RemoveTrailingSpacesINtNtB1c_11indentation14AddIndentationINtNtBc_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB18_EL_EEEB3P_4next0E0CskIqAKC4t9Ft_2yr.exit.i.i.i: ; preds = %.noexc9.i, %bb.k
  %i.bn = load i32, ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, align 8, !noalias !2122, !noundef !6
  %i.bo = invoke noundef i32 @_RNvMNtCsbRBQYsxaRdD_10yara_x_fmt6tokensNtB2_5Token8category(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bk)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !2109

.noexc10.i:                                       ; preds = %_RNCINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB8_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1c_15trailing_spacesINtB24_20RemoveTrailingSpacesINtNtB1c_11indentation14AddIndentationINtNtBc_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB18_EL_EEEB3P_4next0E0CskIqAKC4t9Ft_2yr.exit.i.i.i
  %i.bp = and i32 %i.bo, %i.bn
  %.not31.i.i.i = icmp eq i32 %i.bp, 0
  %i.bq = add nuw i64 %.sroa.0.050.i.i.i, 1       ; 3 uses
  br i1 %.not31.i.i.i, label %.loopexit.i.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc10.i
  %exitcond.not.i.i.i = icmp eq i64 %i.bq, %i.ba
  br i1 %exitcond.not.i.i.i, label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1a_15trailing_spacesINtB22_20RemoveTrailingSpacesINtNtB1a_11indentation14AddIndentationINtNtBa_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB16_EL_EEEB3N_4next0ECskIqAKC4t9Ft_2yr.exit.i, label %.lr.ph.i.i.i

.outer._crit_edge.i.i.i:                          ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE4swapCskIqAKC4t9Ft_2yr.exit.i.i.i, %bb.aj, %.loopexit.i.i.i
  %.sroa.0.1.ph.lcssa43.i.i.i = phi i64 [ %.sroa.0.1.ph59.i.i.i, %bb.aj ], [ %.sroa.0.046.i.i.i, %.loopexit.i.i.i ], [ %i.ew, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE4swapCskIqAKC4t9Ft_2yr.exit.i.i.i ] ; 8 uses
  %.sroa.05.2.lcssa.i.i.i = phi i64 [ %i.ef, %bb.aj ], [ %.sroa.05.1.i.i.i, %.loopexit.i.i.i ], [ %i.ev, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE4swapCskIqAKC4t9Ft_2yr.exit.i.i.i ]
  %.not27.i.i.i = icmp eq i64 %.sroa.05.2.lcssa.i.i.i, %.sroa.0.1.ph.lcssa43.i.i.i
  br i1 %.not27.i.i.i, label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1a_15trailing_spacesINtB22_20RemoveTrailingSpacesINtNtB1a_11indentation14AddIndentationINtNtBa_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB16_EL_EEEB3N_4next0ECskIqAKC4t9Ft_2yr.exit.i, label %bb.o

bb.n:                                             ; preds = %bb.aj, %.lr.ph53.i.i.i
  %.sroa.05.252.i.i.i = phi i64 [ %.sroa.05.2.ph58.i.i.i, %.lr.ph53.i.i.i ], [ %i.ef, %bb.aj ] ; 6 uses
  %i.br = load i64, ptr %i.t, align 8, !alias.scope !2121, !noalias !2109, !noundef !6
  %i.bs = icmp ult i64 %.sroa.05.252.i.i.i, %i.br
  br i1 %i.bs, label %bb.ah, label %.invoke.i, !prof !7

bb.o:                                             ; preds = %.outer._crit_edge.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2127)
  %i.bt = load i64, ptr %i.t, align 8, !alias.scope !2130, !noalias !2109, !noundef !6 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %.sroa.0.1.ph.lcssa43.i.i.i, %i.bt
  br i1 %.not.i.i.i.i, label %bb.p, label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1a_15trailing_spacesINtB22_20RemoveTrailingSpacesINtNtB1a_11indentation14AddIndentationINtNtBa_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB16_EL_EEEB3N_4next0ECskIqAKC4t9Ft_2yr.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bu = invoke { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECskIqAKC4t9Ft_2yr(i64 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !2109 ; 2 uses

.noexc11.i:                                       ; preds = %bb.p
  %i.bv = extractvalue { i64, i64 } %i.bu, 0      ; 3 uses
  %i.bw = extractvalue { i64, i64 } %i.bu, 1      ; 2 uses
  %i.bx = sub i64 %i.bw, %i.bv                    ; 3 uses
  %i.by = icmp eq i64 %i.bw, %i.bv
  br i1 %i.by, label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECskIqAKC4t9Ft_2yr.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc11.i
  %i.bz = load i64, ptr %i.u, align 8, !alias.scope !2131, !noalias !2134, !noundef !6
  %i.ca = add i64 %i.bz, %i.bv                    ; 2 uses
  %i.cb = load i64, ptr %i.s, align 8, !range !5, !alias.scope !2131, !noalias !2134, !noundef !6 ; 4 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.ca, %i.cb
  %i.cc = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.cb
  %.sroa.04.0.i.i.i.i.i = sub nuw i64 %i.ca, %i.cc ; 4 uses
  %i.cd = sub i64 %i.cb, %.sroa.04.0.i.i.i.i.i    ; 2 uses
  %.not11.i.i.i.i.i = icmp ult i64 %i.cd, %i.bx
  br i1 %.not11.i.i.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ce = sub nuw i64 %i.bx, %i.cd
  br label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECskIqAKC4t9Ft_2yr.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.cf = add i64 %.sroa.04.0.i.i.i.i.i, %i.bx
  br label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECskIqAKC4t9Ft_2yr.exit.i.i.i.i

_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECskIqAKC4t9Ft_2yr.exit.i.i.i.i: ; preds = %bb.s, %bb.r, %.noexc11.i
  %.sroa.09.0.i.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i.i, %bb.s ], [ %.sroa.04.0.i.i.i.i.i, %bb.r ], [ 0, %.noexc11.i ] ; 2 uses
  %.sroa.510.0.i.i.i.i = phi i64 [ %i.cf, %bb.s ], [ %i.cb, %bb.r ], [ 0, %.noexc11.i ]
  %.sroa.11.0.i.i.i.i = phi i64 [ 0, %bb.s ], [ %i.ce, %bb.r ], [ 0, %.noexc11.i ] ; 7 uses
  %i.cg = load ptr, ptr %i.v, align 8, !alias.scope !2130, !noalias !2109, !nonnull !6, !noundef !6 ; 5 uses
  %i.ch = sub i64 %.sroa.510.0.i.i.i.i, %.sroa.09.0.i.i.i.i ; 4 uses
  %i.ci = icmp ugt i64 %.sroa.0.1.ph.lcssa43.i.i.i, %i.ch
  store i64 %.sroa.0.1.ph.lcssa43.i.i.i, ptr %i.t, align 8, !alias.scope !2130, !noalias !2109
  br i1 %i.ci, label %bb.t, label %bb.y

bb.t:                                             ; preds = %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECskIqAKC4t9Ft_2yr.exit.i.i.i.i
  %i.cj = sub nuw i64 %.sroa.0.1.ph.lcssa43.i.i.i, %i.ch ; 3 uses
  %i.ck = sub nuw i64 %.sroa.11.0.i.i.i.i, %i.cj  ; 3 uses
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.cj ; 2 uses
  %i.cm = icmp eq i64 %.sroa.11.0.i.i.i.i, %i.cj
  br i1 %i.cm, label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1a_15trailing_spacesINtB22_20RemoveTrailingSpacesINtNtB1a_11indentation14AddIndentationINtNtBa_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB16_EL_EEEB3N_4next0ECskIqAKC4t9Ft_2yr.exit.i, label %.lr.ph335

bb.u:                                             ; preds = %.lr.ph335
  %i.cn = icmp eq i64 %i.cp, %i.ck
  br i1 %i.cn, label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1a_15trailing_spacesINtB22_20RemoveTrailingSpacesINtNtB1a_11indentation14AddIndentationINtNtBa_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB16_EL_EEEB3N_4next0ECskIqAKC4t9Ft_2yr.exit.i, label %.lr.ph335

.lr.ph335:                                        ; preds = %bb.t, %bb.u
  %.sroa.0.0.i.i.i.i.i334 = phi i64 [ %i.cp, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %.sroa.0.0.i.i.i.i.i334
  %i.cp = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i334, 1 ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.co)
          to label %bb.u unwind label %bb.w, !noalias !2136

bb.v:                                             ; preds = %.lr.ph341
  %i.cq = add i64 %.sroa.0.1.i.i.i.i.i340, 1      ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvYINtNtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spaces20RemoveTrailingSpacesINtNtB8_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB8_6tokens5TokenEL_EEENtB3p_11TokenStream8write_toQINtNtNtB2u_2io6cursor6CursorINtNtB1R_3vec3VechEEECskIqAKC4t9Ft_2yr:bb.a
  %i.du = load i64, ptr %i.u, align 8, !alias.scope !2121, !noalias !2109, !noundef !6
  %i.dv = add i64 %i.du, %.sroa.05.252.i.i.i      ; 2 uses
  %i.dw = load i64, ptr %i.s, align 8, !range !5, !alias.scope !2121, !noalias !2109, !noundef !6 ; 2 uses
  %.not28.i.i.i = icmp ult i64 %i.dv, %i.dw
  %i.dx = select i1 %.not28.i.i.i, i64 0, i64 %i.dw
  %.sroa.022.0.i.i.i = sub nuw i64 %i.dv, %i.dx
  %i.dy = load ptr, ptr %i.v, align 8, !alias.scope !2121, !noalias !2109, !nonnull !6, !noundef !6
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %i.dy, i64 %.sroa.022.0.i.i.i
  %i.ea = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, i64 8) acquire, align 8, !noalias !2137
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %_RNCINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB8_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1c_15trailing_spacesINtB24_20RemoveTrailingSpacesINtNtB1c_11indentation14AddIndentationINtNtBc_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB18_EL_EEEB3P_4next0E0CskIqAKC4t9Ft_2yr.exit29.i.i.i, label %bb.ai, !prof !7

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2137
  store ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, ptr %i.c, align 8, !noalias !2137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2137
  store ptr %i.c, ptr %i.b, align 8, !noalias !2137
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
          to label %.noexc16.i unwind label %.loopexit60.i, !noalias !2109

.noexc16.i:                                       ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2137
  br label %_RNCINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB8_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1c_15trailing_spacesINtB24_20RemoveTrailingSpacesINtNtB1c_11indentation14AddIndentationINtNtBc_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB18_EL_EEEB3P_4next0E0CskIqAKC4t9Ft_2yr.exit29.i.i.i

_RNCINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB8_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1c_15trailing_spacesINtB24_20RemoveTrailingSpacesINtNtB1c_11indentation14AddIndentationINtNtBc_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB18_EL_EEEB3P_4next0E0CskIqAKC4t9Ft_2yr.exit29.i.i.i: ; preds = %.noexc16.i, %bb.ah
  %i.ec = load i32, ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, align 8, !noalias !2137, !noundef !6
  %i.ed = invoke noundef i32 @_RNvMNtCsbRBQYsxaRdD_10yara_x_fmt6tokensNtB2_5Token8category(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dz)
          to label %.noexc17.i unwind label %.loopexit60.i, !noalias !2109

.noexc17.i:                                       ; preds = %_RNCINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB8_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1c_15trailing_spacesINtB24_20RemoveTrailingSpacesINtNtB1c_11indentation14AddIndentationINtNtBc_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB18_EL_EEEB3P_4next0E0CskIqAKC4t9Ft_2yr.exit29.i.i.i
  %i.ee = and i32 %i.ed, %i.ec
  %.not32.i.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not32.i.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.noexc17.i
  %i.ef = add nuw i64 %.sroa.05.252.i.i.i, 1      ; 3 uses
  %i.eg = icmp ult i64 %i.ef, %i.ba
  br i1 %i.eg, label %bb.n, label %.outer._crit_edge.i.i.i

bb.ak:                                            ; preds = %.noexc17.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2142)
  %i.eh = load i64, ptr %i.t, align 8, !alias.scope !2145, !noalias !2109, !noundef !6 ; 2 uses
  %i.ei = icmp ult i64 %.sroa.0.1.ph59.i.i.i, %i.eh
  br i1 %i.ei, label %bb.al, label %.invoke154.i, !prof !7

.invoke154.i:                                     ; preds = %bb.al, %bb.ak
  %i.ej = phi ptr [ @111, %bb.ak ], [ @113, %bb.al ]
  %i.ek = phi ptr [ @112, %bb.ak ], [ @114, %bb.al ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ej, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ek) #29
          to label %.cont155.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, !noalias !2109

.cont155.i:                                       ; preds = %.invoke154.i
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.el = icmp ult i64 %.sroa.05.252.i.i.i, %i.eh
  br i1 %i.el, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE4swapCskIqAKC4t9Ft_2yr.exit.i.i.i, label %.invoke154.i, !prof !7

_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE4swapCskIqAKC4t9Ft_2yr.exit.i.i.i: ; preds = %bb.al
  %i.em = load i64, ptr %i.u, align 8, !alias.scope !2145, !noalias !2109, !noundef !6 ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.1.ph59.i.i.i    ; 2 uses
  %i.eo = load i64, ptr %i.s, align 8, !range !5, !alias.scope !2145, !noalias !2109, !noundef !6 ; 4 uses
  %.not.i30.i.i.i = icmp ult i64 %i.en, %i.eo
  %i.ep = select i1 %.not.i30.i.i.i, i64 0, i64 %i.eo
  %.sroa.02.0.i.i.i.i = sub nuw i64 %i.en, %i.ep
  %i.eq = add i64 %i.em, %.sroa.05.252.i.i.i      ; 2 uses
  %.not13.i.i.i.i = icmp ult i64 %i.eq, %i.eo
  %i.er = select i1 %.not13.i.i.i.i, i64 0, i64 %i.eo
  %.sroa.05.0.i.i.i.i = sub nuw i64 %i.eq, %i.er
  %i.es = load ptr, ptr %i.v, align 8, !alias.scope !2145, !noalias !2109, !nonnull !6, !noundef !6 ; 2 uses
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %i.es, i64 %.sroa.02.0.i.i.i.i ; 2 uses
  %i.eu = getelementptr inbounds nuw [32 x i8], ptr %i.es, i64 %.sroa.05.0.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 32, i1 false), !noalias !2146
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.et, ptr noundef nonnull align 8 dereferenceable(32) %i.eu, i64 32, i1 false), !noalias !2146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !2146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ev = add nuw i64 %.sroa.05.252.i.i.i, 1      ; 3 uses
  %i.ew = add nuw i64 %.sroa.0.1.ph59.i.i.i, 1    ; 2 uses
  %i.ex = icmp ult i64 %i.ev, %i.ba
  br i1 %i.ex, label %.lr.ph53.i.i.i, label %.outer._crit_edge.i.i.i

.loopexit60.i:                                    ; preds = %_RNCINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB8_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1c_15trailing_spacesINtB24_20RemoveTrailingSpacesINtNtB1c_11indentation14AddIndentationINtNtBc_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB18_EL_EEEB3P_4next0E0CskIqAKC4t9Ft_2yr.exit29.i.i.i, %bb.ai
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_RNCINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB8_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1c_15trailing_spacesINtB24_20RemoveTrailingSpacesINtNtB1c_11indentation14AddIndentationINtNtBc_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB18_EL_EEEB3P_4next0E0CskIqAKC4t9Ft_2yr.exit.i.i.i, %bb.l
  %lpad.loopexit62.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0ECskIqAKC4t9Ft_2yr.exit.i, %bb.e
  %lpad.loopexit66.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit: ; preds = %bb.p
  %lpad.loopexit153 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp: ; preds = %.invoke.i, %.invoke154.i
  %lpad.loopexit.split-lp154 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.am:                                            ; preds = %._crit_edge.i.i, %bb.f
  %i.ey = phi i64 [ %.pre6.i.i, %._crit_edge.i.i ], [ %i.aw, %bb.f ] ; 2 uses
  %i.ez = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.av, %bb.f ] ; 2 uses
  %i.fa = add i64 %i.ez, 1
  store i64 %i.fa, ptr %i.t, align 8, !alias.scope !2110, !noalias !2113
  %i.fb = load i64, ptr %i.u, align 8, !alias.scope !2110, !noalias !2113, !noundef !6
  %i.fc = add i64 %i.fb, %i.ez                    ; 2 uses
  %.not.i7.i = icmp ult i64 %i.fc, %i.ey
  %i.fd = select i1 %.not.i7.i, i64 0, i64 %i.ey
  %.sroa.03.0.i.i = sub nuw i64 %i.fc, %i.fd
  %i.fe = load ptr, ptr %i.v, align 8, !alias.scope !2110, !noalias !2113, !nonnull !6, !noundef !6
  %i.ff = getelementptr inbounds nuw [32 x i8], ptr %i.fe, i64 %.sroa.03.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !2109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2101
  br label %bb.an

bb.an:                                            ; preds = %bb.bc, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2101
  invoke void @_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt11indentationINtB4_14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEB1F_4nextCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.o)
          to label %.noexc55 unwind label %.loopexit145

.noexc55:                                         ; preds = %bb.an
  %i.fg = load i16, ptr %i.m, align 8, !range !2102, !noalias !2101, !noundef !6
  %.not2.i = icmp eq i16 %i.fg, -1
  br i1 %.not2.i, label %._crit_edge.i, label %.lr.ph.i

_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1a_15trailing_spacesINtB22_20RemoveTrailingSpacesINtNtB1a_11indentation14AddIndentationINtNtBa_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB16_EL_EEEB3N_4next0ECskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr.exit7.i.i.i.i, %bb.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr.exit7.i.i.i.i.preheader, %bb.t, %bb.o, %.outer._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !2101
  %i.fh = load i64, ptr %i.t, align 8, !alias.scope !2147, !noalias !2150, !noundef !6 ; 2 uses
  %i.fi = load i64, ptr %i.s, align 8, !range !5, !alias.scope !2147, !noalias !2150, !noundef !6 ; 2 uses
  %i.fj = icmp eq i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1a_15trailing_spacesINtB22_20RemoveTrailingSpacesINtNtB1a_11indentation14AddIndentationINtNtBa_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB16_EL_EEEB3N_4next0ECskIqAKC4t9Ft_2yr.exit.i
  invoke fastcc void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE4growCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s)
          to label %._crit_edge.i22.i unwind label %bb.ap, !noalias !2150

._crit_edge.i22.i:                                ; preds = %bb.ao
  %.pre.i23.i = load i64, ptr %i.t, align 8, !alias.scope !2147, !noalias !2150
  %.pre6.i24.i = load i64, ptr %i.s, align 8, !range !5, !alias.scope !2147, !noalias !2150
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j) #25
          to label %.body unwind label %bb.aq, !noalias !2109

bb.aq:                                            ; preds = %bb.ap
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2109
  unreachable

bb.ar:                                            ; preds = %._crit_edge.i22.i, %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1a_15trailing_spacesINtB22_20RemoveTrailingSpacesINtNtB1a_11indentation14AddIndentationINtNtBa_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB16_EL_EEEB3N_4next0ECskIqAKC4t9Ft_2yr.exit.i
  %i.fm = phi i64 [ %.pre6.i24.i, %._crit_edge.i22.i ], [ %i.fi, %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1a_15trailing_spacesINtB22_20RemoveTrailingSpacesINtNtB1a_11indentation14AddIndentationINtNtBa_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB16_EL_EEEB3N_4next0ECskIqAKC4t9Ft_2yr.exit.i ] ; 2 uses
  %i.fn = phi i64 [ %.pre.i23.i, %._crit_edge.i22.i ], [ %i.fh, %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1a_15trailing_spacesINtB22_20RemoveTrailingSpacesINtNtB1a_11indentation14AddIndentationINtNtBa_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB16_EL_EEEB3N_4next0ECskIqAKC4t9Ft_2yr.exit.i ] ; 2 uses
  %i.fo = add i64 %i.fn, 1
  store i64 %i.fo, ptr %i.t, align 8, !alias.scope !2147, !noalias !2150
  %i.fp = load i64, ptr %i.u, align 8, !alias.scope !2147, !noalias !2150, !noundef !6
  %i.fq = add i64 %i.fp, %i.fn                    ; 2 uses
  %.not.i20.i = icmp ult i64 %i.fq, %i.fm
  %i.fr = select i1 %.not.i20.i, i64 0, i64 %i.fm
  %.sroa.03.0.i21.i = sub nuw i64 %i.fq, %i.fr
  %i.fs = load ptr, ptr %i.v, align 8, !alias.scope !2147, !noalias !2150, !nonnull !6, !noundef !6
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr %i.fs, i64 %.sroa.03.0.i21.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !2109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2101
  %i.fu = load i64, ptr %i.t, align 8, !alias.scope !2152, !noalias !2155, !noundef !6 ; 2 uses
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit31.i, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit31.i.sink.split

_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit31.i.sink.split: ; preds = %bb.ar, %bb.bb
  %.sink292 = phi i64 [ %i.ha, %bb.bb ], [ %i.fu, %bb.ar ]
  %i.fw = load i64, ptr %i.u, align 8, !alias.scope !2091, !noalias !2109, !noundef !6 ; 2 uses
  %i.fx = add i64 %i.fw, 1                        ; 2 uses
  %i.fy = load i64, ptr %i.s, align 8, !range !5, !alias.scope !2091, !noalias !2109, !noundef !6 ; 3 uses
  %.not.i50.i = icmp ult i64 %i.fx, %i.fy
  %i.fz = select i1 %.not.i50.i, i64 0, i64 %i.fy
  %.sroa.0.0.i51.i = sub nuw i64 %i.fx, %i.fz
  store i64 %.sroa.0.0.i51.i, ptr %i.u, align 8, !alias.scope !2091, !noalias !2109
  %i.ga = add i64 %.sink292, -1                   ; 2 uses
  store i64 %i.ga, ptr %i.t, align 8, !alias.scope !2091, !noalias !2109
  %i.gb = icmp ult i64 %i.ga, %i.fy
  call void @llvm.assume(i1 %i.gb)
  %i.gc = load ptr, ptr %i.v, align 8, !alias.scope !2091, !noalias !2109, !nonnull !6, !noundef !6
  %i.gd = getelementptr inbounds nuw [32 x i8], ptr %i.gc, i64 %i.fw ; 3 uses
  %.sroa.080.0.copyload84 = load i16, ptr %i.gd, align 8, !noalias !6
  %.sroa.15.sroa.9.0..sroa.15.0..sroa_idx88.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %4 = load <2 x i64>, ptr %.sroa.15.sroa.9.0..sroa.15.0..sroa_idx88.sroa_idx, align 8, !noalias !6
  %.sroa.15.sroa.11.0..sroa.15.0..sroa_idx88.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %.sroa.15.sroa.11.0.copyload123 = load i64, ptr %.sroa.15.sroa.11.0..sroa.15.0..sroa_idx88.sroa_idx, align 8, !noalias !6
  br label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit31.i

_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit31.i: ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit31.i.sink.split, %bb.bb, %bb.ar
  %.sroa.080.0 = phi i16 [ -1, %bb.ar ], [ -1, %bb.bb ], [ %.sroa.080.0.copyload84, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit31.i.sink.split ]
  %.sroa.15.sroa.11.1 = phi i64 [ %.sroa.15.sroa.11.0, %bb.ar ], [ %.sroa.15.sroa.11.0, %bb.bb ], [ %.sroa.15.sroa.11.0.copyload123, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit31.i.sink.split ]
  %i.ge = phi <2 x i64> [ %i.ag, %bb.ar ], [ %i.ag, %bb.bb ], [ %4, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit31.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2101
  br label %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0ECskIqAKC4t9Ft_2yr.exit.i: ; preds = %.noexc.i, %bb.d
  %i.gf = load i32, ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, align 8, !noalias !2101, !noundef !6
  %i.gg = invoke noundef i32 @_RNvMNtCsbRBQYsxaRdD_10yara_x_fmt6tokensNtB2_5Token8category(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !2109

bb.as:                                            ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0ECskIqAKC4t9Ft_2yr.exit.i
  %i.gh = and i32 %i.gg, %i.gf
  %.not3.i = icmp eq i32 %i.gh, 0
  br i1 %.not3.i, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !2101
  %i.gi = load i64, ptr %i.t, align 8, !alias.scope !2157, !noalias !2160, !noundef !6 ; 2 uses
  %i.gj = load i64, ptr %i.s, align 8, !range !5, !alias.scope !2157, !noalias !2160, !noundef !6 ; 2 uses
  %i.gk = icmp eq i64 %i.gi, %i.gj
  br i1 %i.gk, label %bb.au, label %bb.bb

bb.au:                                            ; preds = %bb.at
  invoke fastcc void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE4growCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s)
          to label %._crit_edge.i34.i unwind label %bb.av, !noalias !2160

._crit_edge.i34.i:                                ; preds = %bb.au
  %.pre.i35.i = load i64, ptr %i.t, align 8, !alias.scope !2157, !noalias !2160
  %.pre6.i36.i = load i64, ptr %i.s, align 8, !range !5, !alias.scope !2157, !noalias !2160
  br label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #25
          to label %.body unwind label %bb.aw, !noalias !2109

bb.aw:                                            ; preds = %bb.av
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2109
  unreachable

bb.ax:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !2101
  %i.gn = load i64, ptr %i.t, align 8, !alias.scope !2162, !noalias !2165, !noundef !6 ; 2 uses
  %i.go = load i64, ptr %i.s, align 8, !range !5, !alias.scope !2162, !noalias !2165, !noundef !6 ; 2 uses
  %i.gp = icmp eq i64 %i.gn, %i.go
  br i1 %i.gp, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  invoke fastcc void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE4growCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s)
          to label %._crit_edge.i43.i unwind label %bb.az, !noalias !2165

._crit_edge.i43.i:                                ; preds = %bb.ay
  %.pre.i44.i = load i64, ptr %i.t, align 8, !alias.scope !2162, !noalias !2165
  %.pre6.i45.i = load i64, ptr %i.s, align 8, !range !5, !alias.scope !2162, !noalias !2165
  br label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #25
          to label %.body unwind label %bb.ba, !noalias !2109

bb.ba:                                            ; preds = %bb.az
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2109
  unreachable

bb.bb:                                            ; preds = %._crit_edge.i34.i, %bb.at
  %i.gs = phi i64 [ %.pre6.i36.i, %._crit_edge.i34.i ], [ %i.gj, %bb.at ] ; 2 uses
  %i.gt = phi i64 [ %.pre.i35.i, %._crit_edge.i34.i ], [ %i.gi, %bb.at ] ; 2 uses
  %i.gu = add i64 %i.gt, 1
  store i64 %i.gu, ptr %i.t, align 8, !alias.scope !2157, !noalias !2160
  %i.gv = load i64, ptr %i.u, align 8, !alias.scope !2157, !noalias !2160, !noundef !6
  %i.gw = add i64 %i.gv, %i.gt                    ; 2 uses
  %.not.i32.i = icmp ult i64 %i.gw, %i.gs
  %i.gx = select i1 %.not.i32.i, i64 0, i64 %i.gs
  %.sroa.03.0.i33.i = sub nuw i64 %i.gw, %i.gx
  %i.gy = load ptr, ptr %i.v, align 8, !alias.scope !2157, !noalias !2160, !nonnull !6, !noundef !6
  %i.gz = getelementptr inbounds nuw [32 x i8], ptr %i.gy, i64 %.sroa.03.0.i33.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gz, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !2109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2101
  %i.ha = load i64, ptr %i.t, align 8, !alias.scope !2167, !noalias !2170, !noundef !6 ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit31.i, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit31.i.sink.split

bb.bc:                                            ; preds = %._crit_edge.i43.i, %bb.ax
  %i.hc = phi i64 [ %.pre6.i45.i, %._crit_edge.i43.i ], [ %i.go, %bb.ax ] ; 2 uses
  %i.hd = phi i64 [ %.pre.i44.i, %._crit_edge.i43.i ], [ %i.gn, %bb.ax ] ; 2 uses
  %i.he = add i64 %i.hd, 1
  store i64 %i.he, ptr %i.t, align 8, !alias.scope !2162, !noalias !2165
  %i.hf = load i64, ptr %i.u, align 8, !alias.scope !2162, !noalias !2165, !noundef !6
  %i.hg = add i64 %i.hf, %i.hd                    ; 2 uses
  %.not.i41.i = icmp ult i64 %i.hg, %i.hc
  %i.hh = select i1 %.not.i41.i, i64 0, i64 %i.hc
  %.sroa.03.0.i42.i = sub nuw i64 %i.hg, %i.hh
  %i.hi = load ptr, ptr %i.v, align 8, !alias.scope !2162, !noalias !2165, !nonnull !6, !noundef !6
  %i.hj = getelementptr inbounds nuw [32 x i8], ptr %i.hi, i64 %.sroa.03.0.i42.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hj, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !2109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2101
  br label %bb.an

.loopexit.split-lp.i:                             ; preds = %bb.ad, %bb.v, %bb.ae, %bb.w, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit60.i, %.body.i.i.i.i
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp154, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp ], [ %i.dg, %.body.i.i.i.i ], [ %i.cs, %bb.w ], [ %lpad.loopexit.i, %.loopexit60.i ], [ %lpad.loopexit62.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit66.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit153, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit ], [ %i.dp, %bb.ae ], [ %i.cs, %bb.v ], [ %i.dp, %bb.ad ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l) #25
          to label %.body unwind label %bb.bd, !noalias !2109

bb.bd:                                            ; preds = %.loopexit.split-lp.i
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2109
  unreachable

.body:                                            ; preds = %.loopexit145, %.loopexit.split-lp146.loopexit.split-lp, %.loopexit.split-lp146.loopexit, %bb.bx, %bb.br, %.loopexit.split-lp.i, %bb.az, %bb.av, %bb.ap, %bb.h, %bb.bq
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.bq ], [ %i.gq, %bb.az ], [ %eh.lpad-body.ph.i, %.loopexit.split-lp.i ], [ %i.ay, %bb.h ], [ %i.gl, %bb.av ], [ %i.fk, %bb.ap ], [ %i.ii, %bb.br ], [ %i.in, %bb.bx ], [ %lpad.loopexit147.a, %.loopexit145 ], [ %lpad.loopexit150, %.loopexit.split-lp146.loopexit ], [ %lpad.loopexit.split-lp151, %.loopexit.split-lp146.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spaces20RemoveTrailingSpacesINtNtBG_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtNtBG_6tokens5TokenEL_EEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(104) %i.o) #25
          to label %bb.be unwind label %bb.cc

.loopexit145:                                     ; preds = %bb.an
  %lpad.loopexit147.a = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp146.loopexit:                   ; preds = %31, %bb.by, %bb.bn, %bb.bl, %bb.bk, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit.thread.i, %bb.cl
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp146.loopexit.split-lp:          ; preds = %bb.bs
  %lpad.loopexit.split-lp151 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit: ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit31.i, %bb.c
  %.sroa.080.1 = phi i16 [ %.sroa.080.0, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit31.i ], [ %.sroa.080.0.copyload83, %bb.c ] ; 2 uses
  %.sroa.15.sroa.11.2 = phi i64 [ %.sroa.15.sroa.11.1, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit31.i ], [ %.sroa.15.sroa.11.0.copyload122, %bb.c ]
  %i.hl = phi <2 x i64> [ %i.ge, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit31.i ], [ %3, %bb.c ]
  %.not = icmp eq i16 %.sroa.080.1, -1
  br i1 %.not, label %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread, label %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129

_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129: ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit
  %5 = phi i64 [ %.sroa.15.sroa.11.2, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit ], [ %.sroa.15.sroa.11.0.copyload, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit.i ] ; 3 uses
  %.sroa.080.1137 = phi i16 [ %.sroa.080.1, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit ], [ %.sroa.080.0.copyload81, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit.i ] ; 3 uses
  %i.hm = phi <2 x i64> [ %i.hl, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit ], [ %2, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit.i ] ; 17 uses
  switch i16 %.sroa.080.1137, label %default.unreachable [
    i16 0, label %.backedge
    i16 1, label %.backedge
    i16 2, label %.backedge
    i16 3, label %.backedge
    i16 4, label %.backedge
    i16 5, label %.backedge
    i16 6, label %.backedge
    i16 7, label %.backedge
    i16 8, label %.backedge
    i16 9, label %bb.bj
    i16 10, label %bb.bk
    i16 11, label %bb.bj
    i16 12, label %bb.bo
    i16 13, label %bb.bo
    i16 14, label %bb.bo
    i16 15, label %bb.bo
    i16 16, label %bb.bl
    i16 17, label %bb.bj
    i16 18, label %bb.bj
    i16 19, label %bb.bj
    i16 20, label %bb.bj
    i16 21, label %bb.bj
    i16 22, label %bb.bj
  ]

_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread: ; preds = %._crit_edge.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spaces20RemoveTrailingSpacesINtNtBG_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtNtBG_6tokens5TokenEL_EEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(104) %i.o)
          to label %bb.bg unwind label %bb.bf

bb.be:                                            ; preds = %bb.bf, %.body
  %.pn47 = phi { ptr, i32 } [ %i.hn, %bb.bf ], [ %.pn, %.body ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #25
          to label %common.resume unwind label %bb.cc

bb.bf:                                            ; preds = %.loopexit156, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bg:                                            ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit79 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ho = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.be, %bb.co, %bb.bh
  %common.resume.op = phi { ptr, i32 } [ %i.ja, %bb.co ], [ %i.ho, %bb.bh ], [ %.pn47, %bb.be ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit79: ; preds = %bb.bg, %bb.cn
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.cn ], [ null, %bb.bg ]
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret ptr %.sroa.0.0

default.unreachable:                              ; preds = %bb.cj, %bb.bj, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129
  unreachable

bb.bj:                                            ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129
  switch i16 %.sroa.080.1137, label %default.unreachable [
    i16 22, label %bb.ci
    i16 21, label %bb.ch
    i16 20, label %bb.cg
    i16 19, label %bb.cf
    i16 18, label %bb.ce
    i16 17, label %13
    i16 16, label %12
    i16 15, label %31
    i16 14, label %31
    i16 9, label %6
    i16 10, label %7
    i16 11, label %8
    i16 12, label %31
    i16 13, label %31
  ]

bb.bk:                                            ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129
  %i.hq = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit unwind label %.loopexit.split-lp146.loopexit ; 2 uses

bb.bl:                                            ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129
  %i.hr = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit58 unwind label %.loopexit.split-lp146.loopexit ; 2 uses

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.bk
  %.not43 = icmp eq ptr %i.hq, null
  br i1 %.not43, label %bb.bm, label %.loopexit156

bb.bm:                                            ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit
  %i.hs = load i64, ptr %i.r, align 8, !alias.scope !2172, !noundef !6 ; 3 uses
  %i.ht = load i64, ptr %i.p, align 8, !range !5, !alias.scope !2172, !noundef !6
  %i.hu = icmp eq i64 %i.hs, %i.ht
  br i1 %i.hu, label %bb.bn, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskIqAKC4t9Ft_2yr.exit

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #27
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskIqAKC4t9Ft_2yr.exit unwind label %.loopexit.split-lp146.loopexit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.bn, %bb.bm
  %i.hv = load ptr, ptr %i.q, align 8, !alias.scope !2172, !nonnull !6, !noundef !6
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hs
  store i8 9, ptr %i.hw, align 1
  %i.hx = add i64 %i.hs, 1
  store i64 %i.hx, ptr %i.r, align 8, !alias.scope !2172
  br label %.backedge

.backedge:                                        ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskIqAKC4t9Ft_2yr.exit, %bb.cl, %bb.cd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit71, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129
  br label %bb.b

.loopexit156:                                     ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit77, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit58, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit
  %.sroa.0.1 = phi ptr [ %.sroa.0.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit ], [ %32, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit77 ], [ %i.hq, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit ], [ %i.hr, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit58 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spaces20RemoveTrailingSpacesINtNtBG_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtNtBG_6tokens5TokenEL_EEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(104) %i.o)
          to label %bb.cn unwind label %bb.bf

bb.bo:                                            ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskIqAKC4t9Ft_2yr.exit.thread129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store <2 x i64> %i.hm, ptr %i.n, align 16
  store i64 %5, ptr %.sroa.19.8..sroa_idx104, align 16
  %i.hy = extractelement <2 x i64> %i.hm, i64 1
  %i.hz = inttoptr i64 %i.hy to ptr               ; 5 uses
  %.idx = mul nuw nsw i64 %5, 24
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.idx
  %i.ib = icmp eq i64 %5, 0
  br i1 %i.ib, label %.preheader, label %bb.bp

.preheader:                                       ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit61, %bb.bo
  %.sroa.011.1.ph = phi ptr [ %i.ih, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit61 ], [ %i.hz, %bb.bo ]
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !nonnull !6, !noundef !6
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.if = load i64, ptr %i.ie, align 8, !noundef !6
  %i.ig = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.id, i64 noundef range(i64 0, -9223372036854775808) %i.if)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit61 unwind label %.loopexit.split-lp ; 2 uses

.loopexit:                                        ; preds = %bb.bv, %bb.ca, %bb.cb
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit.split-lp:                               ; preds = %bb.bp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #25
          to label %.body unwind label %bb.cc

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit61: ; preds = %bb.bp
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %.not39 = icmp eq ptr %i.ig, null
  br i1 %.not39, label %.preheader, label %.loopexit140

.loopexit140:                                     ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit61, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit66, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit73, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit75
  %.sroa.0.2 = phi ptr [ %i.ir, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit73 ], [ %i.iw, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit75 ], [ %i.im, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit66 ], [ %i.ig, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit61 ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.bs unwind label %bb.br

bb.br:                                            ; preds = %.loopexit140
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body unwind label %bb.bt

bb.bs:                                            ; preds = %.loopexit140
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit unwind label %.loopexit.split-lp146.loopexit.split-lp

bb.bt:                                            ; preds = %bb.br
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.bu:                                            ; preds = %.preheader, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit75
  %.sroa.011.1 = phi ptr [ %i.il, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit75 ], [ %.sroa.011.1.ph, %.preheader ] ; 4 uses
  %i.ik = icmp eq ptr %.sroa.011.1, %i.ia
  br i1 %i.ik, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.011.1, i64 24
  %i.im = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit66 unwind label %.loopexit ; 2 uses

bb.bw:                                            ; preds = %bb.bu
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.by unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body unwind label %bb.bz

bb.by:                                            ; preds = %bb.bw
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit71 unwind label %.loopexit.split-lp146.loopexit

bb.bz:                                            ; preds = %bb.bx
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit66: ; preds = %bb.bv
  %.not40 = icmp eq ptr %i.im, null
  br i1 %.not40, label %bb.ca, label %.loopexit140

bb.ca:                                            ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit66
  %i.ip = load ptr, ptr %i.q, align 8, !nonnull !6, !noundef !6
  %i.iq = load i64, ptr %i.r, align 8, !noundef !6
  %i.ir = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ip, i64 noundef range(i64 0, -9223372036854775808) %i.iq)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit73 unwind label %.loopexit ; 2 uses

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit73: ; preds = %bb.ca
  %.not41 = icmp eq ptr %i.ir, null
  br i1 %.not41, label %bb.cb, label %.loopexit140

bb.cb:                                            ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit73
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.011.1, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !nonnull !6, !noundef !6
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.011.1, i64 16
  %i.iv = load i64, ptr %i.iu, align 8, !noundef !6
  %i.iw = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.it, i64 noundef range(i64 0, -9223372036854775808) %i.iv)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit75 unwind label %.loopexit ; 2 uses

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit75: ; preds = %bb.cb
  %.not42 = icmp eq ptr %i.iw, null
  br i1 %.not42, label %bb.bu, label %.loopexit140

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.loopexit156

bb.cc:                                            ; preds = %bb.bq, %bb.be, %.body
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit71: ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.backedge

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit58: ; preds = %bb.bl
  %.not38 = icmp eq ptr %i.hr, null
  br i1 %.not38, label %bb.cd, label %.loopexit156

bb.cd:                                            ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit58
  store i64 0, ptr %i.r, align 8
  br label %.backedge

6:                                                ; preds = %bb.bj
  br label %31

7:                                                ; preds = %bb.bj
  br label %31

8:                                                ; preds = %bb.bj
  %9 = extractelement <2 x i64> %i.hm, i64 0
  %10 = inttoptr i64 %9 to ptr
  %11 = extractelement <2 x i64> %i.hm, i64 1
  br label %31

12:                                               ; preds = %bb.bj
  br label %31

13:                                               ; preds = %bb.bj
  %14 = extractelement <2 x i64> %i.hm, i64 0
  %15 = inttoptr i64 %14 to ptr
  %16 = extractelement <2 x i64> %i.hm, i64 1
  br label %31

bb.ce:                                            ; preds = %bb.bj
  %17 = extractelement <2 x i64> %i.hm, i64 0
  %18 = inttoptr i64 %17 to ptr
  %19 = extractelement <2 x i64> %i.hm, i64 1
  br label %31

bb.cf:                                            ; preds = %bb.bj
  %20 = extractelement <2 x i64> %i.hm, i64 0
  %21 = inttoptr i64 %20 to ptr
  %22 = extractelement <2 x i64> %i.hm, i64 1
  br label %31

bb.cg:                                            ; preds = %bb.bj
  %23 = extractelement <2 x i64> %i.hm, i64 0
  %24 = inttoptr i64 %23 to ptr
  %25 = extractelement <2 x i64> %i.hm, i64 1
  br label %31

bb.ch:                                            ; preds = %bb.bj
  %26 = extractelement <2 x i64> %i.hm, i64 0
  %27 = inttoptr i64 %26 to ptr
  %28 = extractelement <2 x i64> %i.hm, i64 1
  br label %31

bb.ci:                                            ; preds = %bb.bj
  %i.iy = extractelement <2 x i64> %i.hm, i64 0
  %29 = inttoptr i64 %i.iy to ptr
  %30 = extractelement <2 x i64> %i.hm, i64 1
  br label %31

31:                                               ; preds = %bb.bj, %bb.bj, %8, %13, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.bj, %bb.bj, %12, %7, %6
  %.sroa.6.0 = phi i64 [ 1, %6 ], [ 1, %7 ], [ %11, %8 ], [ 1, %12 ], [ %16, %13 ], [ %19, %bb.ce ], [ %22, %bb.cf ], [ %25, %bb.cg ], [ %28, %bb.ch ], [ %30, %bb.ci ], [ 0, %bb.bj ], [ 0, %bb.bj ], [ 0, %bb.bj ], [ 0, %bb.bj ]
  %.sroa.010.0 = phi ptr [ @84, %6 ], [ @82, %7 ], [ %10, %8 ], [ @83, %12 ], [ %15, %13 ], [ %18, %bb.ce ], [ %21, %bb.cf ], [ %24, %bb.cg ], [ %27, %bb.ch ], [ %29, %bb.ci ], [ inttoptr (i64 1 to ptr), %bb.bj ], [ inttoptr (i64 1 to ptr), %bb.bj ], [ inttoptr (i64 1 to ptr), %bb.bj ], [ inttoptr (i64 1 to ptr), %bb.bj ]
  %32 = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.010.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.0)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit77 unwind label %.loopexit.split-lp146.loopexit ; 2 uses

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit77: ; preds = %31
  %.not44 = icmp eq ptr %32, null
  br i1 %.not44, label %bb.cj, label %.loopexit156

bb.cj:                                            ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskIqAKC4t9Ft_2yr.exit77
  switch i16 %.sroa.080.1137, label %default.unreachable [
    i16 22, label %bb.cm
    i16 21, label %bb.cm
    i16 20, label %bb.cm
    i16 19, label %bb.cm
    i16 18, label %bb.cm
    i16 17, label %bb.cm
    i16 16, label %bb.ck
    i16 15, label %bb.cl
    i16 14, label %bb.cl
    i16 9, label %bb.ck
    i16 10, label %bb.ck
    i16 11, label %bb.cm
    i16 12, label %bb.cl
    i16 13, label %bb.cl
  ]

bb.ck:                                            ; preds = %bb.cj, %bb.cj, %bb.cj
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cm, %bb.ck
  %.sroa.8.0 = phi i64 [ 1, %bb.ck ], [ 0, %bb.cj ], [ %i.iz, %bb.cm ], [ 0, %bb.cj ], [ 0, %bb.cj ], [ 0, %bb.cj ]
  invoke void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter7sources8repeat_n7RepeatNhEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %.sroa.8.0, i8 32)
          to label %.backedge unwind label %.loopexit.split-lp146.loopexit

bb.cm:                                            ; preds = %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj
  %i.iz = extractelement <2 x i64> %i.hm, i64 1
  br label %bb.cl

bb.cn:                                            ; preds = %.loopexit156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit79 unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ja = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNvXs3f_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENtBf_7Visitor10visit_boolNtNtCsgTIQnf6SZNZ_7figment5error5ErrorEB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = zext i1 %1 to i8
  store i8 %i.d, ptr %i.c, align 1
  store i8 0, ptr %i.b, align 8
  call void @_RNvXs4_NtCsgTIQnf6SZNZ_7figment5errorNtB5_5ErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNvXs3f_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENtBf_7Visitor10visit_i128NtNtCsgTIQnf6SZNZ_7figment5error5ErrorEB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0, i128 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [58 x i8], align 1                ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 2 uses
  store i128 %1, ptr %i.f, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.e, i8 0, i64 58, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 58, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs_NtNtCskKLDkoKarTP_4core3fmt3numnNtB6_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.i = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @87, ptr noundef nonnull @86, ptr noundef nonnull %i.c)
  br i1 %i.i, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCskIqAKC4t9Ft_2yr.exit, !prof !362

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @110, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #29
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = call { ptr, i64 } @_RNvMNtCsaeRQ2XwCvzm_10serde_core6formatNtB2_3Buf6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.l, ptr %i.n, align 8
  store i8 17, ptr %i.b, align 8
  call void @_RNvXs4_NtCsgTIQnf6SZNZ_7figment5errorNtB5_5ErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNvXs3f_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENtBf_7Visitor10visit_noneNtNtCsgTIQnf6SZNZ_7figment5error5ErrorEB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 8, ptr %i.b, align 8
  call void @_RNvXs4_NtCsgTIQnf6SZNZ_7figment5errorNtB5_5ErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNvXs3f_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENtBf_7Visitor10visit_u128NtNtCsgTIQnf6SZNZ_7figment5error5ErrorEB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0, i128 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [57 x i8], align 1                ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 2 uses
  store i128 %1, ptr %i.f, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(57) %i.e, i8 0, i64 57, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 57, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXNtNtCskKLDkoKarTP_4core3fmt3numoNtB4_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.i = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @87, ptr noundef nonnull @90, ptr noundef nonnull %i.c)
  br i1 %i.i, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCskIqAKC4t9Ft_2yr.exit, !prof !362

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @110, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #29
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = call { ptr, i64 } @_RNvMNtCsaeRQ2XwCvzm_10serde_core6formatNtB2_3Buf6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.l, ptr %i.n, align 8
  store i8 17, ptr %i.b, align 8
  call void @_RNvXs4_NtCsgTIQnf6SZNZ_7figment5errorNtB5_5ErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNvXs3f_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENtBf_7Visitor10visit_unitNtNtCsgTIQnf6SZNZ_7figment5error5ErrorEB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 7, ptr %i.b, align 8
  call void @_RNvXs4_NtCsgTIQnf6SZNZ_7figment5errorNtB5_5ErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNvXs3f_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENtBf_7Visitor8visit_i8NtNtCsgTIQnf6SZNZ_7figment5error5ErrorEB2Y_(ptr dead_on_unwind noalias nofree noundef writable sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0, i8 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = sext i8 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2175
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.c, ptr %i.d, align 8, !noalias !2175
  store i8 2, ptr %i.b, align 8, !noalias !2175
  call void @_RNvXs4_NtCsgTIQnf6SZNZ_7figment5errorNtB5_5ErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2175
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNvXs3f_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENtBf_7Visitor8visit_u8NtNtCsgTIQnf6SZNZ_7figment5error5ErrorEB2Y_(ptr dead_on_unwind noalias nofree noundef writable sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0, i8 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = zext i8 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2178
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.c, ptr %i.d, align 8, !noalias !2178
  store i8 1, ptr %i.b, align 8, !noalias !2178
  call void @_RNvXs4_NtCsgTIQnf6SZNZ_7figment5errorNtB5_5ErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2178
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNvXs3f_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENtBf_7Visitor9visit_f32NtNtCsgTIQnf6SZNZ_7figment5error5ErrorEB2Y_(ptr dead_on_unwind noalias nofree noundef writable sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0, float noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = fpext float %1 to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2181
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.c, ptr %i.d, align 8, !noalias !2181
  store i8 3, ptr %i.b, align 8, !noalias !2181
  call void @_RNvXs4_NtCsgTIQnf6SZNZ_7figment5errorNtB5_5ErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2181
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNvXs3f_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENtBf_7Visitor9visit_f64NtNtCsgTIQnf6SZNZ_7figment5error5ErrorEB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0, double noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_1
