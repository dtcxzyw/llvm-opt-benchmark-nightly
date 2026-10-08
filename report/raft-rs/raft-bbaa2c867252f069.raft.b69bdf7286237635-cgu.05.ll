Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft-bbaa2c867252f069.raft.b69bdf7286237635-cgu.05?download=true
inline.NumInlined: 84
inline.NumDeleted: 49
begin_hunk_0_@_RNvMNtNtCsfG1pxJcRFT5_4raft7tracker8progressNtB2_8Progress13maybe_decr_to:bb.a
; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsfG1pxJcRFT5_4raft7tracker8progressNtB2_8Progress3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtNtCsfG1pxJcRFT5_4raft7tracker9inflightsNtB2_9Inflights3new(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, i64 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(35) %i.c, i8 0, i64 35, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsfG1pxJcRFT5_4raft7tracker8progressNtB2_8Progress5reset(ptr noalias nofree noundef align 8 dereferenceable(120) initializes((40, 56), (64, 96), (112, 115)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 114
  store i8 0, ptr %i.c, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 0, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !alias.scope !103
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNvMNtNtCsfG1pxJcRFT5_4raft7tracker9inflightsNtB2_9Inflights5reset.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.i, %bb.b ]
  store i64 0, ptr %i.h, align 8, !alias.scope !103
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !103
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !103
  resume { ptr, i32 } %eh.lpad-body.i

_RNvMNtNtCsfG1pxJcRFT5_4raft7tracker9inflightsNtB2_9Inflights5reset.exit: ; preds = %bb.c
  store i64 0, ptr %i.h, align 8, !alias.scope !103
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx2.i, align 8, !alias.scope !103
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.6.0..sroa_idx4.i, align 8, !alias.scope !103
  %i.l = load i64, ptr %0, align 8, !range !8, !alias.scope !103, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !103
  store i64 0, ptr %0, align 8, !alias.scope !103
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !103, !noundef !4
  %i.q = trunc nuw i64 %i.l to i1
  %spec.select.i = select i1 %i.q, i64 %i.n, i64 %i.p
  store i64 %spec.select.i, ptr %i.o, align 8, !alias.scope !103
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsfG1pxJcRFT5_4raft6quorum8majorityNtB4_13Configuration13with_capacity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCsjqcU1oJFKXj_9hashbrown3mapINtB4_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE24with_capacity_and_hasherCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsfG1pxJcRFT5_4raft6quorum8majorityNtB4_13Configuration3ids(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE4iterCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsfG1pxJcRFT5_4raft6quorum8majorityNtB4_13Configuration5slice(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !107
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE4iterCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !108
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IteryEEE9from_iterCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !107
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 4 uses
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.f, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.g, 21
  br i1 %i.i, label %bb.d, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortyNvYyNtNtB8_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef %i.g, ptr noalias nofree noundef nonnull %i.a)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef %i.g, i64 noundef 1, ptr noalias nofree noundef nonnull %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #19
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsfG1pxJcRFT5_4raft6quorum8majorityNtB4_13Configuration9raw_slice(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE4iterCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IteryEEE9from_iterCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE9next_backCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !7, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !7, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 8
  %i.g = tail call fastcc { ptr, i64 } @_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE9next_backCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #22 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  %.not = icmp eq ptr %i.h, null
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.l, label %bb.m

bb.d:                                             ; preds = %bb.l, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6 = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !112, !noalias !113, !noundef !4 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.promoted.i = load i64, ptr %i.o, align 8, !alias.scope !112, !noalias !113 ; 2 uses
  %i.p = icmp ult i64 %.promoted.i, %i.n
  br i1 %i.p, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i8, ptr %i.s, align 8, !alias.scope !112, !noalias !113 ; 2 uses
  %i.u = zext nneg i8 %i.t to i64                 ; 4 uses
  %1 = add i8 %i.t, -1
  %i.v = icmp ult i8 %1, 4
  %2 = getelementptr i8, ptr %i.r, i64 %i.u
  %i.w = getelementptr i8, ptr %2, i64 -1
  %3 = add nsw i64 %i.u, -1                       ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i
  %i.x = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.af, %bb.i ] ; 2 uses
  %i.y = sub nuw i64 %i.x, %i.n                   ; 2 uses
  %.not.i = icmp ugt i64 %i.x, %.val6
  br i1 %.not.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.assume(i1 %i.v)
  %i.z = load i8, ptr %i.w, align 1, !alias.scope !112, !noalias !113, !noundef !4
  %i.aa = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr15memrchr_aligned(i8 noundef %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.y), !noalias !114 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = extractvalue { i64, i64 } %i.aa, 1      ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.y
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = add i64 %i.ad, %i.n                     ; 5 uses
  %.not15.i = icmp ult i64 %i.af, %3
  br i1 %.not15.i, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !112, !noalias !113
  br label %.loopexit

bb.i:                                             ; preds = %bb.k, %bb.j, %bb.g
  store i64 %i.af, ptr %i.o, align 8, !alias.scope !112, !noalias !113
  %i.ag = icmp ult i64 %i.af, %i.n
  br i1 %i.ag, label %.loopexit, label %bb.e

bb.j:                                             ; preds = %bb.g
  %i.ah = sub nuw i64 %i.af, %3                   ; 5 uses
  %i.ai = add i64 %i.ah, %i.u                     ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %.not16.i = icmp ugt i64 %i.ai, %.val6
  %or.cond.i = or i1 %i.aj, %.not16.i
  br i1 %or.cond.i, label %bb.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ah
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.r, i64 %i.u), !noalias !113
  %i.al = icmp eq i32 %bcmp.i, 0
  br i1 %i.al, label %bb.n, label %bb.i

bb.l:                                             ; preds = %bb.c
  %i.am = load i8, ptr %i.a, align 1, !range !7, !noundef !4
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.m, label %bb.d

bb.m:                                             ; preds = %bb.l, %bb.c, %bb.a, %bb.o
  %.sroa.8.0 = phi i64 [ %i.i, %bb.c ], [ %.sroa.8.1, %bb.o ], [ undef, %bb.a ], [ undef, %bb.l ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.c ], [ %.sroa.0.1, %bb.o ], [ null, %bb.a ], [ null, %bb.l ]
  %i.ao = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ap = insertvalue { ptr, i64 } %i.ao, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %i.ap

bb.n:                                             ; preds = %bb.k
  store i64 %i.ah, ptr %i.o, align 8, !alias.scope !112, !noalias !113
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  %i.as = sub nuw i64 %i.ar, %i.ai
  store i64 %i.ah, ptr %i.aq, align 8
  br label %bb.o

.loopexit:                                        ; preds = %bb.i, %bb.e, %bb.h, %bb.d
  store i8 1, ptr %i.a, align 1
  %i.at = load i64, ptr %0, align 8, !noundef !4  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noundef !4
  %i.aw = sub nuw i64 %i.av, %i.at
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.loopexit
  %.sroa.8.1 = phi i64 [ %i.as, %bb.n ], [ %i.aw, %.loopexit ]
  %.pn = phi i64 [ %i.ai, %bb.n ], [ %i.at, %.loopexit ]
  %.sroa.0.1 = getelementptr inbounds nuw i8, ptr %.val, i64 %.pn
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCsfG1pxJcRFT5_4raft6quorum8majorityNtB2_13ConfigurationNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE4iterCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IteryENCNvXNtNtCsfG1pxJcRFT5_4raft6quorum8majorityNtB3D_13ConfigurationNtNtB20_3fmt7Display3fmt0EE9from_iterB3H_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvNtCsexYYUdYSQU6_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.g, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 1)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.f, %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.j, %bb.b ], [ %i.p, %bb.f ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #19
          to label %common.resume unwind label %bb.j

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft.exit.i, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.k = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !align !12, !noundef !4
  %i.n = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @9, ptr noundef nonnull %i.b)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #19
          to label %.body unwind label %bb.j

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfG1pxJcRFT5_4raft.exit unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfG1pxJcRFT5_4raft.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft.exit.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsfG1pxJcRFT5_4raft.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfG1pxJcRFT5_4raft.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.h ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsfG1pxJcRFT5_4raft.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfG1pxJcRFT5_4raft.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %i.n

bb.j:                                             ; preds = %bb.d, %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsfG1pxJcRFT5_4raft6quorum8majority13ConfigurationNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !118
  store ptr %i.b, ptr %i.a, align 8, !noalias !118
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !118
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_7Display3fmtCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !122, !noalias !123, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !122, !noalias !123, !noundef !4
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !122
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !126, !noundef !4 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !126, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
end_hunk_0
