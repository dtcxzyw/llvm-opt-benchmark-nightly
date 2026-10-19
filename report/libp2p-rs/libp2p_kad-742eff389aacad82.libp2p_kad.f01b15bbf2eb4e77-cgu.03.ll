Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_kad-742eff389aacad82.libp2p_kad.f01b15bbf2eb4e77-cgu.03?download=true
inline.NumInlined: 166
inline.NumDeleted: 104
begin_hunk_0_@_RNvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB4_16ClosestPeersIter4next:bb.a
bb.p:                                             ; preds = %bb.u, %bb.x, %bb.v, %bb.q, %_RNvMsa_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1Q_5query5peers7closest4PeerE14next_uncheckedB1Q_.exit, %_RNvMsa_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1Q_5query5peers7closest4PeerE14next_uncheckedB1Q_.exit
  %i.au = phi i64 [ %i.bg, %bb.v ], [ %i.ac, %bb.q ], [ %i.ac, %_RNvMsa_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1Q_5query5peers7closest4PeerE14next_uncheckedB1Q_.exit ], [ %i.ac, %_RNvMsa_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1Q_5query5peers7closest4PeerE14next_uncheckedB1Q_.exit ], [ %i.ac, %bb.x ], [ %i.ac, %bb.u ] ; 2 uses
  %.sroa.6.1 = phi i64 [ %.sroa.6.060, %bb.v ], [ %.sroa.6.060, %bb.q ], [ %.sroa.6.060, %_RNvMsa_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1Q_5query5peers7closest4PeerE14next_uncheckedB1Q_.exit ], [ %.sroa.6.060, %_RNvMsa_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1Q_5query5peers7closest4PeerE14next_uncheckedB1Q_.exit ], [ %i.bh, %bb.x ], [ undef, %bb.u ]
  %.sroa.0.1 = phi i1 [ %.sroa.0.061, %bb.v ], [ false, %bb.q ], [ %.sroa.0.061, %_RNvMsa_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1Q_5query5peers7closest4PeerE14next_uncheckedB1Q_.exit ], [ %.sroa.0.061, %_RNvMsa_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1Q_5query5peers7closest4PeerE14next_uncheckedB1Q_.exit ], [ true, %bb.x ], [ false, %bb.u ]
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.av = icmp eq i64 %.pr, 0
  br i1 %i.av, label %._crit_edge, label %bb.f

bb.q:                                             ; preds = %_RNvMsa_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1Q_5query5peers7closest4PeerE14next_uncheckedB1Q_.exit
  br i1 %.sroa.0.061, label %bb.x, label %bb.p

bb.r:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !range !16, !noundef !8
  %i.ba = call { i64, i32 } @_RNvXs_NtCsG258MDvU3F_3std4timeNtB4_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBM_4time8DurationE3add(i64 noundef %2, i32 noundef %3, i64 noundef %i.ax, i32 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) ; 2 uses
  %i.bb = extractvalue { i64, i32 } %i.ba, 0
  %i.bc = extractvalue { i64, i32 } %i.ba, 1      ; 2 uses
  %i.bd = icmp ult i32 %i.bc, 1000000000
  call void @llvm.assume(i1 %i.bd)
  store i64 %i.bb, ptr %i.ak, align 8
  store i32 %i.bc, ptr %i.al, align 8
  %i.be = add i64 %i.ac, 1
  store i64 %i.be, ptr %i.aa, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i64 0, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %.sroa.46.0..sroa_idx, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.n
  store i64 3, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.y, %bb.w, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.u:                                             ; preds = %bb.o
  br i1 %.sroa.0.0.shrunk.i, label %bb.w, label %bb.p

bb.v:                                             ; preds = %bb.o
  %i.bg = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.bg, ptr %i.aa, align 8
  store i32 1000000002, ptr %i.al, align 8
  br label %bb.p

bb.w:                                             ; preds = %bb.u
  store i64 3, ptr %0, align 8
  br label %bb.t

bb.x:                                             ; preds = %bb.q
  %i.bh = add i64 %.sroa.6.060, 1                 ; 2 uses
  %.not47 = icmp ult i64 %i.bh, %i.z
  br i1 %.not47, label %bb.p, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 2, ptr %1, align 8
  store i64 4, ptr %0, align 8
  br label %bb.t
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad6record5store6memoryNtB4_11MemoryStore11with_config(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([288 x i8]) align 8 captures(none) dereferenceable(288) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [112 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @12) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @14, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @12)
          to label %bb.c unwind label %bb.b       ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEEB1z_.exit: ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.l, %bb.d ]
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyNtBR_6RecordEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyNtB1x_6RecordEEB1z_.exit unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEEB1z_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, i64 } %i.g, 0
  %i.j = extractvalue { i64, i64 } %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @14, i64 32, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.i, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.j, ptr %.sroa.56.0..sroa_idx, align 8
  %i.k = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @12)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecorduEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEEB1z_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 0
  %i.n = extractvalue { i64, i64 } %i.k, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.o, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) @14, i64 32, i1 false)
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.m, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.n, ptr %.sroa.512.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.f:                                             ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEEB1z_.exit
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyNtB1x_6RecordEEB1z_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEEB1z_.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad6record5store6memoryNtB4_11MemoryStore3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([288 x i8]) align 8 captures(none) dereferenceable(288) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1024, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 66560, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 20, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1024, ptr %i.d, align 8
  call void @_RNvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad6record5store6memoryNtB4_11MemoryStore11with_config(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCskC4O4hr3vz7_10libp2p_kad5query7QueryIdINtB2_10EquivalentBq_E10equivalentBu_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8, !noundef !8
  %.val1 = load i64, ptr %1, align 8, !noundef !8
  %i.a = icmp eq i64 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXs0_NtNtNtCskC4O4hr3vz7_10libp2p_kad6record5store6memoryNtB5_11MemoryStoreNtB7_11RecordStore12add_provider(ptr noalias nofree noundef align 8 dereferenceable(288) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(152) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 4 uses
  %i.g = alloca [3088 x i8], align 8              ; 9 uses
  %i.h = alloca [48 x i8], align 8                ; 10 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [152 x i8], align 8               ; 5 uses
  %i.k = alloca [152 x i8], align 8               ; 10 uses
  %i.l = alloca [152 x i8], align 8               ; 5 uses
  %i.m = alloca [152 x i8], align 8               ; 10 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load i64, ptr %i.o, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !8, !align !11, !noundef !8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !8, !noundef !8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !noundef !8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8, !noundef !8
  invoke void %i.s(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noundef nonnull align 8 %i.t, ptr noundef %i.v, i64 noundef %i.x)
          to label %bb.b unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread95

.loopexit.split-lp:                               ; preds = %bb.a, %bb.b, %bb.l, %bb.s, %bb.w, %bb.aa, %bb.al, %bb.e, %bb.f, %bb.t, %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread95

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyINtCsczYENlYh6wI_8smallvec8SmallVecANtB11_14ProviderRecordj14_ENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entryB13_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.n)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.h, align 8, !noundef !8 ; 3 uses
  %.not = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  br i1 %.not, label %.thread98, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.578.0.copyload = load i64, ptr %.sroa.578.0..sroa_idx, align 8 ; 2 uses
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.679.0.copyload = load ptr, ptr %.sroa.679.0..sroa_idx, align 8 ; 2 uses
  %.sroa.780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.780.0.copyload = load ptr, ptr %.sroa.780.0..sroa_idx, align 8 ; 2 uses
  %.sroa.881.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.881.0.copyload = load i64, ptr %.sroa.881.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !8
  %i.ae = icmp eq i64 %i.ad, %i.p
  br i1 %i.ae, label %bb.f, label %bb.e

.thread98:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.780.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !162
  store ptr %i.z, ptr %i.g, align 8, !noalias !162
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ab, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !162
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.578.0.copyload, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !162
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.679.0.copyload, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !162
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 0, ptr %i.af, align 8, !noalias !162
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 3080
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !162
  %i.ag = invoke noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyINtCsczYENlYh6wI_8smallvec8SmallVecANtBR_14ProviderRecordj14_EEE14insert_no_growBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.780.0.copyload, i64 noundef %.sroa.881.0.copyload, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(3088) %i.g)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !162
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !163, !nonnull !8, !noundef !8
  invoke void %i.ai(ptr noundef %.sroa.679.0.copyload, ptr noundef %i.ab, i64 noundef %.sroa.578.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map5EntryNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyINtCsczYENlYh6wI_8smallvec8SmallVecANtB1v_14ProviderRecordj14_EEEB1x_.exit unwind label %.loopexit.split-lp, !inline_history !120

bb.g:                                             ; preds = %.thread98, %.noexc
  %.pn.i = phi ptr [ %i.ag, %.noexc ], [ %i.ab, %.thread98 ] ; 6 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -3056
  %i.aj = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !164, !noundef !8 ; 2 uses
  %i.al = icmp ugt i64 %i.ak, 20
  %i.am = getelementptr inbounds i8, ptr %.pn.i, i64 -3048 ; 8 uses
  br i1 %i.al, label %bb.h, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds i8, ptr %.pn.i, i64 -3040
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !164, !nonnull !8, !noundef !8
  %.pre = load i64, ptr %i.am, align 8
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit: ; preds = %bb.g, %bb.h
  %i.ap = phi i64 [ %.pre, %bb.h ], [ %i.ak, %bb.g ] ; 2 uses
  %.sink12.i = phi ptr [ %i.ao, %bb.h ], [ %i.am, %bb.g ] ; 2 uses
  %.idx = mul nuw nsw i64 %i.ap, 152
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 %.idx
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.as = icmp eq i64 %i.ap, 0
  br i1 %i.as, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.01.0119, i64 152 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.aq
  br i1 %i.au, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit, %bb.i
  %.sroa.01.0119 = phi ptr [ %i.at, %bb.i ], [ %.sink12.i, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit ] ; 13 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.0119, i64 72
  %i.aw = invoke noundef zeroext i1 @_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ar)
          to label %bb.k unwind label %.loopexit

._crit_edge:                                      ; preds = %bb.i, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit
  %i.ax = load i64, ptr %i.aj, align 8, !noalias !165, !noundef !8 ; 2 uses
  %i.ay = icmp ugt i64 %i.ax, 20
  br i1 %i.ay, label %bb.j, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit

bb.j:                                             ; preds = %._crit_edge
  %i.az = load i64, ptr %i.am, align 8, !noalias !165, !noundef !8
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit

bb.k:                                             ; preds = %.lr.ph
  br i1 %i.aw, label %bb.l, label %bb.i

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bb = invoke noundef zeroext i1 @_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ar)
          to label %bb.m unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  br i1 %i.bb, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.x, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.l, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.01.0119, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.01.0119, i64 64
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !170, !noundef !8
  %i.bf = load ptr, ptr %i.bc, align 8, !alias.scope !170, !nonnull !8, !align !11, !noundef !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !170, !nonnull !8, !noundef !8
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.01.0119, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !170, !noundef !8
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.0119, i64 56
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !170, !noundef !8
  invoke void %i.bh(ptr noundef %i.be, ptr noundef %i.bj, i64 noundef %i.bl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit.i unwind label %bb.o, !noalias !166, !inline_history !0

bb.o:                                             ; preds = %bb.n
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %.sroa.01.0119) #18
          to label %.thread unwind label %bb.r

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit.i: ; preds = %bb.n
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %.sroa.01.0119)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit.i unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %.sroa.01.0119)
          to label %.thread unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %.sroa.01.0119)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_.exit unwind label %bb.y

bb.r:                                             ; preds = %bb.o
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.s:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.br = invoke noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecorduNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeBO_EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 %.sroa.01.0119)
          to label %bb.t unwind label %.loopexit.split-lp ; 0 uses

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !171
  %i.bs = load ptr, ptr %i.q, align 8, !noalias !171, !nonnull !8, !align !11, !noundef !8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !171, !nonnull !8, !noundef !8
  %i.bu = load ptr, ptr %i.u, align 8, !noalias !171, !noundef !8
  %i.bv = load i64, ptr %i.w, align 8, !noalias !171, !noundef !8
  invoke void %i.bt(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 8 %i.t, ptr noundef %i.bu, i64 noundef %i.bv)
          to label %.noexc18 unwind label %.loopexit.split-lp, !inline_history !1

.noexc18:                                         ; preds = %bb.t
  %i.bw = load <2 x ptr>, ptr %i.d, align 16, !noalias !171 ; 3 uses
  %.sroa.6.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0.copyload.i12 = load i64, ptr %.sroa.6.0..sroa_idx.i11, align 16, !noalias !171 ; 2 uses
  %.sroa.7.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.7.0.copyload.i14 = load ptr, ptr %.sroa.7.0..sroa_idx.i13, align 8, !noalias !171 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i64 80, i1 false), !noalias !171
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.by = load i32, ptr %i.bx, align 8, !range !14, !noalias !171, !noundef !8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ca = load i64, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !171
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.w unwind label %bb.u, !noalias !171

bb.u:                                             ; preds = %.noexc18
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = extractelement <2 x ptr> %i.bw, i64 0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !172, !nonnull !8, !noundef !8
  %i.cf = extractelement <2 x ptr> %i.bw, i64 1
  invoke void %i.ce(ptr noundef %.sroa.7.0.copyload.i14, ptr noundef %i.cf, i64 noundef %.sroa.6.0.copyload.i12)
          to label %.thread95 unwind label %bb.v, !noalias !171, !inline_history !0

bb.v:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !171
  unreachable

bb.w:                                             ; preds = %.noexc18
  %.not.i15 = icmp eq i32 %i.by, -1
  %.sroa.0.0.i16 = select i1 %.not.i15, i64 undef, i64 %i.ca
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store <2 x ptr> %i.bw, ptr %i.ch, align 8, !alias.scope !171
  %.sroa.6.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 %.sroa.6.0.copyload.i12, ptr %.sroa.6.0..sroa_idx5.i, align 8, !alias.scope !171
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr %.sroa.7.0.copyload.i14, ptr %.sroa.7.0..sroa_idx7.i, align 8, !alias.scope !171
  %i.ci = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ci, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %.sroa.0.0.i16, ptr %i.cj, align 8, !alias.scope !171
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i32 %i.by, ptr %i.ck, align 8, !alias.scope !171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cl = invoke noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecorduNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.m)
          to label %bb.x unwind label %.loopexit.split-lp ; 0 uses

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.n

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread:                                          ; preds = %bb.y, %bb.p, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.cm, %bb.y ], [ %i.bn, %bb.p ], [ %i.bm, %bb.o ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.01.0119, ptr noundef nonnull align 8 dereferenceable(152) %i.l, i64 152, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.01.0119, ptr noundef nonnull align 8 dereferenceable(152) %i.l, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.z

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_.exit46, %bb.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_.exit
  %.sroa.0.0 = phi i8 [ %.sroa.0.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_.exit46 ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_.exit ], [ -1, %bb.an ]
  ret i8 %.sroa.0.0

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit: ; preds = %._crit_edge, %bb.j
  %.sink12.i8 = phi i64 [ %i.az, %bb.j ], [ %i.ax, %._crit_edge ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.co = load i64, ptr %i.cn, align 8, !noundef !8
  %i.cp = icmp eq i64 %.sink12.i8, %i.co
  br i1 %i.cp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map5EntryNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyINtCsczYENlYh6wI_8smallvec8SmallVecANtB1v_14ProviderRecordj14_EEEB1x_.exit, label %bb.aa

bb.aa:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cr = invoke noundef zeroext i1 @_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.cq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ar)
          to label %bb.ab unwind label %.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.cr, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.am, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.j, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false)
  %i.cs = load i64, ptr %i.aj, align 8, !alias.scope !173, !noundef !8 ; 3 uses
  %i.ct = icmp ugt i64 %i.cs, 20
  br i1 %i.ct, label %bb.ad, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.cu = getelementptr inbounds i8, ptr %.pn.i, i64 -3040
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !173, !nonnull !8, !noundef !8
  %.pre.i = load i64, ptr %i.am, align 8, !alias.scope !174
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit.i

bb.ae:                                            ; preds = %bb.af
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.j) #18
          to label %common.resume unwind label %bb.ah

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit.i: ; preds = %bb.ac, %bb.ad
  %i.cx = phi i64 [ %.pre.i, %bb.ad ], [ %i.cs, %bb.ac ] ; 2 uses
  %.sink12.i.i = phi ptr [ %i.cv, %bb.ad ], [ %i.am, %bb.ac ]
  %.sink11.i.i = phi ptr [ %i.am, %bb.ad ], [ %i.aj, %bb.ac ]
  %.sink.i.i = phi i64 [ %i.cs, %bb.ad ], [ 20, %bb.ac ]
  %i.cy = icmp eq i64 %i.cx, %.sink.i.i
  br i1 %i.cy, label %bb.af, label %bb.an, !prof !13

bb.af:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit.i
  invoke void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(3056) %.sroa.0.0.i)
          to label %bb.ag unwind label %bb.ae, !noalias !175

bb.ag:                                            ; preds = %bb.af
  %i.cz = getelementptr inbounds i8, ptr %.pn.i, i64 -3040
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !174, !nonnull !8, !noundef !8
  %.pre6.i = load i64, ptr %i.am, align 8, !alias.scope !174
  br label %bb.an

bb.ah:                                            ; preds = %bb.ae
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.ai:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !176
  %i.dc = load ptr, ptr %i.q, align 8, !noalias !176, !nonnull !8, !align !11, !noundef !8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !176, !nonnull !8, !noundef !8
  %i.de = load ptr, ptr %i.u, align 8, !noalias !176, !noundef !8
  %i.df = load i64, ptr %i.w, align 8, !noalias !176, !noundef !8
  invoke void %i.dd(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.t, ptr noundef %i.de, i64 noundef %i.df)
          to label %.noexc38 unwind label %.loopexit.split-lp, !inline_history !1

.noexc38:                                         ; preds = %bb.ai
  %i.dg = load <2 x ptr>, ptr %i.a, align 16, !noalias !176 ; 3 uses
  %.sroa.6.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0.copyload.i29 = load i64, ptr %.sroa.6.0..sroa_idx.i28, align 16, !noalias !176 ; 2 uses
  %.sroa.7.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0.copyload.i31 = load ptr, ptr %.sroa.7.0..sroa_idx.i30, align 8, !noalias !176 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i64 80, i1 false), !noalias !176
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.di = load i32, ptr %i.dh, align 8, !range !14, !noalias !176, !noundef !8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dk = load i64, ptr %i.dj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !176
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.al unwind label %bb.aj, !noalias !176

bb.aj:                                            ; preds = %.noexc38
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = extractelement <2 x ptr> %i.dg, i64 0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dm) ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !177, !nonnull !8, !noundef !8
  %i.dp = extractelement <2 x ptr> %i.dg, i64 1
  invoke void %i.do(ptr noundef %.sroa.7.0.copyload.i31, ptr noundef %i.dp, i64 noundef %.sroa.6.0.copyload.i29)
          to label %.thread95 unwind label %bb.ak, !noalias !176, !inline_history !0

bb.ak:                                            ; preds = %bb.aj
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !176
  unreachable

bb.al:                                            ; preds = %.noexc38
  %.not.i32 = icmp eq i32 %i.di, -1
  %.sroa.0.0.i33 = select i1 %.not.i32, i64 undef, i64 %i.dk
  %i.dr = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store <2 x ptr> %i.dg, ptr %i.dr, align 8, !alias.scope !176
  %.sroa.6.0..sroa_idx5.i36 = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i64 %.sroa.6.0.copyload.i29, ptr %.sroa.6.0..sroa_idx5.i36, align 8, !alias.scope !176
  %.sroa.7.0..sroa_idx7.i37 = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store ptr %.sroa.7.0.copyload.i31, ptr %.sroa.7.0..sroa_idx7.i37, align 8, !alias.scope !176
  %i.ds = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ds, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.0.0.i33, ptr %i.dt, align 8, !alias.scope !176
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i32 %i.di, ptr %i.du, align 8, !alias.scope !176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dw = invoke noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecorduNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dv, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.k)
          to label %bb.am unwind label %.loopexit.split-lp ; 0 uses

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ac

bb.an:                                            ; preds = %bb.ag, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit.i
  %i.dx = phi i64 [ %.pre6.i, %bb.ag ], [ %i.cx, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit.i ]
  %.sroa.04.0.i = phi ptr [ %i.da, %bb.ag ], [ %.sink12.i.i, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit.i ]
  %.sroa.0.0.i21 = phi ptr [ %i.am, %bb.ag ], [ %.sink11.i.i, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [152 x i8], ptr %.sroa.04.0.i, i64 %i.dx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.dy, ptr noundef nonnull align 8 dereferenceable(152) %i.j, i64 152, i1 false)
  %i.dz = load i64, ptr %.sroa.0.0.i21, align 8, !alias.scope !174, !noundef !8
  %i.ea = add i64 %i.dz, 1
  store i64 %i.ea, ptr %.sroa.0.0.i21, align 8, !alias.scope !174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.z

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map5EntryNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyINtCsczYENlYh6wI_8smallvec8SmallVecANtB1v_14ProviderRecordj14_EEEB1x_.exit: ; preds = %bb.f, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit
  %.sroa.0.1 = phi i8 [ -1, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit ], [ 1, %bb.f ]
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.eb = load ptr, ptr %i.t, align 8, !alias.scope !182, !noundef !8
  %i.ec = load ptr, ptr %i.q, align 8, !alias.scope !182, !nonnull !8, !align !11, !noundef !8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !182, !nonnull !8, !noundef !8
  %i.ef = load ptr, ptr %i.u, align 8, !alias.scope !182, !noundef !8
  %i.eg = load i64, ptr %i.w, align 8, !alias.scope !182, !noundef !8
  invoke void %i.ee(ptr noundef %i.eb, ptr noundef %i.ef, i64 noundef %i.eg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit.i44 unwind label %bb.ao, !noalias !178, !inline_history !0

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map5EntryNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyINtCsczYENlYh6wI_8smallvec8SmallVecANtB1v_14ProviderRecordj14_EEEB1x_.exit
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1) #18
          to label %common.resume unwind label %bb.ar

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit.i44: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map5EntryNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyINtCsczYENlYh6wI_8smallvec8SmallVecANtB1v_14ProviderRecordj14_EEEB1x_.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_.exit46 unwind label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit.i44
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1)
          to label %common.resume unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %.thread95, %.thread, %bb.ae, %bb.ao, %bb.ap
  %common.resume.op = phi { ptr, i32 } [ %i.eh, %bb.ao ], [ %i.ei, %bb.ap ], [ %eh.lpad-body, %.thread ], [ %eh.lpad-body2094, %.thread95 ], [ %i.cw, %bb.ae ]
  resume { ptr, i32 } %common.resume.op

bb.ar:                                            ; preds = %bb.ao
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_.exit46: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit.i44
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1)
  br label %bb.z

.thread95:                                        ; preds = %.loopexit, %.loopexit.split-lp, %bb.aj, %bb.u
  %eh.lpad-body2094 = phi { ptr, i32 } [ %i.cb, %bb.u ], [ %i.dl, %bb.aj ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_(ptr noalias nofree noundef align 8 dereferenceable(152) %1) #18
          to label %common.resume unwind label %bb.as

bb.as:                                            ; preds = %.thread95
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCskC4O4hr3vz7_10libp2p_kad6record5store6memoryNtB5_11MemoryStoreNtB7_11RecordStore15remove_provider(ptr noalias nofree noundef align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [3056 x i8], align 8              ; 4 uses
  %i.c = alloca [152 x i8], align 8               ; 14 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %1, align 8, !nonnull !8, !align !11, !noundef !8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !8
  call void %i.f(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 8 %i.g, ptr noundef %i.i, i64 noundef %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyINtCsczYENlYh6wI_8smallvec8SmallVecANtB11_14ProviderRecordj14_ENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entryB13_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
  %i.m = load ptr, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %.not, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map5EntryNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyINtCsczYENlYh6wI_8smallvec8SmallVecANtB1v_14ProviderRecordj14_EEEB1x_.exit13

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !8, !align !11, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -3056
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noalias !208, !noundef !8 ; 2 uses
  %i.u = icmp ugt i64 %i.t, 20
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds i8, ptr %i.o, i64 -3040
  %i.w = load ptr, ptr %i.v, align 8, !noalias !208, !nonnull !8, !noundef !8
  %i.x = getelementptr inbounds i8, ptr %i.o, i64 -3048
  %i.y = load i64, ptr %i.x, align 8, !noalias !208, !noundef !8
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds i8, ptr %i.o, i64 -3048
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit: ; preds = %bb.d, %bb.c
  %.sink13.i = phi ptr [ %i.w, %bb.c ], [ %i.z, %bb.d ] ; 2 uses
  %.sink12.i = phi i64 [ %i.y, %bb.c ], [ %i.t, %bb.d ] ; 3 uses
  %.idx = mul nuw nsw i64 %.sink12.i, 152
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 %.idx
  %i.ab = icmp eq i64 %.sink12.i, 0
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit, %bb.e
  %.sroa.02.07.i = phi i64 [ %i.ag, %bb.e ], [ 0, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit ] ; 3 uses
  %i.ac = phi ptr [ %i.af, %bb.e ], [ %.sink13.i, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = call noundef zeroext i1 @_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2)
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 152 ; 2 uses
  %i.ag = add nuw nsw i64 %.sroa.02.07.i, 1
  %i.ah = icmp eq ptr %i.af, %i.aa
  br i1 %i.ah, label %.loopexit, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.ai = icmp ult i64 %.sroa.02.07.i, %.sink12.i
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6removeBM_(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(3056) %i.r, i64 noundef %.sroa.02.07.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.al = invoke noundef zeroext i1 @_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ak)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.n, %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_(ptr noalias nofree noundef align 8 dereferenceable(152) %i.c) #18
          to label %bb.q unwind label %bb.p

bb.h:                                             ; preds = %bb.f
  br i1 %i.al, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.n, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !213, !noundef !8
  %i.aq = load ptr, ptr %i.an, align 8, !alias.scope !213, !nonnull !8, !align !11, !noundef !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !213, !nonnull !8, !noundef !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !213, !noundef !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !213, !noundef !8
  invoke void %i.as(ptr noundef %i.ap, ptr noundef %i.au, i64 noundef %i.aw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit.i unwind label %bb.j, !noalias !209, !inline_history !0

bb.j:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.c) #18
          to label %bb.q unwind label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit.i: ; preds = %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit.i unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.c)
          to label %bb.q unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.m:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.n:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bc = invoke noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecorduNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeBO_EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 %i.c)
          to label %bb.i unwind label %bb.g       ; 0 uses

.loopexit:                                        ; preds = %bb.e, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit.i
  %i.bd = load i64, ptr %i.s, align 8, !noalias !214, !noundef !8 ; 2 uses
  %i.be = icmp ugt i64 %i.bd, 20
  br i1 %i.be, label %bb.o, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit10

bb.o:                                             ; preds = %.loopexit
  %i.bf = getelementptr inbounds i8, ptr %i.o, i64 -3048
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !214, !noundef !8
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit10

bb.p:                                             ; preds = %bb.g
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit10: ; preds = %.loopexit, %bb.o
  %.sink12.i8 = phi i64 [ %i.bg, %bb.o ], [ %i.bd, %.loopexit ]
  %i.bi = icmp eq i64 %.sink12.i8, 0
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_EEB1f_.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map5EntryNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyINtCsczYENlYh6wI_8smallvec8SmallVecANtB1v_14ProviderRecordj14_EEEB1x_.exit11

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_EEB1f_.exit: ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtB5_18RustcOccupiedEntryNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyINtCsczYENlYh6wI_8smallvec8SmallVecANtB1a_14ProviderRecordj14_EE6removeB1c_(ptr noalias nofree noundef nonnull sret([3056 x i8]) align 8 captures(none) dereferenceable(3056) %i.b, ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
  call void @_RNvXsw_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(3056) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map5EntryNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyINtCsczYENlYh6wI_8smallvec8SmallVecANtB1v_14ProviderRecordj14_EEEB1x_.exit11

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map5EntryNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyINtCsczYENlYh6wI_8smallvec8SmallVecANtB1v_14ProviderRecordj14_EEEB1x_.exit11: ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit10, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_EEB1f_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map5EntryNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyINtCsczYENlYh6wI_8smallvec8SmallVecANtB1v_14ProviderRecordj14_EEEB1x_.exit13
  ret void

bb.q:                                             ; preds = %bb.g, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.ax, %bb.j ], [ %i.ay, %bb.k ]
  resume { ptr, i32 } %.pn

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map5EntryNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyINtCsczYENlYh6wI_8smallvec8SmallVecANtB1v_14ProviderRecordj14_EEEB1x_.exit13: ; preds = %bb.a
  %.sroa.531.0.copyload = load i64, ptr %i.p, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.632.0.copyload = load ptr, ptr %.sroa.632.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !215, !nonnull !8, !noundef !8
  call void %i.bk(ptr noundef %.sroa.632.0.copyload, ptr noundef %i.o, i64 noundef %.sroa.531.0.copyload), !noalias !215, !inline_history !207
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map5EntryNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyINtCsczYENlYh6wI_8smallvec8SmallVecANtB1v_14ProviderRecordj14_EEEB1x_.exit11
}

end_hunk_0
