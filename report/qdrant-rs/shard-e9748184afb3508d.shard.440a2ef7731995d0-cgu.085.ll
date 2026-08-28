Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/shard-e9748184afb3508d.shard.440a2ef7731995d0-cgu.085?download=true
inline.NumInlined: 76
inline.NumDeleted: 49
begin_hunk_0_@_RNvMsh_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_10query_enum9QueryEnum19from_grpc_raw_query:bb.a

bb.c:                                             ; preds = %bb.a
  %i.v = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECs5QaNqjAn6vc_5shard(i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 22)
          to label %bb.d unwind label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.thread411

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.x, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.q, %bb.ag, %bb.aj, %bb.am, %bb.ap, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit, %bb.d
  %i.y = load i64, ptr %2, align 8, !range !4, !alias.scope !54, !noundef !5
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs5QaNqjAn6vc_5shard.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #7
  unreachable

common.resume:                                    ; preds = %bb.ad, %.critedge.thread411, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %.pn285.pn302, %.critedge.thread411 ], [ %lpad.thr_comm, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit.i: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs5QaNqjAn6vc_5shard.exit

bb.i:                                             ; preds = %bb.b
  unreachable

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvXsh_NtNtCshMzyYDJGtjv_3api11conversions7vectorsNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB9_4grpc6qdrant9RawVectorE8try_from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %.sroa.4.0..sroa_idx)
          to label %bb.p unwind label %.critedge.thread417

.critedge.thread417:                              ; preds = %bb.j
  %lpad.thr_comm366419 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.thread411

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvXs2b_NtNtCshMzyYDJGtjv_3api4grpc11conversionsINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query10reco_query9RecoQueryNtNtNtBT_10data_types7vectors14VectorInternalEINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB8_6qdrant9raw_query9RecommendE8try_from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %.sroa.4.0..sroa_idx)
          to label %bb.af unwind label %bb.br

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvXs2j_NtNtCshMzyYDJGtjv_3api4grpc11conversionsINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14discover_query13DiscoverQueryNtNtNtBT_10data_types7vectors14VectorInternalEINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB8_6qdrant9raw_query9DiscoveryE8try_from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %.sroa.4.0..sroa_idx)
          to label %bb.ai unwind label %bb.bs

bb.m:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXs2h_NtNtCshMzyYDJGtjv_3api4grpc11conversionsINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query12ContextQueryNtNtNtBT_10data_types7vectors14VectorInternalEINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB8_6qdrant9raw_query7ContextE8try_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx)
          to label %bb.al unwind label %bb.bt

bb.n:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvXs2b_NtNtCshMzyYDJGtjv_3api4grpc11conversionsINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query10reco_query9RecoQueryNtNtNtBT_10data_types7vectors14VectorInternalEINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB8_6qdrant9raw_query9RecommendE8try_from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %.sroa.4.0..sroa_idx)
          to label %bb.ao unwind label %bb.bu

bb.o:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %.sroa.0113.0.copyload = load i32, ptr %i.ad, align 8
  %.sroa.8115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  %.sroa.8115.sroa.0.0.copyload278 = load float, ptr %.sroa.8115.0..sroa_idx, align 4
  %i.ae = trunc i32 %.sroa.0113.0.copyload to i1  ; 2 uses
  br i1 %i.ae, label %bb.as, label %bb.ar

bb.p:                                             ; preds = %bb.j
  %i.af = load i64, ptr %i.q, align 8, !range !7, !noundef !5 ; 4 uses
  %i.ag = icmp eq i64 %i.af, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  br i1 %i.ag, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.aj, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.e

bb.r:                                             ; preds = %bb.p
  %.sroa.5236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.531.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5236.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.af, ptr %i.r, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.ai, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.032.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.not284 = icmp eq i64 %.sroa.032.0.copyload, -1
  %i.ak = icmp ne i64 %i.af, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ak)
  br i1 %.not284, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.032.0.copyload, ptr %i.p, align 8
  %.sroa.3.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx34, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, i64 16, i1 false)
  br label %bb.aa

bb.t:                                             ; preds = %bb.r
  %i.al = icmp sgt i64 %i.af, -1
  br i1 %i.al, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.x unwind label %bb.ad

bb.v:                                             ; preds = %bb.t
  %i.am = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECs5QaNqjAn6vc_5shard(i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 30)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(48) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs5QaNqjAn6vc_5shard.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs5QaNqjAn6vc_5shard.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit.i, %bb.e, %bb.ac, %bb.w
  ret void

bb.x:                                             ; preds = %bb.u
  %i.ao = load i64, ptr %i.a, align 8, !range !57, !noundef !5
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !58, !noundef !5 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ap, label %bb.y, label %bb.z, !prof !59

bb.y:                                             ; preds = %bb.x
  %i.at = load i64, ptr %i.as, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ar, i64 %i.at) #10
          to label %bb.ab unwind label %bb.ad

bb.z:                                             ; preds = %bb.x
  %i.au = load ptr, ptr %i.as, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.ar, ptr %i.p, align 8
  %.sroa.4238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.au, ptr %.sroa.4238.0..sroa_idx, align 8
  %.sroa.5239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.5239.0..sroa_idx, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.s, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  call void @_RINvMsF_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB6_10NamedQueryNtB6_14VectorInternalE3newNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.7.sroa.0.0.copyload50 = load i64, ptr %i.o, align 8
  %.sroa.7.sroa.7.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.sroa.7.0.copyload56 = load ptr, ptr %.sroa.7.sroa.7.0..sroa_idx55, align 8
  %.sroa.7.sroa.8.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.7.sroa.8.sroa.0.0.copyload109 = load i64, ptr %.sroa.7.sroa.8.0..sroa_idx61, align 8
  %.sroa.7.sroa.8.sroa.7.0..sroa.7.sroa.8.0..sroa_idx61.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.8.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.8.sroa.7.0..sroa.7.sroa.8.0..sroa_idx61.sroa_idx, i64 24, i1 false)
  %.sroa.7.sroa.9.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.9.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.9.0..sroa_idx64, i64 16, i1 false)
  %.sroa.7.sroa.9.sroa.6.0..sroa.7.sroa.9.0..sroa_idx64.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.av = load <2 x float>, ptr %.sroa.7.sroa.9.sroa.6.0..sroa.7.sroa.9.0..sroa_idx64.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  unreachable

bb.ac:                                            ; preds = %bb.bn, %bb.aq, %bb.an, %bb.ak, %bb.ah, %bb.aa
  %.sroa.7.sroa.10.sroa.0.0 = phi float [ undef, %bb.aa ], [ undef, %bb.ah ], [ %.sroa.0193.0.copyload, %bb.ak ], [ undef, %bb.an ], [ undef, %bb.aq ], [ %i.cb, %bb.bn ]
  %.sroa.7.sroa.10.sroa.3.0 = phi i32 [ undef, %bb.aa ], [ undef, %bb.ah ], [ %.sroa.4194.0.copyload, %bb.ak ], [ undef, %bb.an ], [ undef, %bb.aq ], [ undef, %bb.bn ]
  %.sroa.7.sroa.8.sroa.0.0.a = phi i64 [ %.sroa.7.sroa.8.sroa.0.0.copyload109, %bb.aa ], [ %.sroa.5242.0.copyload, %bb.ah ], [ %.sroa.5250.0.copyload, %bb.ak ], [ %.sroa.5256.0.copyload, %bb.an ], [ %.sroa.5246.0.copyload, %bb.aq ], [ %.sroa.0211.0.copyload, %bb.bn ]
  %.sroa.7.sroa.7.0 = phi ptr [ %.sroa.7.sroa.7.0.copyload56, %bb.aa ], [ %i.bb, %bb.ah ], [ %i.bh, %bb.ak ], [ %i.bn, %bb.an ], [ %i.bs, %bb.aq ], [ %3, %bb.bn ]
  %.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.0.copyload50, %bb.aa ], [ %i.ay, %bb.ah ], [ %i.be, %bb.ak ], [ %i.bk, %bb.an ], [ %i.bp, %bb.aq ], [ %i.dc, %bb.bn ]
  %.sroa.12.0 = phi i64 [ undef, %bb.aa ], [ undef, %bb.ah ], [ undef, %bb.ak ], [ undef, %bb.an ], [ undef, %bb.aq ], [ %.sroa.4215.0.copyload, %bb.bn ]
  %.sroa.017.0 = phi i64 [ -9223372036854775808, %bb.aa ], [ -9223372036854775807, %bb.ah ], [ -9223372036854775805, %bb.ak ], [ -9223372036854775804, %bb.an ], [ -9223372036854775806, %bb.aq ], [ %i.cx, %bb.bn ]
  %i.aw = phi <2 x float> [ %i.av, %bb.aa ], [ %i.bd, %bb.ah ], [ %i.bj, %bb.ak ], [ undef, %bb.an ], [ %i.bu, %bb.aq ], [ %i.de, %bb.bn ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.sroa.0.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.sroa.7.0, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.sroa.8.sroa.0.0.a, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.8.sroa.7.0..sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.8.sroa.7.0..sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.8.sroa.7, i64 24, i1 false)
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.9.sroa.0, i64 16, i1 false)
  %.sroa.7.sroa.9.sroa.6.0..sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x float> %i.aw, ptr %.sroa.7.sroa.9.sroa.6.0..sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %.sroa.7.sroa.10.sroa.0.0, ptr %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.10.sroa.3.0..sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %.sroa.7.sroa.10.sroa.3.0, ptr %.sroa.7.sroa.10.sroa.3.0..sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 4
  %.sroa.7.sroa.10.sroa.4.0..sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.10.sroa.4.0..sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.10.sroa.4, i64 16, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs5QaNqjAn6vc_5shard.exit

bb.ad:                                            ; preds = %bb.v, %bb.y, %bb.u
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(48) %i.r) #8
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.bq, %.critedge.thread411, %bb.bp, %bb.bk, %bb.ad
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #7
  unreachable

bb.af:                                            ; preds = %bb.k
  %i.ay = load i64, ptr %i.m, align 8, !range !4, !noundef !5 ; 2 uses
  %i.az = icmp eq i64 %i.ay, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  br i1 %i.az, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bc, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.ah:                                            ; preds = %bb.af
  %.sroa.5242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5242.0.copyload = load i64, ptr %.sroa.5242.0..sroa_idx, align 8
  %.sroa.6243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.8.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6243.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.9.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load <2 x float>, ptr %.sroa.4209.0..sroa_idx, align 8
  br label %bb.ac

bb.ai:                                            ; preds = %bb.l
  %i.be = load i64, ptr %i.k, align 8, !range !4, !noundef !5 ; 2 uses
  %i.bf = icmp eq i64 %i.be, -1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  br i1 %i.bf, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bi, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.ak:                                            ; preds = %bb.ai
  %.sroa.5250.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5250.0.copyload = load i64, ptr %.sroa.5250.0..sroa_idx.a, align 8
  %.sroa.6251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.8.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6251.0..sroa_idx, i64 24, i1 false)
  %.sroa.7.0..sroa_idx252 = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.9.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx252, i64 16, i1 false)
  %.sroa.8253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.bj = load <2 x float>, ptr %.sroa.8253.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.0193.0.copyload = load float, ptr %2, align 8
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.4194.0.copyload = load i32, ptr %.sroa.4194.0..sroa_idx, align 4
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.10.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5195.0..sroa_idx, i64 16, i1 false)
  br label %bb.ac

bb.al:                                            ; preds = %bb.m
  %i.bk = load i64, ptr %i.i, align 8, !range !4, !noundef !5 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  br i1 %i.bl, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bo, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.an:                                            ; preds = %bb.al
  %.sroa.5256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5256.0.copyload = load i64, ptr %.sroa.5256.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.8.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.ac

bb.ao:                                            ; preds = %bb.n
  %i.bp = load i64, ptr %i.l, align 8, !range !4, !noundef !5 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, -1
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  br i1 %i.bq, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bs, ptr %i.bt, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.aq:                                            ; preds = %bb.ao
  %.sroa.5246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5246.0.copyload = load i64, ptr %.sroa.5246.0..sroa_idx, align 8
  %.sroa.6247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.8.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6247.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.9.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.4206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bu = load <2 x float>, ptr %.sroa.4206.0..sroa_idx, align 8
  br label %bb.ac

bb.ar:                                            ; preds = %bb.o
  %i.bv = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECs5QaNqjAn6vc_5shard(i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 29)
          to label %bb.au unwind label %bb.bp

bb.as:                                            ; preds = %bb.o
  %.sroa.8115.sroa.7.0..sroa.8115.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %.sroa.8115.sroa.7.0.copyload = load ptr, ptr %.sroa.8115.sroa.7.0..sroa.8115.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.0152.0.copyload = load i64, ptr %i.h, align 8 ; 2 uses
  %.not280 = icmp eq i64 %.sroa.0152.0.copyload, -2
  %i.bw = ptrtoint ptr %.sroa.8115.sroa.7.0.copyload to i64 ; 2 uses
  %i.bx = trunc i64 %i.bw to i32
  %i.by = bitcast i32 %i.bx to float
  %i.bz = lshr i64 %i.bw, 32
  %i.ca = trunc nuw i64 %i.bz to i32
  %i.cb = bitcast i32 %i.ca to float
  br i1 %.not280, label %bb.bb, label %bb.ba

bb.at:                                            ; preds = %bb.bm
  %lpad.thr_comm.split-lp313 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.thread411

bb.au:                                            ; preds = %bb.ar
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bv, ptr %i.cc, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.thread unwind label %bb.ax

bb.aw:                                            ; preds = %bb.au
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemEECs5QaNqjAn6vc_5shard.exit unwind label %.body.thread330

.body.thread330:                                  ; preds = %bb.aw
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.ax:                                            ; preds = %bb.av
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #7
  unreachable

bb.ay:                                            ; preds = %bb.bp
  br i1 %i.ae, label %.critedge.thread411, label %.body.thread

.body:                                            ; preds = %bb.bf
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.thread411

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemEECs5QaNqjAn6vc_5shard.exit: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ch = load i64, ptr %i.h, align 8, !range !60, !alias.scope !61, !noundef !5
  %i.ci = icmp eq i64 %i.ch, -2
  br i1 %i.ci, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit, label %bb.az

bb.az:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemEECs5QaNqjAn6vc_5shard.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit unwind label %.body.thread327.thread377

.body.thread327.thread377:                        ; preds = %bb.az
  %lpad.thr_comm.split-lp367383 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.thread411

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemEECs5QaNqjAn6vc_5shard.exit, %bb.az, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemEECs5QaNqjAn6vc_5shard.exit293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.e

bb.ba:                                            ; preds = %bb.as
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.6154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6154.sroa.0.0.copyload = load ptr, ptr %.sroa.6154.0..sroa_idx, align 8
  %.sroa.8143.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8143.0..sroa_idx144, ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i64 32, i1 false)
  store i64 %.sroa.0152.0.copyload, ptr %i.d, align 8
  %.sroa.6140.0..sroa_idx141 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.6154.sroa.0.0.copyload, ptr %.sroa.6140.0..sroa_idx141, align 8
  invoke void @_RNvXsh_NtNtCshMzyYDJGtjv_3api11conversions7vectorsNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB9_4grpc6qdrant9RawVectorE8try_from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d)
          to label %bb.bh unwind label %bb.bp

bb.bb:                                            ; preds = %bb.as
  %i.ck = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECs5QaNqjAn6vc_5shard(i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 18)
          to label %bb.bc unwind label %bb.bp

bb.bc:                                            ; preds = %bb.bb
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %i.cl, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bi, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.bf unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.critedge.thread411 unwind label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemEECs5QaNqjAn6vc_5shard.exit293 unwind label %.body

bb.bg:                                            ; preds = %bb.be
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #7
  unreachable

bb.bh:                                            ; preds = %bb.ba
  %i.co = load i64, ptr %i.e, align 8, !range !7, !noundef !5 ; 2 uses
  %i.cp = icmp eq i64 %i.co, -1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  br i1 %i.cp, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cr, ptr %i.cs, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bd

bb.bj:                                            ; preds = %bb.bh
  %.sroa.5269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5158.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5269.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.co, ptr %i.f, align 8
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.cr, ptr %.sroa.4157.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.0171.0.copyload = load i64, ptr %i.g, align 8 ; 2 uses
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4172.0.copyload = load ptr, ptr %.sroa.4172.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5173.0.copyload = load i64, ptr %.sroa.5173.0..sroa_idx, align 8 ; 2 uses
  %i.ct = icmp ult i64 %.sroa.5173.0.copyload, 164703072086692426
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw [56 x i8], ptr %.sroa.4172.0.copyload, i64 %.sroa.5173.0.copyload
  %i.cv = icmp sgt i64 %.sroa.0171.0.copyload, -1
  tail call void @llvm.assume(i1 %i.cv)
  store ptr %.sroa.4172.0.copyload, ptr %i.b, align 8
  %.sroa.4168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.4172.0.copyload, ptr %.sroa.4168.0..sroa_idx, align 8
  %.sroa.5169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.0171.0.copyload, ptr %.sroa.5169.0..sroa_idx, align 8
  %.sroa.6170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.cu, ptr %.sroa.6170.0..sroa_idx, align 8
  invoke void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENvYINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtB3a_10data_types7vectors14VectorInternalEINtNtB6_7convert7TryFromB1U_E8try_fromEB31_INtNtB6_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCINvXso_B5R_IB5P_INtB1b_3VecB31_EB6b_EINtNtNtB4_6traits7collect12FromIteratorIB5P_B31_B6b_EE9from_iterBQ_E0B76_ECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b)
          to label %bb.bl unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #8
          to label %.critedge.thread411 unwind label %bb.ae

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cx = load i64, ptr %i.c, align 8, !range !4, !noundef !5 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, -1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  br i1 %i.cy, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.da, ptr %i.db, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f)
          to label %bb.bo unwind label %bb.at

bb.bn:                                            ; preds = %bb.bl
  %.sroa.5272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5272.0.copyload = load i64, ptr %.sroa.5272.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.0211.0.copyload = load i64, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.8.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4157.0..sroa_idx, i64 24, i1 false)
  %.sroa.5213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.9.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5213.0..sroa_idx, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.10.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.4215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.4215.0.copyload = load i64, ptr %.sroa.4215.0..sroa_idx, align 8
  %i.dc = ptrtoint ptr %i.da to i64
  %3 = inttoptr i64 %.sroa.5272.0.copyload to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.dd = insertelement <2 x float> poison, float %.sroa.8115.sroa.0.0.copyload278, i64 0
  %i.de = insertelement <2 x float> %i.dd, float %i.by, i64 1
  br label %bb.ac

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemEECs5QaNqjAn6vc_5shard.exit293

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemEECs5QaNqjAn6vc_5shard.exit293: ; preds = %bb.bf, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorEECs5QaNqjAn6vc_5shard.exit

bb.bp:                                            ; preds = %bb.ba, %bb.bb, %bb.ar
  %lpad.thr_comm312 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #8
          to label %bb.ay unwind label %bb.ae

.body.thread:                                     ; preds = %bb.av, %.body.thread330, %bb.ay
  %.pn282324 = phi { ptr, i32 } [ %i.ce, %.body.thread330 ], [ %lpad.thr_comm312, %bb.ay ], [ %i.cd, %bb.av ] ; 2 uses
  %i.df = load i64, ptr %i.h, align 8, !range !60, !alias.scope !64, !noundef !5
  %i.dg = icmp eq i64 %i.df, -2
  br i1 %i.dg, label %.critedge.thread411, label %bb.bq

bb.bq:                                            ; preds = %.body.thread
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %.critedge.thread411 unwind label %bb.ae

bb.br:                                            ; preds = %bb.k
  %lpad.thr_comm.split-lp367390 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.thread411

bb.bs:                                            ; preds = %bb.l
  %lpad.thr_comm.split-lp367399 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.thread411

bb.bt:                                            ; preds = %bb.m
  %lpad.thr_comm.split-lp367408 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.thread411

bb.bu:                                            ; preds = %bb.n
  %lpad.thr_comm.split-lp367 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.thread411

.critedge.thread411:                              ; preds = %.body.thread327.thread377, %bb.bk, %bb.at, %.body.thread, %bb.bq, %bb.be, %.body, %bb.ay, %bb.br, %bb.bs, %bb.bt, %bb.bu, %.critedge.thread417, %.critedge.thread
  %.pn285.pn302 = phi { ptr, i32 } [ %i.w, %.critedge.thread ], [ %lpad.thr_comm366419, %.critedge.thread417 ], [ %lpad.thr_comm.split-lp367390, %bb.br ], [ %lpad.thr_comm.split-lp367399, %bb.bs ], [ %lpad.thr_comm.split-lp367408, %bb.bt ], [ %lpad.thr_comm.split-lp367, %bb.bu ], [ %lpad.thr_comm.split-lp367383, %.body.thread327.thread377 ], [ %i.cw, %bb.bk ], [ %lpad.thr_comm.split-lp313, %bb.at ], [ %.pn282324, %bb.bq ], [ %i.cg, %.body ], [ %.pn282324, %.body.thread ], [ %lpad.thr_comm312, %bb.ay ], [ %i.cm, %bb.be ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #8
          to label %common.resume unwind label %bb.ae
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtB1w_10data_types7vectors14VectorInternalEENCNvMs0_B1q_INtB1q_12ContextQueryB2G_E9flat_iter0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNvMsg_NtB8_7flattenINtB55_13FlattenCompatppE9iter_fold7flattenINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRB2G_EB6j_EjNCINvNvXsi_B55_B5i_B4g_4fold7flattenB5Z_jNCINvB6_8map_foldB6L_jjNvMs_B2I_B2G_15similarity_costNCINvXsK_NtB4k_5accumjNtB8C_3Sum3sumIBO_INtB55_7FlatMapBX_B5Z_B3s_EB7Z_EE0E0E0E0ECs5QaNqjAn6vc_5shard(ptr noundef nonnull, ptr noundef, i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11DenseVectorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11DenseVectorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtB1P_10data_types7vectors14VectorInternalEENCNvMs0_B1J_INtB1J_18NaiveFeedbackQueryB31_E9flat_iter0EINtNtNtB9_7sources4once4OnceRB31_EENtNtNtB9_6traits8iterator8Iterator4foldjNCINvB13_8map_foldB59_jjNvMs_B33_B31_15similarity_costNCINvXsK_NtB5k_5accumjNtB6V_3Sum3sumIB11_BO_B6i_EE0E0ECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalEINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterINtNtNtNtB1z_14vector_storage5query13context_query11ContextPairB1t_EEIBP_B10_B10_ENCNvMs_NtB3p_14discover_queryINtB4L_13DiscoverQueryB1t_E9flat_iter0EENtNtNtB9_6traits8iterator8Iterator4foldjNCINvNtB7_3map8map_foldB1s_jjNvMs_B1v_B1t_15similarity_costNCINvXsK_NtB5P_5accumjNtB7v_3Sum3sumINtB6u_3MapBO_B6S_EE0E0ECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalEB10_ENtNtNtB9_6traits8iterator8Iterator4foldjNCINvNtB7_3map8map_foldRB1q_jjNvMs_B1s_B1q_15similarity_costNCINvXsK_NtB2C_5accumjNtB4j_3Sum3sumINtB3h_3MapBO_B3G_EE0E0ECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs607s0NAIaWN_7segment14vector_storage5query10reco_queryINtB2_9RecoQueryNtNtNtB8_10data_types7vectors14VectorInternalE9flat_iterCs5QaNqjAn6vc_5shard(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCs607s0NAIaWN_7segment14vector_storage5query14discover_queryINtB4_13DiscoverQueryNtNtNtBa_10data_types7vectors14VectorInternalE9flat_iterCs5QaNqjAn6vc_5shard(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_queryINtB5_18NaiveFeedbackQueryNtNtNtBb_10data_types7vectors14VectorInternalE9flat_iterCs5QaNqjAn6vc_5shard(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECs5QaNqjAn6vc_5shard(i8 noundef range(i8 0, 17), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsh_NtNtCshMzyYDJGtjv_3api11conversions7vectorsNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB9_4grpc6qdrant9RawVectorE8try_from(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5QaNqjAn6vc_5shard(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsF_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB6_10NamedQueryNtB6_14VectorInternalE3newNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2b_NtNtCshMzyYDJGtjv_3api4grpc11conversionsINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query10reco_query9RecoQueryNtNtNtBT_10data_types7vectors14VectorInternalEINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB8_6qdrant9raw_query9RecommendE8try_from(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2j_NtNtCshMzyYDJGtjv_3api4grpc11conversionsINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14discover_query13DiscoverQueryNtNtNtBT_10data_types7vectors14VectorInternalEINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB8_6qdrant9raw_query9DiscoveryE8try_from(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2h_NtNtCshMzyYDJGtjv_3api4grpc11conversionsINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query12ContextQueryNtNtNtBT_10data_types7vectors14VectorInternalEINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB8_6qdrant9raw_query7ContextE8try_from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENvYINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtB3a_10data_types7vectors14VectorInternalEINtNtB6_7convert7TryFromB1U_E8try_fromEB31_INtNtB6_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCINvXso_B5R_IB5P_INtB1b_3VecB31_EB6b_EINtNtNtB4_6traits7collect12FromIteratorIB5P_B31_B6b_EE9from_iterBQ_E0B76_ECs5QaNqjAn6vc_5shard(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { cold }
attributes #9 = { noinline noreturn }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{i64 -1, i64 -9223372036854775808}
!5 = !{}
!6 = !{i64 0, i64 -9223372036854775805}
!7 = !{i64 -1, i64 -9223372036854775805}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10raw_vector7VariantEECs5QaNqjAn6vc_5shard: argument 0"}
!10 = distinct !{!10, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10raw_vector7VariantEECs5QaNqjAn6vc_5shard"}
!11 = !{i64 0, i64 -9223372036854775803}
!12 = !{!13, !15, !17, !19, !21, !22, !23, !24}
!13 = distinct !{!13, !14, !"_RNvMs_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB4_14VectorInternal15similarity_cost: argument 0"}
!14 = distinct !{!14, !"_RNvMs_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB4_14VectorInternal15similarity_cost"}
!15 = distinct !{!15, !16, !"_RNvYNvMs_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB7_14VectorInternal15similarity_costINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRBR_EE8call_mutCs5QaNqjAn6vc_5shard: argument 0"}
!16 = distinct !{!16, !"_RNvYNvMs_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB7_14VectorInternal15similarity_costINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRBR_EE8call_mutCs5QaNqjAn6vc_5shard"}
!17 = distinct !{!17, !18, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternaljjNvMs_BX_BV_15similarity_costNCINvXsK_NtNtB8_6traits5accumjNtB2A_3Sum3sumINtB4_3MapINtNtNtBa_5array4iter8IntoIterBU_Kj1_EB1Z_EE0E0Cs5QaNqjAn6vc_5shard: argument 0"}
!18 = distinct !{!18, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternaljjNvMs_BX_BV_15similarity_costNCINvXsK_NtNtB8_6traits5accumjNtB2A_3Sum3sumINtB4_3MapINtNtNtBa_5array4iter8IntoIterBU_Kj1_EB1Z_EE0E0Cs5QaNqjAn6vc_5shard"}
!19 = distinct !{!19, !20, !"_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuitjE10wrap_mut_2jRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalNCINvNtNtNtB9_4iter8adapters3map8map_foldB1k_jjNvMs_B1n_B1l_15similarity_costNCINvXsK_NtNtB2w_6traits5accumjNtB3L_3Sum3sumINtB2s_3MapINtNtNtB9_5array4iter8IntoIterB1k_Kj1_EB38_EE0E0E0Cs5QaNqjAn6vc_5shard: argument 0"}
!20 = distinct !{!20, !"_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuitjE10wrap_mut_2jRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalNCINvNtNtNtB9_4iter8adapters3map8map_foldB1k_jjNvMs_B1n_B1l_15similarity_costNCINvXsK_NtNtB2w_6traits5accumjNtB3L_3Sum3sumINtB2s_3MapINtNtNtB9_5array4iter8IntoIterB1k_Kj1_EB38_EE0E0E0Cs5QaNqjAn6vc_5shard"}
!21 = distinct !{!21, !14, !"_RNvMs_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB4_14VectorInternal15similarity_cost: argument 0:Peel0"}
!22 = distinct !{!22, !16, !"_RNvYNvMs_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB7_14VectorInternal15similarity_costINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRBR_EE8call_mutCs5QaNqjAn6vc_5shard: argument 0:Peel0"}
!23 = distinct !{!23, !18, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternaljjNvMs_BX_BV_15similarity_costNCINvXsK_NtNtB8_6traits5accumjNtB2A_3Sum3sumINtB4_3MapINtNtNtBa_5array4iter8IntoIterBU_Kj1_EB1Z_EE0E0Cs5QaNqjAn6vc_5shard: argument 0:Peel0"}
!24 = distinct !{!24, !20, !"_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuitjE10wrap_mut_2jRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalNCINvNtNtNtB9_4iter8adapters3map8map_foldB1k_jjNvMs_B1n_B1l_15similarity_costNCINvXsK_NtNtB2w_6traits5accumjNtB3L_3Sum3sumINtB2s_3MapINtNtNtB9_5array4iter8IntoIterB1k_Kj1_EB38_EE0E0E0Cs5QaNqjAn6vc_5shard: argument 0:Peel0"}
!25 = !{!26, !28, !29}
!26 = distinct !{!26, !27, !"_RINvXs_NtNtCskKLDkoKarTP_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldjNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalEE8try_foldjNCINvMNtB7_9try_traitINtB4T_17NeverShortCircuitjE10wrap_mut_2jB3y_NCINvNtNtB16_8adapters3map8map_foldB3y_jjNvMs_B3B_B3z_15similarity_costNCINvXsK_NtB14_5accumjNtB79_3Sum3sumINtB5W_3MapINtB20_8IntoIterB3y_Kj1_EB6w_EE0E0E0B58_E0B58_ECs5QaNqjAn6vc_5shard: argument 0"}
!27 = distinct !{!27, !"_RINvXs_NtNtCskKLDkoKarTP_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldjNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalEE8try_foldjNCINvMNtB7_9try_traitINtB4T_17NeverShortCircuitjE10wrap_mut_2jB3y_NCINvNtNtB16_8adapters3map8map_foldB3y_jjNvMs_B3B_B3z_15similarity_costNCINvXsK_NtB14_5accumjNtB79_3Sum3sumINtB5W_3MapINtB20_8IntoIterB3y_Kj1_EB6w_EE0E0E0B58_E0B58_ECs5QaNqjAn6vc_5shard"}
!28 = distinct !{!28, !27, !"_RINvXs_NtNtCskKLDkoKarTP_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldjNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalEE8try_foldjNCINvMNtB7_9try_traitINtB4T_17NeverShortCircuitjE10wrap_mut_2jB3y_NCINvNtNtB16_8adapters3map8map_foldB3y_jjNvMs_B3B_B3z_15similarity_costNCINvXsK_NtB14_5accumjNtB79_3Sum3sumINtB5W_3MapINtB20_8IntoIterB3y_Kj1_EB6w_EE0E0E0B58_E0B58_ECs5QaNqjAn6vc_5shard: argument 1"}
end_hunk_0
