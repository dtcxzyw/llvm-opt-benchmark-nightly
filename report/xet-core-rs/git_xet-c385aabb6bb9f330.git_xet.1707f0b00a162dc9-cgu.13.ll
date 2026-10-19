Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet-c385aabb6bb9f330.git_xet.1707f0b00a162dc9-cgu.13?download=true
inline.NumInlined: 187
inline.NumDeleted: 106
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtCsf1bHqHEg0eP_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_2id2IdNtNtNtNtB6_6parser7matches11matched_arg10MatchedArgE6insertCs1YANDSn9Kib_7git_xet:bb.a
  %.idx = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvXsm_NtNtCsf1bHqHEg0eP_12clap_builder4util2idNtB5_2IdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvXsm_NtNtCsf1bHqHEg0eP_12clap_builder4util2idNtB5_2IdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.backedge
  %.sroa.8.024 = phi i64 [ %i.j, %_RNvXsm_NtNtCsf1bHqHEg0eP_12clap_builder4util2idNtB5_2IdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.backedge ], [ 0, %bb.a ] ; 4 uses
  %.sroa.012.023 = phi ptr [ %i.i, %_RNvXsm_NtNtCsf1bHqHEg0eP_12clap_builder4util2idNtB5_2IdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.backedge ], [ %i.d, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.023, i64 16 ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.8.024, 1
  %i.k = getelementptr i8, ptr %.sroa.012.023, i64 8
  %.val9 = load i64, ptr %i.k, align 8, !noundef !4
  %i.l = icmp eq i64 %.val9, %3
  br i1 %i.l, label %.split, label %_RNvXsm_NtNtCsf1bHqHEg0eP_12clap_builder4util2idNtB5_2IdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.backedge

.split:                                           ; preds = %.lr.ph
  %.val = load ptr, ptr %.sroa.012.023, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %2, i64 %3)
  %i.m = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.m, label %bb.k, label %_RNvXsm_NtNtCsf1bHqHEg0eP_12clap_builder4util2idNtB5_2IdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.backedge

_RNvXsm_NtNtCsf1bHqHEg0eP_12clap_builder4util2idNtB5_2IdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.backedge: ; preds = %.split, %.lr.ph
  %i.n = icmp eq ptr %i.i, %i.g
  br i1 %i.n, label %_RNvXsm_NtNtCsf1bHqHEg0eP_12clap_builder4util2idNtB5_2IdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit._crit_edge, label %.lr.ph

_RNvXsm_NtNtCsf1bHqHEg0eP_12clap_builder4util2idNtB5_2IdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit._crit_edge: ; preds = %_RNvXsm_NtNtCsf1bHqHEg0eP_12clap_builder4util2idNtB5_2IdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.backedge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 104, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.o = load i64, ptr %1, align 8, !range !9, !alias.scope !79, !noundef !4
  %i.p = icmp eq i64 %i.f, %i.o
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXsm_NtNtCsf1bHqHEg0eP_12clap_builder4util2idNtB5_2IdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit._crit_edge
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1) #24
          to label %._crit_edge unwind label %bb.g, !noalias !80

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !79
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %_RNvXsm_NtNtCsf1bHqHEg0eP_12clap_builder4util2idNtB5_2IdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit._crit_edge
  %i.q = phi ptr [ %.pre, %._crit_edge ], [ %i.d, %_RNvXsm_NtNtCsf1bHqHEg0eP_12clap_builder4util2idNtB5_2IdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit._crit_edge ]
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.f ; 2 uses
  store ptr %2, ptr %i.r, align 8, !noalias !81
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %3, ptr %i.s, align 8, !noalias !82
  %i.t = add i64 %i.f, 1
  store i64 %i.t, ptr %i.e, align 8, !alias.scope !79
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 104, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !84, !noundef !4 ; 3 uses
  %i.x = load i64, ptr %i.u, align 8, !range !9, !alias.scope !84, !noundef !4
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsf1bHqHEg0eP_12clap_builder6parser7matches11matched_arg10MatchedArgE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.i unwind label %bb.e, !noalias !85

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf1bHqHEg0eP_12clap_builder6parser7matches11matched_arg10MatchedArgECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.a) #22
          to label %.body unwind label %bb.f, !noalias !82

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !82
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf1bHqHEg0eP_12clap_builder6parser7matches11matched_arg10MatchedArgECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.b) #22
          to label %.body unwind label %bb.h, !noalias !86

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !86
  unreachable

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !84, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw [104 x i8], ptr %i.ae, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.af, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 104, i1 false)
  %i.ag = add i64 %i.w, 1
  store i64 %i.ag, ptr %i.v, align 8, !alias.scope !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCsf1bHqHEg0eP_12clap_builder6parser7matches11matched_arg10MatchedArgECs1YANDSn9Kib_7git_xet.exit, %bb.i
  ret void

bb.k:                                             ; preds = %.split
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4 ; 2 uses
  %i.aj = icmp ult i64 %.sroa.8.024, %i.ai
  br i1 %i.aj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.al, i64 %.sroa.8.024
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1YANDSn9Kib_7git_xet(ptr noundef nonnull %i.am, ptr noundef nonnull %4, i64 noundef 13)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCsf1bHqHEg0eP_12clap_builder6parser7matches11matched_arg10MatchedArgECs1YANDSn9Kib_7git_xet.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCsf1bHqHEg0eP_12clap_builder6parser7matches11matched_arg10MatchedArgECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 104, i1 false)
  br label %bb.j

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.024, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #25
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf1bHqHEg0eP_12clap_builder6parser7matches11matched_arg10MatchedArgECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(104) %4) #22
          to label %.body unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

.body:                                            ; preds = %bb.g, %bb.e, %bb.p
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.ao, %bb.p ], [ %i.ab, %bb.g ], [ %i.z, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body15
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringBN_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !98, !noundef !4
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs1YANDSn9Kib_7git_xet.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.g = invoke { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i1 noundef zeroext true) #24
          to label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs1YANDSn9Kib_7git_xet.exit.i unwind label %.loopexit.split-lp ; 0 uses

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.c, %bb.b
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !99, !nonnull !4, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val5.i = load i64, ptr %i.h, align 8, !alias.scope !99, !noundef !4 ; 3 uses
  %i.i = lshr i64 %i.c, 57
  %i.j = trunc nuw nsw i64 %i.i to i8             ; 3 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs1YANDSn9Kib_7git_xet.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs1YANDSn9Kib_7git_xet.exit.i ], [ %i.al, %bb.g ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs1YANDSn9Kib_7git_xet.exit.i ], [ %.sroa.4.124.i.i, %bb.g ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs1YANDSn9Kib_7git_xet.exit.i ], [ %.sroa.04.126.i.i, %bb.g ]
  %i.m = phi i64 [ 0, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs1YANDSn9Kib_7git_xet.exit.i ], [ %i.ak, %bb.g ]
  %.sroa.0.021.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.021.i.i
  %.sroa.0.0.copyload.i31.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !100 ; 3 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i, %i.l
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not32.i.i = icmp eq i16 %i.p, 0
  br i1 %.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.01.033.i.i = phi i16 [ %i.aa, %bb.e ], [ %i.p, %bb.d ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.033.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.0.021.i.i, %i.r
  %i.t = and i64 %i.s, %.val5.i
  %i.u = load ptr, ptr %1, align 8, !alias.scope !99, !noalias !101, !nonnull !4, !noundef !4
  %i.v = sub nsw i64 0, %i.t                      ; 2 uses
  %i.w = getelementptr inbounds [48 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -48
  %i.y = invoke noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCsexYYUdYSQU6_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x)
          to label %.noexc6 unwind label %.loopexit.split-lp

.noexc6:                                          ; preds = %.lr.ph.i.i
  br i1 %i.y, label %bb.j, label %bb.e, !prof !7

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.f, !prof !5

bb.e:                                             ; preds = %.noexc6
  %i.z = add i16 %.sroa.01.033.i.i, -1
  %i.aa = and i16 %i.z, %.sroa.01.033.i.i         ; 2 uses
  %.not.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ab = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.g, label %.thread28.i.i, !prof !5

.thread28.i.i:                                    ; preds = %bb.f
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ac, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.0.021.i.i, %i.ae
  %i.ag = and i64 %i.af, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread28.i.i, %._crit_edge.i.i
  %.sroa.4.125.i.i = phi i64 [ %i.ag, %.thread28.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !5

bb.g:                                             ; preds = %.thread.i.i, %bb.f
  %.sroa.04.126.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.f ]
  %.sroa.4.124.i.i = phi i64 [ %.sroa.4.125.i.i, %.thread.i.i ], [ undef, %bb.f ]
  %i.ak = add i64 %i.m, 16                        ; 2 uses
  %i.al = add i64 %i.ak, %.sroa.0.021.i.i
  br label %bb.d

bb.h:                                             ; preds = %.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.125.i.i
  %i.an = load i8, ptr %i.am, align 1, !noundef !4
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.i, label %bb.n, !prof !5

bb.i:                                             ; preds = %bb.h
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.ap = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.aq, 0
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  tail call void @llvm.assume(i1 %.not.i23.i.i)
  br label %bb.n

bb.j:                                             ; preds = %.noexc6
  %i.at = load ptr, ptr %1, align 8, !alias.scope !99, !nonnull !4
  %i.au = getelementptr inbounds [48 x i8], ptr %i.at, i64 %i.v
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %lpad.loopexit.split-lp, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.j
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit
  ret void

bb.n:                                             ; preds = %bb.i, %bb.h
  %.sroa.3.0.i.ph.i = phi i64 [ %i.as, %bb.i ], [ %.sroa.4.125.i.i, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.az = load ptr, ptr %1, align 8, !alias.scope !102, !nonnull !4, !noundef !4 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !103, !noundef !4
  %i.bc = and i8 %i.bb, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bf = load i64, ptr %i.h, align 8, !alias.scope !102, !noundef !4
  %i.bg = and i64 %i.bf, %i.be
  store i8 %i.j, ptr %i.ba, align 1, !noalias !103
  %i.bh = getelementptr i8, ptr %i.az, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  store i8 %i.j, ptr %i.bi, align 1, !noalias !103
  %i.bj = load <2 x i64>, ptr %i.d, align 8, !alias.scope !102
  %i.bk = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bd, i64 0
  %i.bl = sub <2 x i64> %i.bj, %i.bk
  store <2 x i64> %i.bl, ptr %i.d, align 8, !alias.scope !102
  %i.bm = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bn = getelementptr inbounds [48 x i8], ptr %i.az, i64 %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  br label %bb.m

.loopexit.split-lp:                               ; preds = %.lr.ph.i.i, %bb.a, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #22
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.p, %.loopexit.split-lp
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.p:                                             ; preds = %.loopexit.split-lp
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #22
          to label %common.resume unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsjqcU1oJFKXj_9hashbrown3mapINtB4_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringBM_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE24with_capacity_and_hasherCs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EE16with_capacity_inCs1YANDSn9Kib_7git_xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 15
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.c, label %bb.j, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.d = shl nuw i64 %1, 3
  %i.e = udiv i64 %i.d, 7
  %i.f = add nsw i64 %i.e, -1
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = lshr i64 -1, %i.g
  %i.i = add nuw nsw i64 %i.h, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.j = icmp samesign ult i64 %1, 4
  %i.k = and i64 %1, 8
  %..i.i.i = add nuw nsw i64 %i.k, 8
  %.sroa.03.0.i.i.i = select i1 %i.j, i64 4, i64 %..i.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.i, %bb.d ], [ %.sroa.03.0.i.i.i, %bb.e ] ; 5 uses
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i.i, i64 48) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.h, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.n = extractvalue { i64, i1 } %i.l, 0         ; 3 uses
  %i.o = add nuw nsw i64 %.sroa.4.0.i.ph.i.i, 16  ; 2 uses
  %i.p = add i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = icmp ugt i64 %i.p, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.q, %i.r
  br i1 %or.cond.i.i.i, label %bb.h, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !6

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.g
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !110
  %i.s = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !110 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.i, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1YANDSn9Kib_7git_xet.exit.i.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !110
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1YANDSn9Kib_7git_xet.exit.thread.i.i

bb.i:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.v = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.p), !noalias !110
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1YANDSn9Kib_7git_xet.exit.thread.i.i

bb.j:                                             ; preds = %bb.c
  %i.w = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !111 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EE16with_capacity_inCs1YANDSn9Kib_7git_xet.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1YANDSn9Kib_7git_xet.exit.thread.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i = phi { i64, i64 } [ %i.u, %bb.h ], [ %i.v, %bb.i ] ; 2 uses
  %.sroa.12.09.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.sroa.7.010.i.i = extractvalue { i64, i64 } %.pn.i.i, 0
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EE16with_capacity_inCs1YANDSn9Kib_7git_xet.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1YANDSn9Kib_7git_xet.exit.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.z = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 9
  %i.aa = add nsw i64 %.sroa.4.0.i.ph.i.i, -1     ; 2 uses
  %i.ab = lshr i64 %.sroa.4.0.i.ph.i.i, 3
  %i.ac = mul nuw nsw i64 %i.ab, 7
  %.sroa.07.0.i.i.i = select i1 %i.z, i64 %i.aa, i64 %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ad, i8 -1, i64 %i.o, i1 false), !noalias !111
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EE16with_capacity_inCs1YANDSn9Kib_7git_xet.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EE16with_capacity_inCs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.a, %bb.j, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1YANDSn9Kib_7git_xet.exit.thread.i.i, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1YANDSn9Kib_7git_xet.exit.i.i
  %.sroa.10.0.i = phi i64 [ %i.y, %bb.j ], [ %.sroa.12.09.i.i, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1YANDSn9Kib_7git_xet.exit.thread.i.i ], [ %.sroa.07.0.i.i.i, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1YANDSn9Kib_7git_xet.exit.i.i ], [ 0, %bb.a ]
  %.sroa.7.0.i = phi i64 [ %i.x, %bb.j ], [ %.sroa.7.010.i.i, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1YANDSn9Kib_7git_xet.exit.thread.i.i ], [ %i.aa, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1YANDSn9Kib_7git_xet.exit.i.i ], [ 0, %bb.a ]
  %.sroa.0.0.i = phi ptr [ null, %bb.j ], [ null, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1YANDSn9Kib_7git_xet.exit.thread.i.i ], [ %i.ad, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1YANDSn9Kib_7git_xet.exit.i.i ], [ @4, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.af, align 8
  store ptr %.sroa.0.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRDNtNtCs6SYjS1KFWza_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXs1_NtCs6SYjS1KFWza_10serde_core2deDNtB5_8ExpectedEL_NtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsiIG6paLrxWt_5netrc5netrc13AuthenticatorEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !116, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_7RawIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsiIG6paLrxWt_5netrc5netrc13AuthenticatorEE13drop_elementsCs1YANDSn9Kib_7git_xet.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load i16, ptr %i.e, align 8, !alias.scope !117
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsiIG6paLrxWt_5netrc5netrc13AuthenticatorEECs1YANDSn9Kib_7git_xet.exit.i, %.preheader.i
  %i.g = phi i16 [ %.promoted, %.preheader.i ], [ %i.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsiIG6paLrxWt_5netrc5netrc13AuthenticatorEECs1YANDSn9Kib_7git_xet.exit.i ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.preheader.i ], [ %i.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsiIG6paLrxWt_5netrc5netrc13AuthenticatorEECs1YANDSn9Kib_7git_xet.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %.not11.i.i = icmp eq i16 %i.g, 0
  %.promoted.i.i = load ptr, ptr %i.a, align 8, !alias.scope !117 ; 2 uses
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsiIG6paLrxWt_5netrc5netrc13AuthenticatorEE9next_implKb0_ECs1YANDSn9Kib_7git_xet.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.promoted13.i.i = load ptr, ptr %i.f, align 8, !alias.scope !117
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !117
  store ptr %i.l, ptr %i.a, align 8, !alias.scope !117
  br label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsiIG6paLrxWt_5netrc5netrc13AuthenticatorEE9next_implKb0_ECs1YANDSn9Kib_7git_xet.exit.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.i = phi ptr [ %.promoted13.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.l, %bb.c ]
  %.val9.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !117
  %i.k = icmp sgt <16 x i8> %.val9.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -1536 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.k to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %bb.c, label %._crit_edge.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsiIG6paLrxWt_5netrc5netrc13AuthenticatorEE9next_implKb0_ECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i.i ], [ %.promoted.i.i, %bb.b ]
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i                ; 2 uses
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !117
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [96 x i8], ptr %i.n, i64 %i.s ; 3 uses
  %i.u = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !116
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -96 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i.i.i unwind label %bb.d, !noalias !116

bb.d:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsiIG6paLrxWt_5netrc5netrc13AuthenticatorEE9next_implKb0_ECs1YANDSn9Kib_7git_xet.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.v)
          to label %.body.i.i unwind label %bb.e, !noalias !116

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !116
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i.i.i: ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsiIG6paLrxWt_5netrc5netrc13AuthenticatorEE9next_implKb0_ECs1YANDSn9Kib_7git_xet.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsiIG6paLrxWt_5netrc5netrc13AuthenticatorEECs1YANDSn9Kib_7git_xet.exit.i unwind label %bb.f, !noalias !116

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.d
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.w, %bb.d ]
  %i.z = getelementptr inbounds i8, ptr %i.t, i64 -72
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiIG6paLrxWt_5netrc5netrc13AuthenticatorECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(72) %i.z) #22
          to label %bb.h unwind label %bb.g, !noalias !116

end_hunk_0
