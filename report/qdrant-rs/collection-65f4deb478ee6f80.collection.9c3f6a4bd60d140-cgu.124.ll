Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.124?download=true
inline.NumInlined: 192
inline.NumDeleted: 107
begin_hunk_0_@_RNvNtNtCsPYQCUnoTxQ_10collection6shards11conversions26try_scored_point_from_grpc:bb.a
.sink.split:                                      ; preds = %bb.z, %bb.av
  call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.z, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

bb.ai:                                            ; preds = %bb.ag
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types7vectors20VectorStructInternalEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(56) %i.j) #10
          to label %bb.aj unwind label %bb.an

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsPYQCUnoTxQ_10collection.exit169: ; preds = %bb.af, %bb.ae, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types7vectors20VectorStructInternalEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(56) %i.j)
          to label %bb.al unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %.pn156 = phi { ptr, i32 } [ %i.bk, %bb.ak ], [ %i.bj, %bb.ai ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(72) %i.k) #10
          to label %.body170.thread211 unwind label %bb.an

bb.ak:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsPYQCUnoTxQ_10collection.exit169
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.al:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsPYQCUnoTxQ_10collection.exit169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(72) %i.k)
          to label %bb.am unwind label %bb.q

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyEECsPYQCUnoTxQ_10collection.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyEECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.aq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.av

bb.an:                                            ; preds = %bb.bc, %bb.ac, %.body170.thread, %bb.bb, %.thread193, %bb.ao, %bb.aj, %bb.ai, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsPYQCUnoTxQ_10collection.exit
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsPYQCUnoTxQ_10collection.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(72) %i.k) #10
          to label %.body170.thread211 unwind label %bb.an

bb.ap:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8.sroa.8)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.bm, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n)
          to label %bb.aq unwind label %bb.d

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bn = load i64, ptr %i.q, align 8, !range !7, !alias.scope !140, !noundef !5
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyEECsPYQCUnoTxQ_10collection.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i.i.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body170.thread211 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i.i.i: ; preds = %bb.ar
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyEECsPYQCUnoTxQ_10collection.exit unwind label %.body170

bb.au:                                            ; preds = %bb.bb
  br i1 %.sroa.0103.0.ph, label %.body170.thread, label %.body170.thread211

.body170:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body170.thread211

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyEECsPYQCUnoTxQ_10collection.exit180, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyEECsPYQCUnoTxQ_10collection.exit
  %.sroa.098.5 = phi i8 [ %.sroa.098.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyEECsPYQCUnoTxQ_10collection.exit180 ], [ %.sroa.098.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyEECsPYQCUnoTxQ_10collection.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.bs = trunc nuw i8 %.sroa.098.5 to i1
  br i1 %i.bs, label %.sink.split, label %bb.ah

.thread193:                                       ; preds = %bb.t, %.thread198
  %eh.lpad-body196 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread198 ], [ %i.ap, %bb.t ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n) #10
          to label %bb.bb unwind label %bb.an

bb.aw:                                            ; preds = %bb.e, %bb.g, %bb.m
  %.sroa.098.6 = phi i8 [ 0, %bb.m ], [ 1, %bb.g ], [ 1, %bb.e ] ; 4 uses
  %i.bt = load i64, ptr %i.q, align 8, !range !7, !alias.scope !141, !noundef !5
  %i.bu = icmp ugt i64 %i.bt, -4
  br i1 %i.bu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyEECsPYQCUnoTxQ_10collection.exit180, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i.i.i174 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body170.thread unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i.i.i174: ; preds = %bb.ax
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyEECsPYQCUnoTxQ_10collection.exit180 unwind label %.body170.thread215

.body170.thread215:                               ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i.i.i174
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body170.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyEECsPYQCUnoTxQ_10collection.exit180: ; preds = %bb.aw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13VectorsOutputEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(104) %i.r)
          to label %bb.av unwind label %bb.ba

.body170.thread211:                               ; preds = %bb.ao, %bb.aj, %bb.q, %bb.as, %.body170, %.body170.thread, %bb.ba, %bb.au
  %.sroa.098.7 = phi i8 [ %.sroa.098.6, %bb.ba ], [ %.sroa.098.3206, %.body170.thread ], [ %.sroa.098.0.ph, %bb.au ], [ %.sroa.098.2, %bb.as ], [ %.sroa.098.2, %.body170 ], [ %.sroa.098.2, %bb.q ], [ %.sroa.098.2, %bb.aj ], [ %.sroa.098.2, %bb.ao ]
  %.pn164 = phi { ptr, i32 } [ %i.bz, %bb.ba ], [ %.pn162207, %.body170.thread ], [ %.pn160.ph, %bb.au ], [ %i.bp, %bb.as ], [ %i.br, %.body170 ], [ %lpad.thr_comm.split-lp, %bb.q ], [ %.pn156, %bb.aj ], [ %.pn, %bb.ao ]
  %i.by = trunc nuw i8 %.sroa.098.7 to i1
  br i1 %i.by, label %bb.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEECsPYQCUnoTxQ_10collection.exit

bb.ba:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyEECsPYQCUnoTxQ_10collection.exit180
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body170.thread211

bb.bb:                                            ; preds = %bb.d, %.thread193
  %.sroa.0103.0.ph = phi i1 [ false, %.thread193 ], [ %.sroa.0103.1, %bb.d ]
  %.sroa.098.0.ph = phi i8 [ %.sroa.098.2, %.thread193 ], [ %.sroa.098.1, %bb.d ] ; 2 uses
  %.pn160.ph = phi { ptr, i32 } [ %eh.lpad-body196, %.thread193 ], [ %i.ad, %bb.d ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #10
          to label %bb.au unwind label %bb.an

.body170.thread:                                  ; preds = %bb.ay, %.body170.thread215, %bb.au
  %.pn162207 = phi { ptr, i32 } [ %i.bx, %.body170.thread215 ], [ %.pn160.ph, %bb.au ], [ %i.bv, %bb.ay ]
  %.sroa.098.3206 = phi i8 [ %.sroa.098.6, %.body170.thread215 ], [ %.sroa.098.0.ph, %bb.au ], [ %.sroa.098.6, %bb.ay ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13VectorsOutputEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(104) %i.r) #10
          to label %.body170.thread211 unwind label %bb.an

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.bc, %.body170.thread211
  resume { ptr, i32 } %.pn164

bb.bc:                                            ; preds = %.body170.thread211
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEECsPYQCUnoTxQ_10collection.exit unwind label %bb.an
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvNtNtCsPYQCUnoTxQ_10collection6shards11conversions27internal_create_vector_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, i32 noundef range(i32 0, 2) %1, i32 %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %5, i8 noundef range(i8 0, 3) %6, i64 noundef range(i64 0, 2) %7, i64 %8, i8 noundef range(i8 -1, 3) %9) unnamed_addr #1 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.b = load i8, ptr %i.a, align 4, !range !8, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.b, 2                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = load <2 x i64>, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %.sroa.02.sroa.5.0 = select i1 %.not, i64 undef, i64 %i.g
  %.sroa.02.sroa.6.0 = select i1 %.not, i32 undef, i32 %i.d
  %i.h = select i1 %.not, <2 x i64> undef, <2 x i64> %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.044.0.copyload = load i64, ptr %i.i, align 8 ; 7 uses
  %.sroa.044.sroa.5.0.extract.shift = lshr i64 %.sroa.044.0.copyload, 8
  %.sroa.044.sroa.5.0.extract.trunc = trunc i64 %.sroa.044.sroa.5.0.extract.shift to i8
  %.sroa.848.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 34
  %.sroa.848.0.copyload = load i8, ptr %.sroa.848.0..sroa_idx, align 2 ; 2 uses
  %i.j = icmp eq i8 %.sroa.848.0.copyload, 2
  br i1 %i.j, label %bb.a, label %switch.lookup.i

bb.a:                                             ; preds = %switch.lookup
  %.sroa.044.sroa.0.0.extract.trunc = trunc i64 %.sroa.044.0.copyload to i8 ; 2 uses
  %switch.selectcmp = icmp eq i8 %.sroa.044.sroa.0.0.extract.trunc, 0
  %switch.select = select i1 %switch.selectcmp, <2 x i32> <i32 1, i32 0>, <2 x i32> splat (i32 1)
  %switch.selectcmp51 = icmp eq i8 %.sroa.044.sroa.0.0.extract.trunc, 2
  %switch.select52 = select i1 %switch.selectcmp51, <2 x i32> <i32 0, i32 undef>, <2 x i32> %switch.select ; 5 uses
  switch i8 %.sroa.044.sroa.5.0.extract.trunc, label %default.unreachable25.i [
    i8 -1, label %_RNvXs2H_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtB8_6qdrant26create_vector_name_request12VectorConfigINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types18vector_name_config16VectorNameConfigE4from.exit
    i8 0, label %bb.i
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

switch.lookup.i:                                  ; preds = %switch.lookup
  %.sroa.747.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 33
  %.sroa.747.0.copyload = load i8, ptr %.sroa.747.0..sroa_idx, align 1
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.646.0.copyload = load i8, ptr %.sroa.646.0..sroa_idx, align 8
  %narrow.i = add nuw nsw i8 %.sroa.747.0.copyload, 1
  %switch.offset.i = zext nneg i8 %narrow.i to i32 ; 5 uses
  switch i8 %.sroa.646.0.copyload, label %default.unreachable25.i [
    i8 -1, label %_RNvXs2H_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtB8_6qdrant26create_vector_name_request12VectorConfigINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types18vector_name_config16VectorNameConfigE4from.exit
    i8 0, label %bb.e
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable25.i:                          ; preds = %bb.a, %switch.lookup.i
  unreachable

bb.b:                                             ; preds = %switch.lookup.i
  br label %_RNvXs2H_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtB8_6qdrant26create_vector_name_request12VectorConfigINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types18vector_name_config16VectorNameConfigE4from.exit

bb.c:                                             ; preds = %switch.lookup.i
  br label %_RNvXs2H_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtB8_6qdrant26create_vector_name_request12VectorConfigINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types18vector_name_config16VectorNameConfigE4from.exit

bb.d:                                             ; preds = %switch.lookup.i
  br label %_RNvXs2H_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtB8_6qdrant26create_vector_name_request12VectorConfigINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types18vector_name_config16VectorNameConfigE4from.exit

bb.e:                                             ; preds = %switch.lookup.i
  br label %_RNvXs2H_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtB8_6qdrant26create_vector_name_request12VectorConfigINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types18vector_name_config16VectorNameConfigE4from.exit

bb.f:                                             ; preds = %bb.a
  br label %_RNvXs2H_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtB8_6qdrant26create_vector_name_request12VectorConfigINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types18vector_name_config16VectorNameConfigE4from.exit

bb.g:                                             ; preds = %bb.a
  br label %_RNvXs2H_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtB8_6qdrant26create_vector_name_request12VectorConfigINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types18vector_name_config16VectorNameConfigE4from.exit

bb.h:                                             ; preds = %bb.a
  br label %_RNvXs2H_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtB8_6qdrant26create_vector_name_request12VectorConfigINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types18vector_name_config16VectorNameConfigE4from.exit

bb.i:                                             ; preds = %bb.a
  br label %_RNvXs2H_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtB8_6qdrant26create_vector_name_request12VectorConfigINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types18vector_name_config16VectorNameConfigE4from.exit

_RNvXs2H_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtB8_6qdrant26create_vector_name_request12VectorConfigINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types18vector_name_config16VectorNameConfigE4from.exit: ; preds = %switch.lookup.i, %bb.b, %bb.c, %bb.d, %bb.e, %bb.i, %bb.h, %bb.g, %bb.f, %bb.a
  %.sroa.1138.sroa.5.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.i ], [ 4, %bb.h ], [ 2, %bb.g ], [ 3, %bb.f ], [ %.sroa.044.0.copyload, %bb.e ], [ %.sroa.044.0.copyload, %bb.d ], [ %.sroa.044.0.copyload, %bb.c ], [ %.sroa.044.0.copyload, %bb.b ], [ %.sroa.044.0.copyload, %switch.lookup.i ]
  %.sroa.13.0 = phi i32 [ undef, %bb.a ], [ undef, %bb.i ], [ undef, %bb.h ], [ undef, %bb.g ], [ undef, %bb.f ], [ %switch.offset.i, %bb.e ], [ %switch.offset.i, %bb.d ], [ %switch.offset.i, %bb.c ], [ %switch.offset.i, %bb.b ], [ %switch.offset.i, %switch.lookup.i ]
  %.sroa.9.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ], [ 4, %bb.d ], [ 2, %bb.c ], [ 3, %bb.b ], [ undef, %switch.lookup.i ]
  %i.k = phi <2 x i32> [ %switch.select52, %bb.a ], [ %switch.select52, %bb.i ], [ %switch.select52, %bb.h ], [ %switch.select52, %bb.g ], [ %switch.select52, %bb.f ], [ <i32 0, i32 1>, %bb.e ], [ <i32 0, i32 1>, %bb.d ], [ <i32 0, i32 1>, %bb.c ], [ <i32 0, i32 1>, %bb.b ], [ zeroinitializer, %switch.lookup.i ]
  %switch.idx.cast = zext nneg i8 %6 to i32
  %i.l = shl nuw nsw i8 %6, 3
  %switch.shiftamt = zext nneg i8 %i.l to i24
  %switch.downshift = lshr i24 65792, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %.sroa.0.0 = zext i8 %.sroa.848.0.copyload to i32
  %.not36 = icmp ne i8 %9, -1
  %i.m = zext i8 %9 to i32
  %.sroa.019.0 = zext i1 %.not36 to i32
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.711.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i64 %7, ptr %0, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %8, ptr %.sroa.610.0..sroa_idx, align 8
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.812.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %.sroa.913.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sroa.019.0, ptr %.sroa.913.0..sroa_idx, align 8
  %.sroa.1014.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.m, ptr %.sroa.1014.0..sroa_idx, align 4
  %.sroa.1115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sroa.0.0, ptr %.sroa.1115.0..sroa_idx, align 8
  %.sroa.1115.sroa.6.0..sroa.1115.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  store <2 x i32> %i.k, ptr %.sroa.1115.sroa.6.0..sroa.1115.0..sroa_idx.sroa_idx, align 4
  %.sroa.1115.sroa.8.0..sroa.1115.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %.sroa.9.0, ptr %.sroa.1115.sroa.8.0..sroa.1115.0..sroa_idx.sroa_idx, align 4
  %.sroa.1115.sroa.9.0..sroa.1115.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.1138.sroa.5.0, ptr %.sroa.1115.sroa.9.0..sroa.1115.0..sroa_idx.sroa_idx, align 8
  %.sroa.1115.sroa.10.0..sroa.1115.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %.sroa.13.0, ptr %.sroa.1115.sroa.10.0..sroa.1115.0..sroa_idx.sroa_idx, align 8
  %.sroa.1216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %switch.masked, ptr %.sroa.1216.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %2, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x i64> %i.h, ptr %i.p, align 8
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sroa.02.sroa.5.0, ptr %.sroa.02.sroa.5.0..sroa_idx, align 8
  %.sroa.02.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %.sroa.02.sroa.6.0, ptr %.sroa.02.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i8 %i.b, ptr %.sroa.4.0..sroa_idx3, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %switch.idx.cast, ptr %i.r, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsPYQCUnoTxQ_10collection6shards11conversions32internal_clear_payload_by_filter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, i32 noundef range(i32 0, 2) %1, i32 %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %5, i8 noundef range(i8 0, 3) %6, i64 noundef range(i64 0, 2) %7, i64 %8, i8 noundef range(i8 -1, 3) %9) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.d = load i8, ptr %i.c, align 4, !range !8, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.d, 2                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = load <2 x i64>, ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %.sroa.02.sroa.5.0 = select i1 %.not, i64 undef, i64 %i.i
  %.sroa.02.sroa.6.0 = select i1 %.not, i32 undef, i32 %i.f
  %i.j = select i1 %.not, <2 x i64> undef, <2 x i64> %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs1d_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB8_6qdrant6FilterINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs607s0NAIaWN_7segment5types6FilterE4from(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %5)
          to label %bb.b unwind label %bb.a

bb.a:                                             ; preds = %switch.lookup
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #10
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %switch.lookup
  %switch.idx.cast = zext nneg i8 %6 to i32
  %i.l = shl nuw nsw i8 %6, 3
  %switch.shiftamt = zext nneg i8 %i.l to i24
  %switch.downshift = lshr i24 65792, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %.sroa.913.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.913.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not38 = icmp ne i8 %9, -1
  %i.m = zext i8 %9 to i32
  %.sroa.019.0 = zext i1 %.not38 to i32
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.711.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %7, ptr %0, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %8, ptr %.sroa.610.0..sroa_idx, align 8
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.812.0..sroa_idx, align 8
  %.sroa.1014.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %.sroa.019.0, ptr %.sroa.1014.0..sroa_idx, align 8
  %.sroa.1115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %i.m, ptr %.sroa.1115.0..sroa_idx, align 4
  %.sroa.1216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 %switch.masked, ptr %.sroa.1216.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 %2, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x i64> %i.j, ptr %i.p, align 8
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %.sroa.02.sroa.5.0, ptr %.sroa.02.sroa.5.0..sroa_idx, align 8
  %.sroa.02.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %.sroa.02.sroa.6.0, ptr %.sroa.02.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i8 %i.d, ptr %.sroa.4.0..sroa_idx3, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 %switch.idx.cast, ptr %i.r, align 4
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

bb.d:                                             ; preds = %bb.a
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsPYQCUnoTxQ_10collection6shards11conversions32internal_delete_points_by_filter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, i32 noundef range(i32 0, 2) %1, i32 %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %5, i8 noundef range(i8 0, 3) %6, i64 noundef range(i64 0, 2) %7, i64 %8, i8 noundef range(i8 -1, 3) %9) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.d = load i8, ptr %i.c, align 4, !range !8, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.d, 2                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = load <2 x i64>, ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %.sroa.02.sroa.5.0 = select i1 %.not, i64 undef, i64 %i.i
  %.sroa.02.sroa.6.0 = select i1 %.not, i32 undef, i32 %i.f
  %i.j = select i1 %.not, <2 x i64> undef, <2 x i64> %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs1d_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB8_6qdrant6FilterINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs607s0NAIaWN_7segment5types6FilterE4from(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %5)
          to label %bb.b unwind label %bb.a

bb.a:                                             ; preds = %switch.lookup
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #10
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %switch.lookup
  %switch.idx.cast = zext nneg i8 %6 to i32
  %i.l = shl nuw nsw i8 %6, 3
  %switch.shiftamt = zext nneg i8 %i.l to i24
  %switch.downshift = lshr i24 65792, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %.sroa.913.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.913.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not38 = icmp ne i8 %9, -1
  %i.m = zext i8 %9 to i32
  %.sroa.019.0 = zext i1 %.not38 to i32
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.711.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %7, ptr %0, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %8, ptr %.sroa.610.0..sroa_idx, align 8
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.812.0..sroa_idx, align 8
  %.sroa.1014.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %.sroa.019.0, ptr %.sroa.1014.0..sroa_idx, align 8
  %.sroa.1115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %i.m, ptr %.sroa.1115.0..sroa_idx, align 4
  %.sroa.1216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 %switch.masked, ptr %.sroa.1216.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 %2, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x i64> %i.j, ptr %i.p, align 8
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %.sroa.02.sroa.5.0, ptr %.sroa.02.sroa.5.0..sroa_idx, align 8
  %.sroa.02.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %.sroa.02.sroa.6.0, ptr %.sroa.02.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i8 %i.d, ptr %.sroa.4.0..sroa_idx3, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
end_hunk_0
