Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.003?download=true
inline.NumInlined: 4275
inline.NumDeleted: 1770
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEE9next_implKb0_ECsPYQCUnoTxQ_10collection:bb.a
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge18

._crit_edge18:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [80 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted13, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val9 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val9, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1280 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorEE9fold_implNCINvXsG_NtB8_3mapINtB2z_4IterBV_B1x_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB38_8adapters3map8map_foldTRBV_RB1x_EjjNCINvNtNtCs4J2qyOfMFpM_5prost8encoding8hash_map24encoded_len_with_defaultBV_B1x_NvNtB4W_6string11encoded_lenINvNtB4W_7message11encoded_lenB1x_EE0NCINvXsK_NtB36_5accumjNtB7j_3Sum3sumINtB48_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBV_B1x_EB4P_EE0E0E0jECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.promoted36 = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val.i = load ptr, ptr %i.d, align 8           ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.promoted = load ptr, ptr %i.c, align 8
  %.pre = load i16, ptr %i.b, align 8
  br label %.outer

.outer:                                           ; preds = %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2d_8adapters3map8map_foldTRBN_RB1p_EjjNCINvNtNtCs4J2qyOfMFpM_5prost8encoding8hash_map24encoded_len_with_defaultBN_B1p_NvNtB41_6string11encoded_lenINvNtB41_7message11encoded_lenB1p_EE0NCINvXsK_NtB2b_5accumjNtB6o_3Sum3sumINtB3d_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBN_B1p_EB3U_EE0E0E0CsPYQCUnoTxQ_10collection.exit, %bb.a
  %i.e = phi i16 [ %i.j, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2d_8adapters3map8map_foldTRBN_RB1p_EjjNCINvNtNtCs4J2qyOfMFpM_5prost8encoding8hash_map24encoded_len_with_defaultBN_B1p_NvNtB41_6string11encoded_lenINvNtB41_7message11encoded_lenB1p_EE0NCINvXsK_NtB2b_5accumjNtB6o_3Sum3sumINtB3d_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBN_B1p_EB3U_EE0E0E0CsPYQCUnoTxQ_10collection.exit ], [ %.pre, %bb.a ] ; 2 uses
  %.lcssa3540 = phi ptr [ %.lcssa3539, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2d_8adapters3map8map_foldTRBN_RB1p_EjjNCINvNtNtCs4J2qyOfMFpM_5prost8encoding8hash_map24encoded_len_with_defaultBN_B1p_NvNtB41_6string11encoded_lenINvNtB41_7message11encoded_lenB1p_EE0NCINvXsK_NtB2b_5accumjNtB6o_3Sum3sumINtB3d_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBN_B1p_EB3U_EE0E0E0CsPYQCUnoTxQ_10collection.exit ], [ %.promoted, %bb.a ] ; 2 uses
  %.lcssa3438 = phi ptr [ %.lcssa3437, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2d_8adapters3map8map_foldTRBN_RB1p_EjjNCINvNtNtCs4J2qyOfMFpM_5prost8encoding8hash_map24encoded_len_with_defaultBN_B1p_NvNtB41_6string11encoded_lenINvNtB41_7message11encoded_lenB1p_EE0NCINvXsK_NtB2b_5accumjNtB6o_3Sum3sumINtB3d_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBN_B1p_EB3U_EE0E0E0CsPYQCUnoTxQ_10collection.exit ], [ %.promoted36, %bb.a ] ; 2 uses
  %.sroa.02.0.ph = phi i64 [ %i.rn, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2d_8adapters3map8map_foldTRBN_RB1p_EjjNCINvNtNtCs4J2qyOfMFpM_5prost8encoding8hash_map24encoded_len_with_defaultBN_B1p_NvNtB41_6string11encoded_lenINvNtB41_7message11encoded_lenB1p_EE0NCINvXsK_NtB2b_5accumjNtB6o_3Sum3sumINtB3d_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBN_B1p_EB3U_EE0E0E0CsPYQCUnoTxQ_10collection.exit ], [ %2, %bb.a ] ; 2 uses
  %.sroa.0.0.ph = phi i64 [ %i.ro, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2d_8adapters3map8map_foldTRBN_RB1p_EjjNCINvNtNtCs4J2qyOfMFpM_5prost8encoding8hash_map24encoded_len_with_defaultBN_B1p_NvNtB41_6string11encoded_lenINvNtB41_7message11encoded_lenB1p_EE0NCINvXsK_NtB2b_5accumjNtB6o_3Sum3sumINtB3d_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBN_B1p_EB3U_EE0E0E0CsPYQCUnoTxQ_10collection.exit ], [ %1, %bb.a ] ; 2 uses
  %.not31 = icmp eq i16 %i.e, 0
  br i1 %.not31, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %.outer
  %i.f = icmp eq i64 %.sroa.0.0.ph, 0
  br i1 %i.f, label %bb.bn, label %.lr.ph.split

._crit_edge:                                      ; preds = %.lr.ph.split
  store ptr %i.rs, ptr %0, align 8
  store ptr %i.rt, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.outer
  %.lcssa3539 = phi ptr [ %i.rt, %._crit_edge ], [ %.lcssa3540, %.outer ]
  %.lcssa3437 = phi ptr [ %i.rs, %._crit_edge ], [ %.lcssa3438, %.outer ] ; 2 uses
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.e, %.outer ] ; 3 uses
  %i.g = add i16 %.lcssa, -1
  %i.h = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.i = zext nneg i16 %i.h to i64
  %i.j = and i16 %i.g, %.lcssa                    ; 2 uses
  store i16 %i.j, ptr %i.b, align 8
  %i.k = sub nsw i64 0, %i.i
  %i.l = getelementptr inbounds [216 x i8], ptr %.lcssa3437, i64 %i.k ; 68 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -192 ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 -200
  %.val3.i = load i64, ptr %i.n, align 8, !noundef !10 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2918)
  call void @llvm.experimental.noalias.scope.decl(metadata !2919)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2920
  store i64 0, ptr %i.a, align 8, !alias.scope !2921, !noalias !2920
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2921, !noalias !2920
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2921, !noalias !2920
  %i.o = icmp eq i64 %.val3.i, 0
  br i1 %i.o, label %bb.e, label %_RNvXs1h_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXs1h_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i: ; preds = %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %_RNvXs1h_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume.i.i.i:                              ; preds = %bb.f, %bb.c
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.aa, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i.i: ; preds = %_RNvXs1h_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2920
  %i.r = icmp sgt i64 %.val3.i, -1
  call void @llvm.assume(i1 %i.r)
  %i.s = or i64 %.val3.i, 1
  %i.t = call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.s, i1 true)
  %i.u = xor i64 %i.t, 63
  %i.v = mul nuw nsw i64 %i.u, 9
  %i.w = add nuw nsw i64 %i.v, 73
  %i.x = lshr i64 %i.w, 6
  %i.y = add nuw i64 %.val3.i, 1
  %i.z = add nuw i64 %i.y, %i.x
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit10.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit10.i.i.i: ; preds = %bb.e
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2920
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit10.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i64 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit10.i.i.i ], [ %i.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.ac = load ptr, ptr %.val.i, align 8, !noalias !2920, !nonnull !10, !align !12, !noundef !10 ; 47 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2922)
  call void @llvm.experimental.noalias.scope.decl(metadata !2923)
  %i.ad = getelementptr inbounds i8, ptr %i.l, i64 -40
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !2924, !noundef !10 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 152
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !2923, !noundef !10
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.i, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !2923, !nonnull !10, !noundef !10
  %i.ak = getelementptr inbounds i8, ptr %i.l, i64 -48
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !2924, !nonnull !10, !noundef !10
  %i.am = call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpfINtB5_14SlicePartialEqfE17equal_same_lengthCsPYQCUnoTxQ_10collection(ptr noundef nonnull %i.al, ptr noundef nonnull %i.aj, i64 noundef %i.ae), !noalias !2925
  br i1 %i.am, label %bb.j, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds i8, ptr %i.l, i64 -32
  %i.ao = load i64, ptr %i.an, align 8, !range !19, !alias.scope !2924, !noundef !10
  %.not.i.i.i.i = icmp eq i64 %i.ao, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  %i.aq = load i64, ptr %i.ap, align 8, !range !19, !alias.scope !2923, !noundef !10
  %i.ar = icmp eq i64 %i.aq, -1                   ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.ar, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.m

bb.l:                                             ; preds = %bb.j
  br i1 %i.ar, label %bb.n, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds i8, ptr %i.l, i64 -16
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !2924, !noundef !10 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !2923, !noundef !10
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %.split.i.i.i.i, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 168
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !2923, !nonnull !10, !noundef !10
  %i.az = getelementptr inbounds i8, ptr %i.l, i64 -24
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !2924, !nonnull !10, !noundef !10
  %i.bb = shl nuw i64 %i.at, 2
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ba, ptr nonnull %i.ay, i64 %i.bb), !noalias !2925
  %i.bc = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bc, label %bb.n, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.n:                                             ; preds = %.split.i.i.i.i, %bb.l
  %i.bd = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.be = load i32, ptr %i.bd, align 8, !range !27, !alias.scope !2924, !noundef !10
  %i.bf = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.bg = trunc nuw i32 %i.be to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 184
  %i.bi = load i32, ptr %i.bh, align 8, !range !27, !alias.scope !2923, !noundef !10 ; 2 uses
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %4 = trunc nuw i32 %i.bi to i1
  br i1 %4, label %.split7.i.i.i.i, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.p:                                             ; preds = %bb.n
  %5 = icmp eq i32 %i.bi, 0
  br i1 %5, label %bb.q, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

.split7.i.i.i.i:                                  ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 188
  %i.bk = load i32, ptr %i.bf, align 4, !alias.scope !2924, !noundef !10
  %i.bl = load i32, ptr %i.bj, align 4, !alias.scope !2923, !noundef !10
  %i.bm = icmp eq i32 %i.bk, %i.bl
  br i1 %i.bm, label %bb.q, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.q:                                             ; preds = %.split7.i.i.i.i, %bb.p
  %i.bn = load i64, ptr %i.m, align 8, !range !28, !alias.scope !2924, !noundef !10 ; 4 uses
  %.not5.i.i.i.i = icmp eq i64 %i.bn, -1
  %i.bo = load i64, ptr %i.ac, align 8, !range !28, !alias.scope !2923, !noundef !10 ; 3 uses
  %i.bp = icmp eq i64 %i.bo, -1
  %brmerge.i.i.i.i = or i1 %.not5.i.i.i.i, %i.bp
  br i1 %brmerge.i.i.i.i, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2926)
  call void @llvm.experimental.noalias.scope.decl(metadata !2927)
  %i.bq = icmp eq i64 %i.bn, %i.bo
  br i1 %i.bq, label %bb.r, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.r:                                             ; preds = %.split.i.i.i
  switch i64 %i.bn, label %default.unreachable [
    i64 0, label %bb.s
    i64 1, label %bb.t
    i64 2, label %bb.w
    i64 3, label %bb.x
    i64 4, label %bb.ab
    i64 5, label %bb.al
  ]

default.unreachable:                              ; preds = %bb.ax, %bb.aq, %bb.ag, %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds i8, ptr %i.l, i64 -168
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !2926, !noundef !10 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !2927, !noundef !10
  %i.bv = icmp eq i64 %i.bs, %i.bu
  br i1 %i.bv, label %.split, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  call void @llvm.experimental.noalias.scope.decl(metadata !2929)
  %i.bw = getelementptr inbounds i8, ptr %i.l, i64 -168
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !2930, !noundef !10 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !2931, !noundef !10
  %i.ca = icmp eq i64 %i.bx, %i.bz
  br i1 %i.ca, label %bb.u, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !2931, !nonnull !10, !noundef !10
  %i.cd = getelementptr inbounds i8, ptr %i.l, i64 -176
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !2930, !nonnull !10, !noundef !10
  %i.cf = call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpfINtB5_14SlicePartialEqfE17equal_same_lengthCsPYQCUnoTxQ_10collection(ptr noundef nonnull %i.ce, ptr noundef nonnull %i.cc, i64 noundef %i.bx), !noalias !2932
  br i1 %i.cf, label %bb.v, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds i8, ptr %i.l, i64 -144
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !2930, !noundef !10 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !2931, !noundef !10
  %i.ck = icmp eq i64 %i.ch, %i.cj
  br i1 %i.ck, label %.split18, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

.split18:                                         ; preds = %bb.v
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !2931, !nonnull !10, !noundef !10
  %i.cn = getelementptr inbounds i8, ptr %i.l, i64 -152
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !2930, !nonnull !10, !noundef !10
  %i.cp = shl nuw i64 %i.ch, 2
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.co, ptr nonnull %i.cm, i64 %i.cp), !noalias !2932
  %i.cq = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.cq, label %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2d_8adapters3map8map_foldTRBN_RB1p_EjjNCINvNtNtCs4J2qyOfMFpM_5prost8encoding8hash_map24encoded_len_with_defaultBN_B1p_NvNtB41_6string11encoded_lenINvNtB41_7message11encoded_lenB1p_EE0NCINvXsK_NtB2b_5accumjNtB6o_3Sum3sumINtB3d_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBN_B1p_EB3U_EE0E0E0CsPYQCUnoTxQ_10collection.exit, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.w:                                             ; preds = %bb.r
  %i.cr = getelementptr inbounds i8, ptr %i.l, i64 -168
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !2926, !noundef !10 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !2927, !noundef !10
  %i.cv = icmp eq i64 %i.cs, %i.cu
  br i1 %i.cv, label %.split19, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.x:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !2933)
  call void @llvm.experimental.noalias.scope.decl(metadata !2934)
  %i.cw = getelementptr inbounds i8, ptr %i.l, i64 -168
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !2935, !noundef !10 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !2936, !noundef !10
  %i.da = icmp eq i64 %i.cx, %i.cz
  br i1 %i.da, label %bb.y, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !2936, !nonnull !10, !noundef !10
  %i.dd = getelementptr inbounds i8, ptr %i.l, i64 -176
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !2935, !nonnull !10, !noundef !10
  %bcmp.i5.i = call i32 @bcmp(ptr nonnull %i.de, ptr nonnull %i.dc, i64 %i.cx), !noalias !2937
  %i.df = icmp eq i32 %bcmp.i5.i, 0
  br i1 %i.df, label %bb.z, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr inbounds i8, ptr %i.l, i64 -144
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !2935, !noundef !10 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !2936, !noundef !10
  %i.dk = icmp eq i64 %i.dh, %i.dj
  br i1 %i.dk, label %bb.aa, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !2936, !nonnull !10, !noundef !10
  %i.dn = getelementptr inbounds i8, ptr %i.l, i64 -152
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !2935, !nonnull !10, !noundef !10
  %bcmp2.i.i = call i32 @bcmp(ptr nonnull %i.do, ptr nonnull %i.dm, i64 %i.dh), !noalias !2937
  %i.dp = icmp eq i32 %bcmp2.i.i, 0
  br i1 %i.dp, label %.split20, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

.split20:                                         ; preds = %bb.aa
  %i.dq = getelementptr inbounds i8, ptr %i.l, i64 -136
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ds = call noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dr)
  br i1 %i.ds, label %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2d_8adapters3map8map_foldTRBN_RB1p_EjjNCINvNtNtCs4J2qyOfMFpM_5prost8encoding8hash_map24encoded_len_with_defaultBN_B1p_NvNtB41_6string11encoded_lenINvNtB41_7message11encoded_lenB1p_EE0NCINvXsK_NtB2b_5accumjNtB6o_3Sum3sumINtB3d_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBN_B1p_EB3U_EE0E0E0CsPYQCUnoTxQ_10collection.exit, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.ab:                                            ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !2938)
  call void @llvm.experimental.noalias.scope.decl(metadata !2939)
  %i.dt = getelementptr inbounds i8, ptr %i.l, i64 -160
  %i.du = load i8, ptr %i.dt, align 8, !range !29, !alias.scope !2940, !noundef !10 ; 5 uses
  %.not.i.i = icmp eq i8 %i.du, -2
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.dw = load i8, ptr %i.dv, align 8, !range !29, !alias.scope !2941, !noundef !10 ; 4 uses
  %i.dx = icmp eq i8 %i.dw, -2                    ; 2 uses
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.dx, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  br i1 %i.dx, label %bb.aj, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !2942)
  call void @llvm.experimental.noalias.scope.decl(metadata !2943)
  %.not.i.i.i = icmp eq i8 %i.du, -1
  %i.dy = icmp eq i8 %i.dw, -1
  %brmerge.i.i.i = or i1 %.not.i.i.i, %i.dy
  br i1 %brmerge.i.i.i, label %_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5value4KindENtNtB7_3cmp9PartialEq2eqCsPYQCUnoTxQ_10collection.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !2944)
  call void @llvm.experimental.noalias.scope.decl(metadata !2945)
  %i.dz = icmp eq i8 %i.du, %i.dw
  br i1 %i.dz, label %bb.ag, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.ag:                                            ; preds = %bb.af
  switch i8 %i.du, label %default.unreachable [
    i8 0, label %.split9.i.i
    i8 1, label %.split8.i.i
    i8 2, label %.split7.i.i
    i8 3, label %bb.ah
    i8 4, label %.split4.i.i
    i8 5, label %.split.i.i
    i8 6, label %bb.ai
  ]

.split9.i.i:                                      ; preds = %bb.ag
  %i.ea = getelementptr inbounds i8, ptr %i.l, i64 -156
  %i.eb = load i32, ptr %i.ea, align 4, !alias.scope !2946, !noundef !10
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  %i.ed = load i32, ptr %i.ec, align 4, !alias.scope !2947, !noundef !10
  %i.ee = icmp eq i32 %i.eb, %i.ed
  br i1 %i.ee, label %bb.aj, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

.split8.i.i:                                      ; preds = %bb.ag
  %i.ef = getelementptr inbounds i8, ptr %i.l, i64 -152
  %i.eg = load double, ptr %i.ef, align 8, !alias.scope !2946, !noundef !10
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ei = load double, ptr %i.eh, align 8, !alias.scope !2947, !noundef !10
  %i.ej = fcmp oeq double %i.eg, %i.ei
  br i1 %i.ej, label %bb.aj, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

.split7.i.i:                                      ; preds = %bb.ag
  %i.ek = getelementptr inbounds i8, ptr %i.l, i64 -152
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !2946, !noundef !10
  %i.em = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !2947, !noundef !10
  %i.eo = icmp eq i64 %i.el, %i.en
  br i1 %i.eo, label %bb.aj, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ep = getelementptr inbounds i8, ptr %i.l, i64 -136
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !2946, !noundef !10 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !2947, !noundef !10
end_hunk_0
