Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.00?download=true
inline.NumInlined: 5827
inline.NumDeleted: 1787
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN10serde_json3ser6to_vec17h281f20344c2f3eeeE:bb.a
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.t, i64 noundef %i.u)
          to label %.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit"
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = invoke noundef align 8 ptr @"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17ha8aac5ca9c7ed2dfE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit"
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !89, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !89, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = invoke noundef ptr @_ZN10serde_json3ser18format_escaped_str17hca26d9af7340272aE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull align 1 %i.ab, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.y, i64 noundef %i.aa)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc6:                                          ; preds = %bb.e
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %.thread, label %bb.f, !prof !6

bb.f:                                             ; preds = %.noexc6
  %i.ad = invoke noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17h61031030b3ff451eE(ptr noundef nonnull %i.ac)
          to label %.thread18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit"
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = invoke noundef align 8 ptr @_ZN10serde_core3ser10Serializer11collect_seq17h02f3f74e4e742920E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !90
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !89, !noundef !4 ; 2 uses
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @6, i64 noundef 1)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %bb.h
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hef65b0d2eeadcf70E.exit.i.i"

bb.i:                                             ; preds = %.noexc9
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2, i64 noundef 1)
          to label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hef65b0d2eeadcf70E.exit.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hef65b0d2eeadcf70E.exit.i.i": ; preds = %bb.i, %.noexc9
  %.sink.i.i.i = phi i8 [ 1, %.noexc9 ], [ 0, %bb.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.b, align 8, !noalias !90
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store i8 %.sink.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !noalias !90
  %.sroa.646.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.c, ptr %.sroa.646.0..sroa_idx.i.i, align 8, !noalias !90
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !89, !noundef !4 ; 3 uses
  %.not.i.i = icmp ne ptr %i.ak, null             ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !89
  %.sroa.07.sroa.5.sroa.6.0.i.i = select i1 %.not.i.i, i64 %i.am, i64 undef ; 2 uses
  %.sroa.07.sroa.0.0.i.i = zext i1 %.not.i.i to i64 ; 2 uses
  %.sroa.5.0.i.i = select i1 %.not.i.i, i64 %i.ah, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !90
  store i64 %.sroa.07.sroa.0.0.i.i, ptr %i.a, align 8, !noalias !90
  %.sroa.08.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i, align 8, !noalias !90
  %.sroa.08.sroa.5.sroa.5.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ak, ptr %.sroa.08.sroa.5.sroa.5.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !90
  %.sroa.08.sroa.5.sroa.6.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.07.sroa.5.sroa.6.0.i.i, ptr %.sroa.08.sroa.5.sroa.6.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !90
  %.sroa.08.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.07.sroa.0.0.i.i, ptr %.sroa.08.sroa.6.0..sroa_idx.i.i, align 8, !noalias !90
  %.sroa.08.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.08.sroa.7.0..sroa_idx.i.i, align 8, !noalias !90
  %.sroa.08.sroa.7.sroa.5.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.ak, ptr %.sroa.08.sroa.7.sroa.5.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !90
  %.sroa.08.sroa.7.sroa.6.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.07.sroa.5.sroa.6.0.i.i, ptr %.sroa.08.sroa.7.sroa.6.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !90
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.5.0.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !noalias !90
  br label %bb.j

bb.j:                                             ; preds = %.noexc12, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hef65b0d2eeadcf70E.exit.i.i"
  %i.an = invoke { ptr, ptr } @"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd7d911c51c447b2aE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc11:                                         ; preds = %bb.j
  %i.ao = extractvalue { ptr, ptr } %i.an, 0      ; 2 uses
  %.not40.i.i = icmp eq ptr %i.ao, null
  br i1 %.not40.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc11
  %i.ap = extractvalue { ptr, ptr } %i.an, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.aq = invoke noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h491fbe692b870770E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc12:                                         ; preds = %bb.k
  %.not41.i.i = icmp eq ptr %i.aq, null
  br i1 %.not41.i.i, label %bb.j, label %bb.p

bb.l:                                             ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !90
  %.sroa.047.0.copyload.i.i = load i8, ptr %i.b, align 8, !noalias !90
  %.sroa.550.0.copyload.i.i = load ptr, ptr %.sroa.646.0..sroa_idx.i.i, align 8, !noalias !90 ; 2 uses
  %i.ar = trunc nuw i8 %.sroa.047.0.copyload.i.i to i1
  br i1 %i.ar, label %bb.m, label %bb.n, !prof !10

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @15, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @516) #26
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %.sroa.448.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !noalias !90
  %i.as = icmp eq i8 %.sroa.448.0.copyload.i.i, 0
  br i1 %i.as, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h3d4573986ab19537E.exit.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.550.0.copyload.i.i) ]
  %.val.i43.i.i = load ptr, ptr %.sroa.550.0.copyload.i.i, align 8, !noalias !91, !nonnull !4, !align !5, !noundef !4
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i43.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2, i64 noundef 1)
          to label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h3d4573986ab19537E.exit.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h3d4573986ab19537E.exit.i.i": ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !90
  br label %.thread

bb.p:                                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !90
  br label %.thread18

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.j, %.split.i.i.i.i.invoke, %bb.o, %bb.m, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %lpad.loopexit.split-lp26 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #27
          to label %common.resume unwind label %bb.w

.thread:                                          ; preds = %.split.i.i.i.i.invoke, %.noexc6, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h3d4573986ab19537E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !87
  br label %bb.u

.thread18:                                        ; preds = %bb.f, %bb.p
  %.sroa.0.0.i.i.ph = phi ptr [ %i.aq, %bb.p ], [ %i.ad, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !87
  br label %bb.r

bb.q:                                             ; preds = %bb.d, %bb.g
  %.sroa.0.0.i.i = phi ptr [ %i.af, %bb.g ], [ %i.w, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !87
  %.not = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.thread18, %bb.q
  %.sroa.0.0.i.i21 = phi ptr [ %.sroa.0.0.i.i.ph, %.thread18 ], [ %.sroa.0.0.i.i, %bb.q ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i21, ptr %i.at, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit" unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.s ], [ %lpad.loopexit.split-lp26, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit": ; preds = %bb.r
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.v

bb.u:                                             ; preds = %.thread, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.w:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN10serde_json3ser6to_vec17h29b7cd1d87828c2fE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i32 %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !96 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.d = load i64, ptr %i.b, align 8, !range !8, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !9, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit", !prof !10

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.g, i64 %i.i) #26
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit": ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.k = icmp ugt i64 %i.g, 127
  call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !97
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.n = icmp sgt i32 %.0.val, -1
  %.sroa.0.0.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %.0.val, i1 false) ; 6 uses
  %i.o = icmp ugt i32 %.sroa.0.0.i.i.i.i.i, 9999
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit"
  %.sroa.09.0.lcssa.i.i.i.i.i = phi i64 [ 11, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit" ], [ 7, %.lr.ph.i.i.i.i.i ], [ 3, %.lr.ph.i.i.i.i.i.1 ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit" ], [ %i.r, %.lr.ph.i.i.i.i.i ], [ %2, %.lr.ph.i.i.i.i.i.1 ] ; 3 uses
  %i.p = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i.i.i, 99
  br i1 %i.p, label %bb.c, label %bb.d

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit"
  %i.q = urem i32 %.sroa.0.0.i.i.i.i.i, 10000
  %i.r = udiv i32 %.sroa.0.0.i.i.i.i.i, 10000     ; 2 uses
  %.lhs.trunc.i.i.i.i.i = trunc nuw nsw i32 %i.q to i16 ; 2 uses
  %i.s = udiv i16 %.lhs.trunc.i.i.i.i.i, 100
  %i.t = shl nuw nsw i16 %i.s, 1
  %i.u = zext nneg i16 %i.t to i64
  %i.v = urem i16 %.lhs.trunc.i.i.i.i.i, 100
  %i.w = shl nuw nsw i16 %i.v, 1
  %i.x = zext nneg i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @414, i64 %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.aa = load i16, ptr %i.y, align 1, !noalias !99
  store i16 %i.aa, ptr %i.z, align 1, !alias.scope !98, !noalias !97
  %i.ab = getelementptr inbounds nuw i8, ptr @414, i64 %i.x
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.ad = load i16, ptr %i.ab, align 1, !noalias !99
  store i16 %i.ad, ptr %i.ac, align 1, !alias.scope !98, !noalias !97
  %i.ae = icmp ugt i32 %.sroa.0.0.i.i.i.i.i, 99999999
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %1 = urem i32 %i.r, 10000
  %2 = udiv i32 %.sroa.0.0.i.i.i.i.i, 100000000
  %.lhs.trunc.i.i.i.i.i.1 = trunc nuw nsw i32 %1 to i16 ; 2 uses
  %3 = udiv i16 %.lhs.trunc.i.i.i.i.i.1, 100
  %4 = shl nuw nsw i16 %3, 1
  %5 = zext nneg i16 %4 to i64
  %6 = urem i16 %.lhs.trunc.i.i.i.i.i.1, 100
  %7 = shl nuw nsw i16 %6, 1
  %8 = zext nneg i16 %7 to i64
  %9 = getelementptr inbounds nuw i8, ptr @414, i64 %5
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %11 = load i16, ptr %9, align 1, !noalias !99
  store i16 %11, ptr %10, align 1, !alias.scope !98, !noalias !97
  %12 = getelementptr inbounds nuw i8, ptr @414, i64 %8
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %14 = load i16, ptr %12, align 1, !noalias !99
  store i16 %14, ptr %13, align 1, !alias.scope !98, !noalias !97
  br label %._crit_edge.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.lhs.trunc24.i.i.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i.i.i to i16 ; 2 uses
  %i.af = urem i16 %.lhs.trunc24.i.i.i.i.i, 100
  %i.ag = shl nuw nsw i16 %i.af, 1
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = udiv i16 %.lhs.trunc24.i.i.i.i.i, 100
  %.zext27.i.i.i.i.i = zext nneg i16 %i.ai to i32
  %i.aj = add i64 %.sroa.09.0.lcssa.i.i.i.i.i, -2 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr @414, i64 %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj
  %i.am = load i16, ptr %i.ak, align 1, !noalias !99
  store i16 %i.am, ptr %i.al, align 1, !alias.scope !98, !noalias !97
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i = phi i64 [ %i.aj, %bb.c ], [ %.sroa.09.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i = phi i32 [ %.zext27.i.i.i.i.i, %bb.c ], [ %.sroa.0.1.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.an = icmp samesign ult i32 %.sroa.0.2.i.i.i.i.i, 10
  br i1 %i.an, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = shl nuw nsw i32 %.sroa.0.2.i.i.i.i.i, 1
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = add i64 %.sroa.09.1.i.i.i.i.i, -2       ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr @414, i64 %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq
  %i.at = load i16, ptr %i.ar, align 1, !noalias !99
  store i16 %i.at, ptr %i.as, align 1, !alias.scope !98, !noalias !97
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.au = add i64 %.sroa.09.1.i.i.i.i.i, -1       ; 2 uses
  %i.av = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.au
  %i.ax = or disjoint i8 %i.av, 48
  store i8 %i.ax, ptr %i.aw, align 1, !alias.scope !98, !noalias !97
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.09.2.i.i.i.i.i = phi i64 [ %i.au, %bb.f ], [ %i.aq, %bb.e ] ; 2 uses
  br i1 %i.n, label %"_ZN10serde_core3ser5impls60_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$i32$GT$9serialize17h7891ffd8b50e7aa7E.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = add i64 %.sroa.09.2.i.i.i.i.i, -1       ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  store i8 45, ptr %i.az, align 1, !alias.scope !98, !noalias !97
  br label %"_ZN10serde_core3ser5impls60_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$i32$GT$9serialize17h7891ffd8b50e7aa7E.exit.i"

"_ZN10serde_core3ser5impls60_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$i32$GT$9serialize17h7891ffd8b50e7aa7E.exit.i": ; preds = %bb.h, %bb.g
  %.sroa.09.3.i.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i.i, %bb.g ], [ %i.ay, %bb.h ] ; 2 uses
  %i.ba = sub i64 11, %.sroa.09.3.i.i.i.i.i       ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.3.i.i.i.i.i
  %i.bc = icmp ult i64 %i.ba, 12
  call void @llvm.assume(i1 %i.bc)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bb, i64 noundef %i.ba)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %"_ZN10serde_core3ser5impls60_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$i32$GT$9serialize17h7891ffd8b50e7aa7E.exit.i"
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #27
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %"_ZN10serde_core3ser5impls60_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$i32$GT$9serialize17h7891ffd8b50e7aa7E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.l:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bd
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN10serde_json3ser6to_vec17h50507bfc12d751a7E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(544) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !103 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.d = load i64, ptr %i.b, align 8, !range !8, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !9, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit", !prof !10

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.g, i64 %i.i) #26
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit": ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.k = icmp ugt i64 %i.g, 127
  call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104
  store ptr %i.c, ptr %i.a, align 8, !noalias !104
  %i.n = invoke noundef align 8 ptr @"_ZN4anki10deckconfig8schema111_101_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..deckconfig..schema11..DeckConfSchema11$GT$9serialize17hed91adbe7ba194bcE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(544) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit"
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #27
          to label %common.resume unwind label %bb.j

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.p, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit": ; preds = %bb.e
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.j:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN10serde_json3ser6to_vec17h832c13ed9d326f44E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !108 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.d = load i64, ptr %i.b, align 8, !range !8, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !9, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit", !prof !10

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.g, i64 %i.i) #26
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit": ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.k = icmp ugt i64 %i.g, 127
  call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.m, align 8
end_hunk_0
begin_hunk_1_@"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$10set_config17hae557a547797f166E":switch.lookup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @"_ZN94_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$serde_json..error..Error$GT$$GT$4from17hb2c10e38184e88cfE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 %.sroa.5.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.e:                                             ; preds = %_ZN10serde_json3ser6to_vec17he52f957273d2ecbcE.exit
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.7.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.w = load i8, ptr %i.v, align 8, !range !7, !noalias !7716, !noundef !4
  %i.x = trunc nuw i8 %i.w to i1
  invoke void @"_ZN4anki7storage4sync54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$3usn17hb785e7eb17a3bc16E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noundef nonnull align 8 %i.u, i1 noundef zeroext %i.x)
          to label %_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #27
          to label %common.resume unwind label %bb.n

_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit: ; preds = %bb.e
  %i.z = load i64, ptr %i.c, align 8, !range !14, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.z, -9223372036854775773
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.327.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.624.0..sroa_idx, i64 100, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.z, ptr %0, align 8
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ab, ptr %.sroa.226.0..sroa_idx, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit" unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit": ; preds = %bb.g
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.j:                                             ; preds = %_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = invoke noundef i64 @_ZN4anki9timestamp13TimestampSecs3now17h77445fd70f9cc13aE()
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.af = call noundef nonnull align 8 ptr @_ZN4anki6config11ConfigEntry5boxed17h8517d0e373ca95f5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load4, i64 noundef %switch.ext, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i32 noundef %i.ab, i64 noundef %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @"_ZN4anki6config4undo46_$LT$impl$u20$anki..collection..Collection$GT$19set_config_undoable17hf024258881dff3faE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull align 8 %i.af)
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit", %bb.k
  ret void

bb.m:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #27
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$10set_config17hdb74299302d488f3E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) unnamed_addr #2 personality ptr @rust_eh_personality !guid !7719 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_ZN10serde_json3ser6to_vec17h281f20344c2f3eeeE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4)
  %i.d = load i64, ptr %i.b, align 8, !range !9, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, -9223372036854775808
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @"_ZN94_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$serde_json..error..Error$GT$$GT$4from17hb2c10e38184e88cfE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.618.0.copyload = load i64, ptr %.sroa.618.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.618.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.j = load i8, ptr %i.i, align 8, !range !7, !noalias !7720, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  invoke void @"_ZN4anki7storage4sync54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$3usn17hb785e7eb17a3bc16E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.h, i1 noundef zeroext %i.k)
          to label %_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #27
          to label %common.resume unwind label %bb.l

_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit: ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !range !14, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.m, -9223372036854775773
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.327.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.624.0..sroa_idx, i64 100, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.m, ptr %0, align 8
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.o, ptr %.sroa.226.0..sroa_idx, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.k, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.t, %bb.k ], [ %i.l, %bb.d ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit": ; preds = %bb.e
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.h:                                             ; preds = %_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = invoke noundef i64 @_ZN4anki9timestamp13TimestampSecs3now17h77445fd70f9cc13aE()
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.s = call noundef nonnull align 8 ptr @_ZN4anki6config11ConfigEntry5boxed17h8517d0e373ca95f5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %i.o, i64 noundef %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @"_ZN4anki6config4undo46_$LT$impl$u20$anki..collection..Collection$GT$19set_config_undoable17hf024258881dff3faE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull align 8 %i.s)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit", %bb.i
  ret void

bb.k:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #27
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$10set_config17hfb1e3d430b811404E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, i8 noundef range(i8 3, 14) %2, i32 %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality !guid !7729 {
switch.lookup:
  %i.a = alloca [40 x i8], align 1                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [112 x i8], align 8               ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %switch.tableidx = add nsw i8 %2, -3            ; 2 uses
  %i.f = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$10set_config17hfb1e3d430b811404E", i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.g = zext nneg i8 %switch.tableidx to i64
  %switch.gep7 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$10set_config17hfb1e3d430b811404E.412", i64 %i.g
  %switch.load8 = load ptr, ptr %switch.gep7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7730
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !7730
  %i.h = load i64, ptr %i.b, align 8, !range !8, !noalias !7730, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !9, !noalias !7730, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.a, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i", !prof !10

bb.a:                                             ; preds = %switch.lookup
  %i.m = load i64, ptr %i.l, align 8, !noalias !7730
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.k, i64 %i.m) #26, !noalias !7730
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i": ; preds = %switch.lookup
  %i.n = load ptr, ptr %i.l, align 8, !noalias !7730, !nonnull !4, !noundef !4
  %i.o = icmp ugt i64 %i.k, 127
  call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7730
  store i64 %i.k, ptr %i.c, align 8, !noalias !7730
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.p, align 8, !noalias !7730
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !7730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7731
  call void @llvm.experimental.noalias.scope.decl(metadata !7732)
  %i.r = icmp ugt i32 %.0.val, 9999
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i"
  %.sroa.011.0.lcssa.i.i.i.i.i.i = phi i64 [ 10, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i" ], [ 6, %.lr.ph.i.i.i.i.i.i ], [ 2, %.lr.ph.i.i.i.i.i.i.1 ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i.i = phi i32 [ %.0.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i" ], [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %4, %.lr.ph.i.i.i.i.i.i.1 ] ; 3 uses
  %i.s = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i.i.i.i, 99
  br i1 %i.s, label %bb.b, label %bb.c

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i"
  %i.t = urem i32 %.0.val, 10000
  %i.u = udiv i32 %.0.val, 10000                  ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i = trunc nuw nsw i32 %i.t to i16 ; 2 uses
  %i.v = udiv i16 %.lhs.trunc.i.i.i.i.i.i, 100
  %i.w = shl nuw nsw i16 %i.v, 1
  %i.x = zext nneg i16 %i.w to i64
  %i.y = urem i16 %.lhs.trunc.i.i.i.i.i.i, 100
  %i.z = shl nuw nsw i16 %i.y, 1
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @414, i64 %i.x
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ad = load i16, ptr %i.ab, align 1, !noalias !7733
  store i16 %i.ad, ptr %i.ac, align 1, !alias.scope !7732, !noalias !7731
  %i.ae = getelementptr inbounds nuw i8, ptr @414, i64 %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = load i16, ptr %i.ae, align 1, !noalias !7733
  store i16 %i.ag, ptr %i.af, align 1, !alias.scope !7732, !noalias !7731
  %i.ah = icmp ugt i32 %.0.val, 99999999
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %.lr.ph.i.i.i.i.i.i
  %3 = urem i32 %i.u, 10000
  %4 = udiv i32 %.0.val, 100000000
  %.lhs.trunc.i.i.i.i.i.i.1 = trunc nuw nsw i32 %3 to i16 ; 2 uses
  %5 = udiv i16 %.lhs.trunc.i.i.i.i.i.i.1, 100
  %6 = shl nuw nsw i16 %5, 1
  %7 = zext nneg i16 %6 to i64
  %8 = urem i16 %.lhs.trunc.i.i.i.i.i.i.1, 100
  %9 = shl nuw nsw i16 %8, 1
  %10 = zext nneg i16 %9 to i64
  %11 = getelementptr inbounds nuw i8, ptr @414, i64 %7
  %12 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %13 = load i16, ptr %11, align 1, !noalias !7733
  store i16 %13, ptr %12, align 1, !alias.scope !7732, !noalias !7731
  %14 = getelementptr inbounds nuw i8, ptr @414, i64 %10
  %15 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %16 = load i16, ptr %14, align 1, !noalias !7733
  store i16 %16, ptr %15, align 1, !alias.scope !7732, !noalias !7731
  br label %._crit_edge.i.i.i.i.i.i

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %.lhs.trunc26.i.i.i.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i.i.i.i to i16 ; 2 uses
  %i.ai = urem i16 %.lhs.trunc26.i.i.i.i.i.i, 100
  %i.aj = shl nuw nsw i16 %i.ai, 1
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = udiv i16 %.lhs.trunc26.i.i.i.i.i.i, 100
  %.zext29.i.i.i.i.i.i = zext nneg i16 %i.al to i32
  %i.am = add i64 %.sroa.011.0.lcssa.i.i.i.i.i.i, -2 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr @414, i64 %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.am
  %i.ap = load i16, ptr %i.an, align 1, !noalias !7733
  store i16 %i.ap, ptr %i.ao, align 1, !alias.scope !7732, !noalias !7731
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i.i.i
  %.sroa.011.1.i.i.i.i.i.i = phi i64 [ %i.am, %bb.b ], [ %.sroa.011.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i.i = phi i32 [ %.zext29.i.i.i.i.i.i, %bb.b ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.aq = icmp samesign ult i32 %.sroa.0.2.i.i.i.i.i.i, 10
  br i1 %i.aq, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = shl nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = add i64 %.sroa.011.1.i.i.i.i.i.i, -2    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr @414, i64 %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.at
  %i.aw = load i16, ptr %i.au, align 1, !noalias !7733
  store i16 %i.aw, ptr %i.av, align 1, !alias.scope !7732, !noalias !7731
  br label %"_ZN10serde_core3ser5impls60_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$u32$GT$9serialize17h7b577dcd7853a993E.exit.i.i"

bb.e:                                             ; preds = %bb.c
  %i.ax = add i64 %.sroa.011.1.i.i.i.i.i.i, -1    ; 2 uses
  %i.ay = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.ba = or disjoint i8 %i.ay, 48
  store i8 %i.ba, ptr %i.az, align 1, !alias.scope !7732, !noalias !7731
  br label %"_ZN10serde_core3ser5impls60_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$u32$GT$9serialize17h7b577dcd7853a993E.exit.i.i"

"_ZN10serde_core3ser5impls60_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$u32$GT$9serialize17h7b577dcd7853a993E.exit.i.i": ; preds = %bb.e, %bb.d
  %.sroa.011.2.i.i.i.i.i.i = phi i64 [ %i.ax, %bb.e ], [ %i.at, %bb.d ] ; 2 uses
  %i.bb = sub i64 10, %.sroa.011.2.i.i.i.i.i.i    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.011.2.i.i.i.i.i.i
  %i.bd = icmp ult i64 %i.bb, 11
  call void @llvm.assume(i1 %i.bd)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bc, i64 noundef %i.bb)
          to label %_ZN10serde_json3ser6to_vec17h97cb0daaca30489dE.exit unwind label %bb.f, !noalias !7730

bb.f:                                             ; preds = %"_ZN10serde_core3ser5impls60_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$u32$GT$9serialize17h7b577dcd7853a993E.exit.i.i"
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #27
          to label %common.resume unwind label %bb.g, !noalias !7730

bb.g:                                             ; preds = %bb.f
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !7730
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.q, %bb.l, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.bp, %bb.l ], [ %i.be, %bb.f ], [ %i.bt, %bb.q ], [ %i.bl, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZN10serde_json3ser6to_vec17h97cb0daaca30489dE.exit: ; preds = %"_ZN10serde_core3ser5impls60_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$u32$GT$9serialize17h7b577dcd7853a993E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7731
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %i.p, align 8 ; 3 uses
  %.sroa.7.0.copyload = load i64, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7730
  %i.bg = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775808
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN10serde_json3ser6to_vec17h97cb0daaca30489dE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @"_ZN94_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$serde_json..error..Error$GT$$GT$4from17hb2c10e38184e88cfE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 %.sroa.5.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.i:                                             ; preds = %_ZN10serde_json3ser6to_vec17h97cb0daaca30489dE.exit
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.7.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.bj = load i8, ptr %i.bi, align 8, !range !7, !noalias !7734, !noundef !4
  %i.bk = trunc nuw i8 %i.bj to i1
  invoke void @"_ZN4anki7storage4sync54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$3usn17hb785e7eb17a3bc16E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.bh, i1 noundef zeroext %i.bk)
          to label %_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #27
          to label %common.resume unwind label %bb.r

_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit: ; preds = %bb.i
  %i.bm = load i64, ptr %i.d, align 8, !range !14, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.bm, -9223372036854775773
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bo = load i32, ptr %i.bn, align 8            ; 2 uses
  br i1 %.not, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.327.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.624.0..sroa_idx, i64 100, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.bm, ptr %0, align 8
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bo, ptr %.sroa.226.0..sroa_idx, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit" unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit": ; preds = %bb.k
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.n:                                             ; preds = %_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.br = invoke noundef i64 @_ZN4anki9timestamp13TimestampSecs3now17h77445fd70f9cc13aE()
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bs = call noundef nonnull align 8 ptr @_ZN4anki6config11ConfigEntry5boxed17h8517d0e373ca95f5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load8, i64 noundef %switch.ext, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i32 noundef %i.bo, i64 noundef %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @"_ZN4anki6config4undo46_$LT$impl$u20$anki..collection..Collection$GT$19set_config_undoable17hf024258881dff3faE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull align 8 %i.bs)
  br label %bb.p

bb.p:                                             ; preds = %bb.h, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit", %bb.o
  ret void

bb.q:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #27
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.j
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$10v2_enabled17hdf633c9b7d3d48caE"(ptr noundef nonnull align 8 %0) unnamed_addr #2 !guid !7735 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17h55af1610e70099a1E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @223, i64 noundef 8)
  %i.c = load i64, ptr %i.a, align 8, !range !14, !noundef !4
  %.not.i.i = icmp eq i64 %i.c, -9223372036854775773
  br i1 %.not.i.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i", label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i": ; preds = %bb.a
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i8, ptr %i.d, align 8, !range !13
  %.fr.i = freeze i8 %i.e                         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i8 %.fr.i, 0
  br i1 %.not.i, label %bb.b, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$17scheduler_version17hb427acb225cacf9aE.exit"

bb.b:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i", %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i"
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$17scheduler_version17hb427acb225cacf9aE.exit"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$17scheduler_version17hb427acb225cacf9aE.exit": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i", %bb.b
  %i.f = phi i8 [ 1, %bb.b ], [ %.fr.i, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i" ]
  %i.g = icmp eq i8 %i.f, 2
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$10v3_enabled17ha5e3185ae4c30437E"(ptr noundef nonnull align 8 %0) unnamed_addr #2 !guid !7736 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [112 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_1
