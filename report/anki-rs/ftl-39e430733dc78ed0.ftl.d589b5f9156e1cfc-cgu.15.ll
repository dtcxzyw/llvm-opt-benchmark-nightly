Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/ftl-39e430733dc78ed0.ftl.d589b5f9156e1cfc-cgu.15?download=true
inline.NumInlined: 250
inline.NumDeleted: 136
begin_hunk_0_@_ZN3ftl6string11write_entry17hd26ad97a564d1622E:bb.a
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7e81f75a782c736dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr98drop_in_place$LT$alloc..vec..Vec$LT$fluent_syntax..ast..Entry$LT$alloc..string..String$GT$$GT$$GT$17hef484884c68a9bd5E.exit.i" unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0fa67b26ab21cbfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread42 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

bb.aj:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7e81f75a782c736dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr98drop_in_place$LT$alloc..vec..Vec$LT$fluent_syntax..ast..Entry$LT$alloc..string..String$GT$$GT$$GT$17hef484884c68a9bd5E.exit.i" unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0fa67b26ab21cbfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread42 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

"_ZN4core3ptr98drop_in_place$LT$alloc..vec..Vec$LT$fluent_syntax..ast..Entry$LT$alloc..string..String$GT$$GT$$GT$17hef484884c68a9bd5E.exit.i": ; preds = %bb.aj, %bb.ag
  %.sroa.0.0 = phi ptr [ %i.az, %bb.ag ], [ null, %bb.aj ]
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0fa67b26ab21cbfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret ptr %.sroa.0.0

bb.am:                                            ; preds = %.thread48, %.body17
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

.thread42:                                        ; preds = %bb.ak, %bb.ah, %.body17, %.thread48
  %.pn40 = phi { ptr, i32 } [ %.pn41, %.thread48 ], [ %i.bc, %bb.ak ], [ %i.ba, %bb.ah ], [ %eh.lpad-body18, %.body17 ]
  resume { ptr, i32 } %.pn40

.thread48:                                        ; preds = %bb.w, %bb.p, %.thread57, %.thread
  %.pn41 = phi { ptr, i32 } [ %eh.lpad-body13, %.thread ], [ %lpad.thr_comm, %.thread57 ], [ %i.af, %bb.p ], [ %i.ai, %bb.w ]
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$fluent_syntax..ast..Entry$LT$alloc..string..String$GT$$GT$17h83eee840a61b90ddE"(ptr noalias noundef align 8 dereferenceable(104) %4) #16
          to label %.thread42 unwind label %bb.am
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3ftl6string12delete_entry17h7e773464f8c9134fE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %4, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN3ftl6string10parse_file17h5b4dcacfc3d37e73E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.f = load i64, ptr %i.b, align 8, !range !4, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, -9223372036854775808
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store i8 1, ptr %0, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.69.0.copyload = load i64, ptr %.sroa.69.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.69.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain17he4b3f721b4e992f4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr78drop_in_place$LT$fluent_syntax..ast..Resource$LT$alloc..string..String$GT$$GT$17ha0354311ec82e3d3E"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #16
          to label %common.resume unwind label %bb.j

bb.e:                                             ; preds = %bb.c
  invoke void @_ZN3ftl6string14serialize_file17hba01a40c060305a5E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7e81f75a782c736dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr78drop_in_place$LT$fluent_syntax..ast..Resource$LT$alloc..string..String$GT$$GT$17ha0354311ec82e3d3E.exit" unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0fa67b26ab21cbfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.k, %bb.d ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr78drop_in_place$LT$fluent_syntax..ast..Resource$LT$alloc..string..String$GT$$GT$17ha0354311ec82e3d3E.exit": ; preds = %bb.f
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0fa67b26ab21cbfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.i

bb.i:                                             ; preds = %"_ZN4core3ptr78drop_in_place$LT$fluent_syntax..ast..Resource$LT$alloc..string..String$GT$$GT$17ha0354311ec82e3d3E.exit", %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.j:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3ftl6string14serialize_file17hba01a40c060305a5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 14 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_ZN3ftl9serialize22serialize_with_options17h9d5da4b4360c429aE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h885749719b94abe7E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.q, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.thread39

.noexc:                                           ; preds = %bb.a
  %i.r = load i64, ptr %i.a, align 8, !range !9, !noalias !92, !noundef !5
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !4, !noalias !92, !noundef !5 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.s, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hae5f774b570a836fE.exit.i", !prof !10

bb.b:                                             ; preds = %.noexc
  %i.w = load i64, ptr %i.v, align 8, !noalias !92
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.u, i64 %i.w) #15
          to label %.noexc15 unwind label %.thread39

.noexc15:                                         ; preds = %bb.b
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hae5f774b570a836fE.exit.i": ; preds = %.noexc
  %i.x = load ptr, ptr %i.v, align 8, !noalias !92, !nonnull !5, !noundef !5
  %i.y = icmp ule i64 %i.q, %i.u
  call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !92
  store i64 %i.u, ptr %i.c, align 8, !noalias !92
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !92
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !92
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.o, i64 noundef %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8, i64 noundef 3)
          to label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i" unwind label %bb.c, !noalias !93

.loopexit.i:                                      ; preds = %.loopexit.split.i.loopexit, %.loopexit.split.i.loopexit.split-lp, %.loopexit.split-lp.i, %.loopexit.split.us.i, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.z, %bb.c ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.us.i, %.loopexit.split.us.i ], [ %lpad.loopexit, %.loopexit.split.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split.i.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ee3a52d4d76c90eE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #16
          to label %.thread30 unwind label %bb.av, !noalias !93

bb.c:                                             ; preds = %.critedge23.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hae5f774b570a836fE.exit.i"
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hae5f774b570a836fE.exit.i"
  %.sroa.042.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !92
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.443.0.copyload.i = load i64, ptr %.sroa.443.0..sroa_idx.i, align 8, !noalias !92 ; 27 uses
  %.sroa.645.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.645.0.copyload.i = load i64, ptr %.sroa.645.0..sroa_idx.i, align 8, !noalias !92 ; 5 uses
  %.sroa.746.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.746.0.copyload.i = load i64, ptr %.sroa.746.0..sroa_idx.i, align 8, !noalias !92 ; 2 uses
  %.sroa.847.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.847.0.copyload.i = load i64, ptr %.sroa.847.0..sroa_idx.i, align 8, !noalias !92
  %.sroa.1049.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.1049.0.copyload.i = load i64, ptr %.sroa.1049.0..sroa_idx.i, align 8, !noalias !92
  %.sroa.1251.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.1251.0.copyload.i = load ptr, ptr %.sroa.1251.0..sroa_idx.i, align 8, !noalias !92 ; 17 uses
  %.sroa.1352.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.1352.0.copyload.i = load i64, ptr %.sroa.1352.0..sroa_idx.i, align 8, !noalias !92 ; 42 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.14.0.copyload.i = load ptr, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !92 ; 5 uses
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.15.0.copyload.i = load i64, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !92 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !92
  %i.aa = trunc nuw i64 %.sroa.042.0.copyload.i to i1
  %i.ab = add i64 %.sroa.15.0.copyload.i, -1      ; 3 uses
  br i1 %i.aa, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us.i", label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.i"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us.i": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1251.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload.i) ]
  %i.ac = sub i64 %.sroa.15.0.copyload.i, %.sroa.645.0.copyload.i
  %umax49.i.us.i = call i64 @llvm.umax.i64(i64 %.sroa.443.0.copyload.i, i64 %.sroa.15.0.copyload.i)
  %i.ad = add i64 %.sroa.443.0.copyload.i, -1     ; 2 uses
  %.first_iter.i = icmp ult i64 %i.ad, %.sroa.15.0.copyload.i
  %.first_iter.i.fr = freeze i1 %.first_iter.i
  %.not67.us.i = icmp eq i64 %.sroa.443.0.copyload.i, 0
  %invariant.op = sub i64 1, %.sroa.443.0.copyload.i
  %exitcond.not.i.us.i214.not = icmp ult i64 %.sroa.443.0.copyload.i, %.sroa.15.0.copyload.i
  %invariant.op288 = sub i64 1, %.sroa.443.0.copyload.i
  %.not67.us.i.us217 = icmp eq i64 %.sroa.443.0.copyload.i, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.t, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us.i"
  %.sroa.3014.0.us.i = phi i64 [ %.sroa.1049.0.copyload.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us.i" ], [ %.sroa.3014.3.us.i, %bb.t ] ; 2 uses
  %.sroa.18.0.us.i = phi i64 [ %.sroa.847.0.copyload.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us.i" ], [ %.sroa.1155.3.us.i, %bb.t ] ; 3 uses
  %.sroa.06.0.us.i = phi i64 [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us.i" ], [ %.sroa.1155.3.us.i, %bb.t ] ; 5 uses
  %i.ae = icmp eq i64 %.sroa.3014.0.us.i, -1
  %i.af = add i64 %.sroa.18.0.us.i, %i.ab         ; 3 uses
  %i.ag = icmp ult i64 %i.af, %.sroa.1352.0.copyload.i ; 2 uses
  br i1 %i.ae, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  br i1 %i.ag, label %.lr.ph.i41.us.i, label %.critedge23.i

.lr.ph.i41.us.i:                                  ; preds = %bb.e, %.sink.split.i.us.i
  %i.ah = phi i64 [ %.sink.i.us.i, %.sink.split.i.us.i ], [ %.sroa.3014.0.us.i, %bb.e ] ; 3 uses
  %i.ai = phi i64 [ %i.bl, %.sink.split.i.us.i ], [ %i.af, %bb.e ]
  %i.aj = phi i64 [ %.ph71.i.us.i, %.sink.split.i.us.i ], [ %.sroa.18.0.us.i, %bb.e ] ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %i.ai
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !94, !noalias !96, !noundef !5
  %i.am = and i8 %i.al, 63
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %.sroa.746.0.copyload.i
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.m, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i41.us.i
  %.sroa.0.0.i.i43.us.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 %.sroa.443.0.copyload.i) ; 4 uses
  %umax49.i44.us.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i43.us.i, i64 %.sroa.15.0.copyload.i)
  %exitcond.not.i46.us.i209.not = icmp ult i64 %.sroa.0.0.i.i43.us.i, %.sroa.15.0.copyload.i
  br i1 %exitcond.not.i46.us.i209.not, label %.lr.ph, label %.preheader68.us.i.preheader

bb.g:                                             ; preds = %bb.h
  %i.ar = add i64 %.sroa.02.0.i45.us.i210, 1      ; 2 uses
  %exitcond.not.i46.us.i = icmp eq i64 %i.ar, %umax49.i44.us.i
  br i1 %exitcond.not.i46.us.i, label %.preheader68.us.i.preheader, label %.lr.ph

.preheader68.us.i.preheader:                      ; preds = %bb.g, %bb.f
  %i.as = icmp ult i64 %i.ah, %.sroa.443.0.copyload.i
  br i1 %i.as, label %.lr.ph212, label %.loopexit.i.us.i

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.02.0.i45.us.i210 = phi i64 [ %i.ar, %bb.g ], [ %.sroa.0.0.i.i43.us.i, %bb.f ] ; 4 uses
  %i.at = add i64 %.sroa.02.0.i45.us.i210, %i.aj  ; 2 uses
  %i.au = icmp ult i64 %i.at, %.sroa.1352.0.copyload.i
  br i1 %i.au, label %bb.h, label %.split.us.i

bb.h:                                             ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %.sroa.02.0.i45.us.i210
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !95, !noalias !97, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %i.at
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !94, !noalias !96, !noundef !5
  %.not21.i48.us.i = icmp eq i8 %i.aw, %i.ay
  br i1 %.not21.i48.us.i, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.reass.i.reass.reass = add i64 %i.aj, %invariant.op
  %i.az = add i64 %.reass.i.reass.reass, %.sroa.02.0.i45.us.i210
  br label %.sink.split.i.us.i

.preheader68.us.i:                                ; preds = %bb.k
  %i.ba = icmp ult i64 %i.ah, %i.bb
  br i1 %i.ba, label %.lr.ph212, label %.loopexit.i.us.i

.lr.ph212:                                        ; preds = %.preheader68.us.i.preheader, %.preheader68.us.i
  %.sroa.2.0.i49.us.i211 = phi i64 [ %i.bb, %.preheader68.us.i ], [ %.sroa.443.0.copyload.i, %.preheader68.us.i.preheader ]
  %i.bb = add i64 %.sroa.2.0.i49.us.i211, -1      ; 6 uses
  %i.bc = icmp ult i64 %i.bb, %.sroa.15.0.copyload.i
  br i1 %i.bc, label %bb.j, label %.split136.us.invoke.i

bb.j:                                             ; preds = %.lr.ph212
  %i.bd = add i64 %i.bb, %i.aj                    ; 3 uses
  %i.be = icmp ult i64 %i.bd, %.sroa.1352.0.copyload.i
  br i1 %i.be, label %bb.k, label %.split136.us.invoke.i

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %i.bb
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !95, !noalias !97, !noundef !5
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %i.bd
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !94, !noalias !96, !noundef !5
  %.not.i50.us.i = icmp eq i8 %i.bg, %i.bi
  br i1 %.not.i50.us.i, label %.preheader68.us.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = add i64 %i.aj, %.sroa.645.0.copyload.i
  br label %.sink.split.i.us.i

bb.m:                                             ; preds = %.lr.ph.i41.us.i
  %i.bk = add i64 %i.aj, %.sroa.15.0.copyload.i
  br label %.sink.split.i.us.i

.sink.split.i.us.i:                               ; preds = %bb.m, %bb.l, %bb.i
  %.sink.i.us.i = phi i64 [ %i.ac, %bb.l ], [ 0, %bb.i ], [ 0, %bb.m ]
  %.ph71.i.us.i = phi i64 [ %i.bj, %bb.l ], [ %i.az, %bb.i ], [ %i.bk, %bb.m ] ; 2 uses
  %i.bl = add i64 %.ph71.i.us.i, %i.ab            ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %.sroa.1352.0.copyload.i
  br i1 %i.bm, label %.lr.ph.i41.us.i, label %.critedge23.i

bb.n:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  br i1 %i.ag, label %.lr.ph.i34.us.i, label %.critedge23.i

.lr.ph.i34.us.i:                                  ; preds = %bb.n, %bb.s
  %i.bn = phi i64 [ %i.co, %bb.s ], [ %i.af, %bb.n ]
  %i.bo = phi i64 [ %i.cn, %bb.s ], [ %.sroa.18.0.us.i, %bb.n ] ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %i.bn
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !98, !noalias !100, !noundef !5
  %i.br = and i8 %i.bq, 63
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = and i64 %i.bt, %.sroa.746.0.copyload.i
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.r, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph.i34.us.i
  br i1 %exitcond.not.i.us.i214.not, label %.lr.ph216, label %.preheader.us.i.preheader

.preheader.i:                                     ; preds = %bb.p
  %i.bw = add i64 %.sroa.02.0.i.us.i215, 1        ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.bw, %umax49.i.us.i
  br i1 %exitcond.not.i.us.i, label %.preheader.us.i.preheader, label %.lr.ph216

.preheader.us.i.preheader:                        ; preds = %.preheader.i, %.preheader.i.preheader
  br i1 %.first_iter.i.fr, label %.preheader.us.i.us.preheader, label %.preheader.us.i.preheader.split

.preheader.us.i.us.preheader:                     ; preds = %.preheader.us.i.preheader
  br i1 %.not67.us.i.us217, label %.loopexit.i.us.i, label %.lr.ph219

.preheader.us.i.us:                               ; preds = %bb.o
  %.not67.us.i.us = icmp eq i64 %i.bx, 0
  br i1 %.not67.us.i.us, label %.loopexit.i.us.i, label %.lr.ph219

.lr.ph219:                                        ; preds = %.preheader.us.i.us.preheader, %.preheader.us.i.us
  %.sroa.2.0.i.us.i.us218 = phi i64 [ %i.bx, %.preheader.us.i.us ], [ %.sroa.443.0.copyload.i, %.preheader.us.i.us.preheader ]
  %i.bx = add i64 %.sroa.2.0.i.us.i.us218, -1     ; 4 uses
  %i.by = add i64 %i.bx, %i.bo                    ; 3 uses
  %i.bz = icmp ult i64 %i.by, %.sroa.1352.0.copyload.i
  br i1 %i.bz, label %bb.o, label %.split136.us.invoke.i

bb.o:                                             ; preds = %.lr.ph219
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %i.bx
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !99, !noalias !101, !noundef !5
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %i.by
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !98, !noalias !100, !noundef !5
  %.not.i.us.i.us = icmp eq i8 %i.cb, %i.cd
  br i1 %.not.i.us.i.us, label %.preheader.us.i.us, label %.split.us

.split.us:                                        ; preds = %bb.o
  %i.ce = add i64 %i.bo, %.sroa.645.0.copyload.i
  br label %bb.s
end_hunk_0
begin_hunk_1_@_ZN3ftl6string14serialize_file17hba01a40c060305a5E:bb.a
.loopexit.split.us.i:                             ; preds = %bb.t, %.loopexit.i.us.i
  %lpad.loopexit.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.i": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i"
  %i.cs = and i64 %.sroa.645.0.copyload.i, 65536
  %.not.i14 = icmp eq i64 %i.cs, 0
  br i1 %.not.i14, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us.i", label %.critedge23.i

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us.i": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1251.0.copyload.i) ]
  %i.ct = trunc i64 %.sroa.645.0.copyload.i to i1 ; 2 uses
  %i.cu = icmp eq i64 %.sroa.443.0.copyload.i, 0
  br i1 %i.cu, label %bb.w, label %bb.u

bb.u:                                             ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us.i"
  %.not.i.i.i.us.peel.i.peel = icmp ult i64 %.sroa.443.0.copyload.i, %.sroa.1352.0.copyload.i
  br i1 %.not.i.i.i.us.peel.i.peel, label %bb.v, label %.split.i.i.i.us.peel.i.peel

.split.i.i.i.us.peel.i.peel:                      ; preds = %bb.u
  %i.cv = icmp eq i64 %.sroa.443.0.copyload.i, %.sroa.1352.0.copyload.i
  br i1 %i.cv, label %bb.w, label %.split.us154.i

bb.v:                                             ; preds = %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %.sroa.443.0.copyload.i
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !102, !noalias !103, !noundef !5
  %i.cy = icmp sgt i8 %i.cx, -65
  br i1 %i.cy, label %bb.w, label %.split.us154.i

bb.w:                                             ; preds = %bb.v, %.split.i.i.i.us.peel.i.peel, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us.i"
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %.sroa.443.0.copyload.i ; 4 uses
  %i.da = icmp samesign eq i64 %.sroa.443.0.copyload.i, %.sroa.1352.0.copyload.i
  br i1 %i.da, label %.loopexit207.i.peel, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = load i8, ptr %i.cz, align 1, !noalias !104, !noundef !5 ; 5 uses
  %i.dc = icmp sgt i8 %i.db, -1
  br i1 %i.dc, label %bb.y, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.peel.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.peel.i.peel": ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.de = and i8 %i.db, 31
  %i.df = zext nneg i8 %i.de to i32               ; 3 uses
  %i.dg = add nuw nsw i64 %.sroa.443.0.copyload.i, 1
  %i.dh = icmp samesign ne i64 %i.dg, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.dh)
  %i.di = load i8, ptr %i.dd, align 1, !noalias !104, !noundef !5
  %i.dj = shl nuw nsw i32 %i.df, 6
  %i.dk = and i8 %i.di, 63
  %i.dl = zext nneg i8 %i.dk to i32               ; 2 uses
  %i.dm = or disjoint i32 %i.dj, %i.dl
  %i.dn = icmp samesign ugt i8 %i.db, -33
  br i1 %i.dn, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.peel.i.peel", label %bb.z

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.peel.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.peel.i.peel"
  %i.do = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.dp = add nuw nsw i64 %.sroa.443.0.copyload.i, 2
  %i.dq = icmp samesign ne i64 %i.dp, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.dq)
  %i.dr = load i8, ptr %i.do, align 1, !noalias !104, !noundef !5
  %i.ds = shl nuw nsw i32 %i.dl, 6
  %i.dt = and i8 %i.dr, 63
  %i.du = zext nneg i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.ds, %i.du            ; 2 uses
  %i.dw = shl nuw nsw i32 %i.df, 12
  %i.dx = or disjoint i32 %i.dv, %i.dw
  %i.dy = icmp samesign ugt i8 %i.db, -17
  br i1 %i.dy, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.us.peel.i.peel", label %bb.z

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.us.peel.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.peel.i.peel"
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cz, i64 3
  %i.ea = add nuw nsw i64 %.sroa.443.0.copyload.i, 3
  %i.eb = icmp samesign ne i64 %i.ea, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.eb)
  %i.ec = load i8, ptr %i.dz, align 1, !noalias !104, !noundef !5
  %i.ed = shl nuw nsw i32 %i.df, 18
  %i.ee = and i32 %i.ed, 1835008
  %i.ef = shl nuw nsw i32 %i.dv, 6
  %i.eg = and i8 %i.ec, 63
  %i.eh = zext nneg i8 %i.eg to i32
  %i.ei = or disjoint i32 %i.ef, %i.eh
  %i.ej = or disjoint i32 %i.ei, %i.ee
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ek = zext nneg i8 %i.db to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.us.peel.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.peel.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.peel.i.peel"
  %.sroa.4.0.i.ph.i.i.us.peel.i.peel = phi i32 [ %i.dx, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.peel.i.peel" ], [ %i.ej, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.us.peel.i.peel" ], [ %i.dm, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.peel.i.peel" ], [ %i.ek, %bb.y ] ; 4 uses
  %i.el = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i.peel, 1114112
  call void @llvm.assume(i1 %i.el)
  br i1 %i.ct, label %.loopexit.i.us148.i.peel, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i.peel, 128
  br i1 %i.em, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.en = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i.peel, 2048
  br i1 %i.en, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i.peel, 65536
  %..i.i.us.peel.i.peel = select i1 %i.eo, i64 3, i64 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.sroa.01.0.i.i.us.peel.i.peel = phi i64 [ 2, %bb.ab ], [ %..i.i.us.peel.i.peel, %bb.ac ], [ 1, %bb.aa ]
  %i.ep = add i64 %.sroa.01.0.i.i.us.peel.i.peel, %.sroa.443.0.copyload.i ; 12 uses
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i.i.us.i.peel = icmp ult i64 %i.ep, %.sroa.1352.0.copyload.i
  br i1 %.not.i.i.i.us.i.peel, label %bb.af, label %.split.i.i.i.us.i.peel

.split.i.i.i.us.i.peel:                           ; preds = %bb.ae
  %i.er = icmp eq i64 %i.ep, %.sroa.1352.0.copyload.i
  br i1 %i.er, label %bb.ag, label %.split.us154.i

bb.af:                                            ; preds = %bb.ae
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %i.ep
  %i.et = load i8, ptr %i.es, align 1, !alias.scope !102, !noalias !103, !noundef !5
  %i.eu = icmp sgt i8 %i.et, -65
  br i1 %i.eu, label %bb.ag, label %.split.us154.i

bb.ag:                                            ; preds = %bb.af, %.split.i.i.i.us.i.peel, %bb.ad
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %i.ep ; 4 uses
  %i.ew = icmp samesign eq i64 %i.ep, %.sroa.1352.0.copyload.i
  br i1 %i.ew, label %.loopexit.i.us148.i.peel, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ex = load i8, ptr %i.ev, align 1, !noalias !104, !noundef !5 ; 5 uses
  %i.ey = icmp sgt i8 %i.ex, -1
  br i1 %i.ey, label %bb.ai, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.i.peel": ; preds = %bb.ah
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  %i.fa = and i8 %i.ex, 31
  %i.fb = zext nneg i8 %i.fa to i32               ; 3 uses
  %i.fc = add nuw nsw i64 %i.ep, 1
  %i.fd = icmp samesign ne i64 %i.fc, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.fd)
  %i.fe = load i8, ptr %i.ez, align 1, !noalias !104, !noundef !5
  %i.ff = shl nuw nsw i32 %i.fb, 6
  %i.fg = and i8 %i.fe, 63
  %i.fh = zext nneg i8 %i.fg to i32               ; 2 uses
  %i.fi = or disjoint i32 %i.ff, %i.fh
  %i.fj = icmp samesign ugt i8 %i.ex, -33
  br i1 %i.fj, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.i.peel", label %.loopexit.i.us148.loopexit.loopexit.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.i.peel"
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  %i.fl = add nuw nsw i64 %i.ep, 2
  %i.fm = icmp samesign ne i64 %i.fl, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.fm)
  %i.fn = load i8, ptr %i.fk, align 1, !noalias !104, !noundef !5
  %i.fo = shl nuw nsw i32 %i.fh, 6
  %i.fp = and i8 %i.fn, 63
  %i.fq = zext nneg i8 %i.fp to i32
  %i.fr = or disjoint i32 %i.fo, %i.fq            ; 2 uses
  %i.fs = shl nuw nsw i32 %i.fb, 12
  %i.ft = or disjoint i32 %i.fr, %i.fs
  %i.fu = icmp samesign ugt i8 %i.ex, -17
  br i1 %i.fu, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.us.i.peel", label %.loopexit.i.us148.loopexit.loopexit.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.us.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.i.peel"
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ev, i64 3
  %i.fw = add nuw nsw i64 %i.ep, 3
  %i.fx = icmp samesign ne i64 %i.fw, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.fx)
  %i.fy = load i8, ptr %i.fv, align 1, !noalias !104, !noundef !5
  %i.fz = shl nuw nsw i32 %i.fb, 18
  %i.ga = and i32 %i.fz, 1835008
  %i.gb = shl nuw nsw i32 %i.fr, 6
  %i.gc = and i8 %i.fy, 63
  %i.gd = zext nneg i8 %i.gc to i32
  %i.ge = or disjoint i32 %i.gb, %i.gd
  %i.gf = or disjoint i32 %i.ge, %i.ga
  br label %.loopexit.i.us148.loopexit.loopexit.i.peel

bb.ai:                                            ; preds = %bb.ah
  %i.gg = zext nneg i8 %i.ex to i32
  br label %.loopexit.i.us148.loopexit.loopexit.i.peel

.loopexit.i.us148.loopexit.loopexit.i.peel:       ; preds = %bb.ai, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.us.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.i.peel"
  %.sroa.4.0.i.ph.i.i.us.i.peel = phi i32 [ %i.ft, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.i.peel" ], [ %i.gf, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.us.i.peel" ], [ %i.fi, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.i.peel" ], [ %i.gg, %bb.ai ]
  %i.gh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.i.peel, 1114112
  call void @llvm.assume(i1 %i.gh)
  br label %.loopexit.i.us148.i.peel

.loopexit207.i.peel:                              ; preds = %bb.w
  br i1 %i.ct, label %.loopexit.i.us148.i.peel, label %.critedge23.i

.loopexit.i.us148.i.peel:                         ; preds = %.loopexit207.i.peel, %.loopexit.i.us148.loopexit.loopexit.i.peel, %bb.ag, %bb.z
  %.sroa.46.1.us203.i.peel = phi i64 [ %.sroa.443.0.copyload.i, %.loopexit207.i.peel ], [ %i.ep, %.loopexit.i.us148.loopexit.loopexit.i.peel ], [ %.sroa.443.0.copyload.i, %bb.z ], [ %.sroa.1352.0.copyload.i, %bb.ag ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.46.1.us203.i.peel
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h3be60f348eb6ee04E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.gi)
          to label %bb.aj unwind label %.loopexit.split.i.loopexit.split-lp, !noalias !93

bb.aj:                                            ; preds = %.loopexit.i.us148.i.peel
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h3be60f348eb6ee04E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull @9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @9, i64 7))
          to label %.preheader.i.us.i unwind label %.loopexit.split.i.loopexit.split-lp, !noalias !93

.preheader.i.us.i:                                ; preds = %bb.aj, %6
  %.sroa.46.0.us146.i = phi i64 [ %.sroa.46.1190.i, %6 ], [ %.sroa.46.1.us203.i.peel, %bb.aj ] ; 13 uses
  %i.gj = icmp eq i64 %.sroa.46.0.us146.i, 0
  br i1 %i.gj, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %.preheader.i.us.i
  %.not.i.i.i.us.peel.i = icmp ult i64 %.sroa.46.0.us146.i, %.sroa.1352.0.copyload.i
  br i1 %.not.i.i.i.us.peel.i, label %bb.al, label %.split.i.i.i.us.peel.i

.split.i.i.i.us.peel.i:                           ; preds = %bb.ak
  %i.gk = icmp eq i64 %.sroa.46.0.us146.i, %.sroa.1352.0.copyload.i
  br i1 %i.gk, label %bb.am, label %.split.us154.i

bb.al:                                            ; preds = %bb.ak
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %.sroa.46.0.us146.i
  %i.gm = load i8, ptr %i.gl, align 1, !alias.scope !102, !noalias !103, !noundef !5
  %i.gn = icmp sgt i8 %i.gm, -65
  br i1 %i.gn, label %bb.am, label %.split.us154.i

bb.am:                                            ; preds = %bb.al, %.split.i.i.i.us.peel.i, %.preheader.i.us.i
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %.sroa.46.0.us146.i ; 4 uses
  %i.gp = icmp samesign eq i64 %.sroa.46.0.us146.i, %.sroa.1352.0.copyload.i
  br i1 %i.gp, label %.critedge23.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gq = load i8, ptr %i.go, align 1, !noalias !104, !noundef !5 ; 4 uses
  %i.gr = icmp sgt i8 %i.gq, -1
  br i1 %i.gr, label %.thread141, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.peel.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.peel.i": ; preds = %bb.an
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  %i.gt = and i8 %i.gq, 31
  %i.gu = zext nneg i8 %i.gt to i32               ; 3 uses
  %i.gv = add nuw nsw i64 %.sroa.46.0.us146.i, 1
  %i.gw = icmp samesign ne i64 %i.gv, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.gw)
  %i.gx = load i8, ptr %i.gs, align 1, !noalias !104, !noundef !5
  %i.gy = shl nuw nsw i32 %i.gu, 6
  %i.gz = and i8 %i.gx, 63
  %i.ha = zext nneg i8 %i.gz to i32               ; 2 uses
  %i.hb = or disjoint i32 %i.gy, %i.ha
  %i.hc = icmp samesign ugt i8 %i.gq, -33
  br i1 %i.hc, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.peel.i", label %bb.ao

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.peel.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.peel.i"
  %i.hd = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.he = add nuw nsw i64 %.sroa.46.0.us146.i, 2
  %i.hf = icmp samesign ne i64 %i.he, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.hf)
  %i.hg = load i8, ptr %i.hd, align 1, !noalias !104, !noundef !5
  %i.hh = shl nuw nsw i32 %i.ha, 6
  %i.hi = and i8 %i.hg, 63
  %i.hj = zext nneg i8 %i.hi to i32
  %i.hk = or disjoint i32 %i.hh, %i.hj            ; 2 uses
  %i.hl = shl nuw nsw i32 %i.gu, 12
  %i.hm = or disjoint i32 %i.hk, %i.hl
  %i.hn = icmp samesign ugt i8 %i.gq, -17
  br i1 %i.hn, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.us.peel.i", label %bb.ao

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.us.peel.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.peel.i"
  %i.ho = getelementptr inbounds nuw i8, ptr %i.go, i64 3
  %i.hp = add nuw nsw i64 %.sroa.46.0.us146.i, 3
  %i.hq = icmp samesign ne i64 %i.hp, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.hq)
  %i.hr = load i8, ptr %i.ho, align 1, !noalias !104, !noundef !5
  %i.hs = shl nuw nsw i32 %i.gu, 18
  %i.ht = and i32 %i.hs, 1835008
  %i.hu = shl nuw nsw i32 %i.hk, 6
  %i.hv = and i8 %i.hr, 63
  %i.hw = zext nneg i8 %i.hv to i32
  %i.hx = or disjoint i32 %i.hu, %i.hw
  %i.hy = or disjoint i32 %i.hx, %i.ht
  br label %bb.ao

bb.ao:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.peel.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.peel.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.us.peel.i"
  %.sroa.4.0.i.ph.i.i.us.peel.i = phi i32 [ %i.hm, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.peel.i" ], [ %i.hy, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.us.peel.i" ], [ %i.hb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.peel.i" ] ; 4 uses
  %i.hz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i, 1114112
  call void @llvm.assume(i1 %i.hz)
  %i.ia = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i, 128
  br i1 %i.ia, label %.thread141, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ib = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i, 2048
  br i1 %i.ib, label %.thread141, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ic = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i, 65536
  %..i.i.us.peel.i = select i1 %i.ic, i64 3, i64 4
  br label %.thread141

.thread141:                                       ; preds = %bb.an, %bb.aq, %bb.ap, %bb.ao
  %.sroa.01.0.i.i.us.peel.i = phi i64 [ 2, %bb.ap ], [ %..i.i.us.peel.i, %bb.aq ], [ 1, %bb.ao ], [ 1, %bb.an ]
  %i.id = add i64 %.sroa.01.0.i.i.us.peel.i, %.sroa.46.0.us146.i ; 15 uses
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %.thread141
  %.not.i.i.i.us.i = icmp ult i64 %i.id, %.sroa.1352.0.copyload.i
  br i1 %.not.i.i.i.us.i, label %bb.as, label %.split.i.i.i.us.i

.split.i.i.i.us.i:                                ; preds = %bb.ar
  %i.if = icmp eq i64 %i.id, %.sroa.1352.0.copyload.i
  br i1 %i.if, label %bb.at, label %.split.us154.i

bb.as:                                            ; preds = %bb.ar
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %i.id
  %i.ih = load i8, ptr %i.ig, align 1, !alias.scope !102, !noalias !103, !noundef !5
  %i.ii = icmp sgt i8 %i.ih, -65
  br i1 %i.ii, label %bb.at, label %.split.us154.i

bb.at:                                            ; preds = %bb.as, %.split.i.i.i.us.i, %.thread141
  %i.ij = icmp samesign eq i64 %i.id, %.sroa.1352.0.copyload.i
  br i1 %i.ij, label %.loopexit.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %i.id
  %i.il = load i8, ptr %i.ik, align 1, !noalias !104, !noundef !5 ; 3 uses
  %i.im = icmp sgt i8 %i.il, -1
  br i1 %i.im, label %.loopexit.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.i": ; preds = %bb.au
  %i.in = add nuw nsw i64 %i.id, 1
  %i.io = icmp samesign ne i64 %i.in, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.io)
  %i.ip = icmp samesign ugt i8 %i.il, -33
  br i1 %i.ip, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.i", label %.loopexit.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.i"
  %i.iq = add nuw nsw i64 %i.id, 2
  %i.ir = icmp samesign ne i64 %i.iq, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.ir)
  %i.is = icmp samesign ugt i8 %i.il, -17
  br i1 %i.is, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.us.i", label %.loopexit.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.us.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.i"
  %i.it = add nuw nsw i64 %i.id, 3
  %i.iu = icmp samesign ne i64 %i.it, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.iu)
  br label %.loopexit.i.i

.split.us154.i:                                   ; preds = %bb.as, %.split.i.i.i.us.i, %bb.al, %.split.i.i.i.us.peel.i, %bb.af, %.split.i.i.i.us.i.peel, %bb.v, %.split.i.i.i.us.peel.i.peel
  %.sroa.46.1.us.lcssa.i = phi i64 [ %.sroa.443.0.copyload.i, %.split.i.i.i.us.peel.i.peel ], [ %.sroa.443.0.copyload.i, %bb.v ], [ %i.ep, %.split.i.i.i.us.i.peel ], [ %i.ep, %bb.af ], [ %i.id, %bb.as ], [ %i.id, %.split.i.i.i.us.i ], [ %.sroa.46.0.us146.i, %.split.i.i.i.us.peel.i ], [ %.sroa.46.0.us146.i, %bb.al ]
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.1251.0.copyload.i, i64 noundef %.sroa.1352.0.copyload.i, i64 noundef %.sroa.46.1.us.lcssa.i, i64 noundef %.sroa.1352.0.copyload.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #15
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !93

.noexc.i:                                         ; preds = %.split.us154.i
  unreachable

.split.us.i:                                      ; preds = %.lr.ph
  %i.iv = add i64 %i.aj, %.sroa.0.0.i.i43.us.i
  %umax.i47.i = call i64 @llvm.umax.i64(i64 %.sroa.1352.0.copyload.i, i64 %i.iv)
  br label %.split136.us.invoke.i

.split136.us.invoke.i:                            ; preds = %.preheader.us.i.preheader.split, %bb.j, %.lr.ph212, %.lr.ph219, %.split132.us.i, %.split.us.i
  %i.iw = phi i64 [ %umax.i47.i, %.split.us.i ], [ %i.by, %.lr.ph219 ], [ %umax.i.i, %.split132.us.i ], [ %i.bd, %bb.j ], [ %i.bb, %.lr.ph212 ], [ %i.ad, %.preheader.us.i.preheader.split ]
  %i.ix = phi i64 [ %.sroa.1352.0.copyload.i, %.split.us.i ], [ %.sroa.1352.0.copyload.i, %.lr.ph219 ], [ %.sroa.1352.0.copyload.i, %.split132.us.i ], [ %.sroa.1352.0.copyload.i, %bb.j ], [ %.sroa.15.0.copyload.i, %.lr.ph212 ], [ %.sroa.15.0.copyload.i, %.preheader.us.i.preheader.split ]
  %i.iy = phi ptr [ @47, %.split.us.i ], [ @46, %.lr.ph219 ], [ @47, %.split132.us.i ], [ @46, %bb.j ], [ @45, %.lr.ph212 ], [ @45, %.preheader.us.i.preheader.split ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.iw, i64 noundef %i.ix, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iy) #15
          to label %.split136.us.cont.i unwind label %.loopexit.split-lp.i, !noalias !93

.split136.us.cont.i:                              ; preds = %.split136.us.invoke.i
  unreachable

.split132.us.i:                                   ; preds = %.lr.ph216
  %i.iz = add i64 %i.bo, %.sroa.443.0.copyload.i
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.sroa.1352.0.copyload.i, i64 %i.iz)
  br label %.split136.us.invoke.i

.loopexit.split.i.loopexit:                       ; preds = %.loopexit.i.i, %6
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split.i.loopexit.split-lp:              ; preds = %.loopexit.i.us148.i.peel, %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp.i:                             ; preds = %.split136.us.invoke.i, %.split.us154.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.i.i:                                    ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.us.i", %bb.au, %bb.at
  %.sroa.46.1190.i = phi i64 [ %.sroa.1352.0.copyload.i, %bb.at ], [ %i.id, %bb.au ], [ %i.id, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.us.i" ], [ %i.id, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.us.i" ], [ %i.id, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.us.i" ] ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.46.0.us146.i
  %5 = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.46.1190.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h3be60f348eb6ee04E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %5)
          to label %6 unwind label %.loopexit.split.i.loopexit, !noalias !93

.critedge23.i:                                    ; preds = %bb.am, %bb.n, %bb.e, %.sink.split.i.us.i, %bb.s, %.loopexit207.i.peel, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.i"
  %.sroa.06.0111.i = phi i64 [ 0, %.loopexit207.i.peel ], [ %.sroa.06.0.us.i, %.sink.split.i.us.i ], [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.i" ], [ %.sroa.06.0.us.i, %bb.s ], [ %.sroa.06.0.us.i, %bb.n ], [ %.sroa.06.0.us.i, %bb.e ], [ %.sroa.1352.0.copyload.i, %bb.am ]
  %i.ja = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.06.0111.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h3be60f348eb6ee04E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly %i.ja, ptr noundef nonnull readonly %i.jb)
          to label %bb.aw unwind label %bb.c, !noalias !93

6:                                                ; preds = %.loopexit.i.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h3be60f348eb6ee04E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull @9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @9, i64 7))
          to label %.preheader.i.us.i unwind label %.loopexit.split.i.loopexit, !noalias !93, !llvm.loop !87

bb.av:                                            ; preds = %.loopexit.i
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !93
  unreachable

.thread39:                                        ; preds = %"_ZN4core3ptr98drop_in_place$LT$alloc..vec..Vec$LT$fluent_syntax..ast..Entry$LT$alloc..string..String$GT$$GT$$GT$17hef484884c68a9bd5E.exit.i", %bb.b, %bb.bb, %bb.ba, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ee3a52d4d76c90eE.exit", %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread30

bb.aw:                                            ; preds = %.critedge23.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !92
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h87d441711f2bc84aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h73c5e0073abf89b7E.exit.i" unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jd = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf7b8ca78c815788cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.thread unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h73c5e0073abf89b7E.exit.i": ; preds = %bb.aw
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf7b8ca78c815788cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ee3a52d4d76c90eE.exit" unwind label %bb.az

bb.az:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h73c5e0073abf89b7E.exit.i"
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread:                                          ; preds = %bb.az, %bb.ax
  %eh.lpad-body20 = phi { ptr, i32 } [ %i.jf, %bb.az ], [ %i.jd, %bb.ax ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  br label %.thread30

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ee3a52d4d76c90eE.exit": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h73c5e0073abf89b7E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.ba unwind label %.thread39

bb.ba:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ee3a52d4d76c90eE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @"_ZN13fluent_syntax6parser4core15Parser$LT$S$GT$3new17hebfd8b0c87022951E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.bb unwind label %.thread39

bb.bb:                                            ; preds = %bb.ba
  invoke void @"_ZN13fluent_syntax6parser4core15Parser$LT$S$GT$5parse17h3e3ac95775c8a79fE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.f)
          to label %bb.bc unwind label %.thread39

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.jg = load i64, ptr %i.j, align 8, !range !4, !alias.scope !108, !noalias !109, !noundef !5
  %.not.i = icmp eq i64 %i.jg, -9223372036854775808
  br i1 %.not.i, label %bb.bh, label %bb.bd, !prof !6

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.j, i64 48, i1 false), !noalias !109
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #15
          to label %bb.bf unwind label %bb.be, !noalias !111

bb.be:                                            ; preds = %bb.bd
  %i.jh = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr154drop_in_place$LT$$LP$fluent_syntax..ast..Resource$LT$alloc..string..String$GT$$C$alloc..vec..Vec$LT$fluent_syntax..parser..errors..ParserError$GT$$RP$$GT$17h5c4c257152ee4926E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d) #16
          to label %.thread30 unwind label %bb.bg, !noalias !111

bb.bf:                                            ; preds = %bb.bd
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.ji = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !111
  unreachable

bb.bh:                                            ; preds = %bb.bc
  %i.jj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.jj, i64 24, i1 false), !alias.scope !111, !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7e81f75a782c736dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr98drop_in_place$LT$alloc..vec..Vec$LT$fluent_syntax..ast..Entry$LT$alloc..string..String$GT$$GT$$GT$17hef484884c68a9bd5E.exit.i" unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jk = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0fa67b26ab21cbfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread30 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

"_ZN4core3ptr98drop_in_place$LT$alloc..vec..Vec$LT$fluent_syntax..ast..Entry$LT$alloc..string..String$GT$$GT$$GT$17hef484884c68a9bd5E.exit.i": ; preds = %bb.bh
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0fa67b26ab21cbfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr78drop_in_place$LT$fluent_syntax..ast..Resource$LT$alloc..string..String$GT$$GT$17ha0354311ec82e3d3E.exit" unwind label %.thread39

"_ZN4core3ptr78drop_in_place$LT$fluent_syntax..ast..Resource$LT$alloc..string..String$GT$$GT$17ha0354311ec82e3d3E.exit": ; preds = %"_ZN4core3ptr98drop_in_place$LT$alloc..vec..Vec$LT$fluent_syntax..ast..Entry$LT$alloc..string..String$GT$$GT$$GT$17hef484884c68a9bd5E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @_ZN7anki_io21write_file_if_changed17hd6462f5ee5269fa3E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.jm = load i64, ptr %i.h, align 8, !range !4, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.jm, -9223372036854775808
  %i.jn = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.jo = load i8, ptr %i.jn, align 8             ; 2 uses
  br i1 %.not, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %"_ZN4core3ptr78drop_in_place$LT$fluent_syntax..ast..Resource$LT$alloc..string..String$GT$$GT$17ha0354311ec82e3d3E.exit"
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.610.0..sroa_idx, i64 47, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 %i.jm, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 %i.jo, ptr %.sroa.2.0..sroa_idx, align 8
  %i.jp = call noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h00d52fdb8467d652E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.e)
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jp, ptr %i.jq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bm

bb.bl:                                            ; preds = %"_ZN4core3ptr78drop_in_place$LT$fluent_syntax..ast..Resource$LT$alloc..string..String$GT$$GT$17ha0354311ec82e3d3E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.jo, ptr %i.jr, align 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.sink = phi i8 [ 0, %bb.bl ], [ 1, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i8 %.sink, ptr %0, align 8
  ret void

bb.bn:                                            ; preds = %.thread30
  resume { ptr, i32 } %.pn29

.thread30:                                        ; preds = %.loopexit.i, %bb.bi, %bb.be, %.thread39, %.thread
  %.pn29 = phi { ptr, i32 } [ %eh.lpad-body20, %.thread ], [ %lpad.thr_comm, %.thread39 ], [ %i.jh, %bb.be ], [ %i.jk, %bb.bi ], [ %.pn.i, %.loopexit.i ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ee3a52d4d76c90eE"(ptr noalias noundef align 8 dereferenceable(24) %i.m) #16
          to label %bb.bn unwind label %bb.bo

bb.bo:                                            ; preds = %.thread30
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_ZN3ftl6string16string_operation17h1c08c4baac70c805E(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 2 uses
  %i.b = alloca [96 x i8], align 8                ; 2 uses
  %i.c = alloca [96 x i8], align 8                ; 2 uses
  %i.d = load i64, ptr %0, align 8, !range !11, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.d, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.e, i64 96, i1 false)
  %i.f = call noundef ptr @_ZN3ftl6string4copy12copy_or_move17hd8430f4428fb344aE(i1 noundef zeroext false, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.c)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.e, i64 96, i1 false)
  %i.g = call noundef ptr @_ZN3ftl6string4copy12copy_or_move17hd8430f4428fb344aE(i1 noundef zeroext true, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false)
  %i.h = call noundef ptr @_ZN3ftl6string9transform9transform17he852eb13fafc5be3E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.a)
  br label %bb.e
end_hunk_1
