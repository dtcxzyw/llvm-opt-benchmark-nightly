Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.108?download=true
inline.NumInlined: 220
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtCs4J2qyOfMFpM_5prost8encoding8hash_map6encodeNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufINvNtB4_6string6encodeB27_ENvB2X_11encoded_lenINvNtB4_7message6encodeB1r_B27_EINvB3H_11encoded_lenB1r_EECsPYQCUnoTxQ_10collection:bb.a
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !alias.scope !234, !noundef !5
  %i.ad = icmp eq i32 %i.ac, %i.o
  br label %_RNvXsC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.af = load double, ptr %i.ae, align 8, !alias.scope !234, !noundef !5
  %i.ag = fcmp oeq double %i.af, %.cast.i
  br label %_RNvXsC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.h:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !234, !noundef !5
  %i.aj = icmp eq i64 %i.ai, %i.m
  br label %_RNvXsC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.i:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !234, !noundef !5
  %i.am = icmp eq i64 %i.al, %.val5.i.i.i.i
  br i1 %i.am, label %bb.n, label %_RNvXsC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.j:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !range !11, !alias.scope !234, !noundef !5
  %i.ap = icmp eq i8 %i.ao, %i.l
  br label %_RNvXsC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.k:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ar = invoke noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j)
          to label %_RNvXsC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.val3.i.i.i.i = load i64, ptr %i.as, align 8, !alias.scope !234, !noundef !5
  %i.at = icmp eq i64 %.val3.i.i.i.i, %.val5.i.i.i.i
  br i1 %i.at, label %bb.m, label %_RNvXsC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !234, !nonnull !5, !noundef !5
  %i.av = invoke noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthCsPYQCUnoTxQ_10collection(ptr noundef nonnull %.val.i.i.i.i, ptr noundef nonnull %.val4.i.i.i.i, i64 noundef %.val5.i.i.i.i)
          to label %_RNvXsC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !234, !nonnull !5, !noundef !5
  %bcmp.i.i.i21.i = call i32 @bcmp(ptr nonnull %i.ax, ptr nonnull %.val4.i.i.i.i, i64 %.val5.i.i.i.i), !noalias !235
  %i.ay = icmp eq i32 %bcmp.i.i.i21.i, 0
  br label %_RNvXsC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

_RNvXsC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.m, %bb.k, %bb.n, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %.noexc2
  %.sroa.0.0.shrunk.i.i.i = phi i1 [ %.mux.i.i.i, %.noexc2 ], [ false, %bb.l ], [ %i.ad, %bb.f ], [ %i.ag, %bb.g ], [ %i.aj, %bb.h ], [ %i.ay, %bb.n ], [ false, %bb.d ], [ %i.ap, %bb.j ], [ %i.ar, %bb.k ], [ false, %bb.i ], [ %i.av, %bb.m ] ; 2 uses
  br i1 %i.v, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RNvXsC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i
  %.val18.i = load i64, ptr %i.u, align 8, !noundef !5 ; 3 uses
  %i.az = icmp sgt i64 %.val18.i, -1
  call void @llvm.assume(i1 %i.az)
  %i.ba = or i64 %.val18.i, 1
  %i.bb = call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %i.bc = xor i64 %i.bb, 63
  %i.bd = mul nuw nsw i64 %i.bc, 9
  %i.be = add nuw nsw i64 %i.bd, 73
  %i.bf = lshr i64 %i.be, 6
  %i.bg = add nuw i64 %.val18.i, 1
  %i.bh = add nuw i64 %i.bg, %i.bf
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RNvXsC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i
  %.sroa.03.0.i = phi i64 [ %i.bh, %bb.o ], [ 0, %_RNvXsC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i ]
  br i1 %.sroa.0.0.shrunk.i.i.i, label %.noexc5, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = invoke fastcc noundef i64 @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message11encoded_lenNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t) #11
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %bb.q, %bb.p
  %.sroa.04.0.i = phi i64 [ 0, %bb.p ], [ %i.bi, %bb.q ]
  %.val20.i = load ptr, ptr %2, align 8, !alias.scope !227
  invoke fastcc void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13encode_varintNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsPYQCUnoTxQ_10collection(i64 noundef %i.r, ptr %.val20.i) #11
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %.noexc5
  %i.bj = add i64 %.sroa.04.0.i, %.sroa.03.0.i
  %.val19.i = load ptr, ptr %2, align 8, !alias.scope !227
  invoke fastcc void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13encode_varintNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsPYQCUnoTxQ_10collection(i64 noundef %i.bj, ptr %.val19.i) #11
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %.noexc6
  br i1 %i.v, label %.noexc8, label %bb.r

bb.r:                                             ; preds = %.noexc7
  invoke void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6string6encodeNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsPYQCUnoTxQ_10collection(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.r, %.noexc7
  br i1 %.sroa.0.0.shrunk.i.i.i, label %.noexc9, label %bb.s

bb.s:                                             ; preds = %.noexc8
  invoke void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message6encodeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsPYQCUnoTxQ_10collection(i32 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %bb.s, %.noexc8
  %i.bk = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %.noexc9
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i, label %.loopexit11, label %_RNvXs1h_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %.noexc9, %bb.s, %bb.r, %.noexc6, %.noexc5, %bb.m, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i, %.noexc, %bb.a
  %lpad.loopexit.split-lp16 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.b ], [ %lpad.loopexit.split-lp16, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #10
          to label %bb.u unwind label %bb.t

.loopexit11:                                      ; preds = %.noexc10, %.noexc1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !228
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.t:                                             ; preds = %.body
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

bb.u:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding8hash_map6encodeNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufINvNtB4_6string6encodeB28_ENvB2Y_11encoded_lenINvNtB4_7message6encodeB1r_B28_EINvB3I_11encoded_lenB1r_EECsPYQCUnoTxQ_10collection(i32 noundef %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [56 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [40 x i8], align 8                ; 5 uses
  %i.p = alloca [192 x i8], align 8               ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  store i64 0, ptr %i.q, align 8, !alias.scope !331
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 144 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !331
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 152 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !331
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 160 ; 2 uses
  store i64 -1, ptr %i.r, align 8, !alias.scope !331
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 184 ; 2 uses
  store i32 0, ptr %i.s, align 8, !alias.scope !331
  store i64 -1, ptr %i.p, align 8, !alias.scope !331
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !334
  invoke void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.t = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %.noexc1 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1:                                          ; preds = %.noexc
  %i.u = extractvalue { ptr, ptr } %i.t, 0        ; 2 uses
  %.not26.i = icmp eq ptr %i.u, null
  br i1 %.not26.i, label %.loopexit25, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.v = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !332 ; 2 uses
  %i.w = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !332, !nonnull !5
  %i.x = load i64, ptr %i.r, align 8, !range !4, !alias.scope !332
  %i.y = icmp eq i64 %i.x, -1                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !332 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !332, !nonnull !5
  %i.ad = load i32, ptr %i.s, align 8, !range !335, !alias.scope !332
  %i.ae = trunc nuw i32 %i.ad to i1               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 188
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !332
  %i.ah = load i64, ptr %i.p, align 8, !range !7, !alias.scope !332 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ak = load i8, ptr %i.aj, align 8, !range !8, !alias.scope !332 ; 8 uses
  %i.al = icmp eq i8 %i.ak, -2                    ; 4 uses
  %i.am = icmp eq i8 %i.ak, -1                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 2 uses
  %.val5.i.i.i13.i.i = load i64, ptr %i.an, align 8, !alias.scope !332 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.val4.i.i.i15.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !332 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 33
  %i.ar = load i8, ptr %i.aq, align 1, !range !11, !alias.scope !332 ; 2 uses
  %i.as = load i64, ptr %i.ap, align 8, !alias.scope !332 ; 4 uses
  %.cast.i = bitcast i64 %i.as to double          ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !332 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !332 ; 12 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !332, !nonnull !5 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 2 uses
  %i.ba = ptrtoint ptr %.val4.i.i.i15.i.i to i64  ; 4 uses
  %i.bb = inttoptr i64 %i.as to ptr               ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i12.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx.i.i.i.i13.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i6.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0..sroa_idx.i.i.i.i7.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bc = shl i32 %0, 3
  %i.bd = or disjoint i32 %i.bc, 2
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw i64 %i.aa, 2
  %i.bg = shl nuw i64 %i.ba, 2
  br label %_RNvXs1h_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

_RNvXs1h_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i: ; preds = %.noexc24, %.lr.ph.i
  %.pn.i = phi { ptr, ptr } [ %i.t, %.lr.ph.i ], [ %i.py, %.noexc24 ]
  %i.bh = phi ptr [ %i.u, %.lr.ph.i ], [ %i.pz, %.noexc24 ] ; 2 uses
  %i.bi = extractvalue { ptr, ptr } %.pn.i, 1     ; 71 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !334
  store i64 0, ptr %i.n, align 8, !alias.scope !336, !noalias !334
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !336, !noalias !334
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !336, !noalias !334
  %i.bj = getelementptr i8, ptr %i.bh, i64 16     ; 2 uses
  %.val15.i = load i64, ptr %i.bj, align 8, !noundef !5
  %i.bk = icmp eq i64 %.val15.i, 0                ; 2 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.b

bb.b:                                             ; preds = %_RNvXs1h_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i: ; preds = %_RNvXs1h_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.noexc2 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc2:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !334
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 152 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !337, !noundef !5
  %i.bp = icmp eq i64 %i.bo, %i.v
  br i1 %i.bp, label %bb.d, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.d:                                             ; preds = %.noexc2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !337, !nonnull !5, !noundef !5
  %i.bs = invoke noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpfINtB5_14SlicePartialEqfE17equal_same_lengthCsPYQCUnoTxQ_10collection(ptr noundef nonnull %i.br, ptr noundef nonnull %i.w, i64 noundef %i.v)
          to label %.noexc3 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc3:                                          ; preds = %bb.d
  br i1 %i.bs, label %bb.e, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.e:                                             ; preds = %.noexc3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 160
  %i.bu = load i64, ptr %i.bt, align 8, !range !4, !alias.scope !337, !noundef !5
  %.not.i.i = icmp eq i64 %i.bu, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.y, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.y, label %bb.i, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 176
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !337, !noundef !5
  %i.bx = icmp eq i64 %i.bw, %i.aa
  br i1 %i.bx, label %.split.i.i, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

.split.i.i:                                       ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 168
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !337, !nonnull !5, !noundef !5
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.bz, ptr nonnull %i.ac, i64 %i.bf), !noalias !338
  %i.ca = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ca, label %bb.i, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.i:                                             ; preds = %.split.i.i, %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 184
  %i.cc = load i32, ptr %i.cb, align 8, !range !335, !alias.scope !337, !noundef !5
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 188
  %i.ce = trunc nuw i32 %i.cc to i1
  br i1 %i.ce, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.ae, label %.split7.i.i, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.k:                                             ; preds = %bb.i
  br i1 %i.ae, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, label %bb.l

.split7.i.i:                                      ; preds = %bb.j
  %i.cf = load i32, ptr %i.cd, align 4, !alias.scope !337, !noundef !5
  %i.cg = icmp eq i32 %i.cf, %i.ag
  br i1 %i.cg, label %bb.l, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.l:                                             ; preds = %.split7.i.i, %bb.k
  %i.ch = load i64, ptr %i.bi, align 8, !range !7, !alias.scope !337, !noundef !5 ; 3 uses
  %.not5.i.i = icmp eq i64 %i.ch, -1
  %brmerge.i.i = or i1 %i.ai, %.not5.i.i
  %i.ci = and i64 %i.ch, %i.ah
  %.mux.i.i = icmp eq i64 %i.ci, -1
  br i1 %brmerge.i.i, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.cj = icmp eq i64 %i.ch, %i.ah
  br i1 %i.cj, label %bb.n, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.n:                                             ; preds = %bb.m
  switch i64 %i.ah, label %default.unreachable [
    i64 0, label %bb.o
    i64 1, label %bb.p
    i64 2, label %bb.t
    i64 3, label %bb.u
    i64 4, label %bb.y
    i64 5, label %bb.ai
  ]

default.unreachable:                              ; preds = %bb.az, %bb.an, %bb.ad, %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !339, !noundef !5
  %i.cm = icmp eq i64 %i.cl, %i.aw
  br i1 %i.cm, label %bb.as, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !341, !noundef !5
  %i.cp = icmp eq i64 %i.co, %i.aw
  br i1 %i.cp, label %bb.q, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !341, !nonnull !5, !noundef !5
  %i.cs = invoke noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpfINtB5_14SlicePartialEqfE17equal_same_lengthCsPYQCUnoTxQ_10collection(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.ay, i64 noundef %i.aw)
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc4:                                          ; preds = %bb.q
  br i1 %i.cs, label %bb.r, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.r:                                             ; preds = %.noexc4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !341, !noundef !5
  %i.cv = icmp eq i64 %i.cu, %i.ba
  br i1 %i.cv, label %bb.s, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !341, !nonnull !5, !noundef !5
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.cx, ptr nonnull %i.bb, i64 %i.bg), !noalias !342
  %i.cy = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.t:                                             ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !339, !noundef !5
  %i.db = icmp eq i64 %i.da, %i.aw
  br i1 %i.db, label %bb.at, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.u:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !344, !noundef !5
  %i.de = icmp eq i64 %i.dd, %i.aw
  br i1 %i.de, label %bb.v, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !344, !nonnull !5, !noundef !5
  %bcmp.i5.i.i = call i32 @bcmp(ptr nonnull %i.dg, ptr nonnull %i.ay, i64 %i.aw), !noalias !345
  %i.dh = icmp eq i32 %bcmp.i5.i.i, 0
  br i1 %i.dh, label %bb.w, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.w:                                             ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !344, !noundef !5
  %i.dk = icmp eq i64 %i.dj, %i.ba
  br i1 %i.dk, label %bb.x, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !344, !nonnull !5, !noundef !5
  %bcmp2.i.i.i = call i32 @bcmp(ptr nonnull %i.dm, ptr nonnull %i.bb, i64 %i.ba), !noalias !345
  %i.dn = icmp eq i32 %bcmp2.i.i.i, 0
  br i1 %i.dn, label %.invoke, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

.invoke:                                          ; preds = %bb.x, %bb.ar, %bb.ah
  %.sink = phi i64 [ 88, %bb.ah ], [ 88, %bb.ar ], [ 56, %bb.x ]
  %i.do = phi ptr [ %i.az, %bb.ah ], [ %i.az, %bb.ar ], [ %i.an, %bb.x ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sink
  %i.dq = invoke noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.do)
          to label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.ds = load i8, ptr %i.dr, align 8, !range !8, !alias.scope !347, !noundef !5 ; 4 uses
  %.not.i.i.i = icmp eq i8 %i.ds, -2
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %i.al, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  br i1 %i.al, label %bb.ag, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %.not.i.i.i22.i = icmp eq i8 %i.ds, -1
  %brmerge.i.i.i.i = or i1 %i.am, %.not.i.i.i22.i
  br i1 %brmerge.i.i.i.i, label %_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5value4KindENtNtB7_3cmp9PartialEq2eqCsPYQCUnoTxQ_10collection.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.dt = icmp eq i8 %i.ds, %i.ak
  br i1 %i.dt, label %bb.ad, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.ad:                                            ; preds = %bb.ac
  switch i8 %i.ak, label %default.unreachable [
    i8 0, label %.split9.i.i.i
    i8 1, label %.split8.i.i.i
    i8 2, label %.split7.i.i.i
    i8 3, label %bb.ae
    i8 4, label %.split4.i.i.i
    i8 5, label %.split.i.i.i
    i8 6, label %bb.af
  ]

.split9.i.i.i:                                    ; preds = %bb.ad
  %i.du = getelementptr inbounds nuw i8, ptr %i.bi, i64 36
  %i.dv = load i32, ptr %i.du, align 4, !alias.scope !350, !noundef !5
  %i.dw = icmp eq i32 %i.dv, %i.au
  br i1 %i.dw, label %bb.ag, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

.split8.i.i.i:                                    ; preds = %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.dy = load double, ptr %i.dx, align 8, !alias.scope !350, !noundef !5
  %i.dz = fcmp oeq double %i.dy, %.cast.i
  br i1 %i.dz, label %bb.ag, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

.split7.i.i.i:                                    ; preds = %bb.ad
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.eb = load i64, ptr %i.ea, align 8, !alias.scope !350, !noundef !5
  %i.ec = icmp eq i64 %i.eb, %i.as
  br i1 %i.ec, label %bb.ag, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !350, !noundef !5
  %i.ef = icmp eq i64 %i.ee, %.val5.i.i.i13.i.i
  br i1 %i.ef, label %.split6.i.i.i, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

.split4.i.i.i:                                    ; preds = %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bi, i64 33
  %i.eh = load i8, ptr %i.eg, align 1, !range !11, !alias.scope !350, !noundef !5
  %i.ei = icmp eq i8 %i.eh, %i.ar
  br i1 %i.ei, label %bb.ag, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

.split.i.i.i:                                     ; preds = %bb.ad
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.ek = invoke noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ej, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ap)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %.split.i.i.i
  br i1 %i.ek, label %bb.ag, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.el = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %.val3.i.i.i.i.i = load i64, ptr %i.el, align 8, !alias.scope !350, !noundef !5
  %i.em = icmp eq i64 %.val3.i.i.i.i.i, %.val5.i.i.i13.i.i
  br i1 %i.em, label %.split5.i.i.i, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

.split5.i.i.i:                                    ; preds = %bb.af
  %i.en = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %.val.i.i.i.i24.i = load ptr, ptr %i.en, align 8, !alias.scope !350, !nonnull !5, !noundef !5
  %i.eo = invoke noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthCsPYQCUnoTxQ_10collection(ptr noundef nonnull %.val.i.i.i.i24.i, ptr noundef nonnull %.val4.i.i.i15.i.i, i64 noundef %.val5.i.i.i13.i.i)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %.split5.i.i.i
  br i1 %i.eo, label %bb.ag, label %_RNvXsoJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6VectorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

.split6.i.i.i:                                    ; preds = %bb.ae
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !350, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.eq, ptr nonnull %.val4.i.i.i15.i.i, i64 %.val5.i.i.i13.i.i), !noalias !351
  %i.er = icmp eq i32 %bcmp.i.i.i.i.i, 0
end_hunk_0
