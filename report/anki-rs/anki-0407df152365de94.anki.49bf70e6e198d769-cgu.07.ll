Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.07?download=true
inline.NumInlined: 5610
inline.NumDeleted: 2048
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 37
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@_ZN10serde_json2de10from_slice17h74e5aa9de53c86ceE:bb.a

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.l = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.o, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !678, !noundef !5
  switch i8 %i.n, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i.i" [
    i8 32, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.o = add nuw i64 %i.l, 1                      ; 3 uses
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !679, !noalias !671
  %exitcond.not.i.i.i = icmp eq i64 %i.o, %i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %bb.e

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i.i": ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !680
  store i64 22, ptr %i.a, align 8, !noalias !680
  %i.p = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g, !noalias !671

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i.i"
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$anki..ankihub..login..LoginResponse$GT$17h14a158cdf287a000E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #27
          to label %.body.i unwind label %bb.p, !noalias !671

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !680
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8, !alias.scope !670
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !670
  %i.s = load i64, ptr %i.b, align 8, !range !19, !alias.scope !681, !noalias !671, !noundef !5
  %i.t = icmp eq i64 %i.s, -9223372036854775808
  br i1 %i.t, label %"_ZN4core3ptr56drop_in_place$LT$anki..ankihub..login..LoginResponse$GT$17h14a158cdf287a000E.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" unwind label %bb.j, !noalias !671

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.k, !noalias !671

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !671
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i": ; preds = %bb.i
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr56drop_in_place$LT$anki..ankihub..login..LoginResponse$GT$17h14a158cdf287a000E.exit.i" unwind label %bb.b, !noalias !671

.loopexit.i:                                      ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !671
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_ZN10serde_json2de10from_trait17hdf410d0992f0999eE.exit unwind label %bb.l, !noalias !671

bb.l:                                             ; preds = %.loopexit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume.i unwind label %bb.m, !noalias !671

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !671
  unreachable

common.resume.i:                                  ; preds = %bb.n, %bb.l, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.y, %bb.n ], [ %i.w, %bb.l ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN4core3ptr56drop_in_place$LT$anki..ankihub..login..LoginResponse$GT$17h14a158cdf287a000E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %bb.h, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !671
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_ZN10serde_json2de10from_trait17hdf410d0992f0999eE.exit unwind label %bb.n, !noalias !671

bb.n:                                             ; preds = %"_ZN4core3ptr56drop_in_place$LT$anki..ankihub..login..LoginResponse$GT$17h14a158cdf287a000E.exit.i"
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume.i unwind label %bb.o, !noalias !671

bb.o:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !671
  unreachable

bb.p:                                             ; preds = %bb.g, %.body.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !671
  unreachable

_ZN10serde_json2de10from_trait17hdf410d0992f0999eE.exit: ; preds = %.loopexit.i, %"_ZN4core3ptr56drop_in_place$LT$anki..ankihub..login..LoginResponse$GT$17h14a158cdf287a000E.exit.i"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !671
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_slice17hc1b5fe1c9813c30eE(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @_ZN10serde_json2de10from_trait17hfb2ae0dc26c89644E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h05724a25d1b03ac6E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 -128, ptr %i.d, align 8
  invoke void @"_ZN78_$LT$anki..config..SchedulerVersion$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h45a02522bdea45c6E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 8, !range !18, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !692)
  call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !694, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.g, align 8, !alias.scope !695 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !694, !nonnull !5, !align !6, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.l = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.o, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !697, !noundef !5
  switch i8 %i.n, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.o = add nuw i64 %i.l, 1                      ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !alias.scope !698
  %exitcond.not.i.i = icmp eq i64 %i.o, %i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.d

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !692
  store i64 22, ptr %i.a, align 8, !noalias !692
  %i.p = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i", %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #27
          to label %common.resume unwind label %bb.m

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !692
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8
  store i8 1, ptr %0, align 8
  br label %bb.j

.loopexit:                                        ; preds = %bb.e, %bb.c
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.s, %bb.h ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6": ; preds = %.loopexit, %bb.j
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %bb.b, %bb.g
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.m:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h06085b01a83afdc6E(ptr dead_on_unwind noalias noundef writable sret([152 x i8]) align 8 captures(address) dereferenceable(152) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [152 x i8], align 8               ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN4anki13import_export4text1_96_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignData$GT$11deserialize17h97538287ba7f8ad0E"(ptr noalias noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.s, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr82drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..StrRead$GT$$GT$17h1f432aa31552dabfE"(ptr noalias noundef align 8 dereferenceable(80) %i.c) #27
          to label %common.resume unwind label %bb.o

bb.c:                                             ; preds = %bb.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !19, !noundef !5
  %i.h = icmp eq i64 %i.g, -9223372036854775808
  br i1 %i.h, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(152) %0, i64 152, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !712)
  call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !714, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !715 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !714, !nonnull !5, !align !6, !noundef !5
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !716)
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !718, !noundef !5
  switch i8 %i.p, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i" [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.q = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !719
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.f

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i": ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !712
  store i64 22, ptr %i.a, align 8, !noalias !712
  %i.r = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i"
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$anki..import_export..text..ForeignData$GT$17hfe77522f59f5db71E"(ptr noalias noundef align 8 dereferenceable(152) %i.b) #27
          to label %bb.b unwind label %bb.o

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !712
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$anki..import_export..text..ForeignData$GT$17hfe77522f59f5db71E"(ptr noalias noundef align 8 dereferenceable(152) %i.b)
          to label %bb.l unwind label %bb.c

.loopexit:                                        ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %"_ZN4core3ptr82drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..StrRead$GT$$GT$17h1f432aa31552dabfE.exit6" unwind label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.u, %bb.j ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr82drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..StrRead$GT$$GT$17h1f432aa31552dabfE.exit6": ; preds = %.loopexit, %bb.l
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.l:                                             ; preds = %bb.d, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %"_ZN4core3ptr82drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..StrRead$GT$$GT$17h1f432aa31552dabfE.exit6" unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h076ac7c265c17476E(ptr dead_on_unwind noalias noundef writable sret([232 x i8]) align 8 captures(address) dereferenceable(232) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [232 x i8], align 8               ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN4anki8notetype8schema111_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..notetype..schema11..CardTemplateSchema11$GT$11deserialize17h143bc2a774bcd22fE"(ptr noalias noundef nonnull sret([232 x i8]) align 8 captures(address) dereferenceable(232) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.s, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.c) #27
          to label %common.resume unwind label %bb.o

bb.c:                                             ; preds = %bb.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !10, !noundef !5
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.b, ptr noundef nonnull align 8 dereferenceable(232) %0, i64 232, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !732, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !733 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !732, !nonnull !5, !align !6, !noundef !5
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !735, !noundef !5
  switch i8 %i.p, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.q = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !736
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.f

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !730
  store i64 22, ptr %i.a, align 8, !noalias !730
  %i.r = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$anki..notetype..schema11..CardTemplateSchema11$GT$17h7d609264a98e22f0E"(ptr noalias noundef align 8 dereferenceable(232) %i.b) #27
          to label %bb.b unwind label %bb.o

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !730
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i64 2, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$anki..notetype..schema11..CardTemplateSchema11$GT$17h7d609264a98e22f0E"(ptr noalias noundef align 8 dereferenceable(232) %i.b)
          to label %bb.l unwind label %bb.c

.loopexit:                                        ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.u, %bb.j ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6": ; preds = %.loopexit, %bb.l
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.l:                                             ; preds = %bb.d, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h0a76c64490ad4fb3E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 -128, ptr %i.d, align 8
  invoke void @"_ZN69_$LT$anki..config..Weekday$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h4630937495429120E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 8, !range !18, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  call void @llvm.experimental.noalias.scope.decl(metadata !748)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !749, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.g, align 8, !alias.scope !750 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !749, !nonnull !5, !align !6, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.l = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.o, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !751)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !752, !noundef !5
  switch i8 %i.n, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.o = add nuw i64 %i.l, 1                      ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !alias.scope !753
  %exitcond.not.i.i = icmp eq i64 %i.o, %i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.d

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !747
  store i64 22, ptr %i.a, align 8, !noalias !747
  %i.p = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i", %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #27
          to label %common.resume unwind label %bb.m

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !747
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8
  store i8 1, ptr %0, align 8
  br label %bb.j

.loopexit:                                        ; preds = %bb.e, %bb.c
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.s, %bb.h ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6": ; preds = %.loopexit, %bb.j
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %bb.b, %bb.g
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.m:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h0abc7ae23dbbbe60E(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.8.i.i = alloca [32 x i8], align 8        ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [64 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 4 uses
  store i8 -128, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !798, !noundef !5 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !799 ; 2 uses
  %i.r = icmp ult i64 %.promoted.i.i.i, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.s = load ptr, ptr %i.m, align 8, !alias.scope !798, !nonnull !5, !align !6, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.t = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.w, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !801, !noundef !5
  switch i8 %i.v, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.e
  ], !prof !20

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.w = add nuw i64 %i.t, 1                      ; 3 uses
  store i64 %i.w, ptr %i.o, align 8, !alias.scope !802
  %exitcond.not.i.i.i = icmp eq i64 %i.w, %i.q
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !803
  store i64 5, ptr %i.j, align 8, !noalias !803
  %i.x = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !803
  br label %"_ZN4core3ptr86drop_in_place$LT$std..collections..hash..set..HashSet$LT$alloc..string..String$GT$$GT$17h89b2b79da3cdd533E.exit16.sink.split"

bb.d:                                             ; preds = %bb.b
  %i.y = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17he3395e43ce67b25fE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428)
          to label %.noexc5 unwind label %bb.z

bb.e:                                             ; preds = %bb.b
  store i8 127, ptr %i.n, align 8, !alias.scope !804
  %i.z = add nuw i64 %i.t, 1
  store i64 %i.z, ptr %i.o, align 8, !alias.scope !805
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !803
  store ptr %i.l, ptr %i.g, align 8, !noalias !806
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 1, ptr %i.aa, align 8, !noalias !806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !806
  %i.ab = invoke noundef i64 @_ZN10serde_core7private9size_hint8cautious17h8ed8c7a64d94a677E(i64 noundef 0, i64 undef)
          to label %.noexc7 unwind label %bb.z

.noexc7:                                          ; preds = %bb.e
  %i.ac = invoke { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hdfa479ef2fea4c88E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @385)
          to label %.noexc8 unwind label %bb.z    ; 2 uses

.noexc8:                                          ; preds = %.noexc7
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %i.ae = extractvalue { i64, i64 } %i.ac, 1
  invoke void @"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h24a081816181a7acE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, i64 noundef %i.ab, i64 noundef %i.ad, i64 noundef %i.ae)
          to label %.noexc9 unwind label %bb.z

.noexc9:                                          ; preds = %.noexc8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %.noexc9
  call void @llvm.experimental.noalias.scope.decl(metadata !807)
  call void @llvm.experimental.noalias.scope.decl(metadata !808)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !809
  invoke fastcc void @"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed16has_next_element17h4ddb6cca0c8306eaE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.noexc.i.i.i unwind label %bb.k, !noalias !810

.noexc.i.i.i:                                     ; preds = %bb.f
  %i.ag = load i8, ptr %i.d, align 8, !range !18, !noalias !809, !noundef !5
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !809, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !809
  br label %bb.l

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.ak = load i8, ptr %i.af, align 1, !range !18, !noalias !809, !noundef !5
  %i.al = trunc nuw i8 %i.ak to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !809
  br i1 %i.al, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !809
  %i.am = load ptr, ptr %i.g, align 8, !alias.scope !811, !noalias !806, !nonnull !5, !align !12, !noundef !5
  invoke void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17h567d5fc275e98f72E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.am)
          to label %.noexc5.i.i.i unwind label %bb.k, !noalias !810

.noexc5.i.i.i:                                    ; preds = %bb.i
  %i.an = load i64, ptr %i.c, align 8, !range !19, !noalias !809, !noundef !5 ; 2 uses
  %i.ao = icmp eq i64 %i.an, -9223372036854775808
  %i.ap = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !812 ; 2 uses
  br i1 %i.ao, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.noexc5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !809
  br label %bb.l

bb.k:                                             ; preds = %bb.m, %bb.i, %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb1c1734e663838fbE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %.body unwind label %bb.o, !noalias !810
end_hunk_0
begin_hunk_1_@_ZN10serde_json2de10from_trait17h1dcd64424a369b02E:bb.a
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN4anki4sync5media8protocol1_106_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..sync..media..protocol..JsonResult$LT$T$GT$$GT$11deserialize17h2fc250639af36b4dE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.s, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.c) #27
          to label %common.resume unwind label %bb.o

bb.c:                                             ; preds = %bb.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !25, !noundef !5
  %i.h = icmp eq i64 %i.g, -9223372036854775807
  br i1 %i.h, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !908)
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !910, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !911 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !910, !nonnull !5, !align !6, !noundef !5
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !912)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !913, !noundef !5
  switch i8 %i.p, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.q = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !914
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.f

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !908
  store i64 22, ptr %i.a, align 8, !noalias !908
  %i.r = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr130drop_in_place$LT$anki..sync..media..protocol..JsonResult$LT$alloc..vec..Vec$LT$anki..sync..media..changes..MediaChange$GT$$GT$$GT$17ha76d37df2b494ac9E"(ptr noalias noundef align 8 dereferenceable(48) %i.b) #27
          to label %bb.b unwind label %bb.o

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !908
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr130drop_in_place$LT$anki..sync..media..protocol..JsonResult$LT$alloc..vec..Vec$LT$anki..sync..media..changes..MediaChange$GT$$GT$$GT$17ha76d37df2b494ac9E"(ptr noalias noundef align 8 dereferenceable(48) %i.b)
          to label %bb.l unwind label %bb.c

.loopexit:                                        ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.u, %bb.j ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6": ; preds = %.loopexit, %bb.l
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.l:                                             ; preds = %bb.d, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h2a50f8a062e1da70E(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 -128, ptr %i.d, align 8
  invoke void @"_ZN4anki4sync10collection6sanity1_108_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..sync..collection..sanity..SanityCheckRequest$GT$11deserialize17h21b8981395798a9dE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !range !16, !noundef !5
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  call void @llvm.experimental.noalias.scope.decl(metadata !926)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !927, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.g, align 8, !alias.scope !928 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !927, !nonnull !5, !align !6, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.l = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.o, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !929)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !930, !noundef !5
  switch i8 %i.n, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.o = add nuw i64 %i.l, 1                      ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !alias.scope !931
  %exitcond.not.i.i = icmp eq i64 %i.o, %i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.d

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !925
  store i64 22, ptr %i.a, align 8, !noalias !925
  %i.p = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i", %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #27
          to label %common.resume unwind label %bb.m

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !925
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8
  store i32 1, ptr %0, align 8
  br label %bb.j

.loopexit:                                        ; preds = %bb.e, %bb.c
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.s, %bb.h ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6": ; preds = %.loopexit, %bb.j
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %bb.b, %bb.g
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.m:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h2a56f04b4d1fa24eE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN4anki4sync5login1_92_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..sync..login..HostKeyResponse$GT$11deserialize17h0e1c26dd641585ddE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.i, %bb.b, %bb.g
  %.pn = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.f, %bb.b ], [ %i.u, %bb.i ]
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.c) #27
          to label %common.resume unwind label %bb.o

bb.b:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i", %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !19, !noundef !5
  %i.h = icmp eq i64 %i.g, -9223372036854775808
  br i1 %i.h, label %"_ZN4core3ptr55drop_in_place$LT$anki..sync..login..HostKeyResponse$GT$17ha8cb0225b56542dcE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  call void @llvm.experimental.noalias.scope.decl(metadata !943)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !944, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !945 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !944, !nonnull !5, !align !6, !noundef !5
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !946)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !947, !noundef !5
  switch i8 %i.p, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.q = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !948
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.e

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !942
  store i64 22, ptr %i.a, align 8, !noalias !942
  %i.r = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$anki..sync..login..HostKeyResponse$GT$17ha8cb0225b56542dcE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #27
          to label %.body unwind label %bb.o

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !942
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i": ; preds = %bb.h
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr55drop_in_place$LT$anki..sync..login..HostKeyResponse$GT$17ha8cb0225b56542dcE.exit" unwind label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit7" unwind label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %.body, %bb.m, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.m ], [ %i.w, %bb.k ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit7": ; preds = %.loopexit, %"_ZN4core3ptr55drop_in_place$LT$anki..sync..login..HostKeyResponse$GT$17ha8cb0225b56542dcE.exit"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

"_ZN4core3ptr55drop_in_place$LT$anki..sync..login..HostKeyResponse$GT$17ha8cb0225b56542dcE.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i", %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit7" unwind label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$anki..sync..login..HostKeyResponse$GT$17ha8cb0225b56542dcE.exit"
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.o:                                             ; preds = %bb.g, %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h35d9c75d238809afE(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 -128, ptr %i.d, align 8
  invoke void @"_ZN10serde_core2de5impls62_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$bool$GT$11deserialize17h3ad2b2467e4500d4E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 8, !range !18, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !959)
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !961, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.g, align 8, !alias.scope !962 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !961, !nonnull !5, !align !6, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.l = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.o, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !964, !noundef !5
  switch i8 %i.n, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.o = add nuw i64 %i.l, 1                      ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !alias.scope !965
  %exitcond.not.i.i = icmp eq i64 %i.o, %i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.d

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !959
  store i64 22, ptr %i.a, align 8, !noalias !959
  %i.p = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i", %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #27
          to label %common.resume unwind label %bb.m

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !959
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8
  store i8 1, ptr %0, align 8
  br label %bb.j

.loopexit:                                        ; preds = %bb.e, %bb.c
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.s, %bb.h ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6": ; preds = %.loopexit, %bb.j
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %bb.b, %bb.g
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.m:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h3a213dccebedb18cE(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 -128, ptr %i.d, align 8
  invoke void @"_ZN4anki4sync10collection6sanity1_109_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..sync..collection..sanity..SanityCheckResponse$GT$11deserialize17h02fbcaf23c503b47E"(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !range !16, !noundef !5
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !978, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.g, align 8, !alias.scope !979 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !978, !nonnull !5, !align !6, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.l = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.o, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !980)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !981, !noundef !5
  switch i8 %i.n, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.o = add nuw i64 %i.l, 1                      ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !alias.scope !982
  %exitcond.not.i.i = icmp eq i64 %i.o, %i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.d

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !976
  store i64 22, ptr %i.a, align 8, !noalias !976
  %i.p = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i", %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #27
          to label %common.resume unwind label %bb.m

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !976
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8
  store i32 1, ptr %0, align 8
  br label %bb.j

.loopexit:                                        ; preds = %bb.e, %bb.c
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.s, %bb.h ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6": ; preds = %.loopexit, %bb.j
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %bb.b, %bb.g
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.m:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h474ae11933fd6a78E(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN4anki4sync5media8protocol1_106_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..sync..media..protocol..JsonResult$LT$T$GT$$GT$11deserialize17h94aa48b575d54c17E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.s, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.c) #27
          to label %common.resume unwind label %bb.o

bb.c:                                             ; preds = %bb.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !25, !noundef !5
  %i.h = icmp eq i64 %i.g, -9223372036854775807
  br i1 %i.h, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  call void @llvm.experimental.noalias.scope.decl(metadata !994)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !995, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !996 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !995, !nonnull !5, !align !6, !noundef !5
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !998, !noundef !5
  switch i8 %i.p, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.q = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !999
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.f

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !993
  store i64 22, ptr %i.a, align 8, !noalias !993
  %i.r = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$anki..sync..media..protocol..JsonResult$LT$anki..sync..media..begin..SyncBeginResponse$GT$$GT$17h042b6e5bfc461c80E"(ptr noalias noundef align 8 dereferenceable(56) %i.b) #27
          to label %bb.b unwind label %bb.o

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !993
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$anki..sync..media..protocol..JsonResult$LT$anki..sync..media..begin..SyncBeginResponse$GT$$GT$17h042b6e5bfc461c80E"(ptr noalias noundef align 8 dereferenceable(56) %i.b)
          to label %bb.l unwind label %bb.c

.loopexit:                                        ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.u, %bb.j ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6": ; preds = %.loopexit, %bb.l
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.l:                                             ; preds = %bb.d, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h4ad4d6b8eca8742aE(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
end_hunk_1
begin_hunk_2_@_ZN10serde_json2de10from_trait17h6ce7d4bae2d66ebfE:bb.a
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN4anki13import_export4text1_96_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignData$GT$11deserialize17hbd4f0abba6c7197cE"(ptr noalias noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.s, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.c) #27
          to label %common.resume unwind label %bb.o

bb.c:                                             ; preds = %bb.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !19, !noundef !5
  %i.h = icmp eq i64 %i.g, -9223372036854775808
  br i1 %i.h, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(152) %0, i64 152, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1136, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !1137 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !1136, !nonnull !5, !align !6, !noundef !5
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !1139, !noundef !5
  switch i8 %i.p, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.q = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !1140
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.f

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1134
  store i64 22, ptr %i.a, align 8, !noalias !1134
  %i.r = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$anki..import_export..text..ForeignData$GT$17hfe77522f59f5db71E"(ptr noalias noundef align 8 dereferenceable(152) %i.b) #27
          to label %bb.b unwind label %bb.o

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1134
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$anki..import_export..text..ForeignData$GT$17hfe77522f59f5db71E"(ptr noalias noundef align 8 dereferenceable(152) %i.b)
          to label %bb.l unwind label %bb.c

.loopexit:                                        ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.u, %bb.j ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6": ; preds = %.loopexit, %bb.l
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.l:                                             ; preds = %bb.d, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h6df8ebc66322e349E(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 -128, ptr %i.d, align 8
  invoke void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$14deserialize_u817hff049c26f3c37338E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN10serde_core2de5impls60_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u8$GT$11deserialize17h97fa3eb9185bd6bbE.exit" unwind label %bb.e

"_ZN10serde_core2de5impls60_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u8$GT$11deserialize17h97fa3eb9185bd6bbE.exit": ; preds = %bb.a
  %i.e = load i8, ptr %0, align 8, !range !18, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.i, label %bb.b

bb.b:                                             ; preds = %"_ZN10serde_core2de5impls60_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u8$GT$11deserialize17h97fa3eb9185bd6bbE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1153, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.g, align 8, !alias.scope !1154 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !1153, !nonnull !5, !align !6, !noundef !5
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.l = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.o, %bb.d ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !1156, !noundef !5
  switch i8 %i.n, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.o = add nuw i64 %i.l, 1                      ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !alias.scope !1157
  %exitcond.not.i.i = icmp eq i64 %i.o, %i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.c

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1151
  store i64 22, ptr %i.a, align 8, !noalias !1151
  %i.p = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i", %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #27
          to label %common.resume unwind label %bb.l

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1151
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8
  store i8 1, ptr %0, align 8
  br label %bb.i

.loopexit:                                        ; preds = %bb.d, %bb.b
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.s, %bb.g ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6": ; preds = %.loopexit, %bb.i
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %"_ZN10serde_core2de5impls60_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u8$GT$11deserialize17h97fa3eb9185bd6bbE.exit", %bb.f
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.l:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_ZN10serde_json2de10from_trait17h6e8b496743611b80E(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 -128, ptr %i.d, align 8
  %i.e = invoke { i64, ptr } @"_ZN4anki8notetype1_84_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..notetype..NotetypeId$GT$11deserialize17h9d3825f52529c398E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.b unwind label %bb.f       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 2 uses
  %i.h = trunc nuw i64 %i.f to i1
  br i1 %i.h, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1170, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !1171 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.m = load ptr, ptr %i.c, align 8, !alias.scope !1170, !nonnull !5, !align !6, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !1173, !noundef !5
  switch i8 %i.p, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.q = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !1174
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.d

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1168
  store i64 22, ptr %i.a, align 8, !noalias !1168
  %i.r = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %"_ZN10serde_json2de21Deserializer$LT$R$GT$3end17h71bb482a09942382E.exit" unwind label %bb.f

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i", %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #27
          to label %common.resume unwind label %bb.l

"_ZN10serde_json2de21Deserializer$LT$R$GT$3end17h71bb482a09942382E.exit": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1168
  br label %bb.i

.loopexit:                                        ; preds = %bb.e, %bb.c
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit11" unwind label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.t, %bb.g ], [ %i.s, %bb.f ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit11": ; preds = %.loopexit, %bb.i
  %.sroa.5.0 = phi ptr [ %.sroa.5.1, %bb.i ], [ %i.g, %.loopexit ]
  %.sroa.0.0 = phi i64 [ 1, %bb.i ], [ 0, %.loopexit ]
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.w = insertvalue { i64, ptr } %i.v, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.w

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$3end17h71bb482a09942382E.exit", %bb.b
  %.sroa.5.1 = phi ptr [ %i.g, %bb.b ], [ %i.r, %"_ZN10serde_json2de21Deserializer$LT$R$GT$3end17h71bb482a09942382E.exit" ]
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit11" unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.l:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h6fe5b371106df397E(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN4anki7backend7dbproxy1_91_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..backend..dbproxy..DbRequest$GT$11deserialize17h28e14234993ede00E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.s, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.c) #27
          to label %common.resume unwind label %bb.o

bb.c:                                             ; preds = %bb.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_ZN10serde_json2de10from_trait17h77b153093afe058cE:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !1209, !noundef !5
  switch i8 %i.p, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.q = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !1210
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.e

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1204
  store i64 22, ptr %i.a, align 8, !noalias !1204
  %i.r = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$anki..sync..media..protocol..JsonResult$LT$anki..sync..media..upload..MediaUploadResponse$GT$$GT$17h6c9941ed26ff9c4dE"(ptr noalias noundef align 8 dereferenceable(40) %i.b) #27
          to label %.body unwind label %bb.s

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1204
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  %i.u = load i64, ptr %i.b, align 8, !range !19, !alias.scope !1211, !noundef !5
  %.not.i = icmp eq i64 %i.u, -9223372036854775808
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.l:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i": ; preds = %bb.l, %bb.i
  %.sink.i = phi ptr [ %i.b, %bb.i ], [ %i.x, %bb.l ]
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sink.i)
          to label %"_ZN4core3ptr114drop_in_place$LT$anki..sync..media..protocol..JsonResult$LT$anki..sync..media..upload..MediaUploadResponse$GT$$GT$17h6c9941ed26ff9c4dE.exit" unwind label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit7" unwind label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %.body, %bb.q, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %bb.q ], [ %i.aa, %bb.o ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit7": ; preds = %.loopexit, %"_ZN4core3ptr114drop_in_place$LT$anki..sync..media..protocol..JsonResult$LT$anki..sync..media..upload..MediaUploadResponse$GT$$GT$17h6c9941ed26ff9c4dE.exit"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

"_ZN4core3ptr114drop_in_place$LT$anki..sync..media..protocol..JsonResult$LT$anki..sync..media..upload..MediaUploadResponse$GT$$GT$17h6c9941ed26ff9c4dE.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i", %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit7" unwind label %bb.q

bb.q:                                             ; preds = %"_ZN4core3ptr114drop_in_place$LT$anki..sync..media..protocol..JsonResult$LT$anki..sync..media..upload..MediaUploadResponse$GT$$GT$17h6c9941ed26ff9c4dE.exit"
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.s:                                             ; preds = %bb.g, %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h7b28810a526ddef3E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 -128, ptr %i.d, align 8
  invoke void @"_ZN4anki4sync5media7changes1_105_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..sync..media..changes..MediaChangesRequest$GT$11deserialize17hff3697b0a933ee85E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !range !16, !noundef !5
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1224, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.g, align 8, !alias.scope !1225 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !1224, !nonnull !5, !align !6, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.l = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.o, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !1227, !noundef !5
  switch i8 %i.n, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.o = add nuw i64 %i.l, 1                      ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !alias.scope !1228
  %exitcond.not.i.i = icmp eq i64 %i.o, %i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.d

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1222
  store i64 22, ptr %i.a, align 8, !noalias !1222
  %i.p = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i", %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #27
          to label %common.resume unwind label %bb.m

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1222
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8
  store i32 1, ptr %0, align 8
  br label %bb.j

.loopexit:                                        ; preds = %bb.e, %bb.c
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.s, %bb.h ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6": ; preds = %.loopexit, %bb.j
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %bb.b, %bb.g
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.m:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h7bcd5855d685aacbE(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 -128, ptr %i.d, align 8
  invoke fastcc void @"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$11deserialize17h3989bb4a7bb7f5c9E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(64) %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !range !16, !noundef !5
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1241, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.g, align 8, !alias.scope !1242 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !1241, !nonnull !5, !align !6, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.l = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.o, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !1244, !noundef !5
  switch i8 %i.n, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.o = add nuw i64 %i.l, 1                      ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !alias.scope !1245
  %exitcond.not.i.i = icmp eq i64 %i.o, %i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.d

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1239
  store i64 22, ptr %i.a, align 8, !noalias !1239
  %i.p = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i", %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #27
          to label %common.resume unwind label %bb.m

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1239
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8
  store i32 1, ptr %0, align 8
  br label %bb.j

.loopexit:                                        ; preds = %bb.e, %bb.c
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.s, %bb.h ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6": ; preds = %.loopexit, %bb.j
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %bb.b, %bb.g
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.m:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h81556da7ee837cf7E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 -128, ptr %i.d, align 8
  invoke void @"_ZN4anki4sync5media6sanity1_103_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..sync..media..sanity..SanityCheckRequest$GT$11deserialize17h69429671e9598371E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !range !16, !noundef !5
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1258, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.g, align 8, !alias.scope !1259 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !1258, !nonnull !5, !align !6, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.l = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.o, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !1261, !noundef !5
  switch i8 %i.n, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.o = add nuw i64 %i.l, 1                      ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !alias.scope !1262
  %exitcond.not.i.i = icmp eq i64 %i.o, %i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.d

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1256
  store i64 22, ptr %i.a, align 8, !noalias !1256
  %i.p = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i", %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #27
          to label %common.resume unwind label %bb.m

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1256
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8
  store i32 1, ptr %0, align 8
  br label %bb.j

.loopexit:                                        ; preds = %bb.e, %bb.c
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.s, %bb.h ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6": ; preds = %.loopexit, %bb.j
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %bb.b, %bb.g
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.m:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h8416a698b2d7ce34E(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN4anki4sync10collection4meta1_96_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..sync..collection..meta..SyncMeta$GT$11deserialize17h88ce278ce93c059dE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.i, %bb.b, %bb.g
  %.pn = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.f, %bb.b ], [ %i.u, %bb.i ]
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.c) #27
          to label %common.resume unwind label %bb.o

bb.b:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i", %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !19, !noundef !5
  %i.h = icmp eq i64 %i.g, -9223372036854775808
  br i1 %i.h, label %"_ZN4core3ptr59drop_in_place$LT$anki..sync..collection..meta..SyncMeta$GT$17hfb68721525eab405E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1275, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !1276 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !1275, !nonnull !5, !align !6, !noundef !5
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !1278, !noundef !5
  switch i8 %i.p, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.q = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !1279
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.e

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1273
  store i64 22, ptr %i.a, align 8, !noalias !1273
  %i.r = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$anki..sync..collection..meta..SyncMeta$GT$17hfb68721525eab405E"(ptr noalias noundef align 8 dereferenceable(72) %i.b) #27
          to label %.body unwind label %bb.o

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1273
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i": ; preds = %bb.h
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %"_ZN4core3ptr59drop_in_place$LT$anki..sync..collection..meta..SyncMeta$GT$17hfb68721525eab405E.exit" unwind label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit7" unwind label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %.body, %bb.m, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.m ], [ %i.w, %bb.k ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit7": ; preds = %.loopexit, %"_ZN4core3ptr59drop_in_place$LT$anki..sync..collection..meta..SyncMeta$GT$17hfb68721525eab405E.exit"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

"_ZN4core3ptr59drop_in_place$LT$anki..sync..collection..meta..SyncMeta$GT$17hfb68721525eab405E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i", %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit7" unwind label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr59drop_in_place$LT$anki..sync..collection..meta..SyncMeta$GT$17hfb68721525eab405E.exit"
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.o:                                             ; preds = %bb.g, %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}
end_hunk_3
begin_hunk_4_@_ZN10serde_json2de10from_trait17h8ded197eb10d5fabE:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_ZN10serde_json2de10from_trait17h932db8bd5b417910E(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 -128, ptr %i.d, align 8
  %i.e = invoke noundef align 8 ptr @"_ZN4anki4sync10collection8protocol1_102_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..sync..collection..protocol..EmptyInput$GT$11deserialize17h393ebfb3239f5b6fE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.b unwind label %bb.f       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1343, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.f, align 8, !alias.scope !1344 ; 2 uses
  %i.i = icmp ult i64 %.promoted.i.i, %i.h
  br i1 %i.i, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.j = load ptr, ptr %i.c, align 8, !alias.scope !1343, !nonnull !5, !align !6, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.k = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.n, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !1346, !noundef !5
  switch i8 %i.m, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.n = add nuw i64 %i.k, 1                      ; 3 uses
  store i64 %i.n, ptr %i.f, align 8, !alias.scope !1347
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.h
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.d

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1341
  store i64 22, ptr %i.a, align 8, !noalias !1341
  %i.o = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %"_ZN10serde_json2de21Deserializer$LT$R$GT$3end17h71bb482a09942382E.exit" unwind label %bb.f

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i", %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #27
          to label %common.resume unwind label %bb.l

"_ZN10serde_json2de21Deserializer$LT$R$GT$3end17h71bb482a09942382E.exit": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1341
  br label %bb.i

.loopexit:                                        ; preds = %bb.e, %bb.c
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit10" unwind label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.q, %bb.g ], [ %i.p, %bb.f ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit10": ; preds = %.loopexit, %bb.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.i ], [ null, %.loopexit ]
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$3end17h71bb482a09942382E.exit", %bb.b
  %.sroa.0.1 = phi ptr [ %i.e, %bb.b ], [ %i.o, %"_ZN10serde_json2de21Deserializer$LT$R$GT$3end17h71bb482a09942382E.exit" ]
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit10" unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.l:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h938418efdeae0b8fE(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 -128, ptr %i.d, align 8
  invoke void @"_ZN10anki_proto13import_export1_117_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki_proto..import_export..ImportAnkiPackageUpdateCondition$GT$11deserialize17h393175b79669a64dE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !range !16, !noundef !5
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1360, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.g, align 8, !alias.scope !1361 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !1360, !nonnull !5, !align !6, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.l = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.o, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !1363, !noundef !5
  switch i8 %i.n, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.o = add nuw i64 %i.l, 1                      ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !alias.scope !1364
  %exitcond.not.i.i = icmp eq i64 %i.o, %i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.d

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1358
  store i64 22, ptr %i.a, align 8, !noalias !1358
  %i.p = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i", %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #27
          to label %common.resume unwind label %bb.m

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1358
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8
  store i32 1, ptr %0, align 8
  br label %bb.j

.loopexit:                                        ; preds = %bb.e, %bb.c
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.s, %bb.h ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6": ; preds = %.loopexit, %bb.j
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %bb.b, %bb.g
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.m:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h9693d746a612bde2E(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$GT$11deserialize17h59a013dfb4f8582bE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %bb.c unwind label %bb.b

"_ZN4core3ptr122drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$anki..decks..schema11..DeckSchema11$GT$$GT$17h2105e7e5988ab34eE.exit": ; preds = %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.s, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr82drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..StrRead$GT$$GT$17h1f432aa31552dabfE"(ptr noalias noundef align 8 dereferenceable(80) %i.c) #27
          to label %common.resume unwind label %bb.m

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr122drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$anki..decks..schema11..DeckSchema11$GT$$GT$17h2105e7e5988ab34eE.exit"

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !noundef !5
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %"_ZN4core3ptr122drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$anki..decks..schema11..DeckSchema11$GT$$GT$17h2105e7e5988ab34eE.exit7", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1380, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !1381 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !1380, !nonnull !5, !align !6, !noundef !5
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !1384, !noundef !5
  switch i8 %i.p, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i" [
    i8 32, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.q = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !1385
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.e

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i": ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1378
  store i64 22, ptr %i.a, align 8, !noalias !1378
  %i.r = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i"
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf01625d9df76991bE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %"_ZN4core3ptr122drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$anki..decks..schema11..DeckSchema11$GT$$GT$17h2105e7e5988ab34eE.exit" unwind label %bb.m

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1378
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store ptr null, ptr %0, align 8
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf01625d9df76991bE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %"_ZN4core3ptr122drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$anki..decks..schema11..DeckSchema11$GT$$GT$17h2105e7e5988ab34eE.exit7" unwind label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %"_ZN4core3ptr82drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..StrRead$GT$$GT$17h1f432aa31552dabfE.exit9" unwind label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr122drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$anki..decks..schema11..DeckSchema11$GT$$GT$17h2105e7e5988ab34eE.exit", %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.k ], [ %i.u, %bb.i ], [ %.pn, %"_ZN4core3ptr122drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$anki..decks..schema11..DeckSchema11$GT$$GT$17h2105e7e5988ab34eE.exit" ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr82drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..StrRead$GT$$GT$17h1f432aa31552dabfE.exit9": ; preds = %.loopexit, %"_ZN4core3ptr122drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$anki..decks..schema11..DeckSchema11$GT$$GT$17h2105e7e5988ab34eE.exit7"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

"_ZN4core3ptr122drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$anki..decks..schema11..DeckSchema11$GT$$GT$17h2105e7e5988ab34eE.exit7": ; preds = %bb.h, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %"_ZN4core3ptr82drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..StrRead$GT$$GT$17h1f432aa31552dabfE.exit9" unwind label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr122drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$anki..decks..schema11..DeckSchema11$GT$$GT$17h2105e7e5988ab34eE.exit7"
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.m:                                             ; preds = %bb.g, %"_ZN4core3ptr122drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$anki..decks..schema11..DeckSchema11$GT$$GT$17h2105e7e5988ab34eE.exit"
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17h9e1e6240045f1479E(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$GT$11deserialize17h967c69163ece7aceE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %bb.c unwind label %bb.b

"_ZN4core3ptr142drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$anki..deckconfig..schema11..DeckConfSchema11$GT$$GT$17ha5a7333666a9a59fE.exit": ; preds = %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.s, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr82drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..StrRead$GT$$GT$17h1f432aa31552dabfE"(ptr noalias noundef align 8 dereferenceable(80) %i.c) #27
          to label %common.resume unwind label %bb.m

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr142drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$anki..deckconfig..schema11..DeckConfSchema11$GT$$GT$17ha5a7333666a9a59fE.exit"

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !noundef !5
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %"_ZN4core3ptr142drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$anki..deckconfig..schema11..DeckConfSchema11$GT$$GT$17ha5a7333666a9a59fE.exit7", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1401, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !1402 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !1401, !nonnull !5, !align !6, !noundef !5
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !1405, !noundef !5
  switch i8 %i.p, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i" [
    i8 32, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.q = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !1406
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.e

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i": ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1399
  store i64 22, ptr %i.a, align 8, !noalias !1399
  %i.r = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i"
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ae6f111ef9a16a0E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %"_ZN4core3ptr142drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$anki..deckconfig..schema11..DeckConfSchema11$GT$$GT$17ha5a7333666a9a59fE.exit" unwind label %bb.m

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1399
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store ptr null, ptr %0, align 8
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ae6f111ef9a16a0E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %"_ZN4core3ptr142drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$anki..deckconfig..schema11..DeckConfSchema11$GT$$GT$17ha5a7333666a9a59fE.exit7" unwind label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %"_ZN4core3ptr82drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..StrRead$GT$$GT$17h1f432aa31552dabfE.exit9" unwind label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr142drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$anki..deckconfig..schema11..DeckConfSchema11$GT$$GT$17ha5a7333666a9a59fE.exit", %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.k ], [ %i.u, %bb.i ], [ %.pn, %"_ZN4core3ptr142drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$anki..deckconfig..schema11..DeckConfSchema11$GT$$GT$17ha5a7333666a9a59fE.exit" ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr82drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..StrRead$GT$$GT$17h1f432aa31552dabfE.exit9": ; preds = %.loopexit, %"_ZN4core3ptr142drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$anki..deckconfig..schema11..DeckConfSchema11$GT$$GT$17ha5a7333666a9a59fE.exit7"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

"_ZN4core3ptr142drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$anki..deckconfig..schema11..DeckConfSchema11$GT$$GT$17ha5a7333666a9a59fE.exit7": ; preds = %bb.h, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %"_ZN4core3ptr82drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..StrRead$GT$$GT$17h1f432aa31552dabfE.exit9" unwind label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr142drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$anki..deckconfig..schema11..DeckConfSchema11$GT$$GT$17ha5a7333666a9a59fE.exit7"
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.m:                                             ; preds = %bb.g, %"_ZN4core3ptr142drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$anki..deckconfig..schema11..DeckConfSchema11$GT$$GT$17ha5a7333666a9a59fE.exit"
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17ha4beb6a92370793cE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 -128, ptr %i.d, align 8
  invoke void @"_ZN10anki_proto6config11preferences1_103_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki_proto..config..preferences..BackupLimits$GT$11deserialize17h32ab288325726abaE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !range !16, !noundef !5
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1419, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.g, align 8, !alias.scope !1420 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !1419, !nonnull !5, !align !6, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.l = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.o, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !1422, !noundef !5
  switch i8 %i.n, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.o = add nuw i64 %i.l, 1                      ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !alias.scope !1423
  %exitcond.not.i.i = icmp eq i64 %i.o, %i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.d

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1417
  store i64 22, ptr %i.a, align 8, !noalias !1417
  %i.p = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i", %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #27
          to label %common.resume unwind label %bb.m

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1417
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8
  store i32 1, ptr %0, align 8
  br label %bb.j

.loopexit:                                        ; preds = %bb.e, %bb.c
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.s, %bb.h ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6": ; preds = %.loopexit, %bb.j
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %bb.b, %bb.g
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.m:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17ha7f45d8b73223b75E(ptr dead_on_unwind noalias noundef writable sret([280 x i8]) align 8 captures(address) dereferenceable(280) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [280 x i8], align 8               ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN4anki8notetype8schema111_100_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..notetype..schema11..NotetypeSchema11$GT$11deserialize17hd33175f49255f5c1E"(ptr noalias noundef nonnull sret([280 x i8]) align 8 captures(address) dereferenceable(280) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.s, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.c) #27
          to label %common.resume unwind label %bb.o

bb.c:                                             ; preds = %bb.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !10, !noundef !5
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.b, ptr noundef nonnull align 8 dereferenceable(280) %0, i64 280, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1436, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !1437 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !1436, !nonnull !5, !align !6, !noundef !5
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !1439, !noundef !5
  switch i8 %i.p, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.q = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !1440
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.f

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1434
  store i64 22, ptr %i.a, align 8, !noalias !1434
  %i.r = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$anki..notetype..schema11..NotetypeSchema11$GT$17h11203ac085720304E"(ptr noalias noundef align 8 dereferenceable(280) %i.b) #27
          to label %bb.b unwind label %bb.o

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1434
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i64 2, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$anki..notetype..schema11..NotetypeSchema11$GT$17h11203ac085720304E"(ptr noalias noundef align 8 dereferenceable(280) %i.b)
          to label %bb.l unwind label %bb.c

.loopexit:                                        ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.u, %bb.j ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6": ; preds = %.loopexit, %bb.l
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.l:                                             ; preds = %bb.d, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17hb3631aed95381e67E(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56
end_hunk_4
begin_hunk_5_@_ZN10serde_json2de10from_trait17hb92acf05aaba88d0E:bb.a
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN4anki10deckconfig8schema111_102_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..deckconfig..schema11..DeckConfSchema11$GT$11deserialize17hd873dcf52fcf0dfbE"(ptr noalias noundef nonnull sret([544 x i8]) align 8 captures(address) dereferenceable(544) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.s, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.c) #27
          to label %common.resume unwind label %bb.o

bb.c:                                             ; preds = %bb.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !19, !noundef !5
  %i.h = icmp eq i64 %i.g, -9223372036854775808
  br i1 %i.h, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.b, ptr noundef nonnull align 8 dereferenceable(544) %0, i64 544, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1470, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !1471 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !1470, !nonnull !5, !align !6, !noundef !5
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !1473, !noundef !5
  switch i8 %i.p, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.q = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !1474
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.f

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1468
  store i64 22, ptr %i.a, align 8, !noalias !1468
  %i.r = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$anki..deckconfig..schema11..DeckConfSchema11$GT$17hdb34da9d73a05ae1E"(ptr noalias noundef align 8 dereferenceable(544) %i.b) #27
          to label %bb.b unwind label %bb.o

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1468
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$anki..deckconfig..schema11..DeckConfSchema11$GT$17hdb34da9d73a05ae1E"(ptr noalias noundef align 8 dereferenceable(544) %i.b)
          to label %bb.l unwind label %bb.c

.loopexit:                                        ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.u, %bb.j ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6": ; preds = %.loopexit, %bb.l
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.l:                                             ; preds = %bb.d, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17hba07a029714dcc12E(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 -128, ptr %i.d, align 8
  invoke void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_i3217he516ca8e12037ee3E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i32$GT$11deserialize17hb89f00c805fb4c1cE.exit" unwind label %bb.e

"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i32$GT$11deserialize17hb89f00c805fb4c1cE.exit": ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !range !16, !noundef !5
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.i, label %bb.b

bb.b:                                             ; preds = %"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i32$GT$11deserialize17hb89f00c805fb4c1cE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1487, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.g, align 8, !alias.scope !1488 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !1487, !nonnull !5, !align !6, !noundef !5
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.l = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.o, %bb.d ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !1490, !noundef !5
  switch i8 %i.n, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.o = add nuw i64 %i.l, 1                      ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !alias.scope !1491
  %exitcond.not.i.i = icmp eq i64 %i.o, %i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.c

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1485
  store i64 22, ptr %i.a, align 8, !noalias !1485
  %i.p = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i", %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #27
          to label %common.resume unwind label %bb.l

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1485
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8
  store i32 1, ptr %0, align 8
  br label %bb.i

.loopexit:                                        ; preds = %bb.d, %bb.b
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.s, %bb.g ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6": ; preds = %.loopexit, %bb.i
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i32$GT$11deserialize17hb89f00c805fb4c1cE.exit", %bb.f
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit6" unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.l:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_json2de10from_trait17hbba5d593a2d882a9E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 10 uses
  %i.c = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN4anki4sync5media8protocol1_106_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..sync..media..protocol..JsonResult$LT$T$GT$$GT$11deserialize17hb0ab4f477499e050E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.j, %bb.m, %bb.b, %bb.g
  %.pn = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.f, %bb.b ], [ %i.v, %bb.j ], [ %i.y, %bb.m ]
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E"(ptr noalias noundef align 8 dereferenceable(64) %i.c) #27
          to label %common.resume unwind label %bb.s

bb.b:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i", %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !25, !noundef !5
  %i.h = icmp eq i64 %i.g, -9223372036854775807
  br i1 %i.h, label %"_ZN4core3ptr119drop_in_place$LT$anki..sync..media..protocol..JsonResult$LT$anki..sync..media..sanity..MediaSanityCheckResponse$GT$$GT$17h41e371bbf82ff2d5E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1506, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !1507 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !1506, !nonnull !5, !align !6, !noundef !5
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !1509, !noundef !5
  switch i8 %i.p, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.q = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !1510
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.e

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1504
  store i64 22, ptr %i.a, align 8, !noalias !1504
  %i.r = invoke noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr119drop_in_place$LT$anki..sync..media..protocol..JsonResult$LT$anki..sync..media..sanity..MediaSanityCheckResponse$GT$$GT$17h41e371bbf82ff2d5E"(ptr noalias noundef align 8 dereferenceable(32) %i.b) #27
          to label %.body unwind label %bb.s

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1504
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  %i.u = load i64, ptr %i.b, align 8, !range !19, !alias.scope !1511, !noundef !5
  %.not.i = icmp eq i64 %i.u, -9223372036854775808
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.l:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i": ; preds = %bb.l, %bb.i
  %.sink.i = phi ptr [ %i.b, %bb.i ], [ %i.x, %bb.l ]
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sink.i)
          to label %"_ZN4core3ptr119drop_in_place$LT$anki..sync..media..protocol..JsonResult$LT$anki..sync..media..sanity..MediaSanityCheckResponse$GT$$GT$17h41e371bbf82ff2d5E.exit" unwind label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit7" unwind label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %.body, %bb.q, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %bb.q ], [ %i.aa, %bb.o ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..SliceRead$GT$$GT$17hfa32e6156369f352E.exit7": ; preds = %.loopexit, %"_ZN4core3ptr119drop_in_place$LT$anki..sync..media..protocol..JsonResult$LT$anki..sync..media..sanity..MediaSanityCheckResponse$GT$$GT$17h41e371bbf82ff2d5E.exit"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

end_hunk_5
