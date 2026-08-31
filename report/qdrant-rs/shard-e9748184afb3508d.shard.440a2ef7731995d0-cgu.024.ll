Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/shard-e9748184afb3508d.shard.440a2ef7731995d0-cgu.024?download=true
inline.NumInlined: 430
inline.NumDeleted: 171
begin_hunk_0_@_RNvMse_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtB7_12ScoringQuery19try_from_grpc_query:bb.a
  %i.p = alloca [112 x i8], align 8               ; 7 uses
  %i.q = alloca [184 x i8], align 8               ; 16 uses
  %i.r = alloca [464 x i8], align 8               ; 8 uses
  %i.s = alloca [72 x i8], align 8                ; 9 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [112 x i8], align 8               ; 13 uses
  %.sroa.9.sroa.9.sroa.0.sroa.8.sroa.8 = alloca [40 x i8], align 8 ; 6 uses
  %.sroa.9.sroa.9.sroa.11 = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.14 = alloca [64 x i8], align 8           ; 3 uses
  %.sroa.012.0.copyload = load i64, ptr %1, align 8 ; 5 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.614.sroa.0.0.copyload = load ptr, ptr %.sroa.614.0..sroa_idx, align 8 ; 3 uses
  %.not = icmp eq i64 %.sroa.012.0.copyload, -4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.614.sroa.5.0..sroa.614.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(448) %.sroa.614.sroa.5.0..sroa.614.0..sroa_idx.sroa_idx, i64 448, i1 false)
  store i64 %.sroa.012.0.copyload, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  store ptr %.sroa.614.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %i.v = icmp ne i64 %.sroa.012.0.copyload, 33
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nsw i64 %.sroa.012.0.copyload, -29
  %i.x = icmp sgt i64 %.sroa.012.0.copyload, 28
  %i.y = select i1 %i.x, i64 %i.w, i64 4
  %i.z = ptrtoint ptr %.sroa.614.sroa.0.0.copyload to i64 ; 2 uses
  %i.aa = trunc i64 %i.z to i32                   ; 4 uses
  switch i64 %i.y, label %bb.h [
    i64 0, label %bb.i
    i64 1, label %bb.j
    i64 2, label %bb.m
    i64 3, label %bb.n
    i64 4, label %bb.p
    i64 5, label %bb.q
    i64 6, label %bb.r
  ]

bb.c:                                             ; preds = %bb.a
  %i.ab = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECs5QaNqjAn6vc_5shard(i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 20)
          to label %_RNCNvMse_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtB9_12ScoringQuery19try_from_grpc_query0Bb_.exit unwind label %.thread

.thread:                                          ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit.thread

_RNCNvMse_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtB9_12ScoringQuery19try_from_grpc_query0Bb_.exit: ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ad, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.aj, %bb.ao, %bb.y, %bb.af, %bb.ah, %_RNCNvMse_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtB9_12ScoringQuery19try_from_grpc_querys0_0Bb_.exit, %bb.ba, %_RNCNvMse_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtB9_12ScoringQuery19try_from_grpc_query0Bb_.exit
  %i.ae = load i64, ptr %2, align 8, !range !4, !alias.scope !421, !noundef !5
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs5QaNqjAn6vc_5shard.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %bb.aw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit.thread, %bb.ac, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.ac ], [ %i.ag, %bb.f ], [ %.pn.pn250, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit.thread ], [ %i.cj, %bb.aw ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit.i: ; preds = %bb.e
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs5QaNqjAn6vc_5shard.exit

bb.h:                                             ; preds = %bb.b
  unreachable

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RNvMsh_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_10query_enum9QueryEnum19from_grpc_raw_query(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %.sroa.4.0..sroa_idx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ai = load i64, ptr %i.u, align 8, !range !47, !noundef !5 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  br i1 %i.aj, label %bb.v, label %bb.w

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 %i.aa, ptr %i.i, align 4, !noalias !424
  switch i32 %i.aa, label %bb.k [
    i32 0, label %bb.z
    i32 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !427
  store ptr %i.i, ptr %i.g, align 8, !noalias !427
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !427
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @3, ptr noundef nonnull %i.g)
          to label %.noexc unwind label %.body.thread299

.noexc:                                           ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !427
  %i.am = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard(i8 noundef 3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.y unwind label %.body.thread299

bb.l:                                             ; preds = %bb.j
  br label %bb.z

bb.m:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvXs1L_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types8order_by7OrderByINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB8_6qdrant7OrderByE8try_from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %.sroa.4.0..sroa_idx)
          to label %bb.ae unwind label %bb.bb

bb.n:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.aa, ptr %i.f, align 4
  %i.an = icmp eq i32 %i.aa, 0
  br i1 %i.an, label %.thread256, label %bb.o

.thread256:                                       ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aa

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !430
  store ptr %i.f, ptr %i.d, align 8, !noalias !430
  %.sroa.42.0..sroa_idx.i.i214 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i214, align 8, !noalias !430
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @4, ptr noundef nonnull %i.d)
          to label %.noexc215 unwind label %.body.thread299

.noexc215:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !430
  %i.ao = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard(i8 noundef 3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.ah unwind label %.body.thread299

bb.p:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvXsk_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula15FormulaInternalINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7FormulaE8try_from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(464) %i.r)
          to label %bb.ai unwind label %bb.bc

bb.q:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.aq = load float, ptr %i.ap, align 8, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 60
  %i.as = load i32, ptr %i.ar, align 4, !noundef !5
  %.not208 = icmp eq ptr %.sroa.614.sroa.0.0.copyload, inttoptr (i64 -2 to ptr)
  br i1 %.not208, label %bb.aq, label %bb.ap

bb.r:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  %.sroa.5226.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.5226.0.copyload = load i32, ptr %.sroa.5226.0..sroa.4.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noalias !433, !noundef !5 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 2305843009213693952
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp eq i64 %i.av, 0
  br i1 %i.ax, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !433
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !433, !nonnull !5, !noundef !5 ; 3 uses
  %i.ba = load i64, ptr %i.c, align 8, !range !408, !noalias !433, !noundef !5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.av
  store ptr %i.az, ptr %i.b, align 8, !noalias !433
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.az, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !433
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ba, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !433
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.bb, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !433
  invoke void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterfENcINtCs3EstPQUvMw7_13ordered_float12OrderedFloatfE0EB2p_ECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.az unwind label %.body.thread332

.critedge.i:                                      ; preds = %bb.r
  %i.bc = trunc nuw i32 %.sroa.5226.0.copyload to i1
  %3 = zext i32 %.sroa.6.0.copyload to i64
  %.sroa.010.0.c.i = select i1 %i.bc, i64 %3, i64 2
  %.sroa.7229.8.copyload230 = load ptr, ptr %i.at, align 8, !noalias !437
  %.sroa.11231.8..sroa_idx232 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.11231.8.copyload233 = load i64, ptr %.sroa.11231.8..sroa_idx232, align 8, !noalias !437
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECs5QaNqjAn6vc_5shard.exit.i unwind label %bb.t, !noalias !433

bb.t:                                             ; preds = %.critedge.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit.thread unwind label %bb.u, !noalias !433

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !433
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECs5QaNqjAn6vc_5shard.exit.i: ; preds = %.critedge.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread259 unwind label %.body.thread332

.thread259:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECs5QaNqjAn6vc_5shard.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aa

.body.thread299:                                  ; preds = %bb.k, %.noexc, %bb.o, %.noexc215
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit.thread348: ; preds = %bb.aq, %bb.ap
  %lpad.thr_comm321 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit.thread

.body.thread332:                                  ; preds = %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECs5QaNqjAn6vc_5shard.exit.i
  %lpad.thr_comm330 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit.thread

bb.v:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.bf, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs5QaNqjAn6vc_5shard.exit

bb.w:                                             ; preds = %bb.i
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5172.sroa.0.0.copyload = load i64, ptr %.sroa.5172.0..sroa_idx, align 8
  %.sroa.5172.sroa.4.0..sroa.5172.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.5172.sroa.4.0.copyload = load i64, ptr %.sroa.5172.sroa.4.0..sroa.5172.0..sroa_idx.sroa_idx, align 8
  %.sroa.5172.sroa.5.0..sroa.5172.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.sroa.9.sroa.0.sroa.8.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5172.sroa.5.0..sroa.5172.0..sroa_idx.sroa_idx, i64 40, i1 false)
  %.sroa.6173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %.sroa.6173.0.copyload = load i64, ptr %.sroa.6173.0..sroa_idx, align 8
  %.sroa.7174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %.sroa.7174.0.copyload = load float, ptr %.sroa.7174.0..sroa_idx, align 8
  %.sroa.8175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 84
  %.sroa.8175.0.copyload = load i32, ptr %.sroa.8175.0..sroa_idx, align 4
  %.sroa.9176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.9.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9176.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.x

bb.x:                                             ; preds = %bb.ax, %bb.w
  %.sroa.9.sroa.9.sroa.0.sroa.8.sroa.0.0 = phi i64 [ %.sroa.5172.sroa.4.0.copyload, %bb.w ], [ %i.cf, %bb.ax ]
  %.sroa.9.sroa.9.sroa.0.sroa.0.0 = phi i64 [ %.sroa.5172.sroa.0.0.copyload, %bb.w ], [ %i.cl, %bb.ax ]
  %.sroa.9.sroa.9.sroa.10.0 = phi i32 [ %.sroa.8175.0.copyload, %bb.w ], [ undef, %bb.ax ]
  %.sroa.9.sroa.9.sroa.9.0 = phi float [ %.sroa.7174.0.copyload, %bb.w ], [ %i.aq, %bb.ax ]
  %.sroa.9.sroa.9.sroa.8.0 = phi i64 [ %.sroa.6173.0.copyload, %bb.w ], [ %i.ck, %bb.ax ]
  %.sroa.9.sroa.8.0 = phi ptr [ %i.al, %bb.w ], [ %.sroa.4137.0.copyload, %bb.ax ]
  %.sroa.9.sroa.0.0 = phi i64 [ %i.ai, %bb.w ], [ %.sroa.0136.0.copyload, %bb.ax ]
  %.sroa.017.0 = phi i64 [ -9223372036854775808, %bb.w ], [ -9223372036854775803, %bb.ax ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.sroa.0.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.sroa.8.0, ptr %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.sroa.9.sroa.0.sroa.0.0, ptr %.sroa.9.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.9.sroa.0.sroa.8.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.9.sroa.9.sroa.0.sroa.8.sroa.0.0, ptr %.sroa.9.sroa.9.sroa.0.sroa.8.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.9.sroa.0.sroa.8.sroa.8.0..sroa.9.sroa.9.sroa.0.sroa.8.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.sroa.9.sroa.0.sroa.8.sroa.8.0..sroa.9.sroa.9.sroa.0.sroa.8.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.sroa.9.sroa.0.sroa.8.sroa.8, i64 40, i1 false)
  %.sroa.9.sroa.9.sroa.8.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.9.sroa.9.sroa.8.0, ptr %.sroa.9.sroa.9.sroa.8.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.9.sroa.9.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %.sroa.9.sroa.9.sroa.9.0, ptr %.sroa.9.sroa.9.sroa.9.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.9.sroa.10.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %.sroa.9.sroa.9.sroa.10.0, ptr %.sroa.9.sroa.9.sroa.10.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx, align 4
  %.sroa.9.sroa.9.sroa.11.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.9.sroa.11.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.9.sroa.11, i64 24, i1 false)
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.14, i64 64, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs5QaNqjAn6vc_5shard.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs5QaNqjAn6vc_5shard.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit.i220, %bb.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit.i, %bb.d, %bb.x, %bb.v
  ret void

bb.y:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.bg, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.z:                                             ; preds = %bb.l, %bb.j
  %.sroa.0.0.ph = phi i64 [ -1, %bb.j ], [ -2, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.az, %.thread259, %.thread256, %bb.an, %bb.ag, %bb.z
  %.sroa.9.sroa.9.sroa.0.sroa.8.sroa.0.1 = phi i64 [ 2, %bb.z ], [ %.sroa.5185.sroa.4.0.copyload, %bb.ag ], [ undef, %.thread256 ], [ %.sroa.5191.sroa.4.sroa.4.0.copyload, %bb.an ], [ %.sroa.010.0.c.i, %.thread259 ], [ %.sroa.010.0.i, %bb.az ]
  %.sroa.9.sroa.9.sroa.0.sroa.0.1 = phi i64 [ undef, %bb.z ], [ %.sroa.5185.sroa.0.0.copyload, %bb.ag ], [ undef, %.thread256 ], [ %.sroa.5191.sroa.4.sroa.0.0.copyload, %bb.an ], [ %.sroa.11231.8.copyload233, %.thread259 ], [ %.sroa.11231.8.copyload, %bb.az ]
  %.sroa.9.sroa.9.sroa.10.1 = phi i32 [ undef, %bb.z ], [ undef, %bb.ag ], [ undef, %.thread256 ], [ %.sroa.5191.sroa.7.0.copyload, %bb.an ], [ undef, %.thread259 ], [ undef, %bb.az ]
  %.sroa.9.sroa.9.sroa.9.1 = phi float [ undef, %bb.z ], [ undef, %bb.ag ], [ undef, %.thread256 ], [ %.sroa.5191.sroa.6.0.copyload, %bb.an ], [ undef, %.thread259 ], [ undef, %bb.az ]
  %.sroa.9.sroa.9.sroa.8.1 = phi i64 [ undef, %bb.z ], [ undef, %bb.ag ], [ undef, %.thread256 ], [ %.sroa.5191.sroa.5.0.copyload, %bb.an ], [ undef, %.thread259 ], [ undef, %bb.az ]
  %.sroa.9.sroa.8.1 = phi ptr [ undef, %bb.z ], [ %i.bo, %bb.ag ], [ undef, %.thread256 ], [ %.sroa.5191.sroa.0.0.copyload, %bb.an ], [ %.sroa.7229.8.copyload230, %.thread259 ], [ %.sroa.7229.8.copyload, %bb.az ]
  %.sroa.9.sroa.0.1 = phi i64 [ %.sroa.0.0.ph, %bb.z ], [ %i.bl, %bb.ag ], [ undef, %.thread256 ], [ %i.ca, %bb.an ], [ -1, %.thread259 ], [ %.sroa.02.0.copyload.i, %bb.az ]
  %.sroa.017.1 = phi i64 [ -9223372036854775807, %bb.z ], [ -9223372036854775806, %bb.ag ], [ -9223372036854775804, %.thread256 ], [ %i.bw, %bb.an ], [ -9223372036854775807, %.thread259 ], [ -9223372036854775807, %bb.az ]
  store i64 %.sroa.017.1, ptr %0, align 8
  %.sroa.9.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.sroa.0.1, ptr %.sroa.9.0..sroa_idx20, align 8
  %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx20.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.sroa.8.1, ptr %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx20.sroa_idx, align 8
  %.sroa.9.sroa.9.0..sroa.9.0..sroa_idx20.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.sroa.9.sroa.0.sroa.0.1, ptr %.sroa.9.sroa.9.0..sroa.9.0..sroa_idx20.sroa_idx, align 8
  %.sroa.9.sroa.9.sroa.0.sroa.8.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx20.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.9.sroa.9.sroa.0.sroa.8.sroa.0.1, ptr %.sroa.9.sroa.9.sroa.0.sroa.8.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx20.sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.9.sroa.0.sroa.8.sroa.8.0..sroa.9.sroa.9.sroa.0.sroa.8.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx20.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.sroa.9.sroa.0.sroa.8.sroa.8.0..sroa.9.sroa.9.sroa.0.sroa.8.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx20.sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.sroa.9.sroa.0.sroa.8.sroa.8, i64 40, i1 false)
  %.sroa.9.sroa.9.sroa.8.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx20.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.9.sroa.9.sroa.8.1, ptr %.sroa.9.sroa.9.sroa.8.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx20.sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.9.sroa.9.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx20.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %.sroa.9.sroa.9.sroa.9.1, ptr %.sroa.9.sroa.9.sroa.9.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx20.sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.9.sroa.10.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx20.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %.sroa.9.sroa.9.sroa.10.1, ptr %.sroa.9.sroa.9.sroa.10.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx20.sroa_idx.sroa_idx, align 4
  %.sroa.9.sroa.9.sroa.11.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx20.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.9.sroa.11.0..sroa.9.sroa.9.0..sroa.9.0..sroa_idx20.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.9.sroa.11, i64 24, i1 false)
  %.sroa.14.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.14.0..sroa_idx22, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.14, i64 64, i1 false)
  %i.bh = load i64, ptr %2, align 8, !range !4, !alias.scope !438, !noundef !5
  %i.bi = icmp eq i64 %i.bh, -1
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs5QaNqjAn6vc_5shard.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit.i220 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit.i220: ; preds = %bb.ab
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs5QaNqjAn6vc_5shard.exit

bb.ae:                                            ; preds = %bb.m
  %i.bl = load i64, ptr %i.s, align 8, !range !4, !noundef !5 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, -1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  br i1 %i.bm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.bp, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.ag:                                            ; preds = %bb.ae
  %.sroa.5185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5185.sroa.0.0.copyload = load i64, ptr %.sroa.5185.0..sroa_idx, align 8
  %.sroa.5185.sroa.4.0..sroa.5185.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.5185.sroa.4.0.copyload = load i64, ptr %.sroa.5185.sroa.4.0..sroa.5185.0..sroa_idx.sroa_idx, align 8
  %.sroa.5185.sroa.5.0..sroa.5185.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.sroa.9.sroa.0.sroa.8.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5185.sroa.5.0..sroa.5185.0..sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.aa

bb.ah:                                            ; preds = %.noexc215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.bq, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.ai:                                            ; preds = %bb.p
  %i.br = load i64, ptr %i.p, align 8, !range !441, !noundef !5 ; 2 uses
  %i.bs = icmp eq i64 %i.br, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  br i1 %i.bs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.bv, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.d

bb.ak:                                            ; preds = %bb.ai
  %.sroa.5188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.8101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8101.0..sroa_idx102, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5188.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 %i.br, ptr %i.o, align 8
  %.sroa.698.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.bu, ptr %.sroa.698.0..sroa_idx99, align 8
  invoke void @_RNvXNtNtCs5QaNqjAn6vc_5shard5query7formulaNtNtNtNtNtCs607s0NAIaWN_7segment5index18query_optimization15rescore_formula14parsed_formula13ParsedFormulaINtNtCskKLDkoKarTP_4core7convert7TryFromNtB2_15FormulaInternalE8try_from(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.o)
          to label %bb.al unwind label %bb.bc

bb.al:                                            ; preds = %bb.ak
  %i.bw = load i64, ptr %i.q, align 8, !range !4, !noundef !5 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, -1
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  br i1 %i.bx, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.j, ptr noundef nonnull align 8 dereferenceable(96) %i.by, i64 96, i1 false)
  %i.bz = invoke fastcc noundef nonnull align 8 ptr @_RNCNvMse_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtB9_12ScoringQuery19try_from_grpc_querys_0Bb_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(96) %i.j)
          to label %bb.ao unwind label %bb.bc

bb.an:                                            ; preds = %bb.al
  %.sroa.4190.0.copyload = load ptr, ptr %i.by, align 8
  %.sroa.5191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5191.sroa.0.0.copyload = load ptr, ptr %.sroa.5191.0..sroa_idx, align 8
  %.sroa.5191.sroa.4.0..sroa.5191.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.5191.sroa.4.sroa.0.0.copyload = load i64, ptr %.sroa.5191.sroa.4.0..sroa.5191.0..sroa_idx.sroa_idx, align 8
  %.sroa.5191.sroa.4.sroa.4.0..sroa.5191.sroa.4.0..sroa.5191.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.5191.sroa.4.sroa.4.0.copyload = load i64, ptr %.sroa.5191.sroa.4.sroa.4.0..sroa.5191.sroa.4.0..sroa.5191.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5191.sroa.4.sroa.5.0..sroa.5191.sroa.4.0..sroa.5191.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.sroa.9.sroa.0.sroa.8.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5191.sroa.4.sroa.5.0..sroa.5191.sroa.4.0..sroa.5191.0..sroa_idx.sroa_idx.sroa_idx, i64 40, i1 false)
  %.sroa.5191.sroa.5.0..sroa.5191.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %.sroa.5191.sroa.5.0.copyload = load i64, ptr %.sroa.5191.sroa.5.0..sroa.5191.0..sroa_idx.sroa_idx, align 8
  %.sroa.5191.sroa.6.0..sroa.5191.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %.sroa.5191.sroa.6.0.copyload = load float, ptr %.sroa.5191.sroa.6.0..sroa.5191.0..sroa_idx.sroa_idx, align 8
  %.sroa.5191.sroa.7.0..sroa.5191.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 92
  %.sroa.5191.sroa.7.0.copyload = load i32, ptr %.sroa.5191.sroa.7.0..sroa.5191.0..sroa_idx.sroa_idx, align 4
  %.sroa.5191.sroa.8.0..sroa.5191.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.9.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5191.sroa.8.0..sroa.5191.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %.sroa.5191.sroa.9.0..sroa.5191.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5191.sroa.9.0..sroa.5191.0..sroa_idx.sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ca = ptrtoint ptr %.sroa.4190.0.copyload to i64
  br label %bb.aa

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bz, ptr %i.cb, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.ap:                                            ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6110.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.8117.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8117.0..sroa_idx118, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 32, i1 false)
  store i64 %i.z, ptr %i.n, align 8
  %.sroa.6114.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.6110.sroa.0.0.copyload, ptr %.sroa.6114.0..sroa_idx115, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvXsh_NtNtCshMzyYDJGtjv_3api11conversions7vectorsNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB9_4grpc6qdrant9RawVectorE8try_from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.n)
          to label %bb.ar unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit.thread348

bb.aq:                                            ; preds = %bb.q
  %i.cd = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECs5QaNqjAn6vc_5shard(i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 25)
          to label %_RNCNvMse_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtB9_12ScoringQuery19try_from_grpc_querys0_0Bb_.exit unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit.thread348

_RNCNvMse_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtB9_12ScoringQuery19try_from_grpc_querys0_0Bb_.exit: ; preds = %bb.aq, %bb.as
  %.sink = phi ptr [ %i.ci, %bb.as ], [ %i.cd, %bb.aq ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ce, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.ar:                                            ; preds = %bb.ap
  %i.cf = load i64, ptr %i.m, align 8, !range !111, !noundef !5 ; 3 uses
  %i.cg = icmp eq i64 %i.cf, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  br i1 %i.cg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RNCNvMse_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtB9_12ScoringQuery19try_from_grpc_querys0_0Bb_.exit

bb.at:                                            ; preds = %bb.ar
  %.sroa.5204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.3135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3135.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5204.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.cf, ptr %i.l, align 8
  %.sroa.2134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.ci, ptr %.sroa.2134.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.sroa.0151.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.not209 = icmp eq i64 %.sroa.0151.0.copyload, -1
  br i1 %.not209, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.sroa.5153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5153.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5153.0..sroa_idx154, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5153.0..sroa_idx, i64 16, i1 false)
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  invoke fastcc void @_RNCNvMse_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtB9_12ScoringQuery19try_from_grpc_querys1_0Bb_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.k)
          to label %._crit_edge unwind label %bb.aw

._crit_edge:                                      ; preds = %bb.av
  %.sroa.0136.0.copyload.pre = load i64, ptr %i.k, align 8
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(48) %i.l) #16
          to label %common.resume unwind label %bb.ay

bb.ax:                                            ; preds = %._crit_edge, %bb.au
  %.sroa.0136.0.copyload = phi i64 [ %.sroa.0136.0.copyload.pre, %._crit_edge ], [ %.sroa.0151.0.copyload, %bb.au ]
  %i.ck = zext i32 %i.as to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.sroa.9.sroa.0.sroa.8.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2134.0..sroa_idx, i64 40, i1 false)
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4137.0.copyload = load ptr, ptr %.sroa.4137.0..sroa_idx, align 8
  %.sroa.5138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.cl = load i64, ptr %.sroa.5138.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.x

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit.thread, %bb.aw
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.az:                                            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !433
  %.sroa.02.0.copyload.i = load i64, ptr %i.a, align 8, !noalias !433 ; 2 uses
  %i.cn = trunc nuw i32 %.sroa.5226.0.copyload to i1
  %4 = zext i32 %.sroa.6.0.copyload to i64
  %.sroa.010.0.i = select i1 %i.cn, i64 %4, i64 2
  %.sroa.7229.8.copyload = load ptr, ptr %i.at, align 8, !noalias !437 ; 3 uses
  %.sroa.11231.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.11231.8.copyload = load i64, ptr %.sroa.11231.8..sroa_idx, align 8, !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.co = icmp eq i64 %.sroa.02.0.copyload.i, -3
  br i1 %i.co, label %bb.ba, label %bb.aa

bb.ba:                                            ; preds = %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7229.8.copyload) ]
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7229.8.copyload, ptr %i.cp, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.bb:                                            ; preds = %bb.m
  %lpad.thr_comm.split-lp331 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit.thread

bb.bc:                                            ; preds = %bb.p, %bb.ak, %bb.am
  %lpad.thr_comm307 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit.thread: ; preds = %.body.thread332, %bb.t, %.body.thread299, %bb.bb, %bb.bc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit.thread348, %.thread
  %.pn.pn250 = phi { ptr, i32 } [ %i.ac, %.thread ], [ %lpad.thr_comm321, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit.thread348 ], [ %lpad.thr_comm307, %bb.bc ], [ %lpad.thr_comm, %.body.thread299 ], [ %lpad.thr_comm.split-lp331, %bb.bb ], [ %lpad.thr_comm330, %.body.thread332 ], [ %i.bd, %bb.t ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #16
          to label %common.resume unwind label %bb.ay
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define void @_RNvXNtNtCs5QaNqjAn6vc_5shard5query11conversionsNtB4_17ShardQueryRequestINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema21SearchRequestInternalE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([568 x i8]) align 8 captures(none) dereferenceable(568) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(440) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.632 = alloca [23 x i8], align 1          ; 4 uses
  %.sroa.6 = alloca [15 x i8], align 1            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.0.0.copyload.fr = freeze i64 %.sroa.0.0.copyload ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.sroa.5.sroa.7.0.copyload = load i64, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.sroa.5.sroa.8.sroa.0.0.copyload = load i64, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.8.sroa.5.0..sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.sroa.5.sroa.8.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.8.sroa.5.0..sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.8.sroa.6.0..sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.sroa.5.sroa.8.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.8.sroa.6.0..sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.c = load i32, ptr %i.b, align 8, !range !442, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 428
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  %i.h = load i64, ptr %1, align 8, !range !400, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 400
  %.sroa.0.0.copyload145 = load i64, ptr %i.k, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 408
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %1, i64 409
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.0147.0.copyload = load i64, ptr %i.l, align 8 ; 2 uses
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.4148.0.copyload = load i8, ptr %.sroa.4148.0..sroa_idx, align 8
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 201
  %i.m = xor i64 %.sroa.0.0.copyload.fr, -9223372036854775808 ; 2 uses
  %i.n = icmp slt i64 %.sroa.0.0.copyload.fr, 0   ; 2 uses
  %i.o = select i1 %i.n, i64 %i.m, i64 2
  switch i64 %i.o, label %bb.b [
    i64 0, label %.thread
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a
  %.sroa.17.sroa.10.0.ph = phi i64 [ undef, %bb.a ], [ %.sroa.5.sroa.8.sroa.6.0.copyload, %bb.c ]
  %.sroa.17.sroa.7.0.ph = phi i64 [ undef, %bb.a ], [ %.sroa.5.sroa.8.sroa.5.0.copyload, %bb.c ]
  %.sroa.17.sroa.0.0.ph = phi i64 [ undef, %bb.a ], [ %.sroa.5.sroa.8.sroa.0.0.copyload, %bb.c ]
  %.sroa.057.0.ph = phi i64 [ -9223372036854775808, %bb.a ], [ -9223372036854775807, %bb.c ] ; 2 uses
  %i.p = and i64 %.sroa.057.0.ph, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.q = load <2 x i64>, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.r = icmp ne i64 %.sroa.0.0.copyload.fr, -9223372036854775806
  tail call void @llvm.assume(i1 %i.r)
  br i1 %i.n, label %bb.e, label %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit

bb.e:                                             ; preds = %bb.d, %.thread
  %.sroa.057.0130 = phi i64 [ %.sroa.057.0.ph, %.thread ], [ %.sroa.0.0.copyload.fr, %bb.d ]
  %.sroa.17.sroa.0.0126 = phi i64 [ %.sroa.17.sroa.0.0.ph, %.thread ], [ %.sroa.5.sroa.8.sroa.0.0.copyload, %bb.d ] ; 3 uses
  %.sroa.17.sroa.7.0124 = phi i64 [ %.sroa.17.sroa.7.0.ph, %.thread ], [ %.sroa.5.sroa.8.sroa.5.0.copyload, %bb.d ] ; 3 uses
  %.sroa.17.sroa.10.0122 = phi i64 [ %.sroa.17.sroa.10.0.ph, %.thread ], [ %.sroa.5.sroa.8.sroa.6.0.copyload, %bb.d ] ; 3 uses
  %i.s = phi i64 [ %i.p, %.thread ], [ %i.m, %bb.d ]
  %i.t = phi <2 x i64> [ undef, %.thread ], [ %i.q, %bb.d ] ; 2 uses
  switch i64 %i.s, label %bb.f [
    i64 0, label %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  br label %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit

bb.h:                                             ; preds = %bb.e
  br label %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit

bb.i:                                             ; preds = %bb.e
  %i.u = insertelement <2 x i64> %i.t, i64 undef, i64 1
  br label %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit

_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit: ; preds = %bb.d, %bb.i, %bb.h, %bb.g, %bb.e
  %.sroa.11.sroa.8.0 = phi i64 [ %.sroa.17.sroa.10.0122, %bb.i ], [ %.sroa.17.sroa.10.0122, %bb.g ], [ %.sroa.5.sroa.7.0.copyload, %bb.e ], [ %.sroa.17.sroa.10.0122, %bb.h ], [ %.sroa.5.sroa.8.sroa.6.0.copyload, %bb.d ]
  %.sroa.11.sroa.7.0 = phi i64 [ %.sroa.17.sroa.7.0124, %bb.i ], [ %.sroa.17.sroa.7.0124, %bb.g ], [ %.sroa.5.sroa.6.0.copyload, %bb.e ], [ %.sroa.17.sroa.7.0124, %bb.h ], [ %.sroa.5.sroa.8.sroa.5.0.copyload, %bb.d ]
  %.sroa.11.sroa.0.0 = phi i64 [ %.sroa.17.sroa.0.0126, %bb.i ], [ %.sroa.17.sroa.0.0126, %bb.g ], [ %.sroa.5.sroa.0.0.copyload, %bb.e ], [ %.sroa.17.sroa.0.0126, %bb.h ], [ %.sroa.5.sroa.8.sroa.0.0.copyload, %bb.d ]
  %.sroa.753.sroa.6.0 = phi i64 [ %.sroa.5.sroa.7.0.copyload, %bb.i ], [ %.sroa.5.sroa.7.0.copyload, %bb.g ], [ undef, %bb.e ], [ %.sroa.5.sroa.6.0.copyload, %bb.h ], [ %.sroa.5.sroa.6.0.copyload, %bb.d ]
  %.sroa.753.sroa.0.0 = phi i64 [ %.sroa.5.sroa.6.0.copyload, %bb.i ], [ %.sroa.5.sroa.6.0.copyload, %bb.g ], [ undef, %bb.e ], [ %.sroa.5.sroa.0.0.copyload, %bb.h ], [ %.sroa.5.sroa.0.0.copyload, %bb.d ]
  %.sroa.756.0 = phi i64 [ -9223372036854775806, %bb.i ], [ -9223372036854775808, %bb.g ], [ -9223372036854775808, %bb.e ], [ %.sroa.5.sroa.7.0.copyload, %bb.h ], [ %.sroa.5.sroa.7.0.copyload, %bb.d ]
  %.sroa.0.0 = phi i64 [ %.sroa.5.sroa.0.0.copyload, %bb.i ], [ %.sroa.5.sroa.0.0.copyload, %bb.g ], [ -1, %bb.e ], [ %.sroa.057.0130, %bb.h ], [ %.sroa.0.0.copyload.fr, %bb.d ]
  %i.v = phi <2 x i64> [ %i.u, %bb.i ], [ undef, %bb.g ], [ undef, %bb.e ], [ %i.t, %bb.h ], [ %i.q, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.not = icmp eq i64 %.sroa.0.0.copyload145, -2
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.0..sroa_idx146, i64 15, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit, %bb.j
  %.sroa.520.0 = phi i8 [ %.sroa.4.0.copyload, %bb.j ], [ 0, %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit ]
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.copyload145, %bb.j ], [ -1, %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.632)
  %.not44 = icmp eq i64 %.sroa.0147.0.copyload, -1
  br i1 %.not44, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.632, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5149.0..sroa_idx, i64 23, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sroa.529.0 = phi i8 [ %.sroa.4148.0.copyload, %bb.l ], [ 0, %bb.k ]
  %.sroa.027.0 = phi i64 [ %.sroa.0147.0.copyload, %bb.l ], [ 2, %bb.k ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.y = trunc nuw i64 %i.h to i1
  %. = select i1 %i.y, i64 %i.j, i64 0
  %i.z = trunc nuw i32 %i.c to i1
  %.sroa.516.0 = select i1 %i.z, float %i.e, float undef
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.aa, align 8
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4151.0..sroa_idx, align 8
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %.sroa.5152.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 -9223372036854775808, ptr %i.ab, align 8
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 -9223372036854775808, ptr %.sroa.4154.0..sroa_idx, align 8
  %.sroa.5155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 %.sroa.0.0, ptr %.sroa.5155.0..sroa_idx, align 8
  %.sroa.6156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %.sroa.753.sroa.0.0, ptr %.sroa.6156.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %.sroa.753.sroa.6.0, ptr %.sroa.7.0..sroa_idx157, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 %.sroa.756.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 %.sroa.11.sroa.0.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 %.sroa.11.sroa.7.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i64 %.sroa.11.sroa.8.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 432
  store <2 x i64> %i.v, ptr %.sroa.12.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, ptr noundef nonnull align 8 dereferenceable(104) %i.x, i64 104, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 %i.c, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 548
  store float %.sroa.516.0, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %i.g, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i64 %., ptr %i.ag, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %i.w, i64 176, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %.sroa.018.0, ptr %i.ah, align 8
  %.sroa.520.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %.sroa.520.0, ptr %.sroa.520.0..sroa_idx21, align 8
  %.sroa.6.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %0, i64 241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.0..sroa_idx23, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6, i64 15, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.sroa.027.0, ptr %i.ai, align 8
  %.sroa.529.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %.sroa.529.0, ptr %.sroa.529.0..sroa_idx30, align 8
  %.sroa.632.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %0, i64 185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.632.0..sroa_idx33, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.632, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.632)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtB7_13ShardPrefetchINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchE8try_from:bb.a
  %.sroa.0116.3 = phi i8 [ 1, %bb.r ], [ 0, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.sroa.0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs5QaNqjAn6vc_5shard.exit

bb.ay:                                            ; preds = %bb.w
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #16
          to label %.thread217.thread unwind label %bb.al

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs5QaNqjAn6vc_5shard.exit: ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEEB1c_.exit
  %.sroa.0116.4 = phi i8 [ %.sroa.0116.3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEEB1c_.exit ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit.i ], [ 1, %bb.c ] ; 2 uses
  %.sroa.0118.3 = phi i8 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEEB1c_.exit ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit.i ], [ 1, %bb.c ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bx = load i64, ptr %i.o, align 8, !range !4, !alias.scope !471, !noundef !5
  %i.by = icmp eq i64 %i.bx, -1
  br i1 %i.by, label %.noexc206, label %bb.az

bb.az:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs5QaNqjAn6vc_5shard.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.o)
          to label %.noexc206 unwind label %bb.bb

.thread217.thread257:                             ; preds = %bb.aw, %bb.r
  %.sroa.0116.1.ph.ph = phi i8 [ 1, %bb.r ], [ 0, %bb.aw ]
  %lpad.thr_comm255 = landingpad { ptr, i32 }
          cleanup
  br label %.thread217.thread

bb.ba:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.thread217.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterEECs5QaNqjAn6vc_5shard.exit209: ; preds = %.thread217.thread, %bb.bh, %bb.bb
  %.sroa.0116.6 = phi i8 [ %.sroa.0116.4, %bb.bb ], [ %.sroa.0116.5246, %.thread217.thread ], [ %.sroa.0116.5246, %bb.bh ]
  %.sroa.0118.5 = phi i8 [ %.sroa.0118.3, %bb.bb ], [ %.sroa.0118.4247, %.thread217.thread ], [ %.sroa.0118.4247, %bb.bh ] ; 3 uses
  %.pn173 = phi { ptr, i32 } [ %i.cd, %bb.bb ], [ %.pn171248, %.thread217.thread ], [ %.pn171248, %bb.bh ] ; 3 uses
  %i.ca = trunc nuw i8 %.sroa.0116.6 to i1
  %i.cb = load i64, ptr %i.p, align 8, !range !470
  %i.cc = icmp ne i64 %i.cb, 2
  %or.cond288.not = select i1 %i.ca, i1 %i.cc, i1 false
  br i1 %or.cond288.not, label %bb.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit212

bb.bb:                                            ; preds = %bb.az
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterEECs5QaNqjAn6vc_5shard.exit209

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit: ; preds = %bb.bc, %bb.bd, %.noexc206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ce = trunc nuw i8 %.sroa.0118.3 to i1
  br i1 %i.ce, label %bb.bf, label %bb.ak

bb.bc:                                            ; preds = %.noexc206
  %i.cf = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !range !33, !alias.scope !474, !noundef !5
  %switch.i.i.i = icmp ugt i64 %i.cg, -3
  br i1 %switch.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.cf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit unwind label %bb.be

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit212: ; preds = %bb.bi, %bb.bj, %bb.be, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterEECs5QaNqjAn6vc_5shard.exit209
  %.sroa.0118.6 = phi i8 [ %.sroa.0118.3, %bb.be ], [ %.sroa.0118.5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterEECs5QaNqjAn6vc_5shard.exit209 ], [ %.sroa.0118.5, %bb.bj ], [ %.sroa.0118.5, %bb.bi ]
  %.pn175 = phi { ptr, i32 } [ %i.ci, %bb.be ], [ %.pn173, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterEECs5QaNqjAn6vc_5shard.exit209 ], [ %.pn173, %bb.bj ], [ %.pn173, %bb.bi ] ; 2 uses
  %i.ch = trunc nuw i8 %.sroa.0118.6 to i1
  br i1 %i.ch, label %bb.bk, label %.thread268

bb.be:                                            ; preds = %bb.bd
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit212

bb.bf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points5QueryEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(464) %i.q)
  br label %bb.ak

bb.bg:                                            ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #16
          to label %.thread217.thread unwind label %bb.al

.thread217.thread:                                ; preds = %bb.ay, %.body178, %bb.ba, %bb.e, %bb.av, %bb.q, %bb.bg, %.thread217.thread257, %.thread
  %.pn171248 = phi { ptr, i32 } [ %i.al, %bb.e ], [ %lpad.thr_comm255, %.thread217.thread257 ], [ %.pn167, %.thread ], [ %i.bv, %bb.av ], [ %i.au, %bb.q ], [ %lpad.thr_comm.split-lp, %bb.bg ], [ %i.bz, %bb.ba ], [ %i.ax, %bb.ay ], [ %eh.lpad-body179, %.body178 ] ; 2 uses
  %.sroa.0118.4247 = phi i8 [ 1, %bb.e ], [ 0, %.thread217.thread257 ], [ 0, %.thread ], [ 0, %bb.av ], [ 0, %bb.q ], [ 1, %bb.bg ], [ 1, %bb.ba ], [ 0, %bb.ay ], [ 0, %.body178 ] ; 2 uses
  %.sroa.0116.5246 = phi i8 [ 1, %bb.e ], [ %.sroa.0116.1.ph.ph, %.thread217.thread257 ], [ 0, %.thread ], [ 0, %bb.av ], [ 1, %bb.q ], [ 1, %bb.bg ], [ 1, %bb.ba ], [ 0, %bb.ay ], [ 1, %.body178 ] ; 2 uses
  %i.cj = load i64, ptr %i.o, align 8, !range !4, !alias.scope !481, !noundef !5
  %i.ck = icmp eq i64 %i.cj, -1
  br i1 %i.ck, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterEECs5QaNqjAn6vc_5shard.exit209, label %bb.bh

bb.bh:                                            ; preds = %.thread217.thread
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterEECs5QaNqjAn6vc_5shard.exit209 unwind label %bb.al

bb.bi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterEECs5QaNqjAn6vc_5shard.exit209
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !range !33, !alias.scope !484, !noundef !5
  %switch.i.i.i210 = icmp ugt i64 %i.cm, -3
  br i1 %switch.i.i.i210, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit212, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.cl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit212 unwind label %bb.al

.thread268:                                       ; preds = %.thread, %bb.an, %bb.aq, %bb.bk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit212
  %.pn175271 = phi { ptr, i32 } [ %.pn175, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit212 ], [ %.pn175, %bb.bk ], [ %.pn165, %bb.an ], [ %i.bp, %bb.aq ], [ %.pn167, %.thread ]
  resume { ptr, i32 } %.pn175271

bb.bk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit212
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points5QueryEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(464) %i.q) #16
          to label %.thread268 unwind label %bb.al
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtB7_14FusionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema3RrfE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = load i64, ptr %1, align 8, !range !400, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.02.0.copyload = load i64, ptr %i.d, align 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.not = icmp eq i64 %.sroa.02.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = icmp ult i64 %.sroa.6.0.copyload, 2305843009213693952
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.6.0.copyload
  %i.i = icmp sgt i64 %.sroa.02.0.copyload, -1
  tail call void @llvm.assume(i1 %i.i)
  store ptr %.sroa.5.0.copyload, ptr %i.a, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.02.0.copyload, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.h, ptr %.sroa.612.0..sroa_idx, align 8
  call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterfENcINtCs3EstPQUvMw7_13ordered_float12OrderedFloatfE0EB2p_ECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.05.0.copyload = load i64, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.05.0 = phi i64 [ %.sroa.05.0.copyload, %bb.b ], [ -1, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = trunc nuw i64 %i.c to i1
  %.sroa.04.0 = select i1 %i.k, i64 %i.f, i64 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.04.0, ptr %i.l, align 8
  store i64 %.sroa.05.0, ptr %0, align 8
  %.sroa.57.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.57.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtB7_14FusionInternalINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant3RrfE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !range !442, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 3 uses
  %i.k = icmp ult i64 %i.j, 2305843009213693952
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.o = load i64, ptr %i.d, align 8, !range !408, !noundef !5
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.j
  store ptr %i.n, ptr %i.c, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.p, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterfENcINtCs3EstPQUvMw7_13ordered_float12OrderedFloatfE0EB2p_ECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.02.0.copyload = load i64, ptr %i.a, align 8
  %i.q = trunc nuw i32 %i.f to i1
  %2 = zext i32 %i.h to i64
  %.sroa.010.0 = select i1 %i.q, i64 %2, i64 2
  store i64 %.sroa.02.0.copyload, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.010.0, ptr %.sroa.59.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECs5QaNqjAn6vc_5shard.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.critedge:                                        ; preds = %bb.a
  %i.r = trunc nuw i32 %i.f to i1
  %3 = zext i32 %i.h to i64
  %.sroa.010.0.c = select i1 %i.r, i64 %3, i64 2
  store i64 -1, ptr %0, align 8
  %.sroa.48.0..sroa_idx.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %.sroa.59.0..sroa_idx.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.010.0.c, ptr %.sroa.59.0..sroa_idx.c, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECs5QaNqjAn6vc_5shard.exit unwind label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecfEECs5QaNqjAn6vc_5shard.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecfEECs5QaNqjAn6vc_5shard.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.s

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECs5QaNqjAn6vc_5shard.exit: ; preds = %.critedge
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtB7_14FusionInternalINtNtCskKLDkoKarTP_4core7convert7TryFromlE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.c, align 4
  switch i32 %1, label %bb.b [
    i32 0, label %bb.d
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !491
  store ptr %i.c, ptr %i.a, align 8, !noalias !491
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !491
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @3, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !491
  %i.d = call noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard(i8 noundef 3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  store i64 -3, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.011.0 = phi i64 [ -2, %bb.c ], [ -1, %bb.a ]
  store i64 %.sroa.011.0, ptr %0, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %.sroa.614.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtB6_17ShardQueryRequestINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16QueryShardPointsE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([568 x i8]) align 8 captures(none) dereferenceable(568) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(872) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.8221 = alloca [15 x i8], align 1         ; 4 uses
  %i.d = alloca [176 x i8], align 8               ; 6 uses
  %i.e = alloca [176 x i8], align 8               ; 5 uses
  %i.f = alloca [104 x i8], align 8               ; 6 uses
  %i.g = alloca [104 x i8], align 8               ; 5 uses
  %i.h = alloca [464 x i8], align 8               ; 5 uses
  %i.i = alloca [184 x i8], align 8               ; 6 uses
  %.sroa.8152 = alloca [16 x i8], align 8         ; 5 uses
  %.sroa.7164 = alloca [16 x i8], align 8         ; 2 uses
  %i.j = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.7106 = alloca [160 x i8], align 8        ; 5 uses
  %.sroa.998 = alloca [160 x i8], align 8         ; 5 uses
  %i.k = alloca [176 x i8], align 8               ; 14 uses
  %.sroa.772 = alloca [88 x i8], align 8          ; 5 uses
  %.sroa.964 = alloca [88 x i8], align 8          ; 5 uses
  %i.l = alloca [104 x i8], align 8               ; 19 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.740 = alloca [168 x i8], align 8         ; 5 uses
  %.sroa.932 = alloca [168 x i8], align 8         ; 5 uses
  %i.n = alloca [184 x i8], align 8               ; 17 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 25 uses
  %i.r = alloca [24 x i8], align 8                ; 13 uses
  %i.s = alloca [32 x i8], align 8                ; 9 uses
  %i.t = alloca [176 x i8], align 8               ; 11 uses
  %i.u = alloca [104 x i8], align 8               ; 11 uses
  %i.v = alloca [24 x i8], align 8                ; 12 uses
  %i.w = alloca [464 x i8], align 8               ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 640
  %.sroa.0.0.copyload = load i64, ptr %i.x, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 648
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 656
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %i.w, ptr noundef nonnull align 8 dereferenceable(464) %i.y, i64 464, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.u, ptr noundef nonnull align 8 dereferenceable(104) %i.aa, i64 104, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.t, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 176, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 816
  %i.ad = load i32, ptr %i.ac, align 8, !range !442, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 820
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = load <2 x i64>, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.aj = icmp ult i64 %.sroa.6.0.copyload, 11415064402047990
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw [808 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.6.0.copyload
  %i.al = icmp sgt i64 %.sroa.0.0.copyload, -1
  tail call void @llvm.assume(i1 %i.al)
  store ptr %.sroa.5.0.copyload, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.ak, ptr %.sroa.613.0..sroa_idx, align 8
  invoke void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchENvYNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchINtNtB6_7convert7TryFromB1U_E8try_fromEB33_INtNtB6_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCINvXso_B4w_IB4u_INtB1b_3VecB33_EB4Q_EINtNtNtB4_6traits7collect12FromIteratorIB4u_B33_B4Q_EE9from_iterBQ_E0B5L_EB37_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.o)
          to label %bb.b unwind label %.split.thread

.body282:                                         ; preds = %bb.bn
  br i1 %.sroa.0166.4, label %.thread, label %.thread404

.split.thread:                                    ; preds = %bb.o, %bb.bx, %bb.br, %bb.a
  %.sroa.0169.1.ph = phi i8 [ 1, %bb.a ], [ 0, %bb.br ], [ 0, %bb.bx ], [ 1, %bb.o ]
  %.sroa.0167.1.ph = phi i8 [ 1, %bb.a ], [ 0, %bb.br ], [ 1, %bb.bx ], [ 1, %bb.o ]
  %.sroa.0173.1.ph = phi i8 [ 1, %bb.a ], [ 0, %bb.br ], [ 0, %bb.bx ], [ 0, %bb.o ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.am = load i64, ptr %i.p, align 8, !range !4, !noundef !5 ; 2 uses
  %i.an = icmp eq i64 %i.am, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEEB1c_.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.5177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5177.0.copyload = load i64, ptr %.sroa.5177.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 %i.am, ptr %i.q, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ap, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.5177.0.copyload, ptr %.sroa.516.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.932)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.740)
  %.sroa.042.0.copyload = load i64, ptr %i.w, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %.not = icmp eq i64 %.sroa.042.0.copyload, -5
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
end_hunk_1
