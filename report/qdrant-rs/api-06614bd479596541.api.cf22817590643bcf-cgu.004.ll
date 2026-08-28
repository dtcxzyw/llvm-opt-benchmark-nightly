Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/api-06614bd479596541.api.cf22817590643bcf-cgu.004?download=true
begin_hunk_0_@_RINvYNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtCshqfBqtY9aGF_8indexmap3set8IndexSetxINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsbojlWnkViqs_3fnv9FnvHasherEEECshMzyYDJGtjv_3api:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.body:                                            ; preds = %bb.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %i.ai, %bb.g ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeVecECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #13
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %.body
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEECshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE4iterCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val = load i64, ptr %i.g, align 8, !noundef !5
  call void @_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seq(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 1, i64 %.val)
  %i.h = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !44, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3866)
  %i.m = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %.not10.i.i = icmp eq ptr %i.n, null
  br i1 %.not10.i.i, label %.loopexit12, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.noexc9, %.lr.ph.i.i
  %i.q = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.ac, %.noexc9 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3869
  store ptr %i.q, ptr %i.c, align 8, !noalias !3874
  call void @llvm.experimental.noalias.scope.decl(metadata !3877)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3880
  invoke void @_RINvNtCs8O45qwFIwQX_10serde_json5value8to_valueRRNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !range !43, !noalias !3880, !noundef !5
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.noexc8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !3880
  %i.t = load i64, ptr %i.o, align 8, !alias.scope !3882, !noalias !3885, !noundef !5 ; 3 uses
  %i.u = load i64, ptr %i.e, align 8, !range !2913, !alias.scope !3882, !noalias !3885, !noundef !5
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYNtNtNtB2z_5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetB1l_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEE0E0CshMzyYDJGtjv_3api.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8O45qwFIwQX_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYNtNtNtB2z_5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetB1l_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEE0E0CshMzyYDJGtjv_3api.exit.i.i unwind label %bb.g, !noalias !3887

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5value5ValueECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #13
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYNtNtNtB2z_5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetB1l_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEE0E0CshMzyYDJGtjv_3api.exit.i.i: ; preds = %bb.f, %bb.e
  %i.y = load ptr, ptr %i.p, align 8, !alias.scope !3882, !noalias !3885, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw [72 x i8], ptr %i.y, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  %i.aa = add i64 %i.t, 1
  store i64 %i.aa, ptr %i.o, align 8, !alias.scope !3882, !noalias !3885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3869
  %i.ab = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYNtNtNtB2z_5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetB1l_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEE0E0CshMzyYDJGtjv_3api.exit.i.i
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0      ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %.loopexit12, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYNtNtNtB2z_5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetB1l_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEE0E0CshMzyYDJGtjv_3api.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %.noexc8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !3880, !nonnull !5, !align !44, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3869
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeVecECshMzyYDJGtjv_3api.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeVecECshMzyYDJGtjv_3api.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.l

.loopexit12:                                      ; preds = %.noexc9, %.noexc
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i64 -9223372036854775804, ptr %0, align 8, !alias.scope !3888, !noalias !3891
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeVecECshMzyYDJGtjv_3api.exit, %.loopexit12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeVecECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #13
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtB22_6string6StringEECshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %i.f = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3896)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !3896, !noalias !3893, !noundef !5 ; 3 uses
  %.not.i = icmp ne ptr %i.g, null                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !3896, !noalias !3893
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !3896, !noalias !3893
  %.sroa.0.sroa.0.0.i = zext i1 %.not.i to i64    ; 2 uses
  %.sroa.0.sroa.5.sroa.6.0.i = select i1 %.not.i, i64 %i.i, i64 undef ; 2 uses
  %.sroa.5.0.i = select i1 %.not.i, i64 %i.k, i64 0 ; 2 uses
  store i64 %.sroa.0.sroa.0.0.i, ptr %i.f, align 8, !alias.scope !3893, !noalias !3896
  %.sroa.01.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %.sroa.01.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3893, !noalias !3896
  %.sroa.01.sroa.4.sroa.4.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %.sroa.01.sroa.4.sroa.4.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3893, !noalias !3896
  %.sroa.01.sroa.4.sroa.5.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.0.sroa.5.sroa.6.0.i, ptr %.sroa.01.sroa.4.sroa.5.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3893, !noalias !3896
  %.sroa.01.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sroa.0.sroa.0.0.i, ptr %.sroa.01.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3893, !noalias !3896
  %.sroa.01.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr null, ptr %.sroa.01.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3893, !noalias !3896
  %.sroa.01.sroa.6.sroa.4.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.g, ptr %.sroa.01.sroa.6.sroa.4.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3893, !noalias !3896
  %.sroa.01.sroa.6.sroa.5.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %.sroa.0.sroa.5.sroa.6.0.i, ptr %.sroa.01.sroa.6.sroa.5.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3893, !noalias !3896
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3893, !noalias !3896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seq(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 1, i64 %.sroa.5.0.i)
  %i.l = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !44, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3901)
  %i.q = invoke noundef align 8 ptr @_RNvXsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3setINtB5_4IterNtNtBb_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.c
  %.not10.i.i = icmp eq ptr %i.q, null
  br i1 %.not10.i.i, label %.loopexit13, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.noexc9, %.lr.ph.i.i
  %i.t = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.ae, %.noexc9 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3904
  store ptr %i.t, ptr %i.c, align 8, !noalias !3909
  call void @llvm.experimental.noalias.scope.decl(metadata !3912)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3915
  invoke void @_RINvNtCs8O45qwFIwQX_10serde_json5value8to_valueRRNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %bb.d
  %i.u = load i64, ptr %i.b, align 8, !range !43, !noalias !3915, !noundef !5
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.noexc8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !3915
  %i.w = load i64, ptr %i.r, align 8, !alias.scope !3917, !noalias !3920, !noundef !5 ; 3 uses
  %i.x = load i64, ptr %i.e, align 8, !range !2913, !alias.scope !3917, !noalias !3920, !noundef !5
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.f, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYNtNtNtB2o_5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtNtNtB1p_11collections5btree3set8BTreeSetB1l_EE0E0CshMzyYDJGtjv_3api.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8O45qwFIwQX_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYNtNtNtB2o_5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtNtNtB1p_11collections5btree3set8BTreeSetB1l_EE0E0CshMzyYDJGtjv_3api.exit.i.i unwind label %bb.g, !noalias !3922

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5value5ValueECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #13
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYNtNtNtB2o_5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtNtNtB1p_11collections5btree3set8BTreeSetB1l_EE0E0CshMzyYDJGtjv_3api.exit.i.i: ; preds = %bb.f, %bb.e
  %i.ab = load ptr, ptr %i.s, align 8, !alias.scope !3917, !noalias !3920, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.ab, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  %i.ad = add i64 %i.w, 1
  store i64 %i.ad, ptr %i.r, align 8, !alias.scope !3917, !noalias !3920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3904
  %i.ae = invoke noundef align 8 ptr @_RNvXsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3setINtB5_4IterNtNtBb_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.noexc9 unwind label %.loopexit ; 2 uses

.noexc9:                                          ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYNtNtNtB2o_5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtNtNtB1p_11collections5btree3set8BTreeSetB1l_EE0E0CshMzyYDJGtjv_3api.exit.i.i
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %.loopexit13, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYNtNtNtB2o_5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtNtNtB1p_11collections5btree3set8BTreeSetB1l_EE0E0CshMzyYDJGtjv_3api.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %.noexc8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !3915, !nonnull !5, !align !44, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3904
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ah, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeVecECshMzyYDJGtjv_3api.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeVecECshMzyYDJGtjv_3api.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.l

.loopexit13:                                      ; preds = %.noexc9, %.noexc
  %.sroa.4.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i10, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i64 -9223372036854775804, ptr %0, align 8, !alias.scope !3923, !noalias !3926
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeVecECshMzyYDJGtjv_3api.exit, %.loopexit13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeVecECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #13
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %.body
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageEECshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %i.f = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3931)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !3931, !noalias !3928, !noundef !5 ; 3 uses
  %.not.i = icmp ne ptr %i.g, null                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !3931, !noalias !3928
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !3931, !noalias !3928
  %.sroa.0.sroa.0.0.i = zext i1 %.not.i to i64    ; 2 uses
  %.sroa.0.sroa.5.sroa.6.0.i = select i1 %.not.i, i64 %i.i, i64 undef ; 2 uses
  %.sroa.5.0.i = select i1 %.not.i, i64 %i.k, i64 0 ; 2 uses
  store i64 %.sroa.0.sroa.0.0.i, ptr %i.f, align 8, !alias.scope !3928, !noalias !3931
  %.sroa.01.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %.sroa.01.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3928, !noalias !3931
  %.sroa.01.sroa.4.sroa.4.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %.sroa.01.sroa.4.sroa.4.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3928, !noalias !3931
  %.sroa.01.sroa.4.sroa.5.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.0.sroa.5.sroa.6.0.i, ptr %.sroa.01.sroa.4.sroa.5.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3928, !noalias !3931
  %.sroa.01.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sroa.0.sroa.0.0.i, ptr %.sroa.01.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3928, !noalias !3931
  %.sroa.01.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr null, ptr %.sroa.01.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3928, !noalias !3931
  %.sroa.01.sroa.6.sroa.4.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.g, ptr %.sroa.01.sroa.6.sroa.4.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3928, !noalias !3931
  %.sroa.01.sroa.6.sroa.5.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %.sroa.0.sroa.5.sroa.6.0.i, ptr %.sroa.01.sroa.6.sroa.5.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3928, !noalias !3931
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3928, !noalias !3931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seq(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 1, i64 %.sroa.5.0.i)
  %i.l = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !44, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3936)
  %i.q = invoke noundef ptr @_RNvXsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3setINtB5_4IterNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.c
  %.not10.i.i = icmp eq ptr %i.q, null
  br i1 %.not10.i.i, label %.loopexit13, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.noexc9, %.lr.ph.i.i
  %i.t = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.ae, %.noexc9 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3939
  store ptr %i.t, ptr %i.c, align 8, !noalias !3944
  call void @llvm.experimental.noalias.scope.decl(metadata !3947)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3950
  invoke void @_RINvNtCs8O45qwFIwQX_10serde_json5value8to_valueRRNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %bb.d
  %i.u = load i64, ptr %i.b, align 8, !range !43, !noalias !3950, !noundef !5
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.noexc8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !3950
  %i.w = load i64, ptr %i.r, align 8, !alias.scope !3952, !noalias !3955, !noundef !5 ; 3 uses
  %i.x = load i64, ptr %i.e, align 8, !range !2913, !alias.scope !3952, !noalias !3955, !noundef !5
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.f, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYNtNtNtB2F_5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetB1l_EE0E0CshMzyYDJGtjv_3api.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8O45qwFIwQX_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYNtNtNtB2F_5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetB1l_EE0E0CshMzyYDJGtjv_3api.exit.i.i unwind label %bb.g, !noalias !3957

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5value5ValueECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #13
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYNtNtNtB2F_5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetB1l_EE0E0CshMzyYDJGtjv_3api.exit.i.i: ; preds = %bb.f, %bb.e
  %i.ab = load ptr, ptr %i.s, align 8, !alias.scope !3952, !noalias !3955, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.ab, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  %i.ad = add i64 %i.w, 1
  store i64 %i.ad, ptr %i.r, align 8, !alias.scope !3952, !noalias !3955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3939
  %i.ae = invoke noundef ptr @_RNvXsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3setINtB5_4IterNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.noexc9 unwind label %.loopexit ; 2 uses

.noexc9:                                          ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYNtNtNtB2F_5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetB1l_EE0E0CshMzyYDJGtjv_3api.exit.i.i
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %.loopexit13, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYNtNtNtB2F_5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetB1l_EE0E0CshMzyYDJGtjv_3api.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %.noexc8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !3950, !nonnull !5, !align !44, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3939
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ah, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeVecECshMzyYDJGtjv_3api.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeVecECshMzyYDJGtjv_3api.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.l

.loopexit13:                                      ; preds = %.noexc9, %.noexc
  %.sroa.4.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i10, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i64 -9223372036854775804, ptr %0, align 8, !alias.scope !3958, !noalias !3961
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeVecECshMzyYDJGtjv_3api.exit, %.loopexit13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeVecECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #13
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %.body
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryNtNtCsexYYUdYSQU6_5alloc6string6StringNtB7_5ValueECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.c, align 8, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3963)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3966
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !3966
  %i.d = load i64, ptr %i.a, align 8, !range !22, !noalias !3966, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !23, !noalias !3966, !noundef !5 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i.i.i.i, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !noalias !3966
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #14, !noalias !3966
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i.i.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !noalias !3966, !nonnull !5, !noundef !5 ; 3 uses
  %i.k = icmp samesign ule i64 %.val3, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3966
  %.not.i.i.i.i = icmp eq i64 %.val3, 0
  br i1 %.not.i.i.i.i, label %_RINvXs_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB7_9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser16MapKeySerializerECshMzyYDJGtjv_3api.exit.i, label %bb.c
end_hunk_0
