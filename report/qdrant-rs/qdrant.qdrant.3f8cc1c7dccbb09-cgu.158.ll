Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.158?download=true
inline.NumInlined: 435
inline.NumDeleted: 234
begin_hunk_0_@_RINvMs_NtCs577yCKf7gy3_4http10extensionsNtB5_10Extensions6removeNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthECsl8OoimOLbh_6qdrant:bb.a

bb.d:                                             ; preds = %bb.b
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.g = getelementptr i8, ptr %i.f, i64 56
  %.val = load ptr, ptr %i.g, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.h = call { ptr, ptr } %.val(ptr noundef nonnull %i.e) #19, !noalias !571, !inline_history !567 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 7 uses
  %i.j = extractvalue { ptr, ptr } %i.h, 1        ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !573
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !5, !alias.scope !572, !noalias !571, !nonnull !5
  invoke void %i.l(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.i)
          to label %_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.e, !noalias !573

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyEL_EECsl8OoimOLbh_6qdrant(ptr nonnull %i.i, ptr nonnull readonly align 8 dereferenceable(32) %i.j) #23
          to label %common.resume.i unwind label %bb.f, !noalias !574

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !573
  unreachable

common.resume.i:                                  ; preds = %bb.l, %bb.k, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.w, %bb.l ], [ %i.w, %bb.k ]
  resume { ptr, i32 } %common.resume.op.i

_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.d
  %i.o = load i128, ptr %i.a, align 16, !noalias !573, !noundef !5
  %i.p = icmp eq i128 %i.o, -45738619337140888260511336435684193762 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !573
  %.sroa.0.0.i = select i1 %i.p, ptr %i.i, ptr null ; 2 uses
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthEIBY_DNtNtB4_3any3AnyEL_EEECsl8OoimOLbh_6qdrant.exit.i, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.q = load ptr, ptr %i.j, align 8, !invariant.load !5, !noalias !571 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void %i.q(ptr noundef nonnull %i.i)
          to label %bb.i unwind label %bb.k, !noalias !571

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !9, !invariant.load !5, !noalias !571 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthEIBY_DNtNtB4_3any3AnyEL_EEECsl8OoimOLbh_6qdrant.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !10, !invariant.load !5, !noalias !571
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #21, !noalias !571
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthEIBY_DNtNtB4_3any3AnyEL_EEECsl8OoimOLbh_6qdrant.exit.i

bb.k:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !9, !invariant.load !5, !noalias !571 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %common.resume.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !10, !invariant.load !5, !noalias !571
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #21, !noalias !571
  br label %common.resume.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthEIBY_DNtNtB4_3any3AnyEL_EEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.j, %bb.i, %_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthECsl8OoimOLbh_6qdrant.exit.i
  %.not3.i = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not3.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthEIBY_DNtNtB4_3any3AnyEL_EEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 128, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i, i64 noundef 128, i64 noundef 8) #21, !noalias !571
  br label %_RNCINvMs_NtCs577yCKf7gy3_4http10extensionsNtB7_10Extensions6removeNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthEs_0Csl8OoimOLbh_6qdrant.exit

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthEIBY_DNtNtB4_3any3AnyEL_EEECsl8OoimOLbh_6qdrant.exit.i
  store i64 -2, ptr %0, align 8, !alias.scope !571
  br label %_RNCINvMs_NtCs577yCKf7gy3_4http10extensionsNtB7_10Extensions6removeNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthEs_0Csl8OoimOLbh_6qdrant.exit

_RNCINvMs_NtCs577yCKf7gy3_4http10extensionsNtB7_10Extensions6removeNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthEs_0Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.n, %bb.m, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvMs_NtNtCs3r24GR8eSjc_4raft6quorum8majorityNtB5_13Configuration11vote_resultNCNvMs0_NtB9_7trackerNtB1n_15ProgressTracker10has_quorum0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs8KboJy7ZneP_6fxhash8FxHasherEE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.f = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %.not15 = icmp eq ptr %i.g, null
  br i1 %.not15, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !586, !noundef !5
  %i.j = icmp eq i64 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !nonnull !5   ; 2 uses
  br i1 %i.j, label %_RNCNvMs0_NtCs3r24GR8eSjc_4raft7trackerNtB7_15ProgressTracker10has_quorum0Csl8OoimOLbh_6qdrant.exit.us, label %.lr.ph.split

_RNCNvMs0_NtCs3r24GR8eSjc_4raft7trackerNtB7_15ProgressTracker10has_quorum0Csl8OoimOLbh_6qdrant.exit.us: ; preds = %.lr.ph, %_RNCNvMs0_NtCs3r24GR8eSjc_4raft7trackerNtB7_15ProgressTracker10has_quorum0Csl8OoimOLbh_6qdrant.exit.us
  %.sroa.04.016.us = phi i64 [ %.sroa.04.1.us, %_RNCNvMs0_NtCs3r24GR8eSjc_4raft7trackerNtB7_15ProgressTracker10has_quorum0Csl8OoimOLbh_6qdrant.exit.us ], [ 0, %.lr.ph ]
  %.sroa.04.1.us = add i64 %.sroa.04.016.us, 1    ; 2 uses
  %i.o = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.p = extractvalue { ptr, ptr } %i.o, 0
  %.not.us = icmp eq ptr %i.p, null
  br i1 %.not.us, label %._crit_edge.thread, label %_RNCNvMs0_NtCs3r24GR8eSjc_4raft7trackerNtB7_15ProgressTracker10has_quorum0Csl8OoimOLbh_6qdrant.exit.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_RNCNvMs0_NtCs3r24GR8eSjc_4raft7trackerNtB7_15ProgressTracker10has_quorum0Csl8OoimOLbh_6qdrant.exit
  %i.q = phi ptr [ %i.as, %_RNCNvMs0_NtCs3r24GR8eSjc_4raft7trackerNtB7_15ProgressTracker10has_quorum0Csl8OoimOLbh_6qdrant.exit ], [ %i.g, %.lr.ph ]
  %.sroa.01.017 = phi i64 [ %.sroa.01.1, %_RNCNvMs0_NtCs3r24GR8eSjc_4raft7trackerNtB7_15ProgressTracker10has_quorum0Csl8OoimOLbh_6qdrant.exit ], [ 0, %.lr.ph ]
  %.sroa.04.016 = phi i64 [ %.sroa.04.1, %_RNCNvMs0_NtCs3r24GR8eSjc_4raft7trackerNtB7_15ProgressTracker10has_quorum0Csl8OoimOLbh_6qdrant.exit ], [ 0, %.lr.ph ]
  %i.r = load i64, ptr %i.q, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.r, ptr %i.a, align 8
  %i.s = call noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs8KboJy7ZneP_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.w = shufflevector <16 x i8> %i.v, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.split
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.lr.ph.split ], [ %i.an, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.s, %.lr.ph.split ], [ %i.ao, %bb.e ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.m  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.x, align 1, !noalias !587 ; 2 uses
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.w
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.z, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.am, %bb.d ], [ %i.z, %bb.c ] ; 3 uses
  %i.aa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.01.0.i.i.i.i, %i.ab
  %i.ad = and i64 %i.ac, %i.m
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ah = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag), !noalias !588
  br i1 %i.ah, label %_RNCNvMs0_NtCs3r24GR8eSjc_4raft7trackerNtB7_15ProgressTracker10has_quorum0Csl8OoimOLbh_6qdrant.exit, label %bb.d, !prof !6

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.ai = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.aj = bitcast <16 x i1> %i.ai to i16
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %bb.e, label %_RNCNvMs0_NtCs3r24GR8eSjc_4raft7trackerNtB7_15ProgressTracker10has_quorum0Csl8OoimOLbh_6qdrant.exit, !prof !7

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.al = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.am = and i16 %i.al, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.an = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.ao = add i64 %.sroa.01.0.i.i.i.i, %i.an
  br label %bb.c

_RNCNvMs0_NtCs3r24GR8eSjc_4raft7trackerNtB7_15ProgressTracker10has_quorum0Csl8OoimOLbh_6qdrant.exit: ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i.i
  %.not13 = phi i1 [ false, %.lr.ph.i.i.i ], [ true, %._crit_edge.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = zext i1 %.not13 to i64
  %.sroa.04.1 = add i64 %.sroa.04.016, %i.ap      ; 2 uses
  %not..not13 = xor i1 %.not13, true
  %i.aq = zext i1 %not..not13 to i64
  %.sroa.01.1 = add i64 %.sroa.01.017, %i.aq      ; 3 uses
  %i.ar = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.as = extractvalue { ptr, ptr } %i.ar, 0      ; 2 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

._crit_edge.thread:                               ; preds = %_RNCNvMs0_NtCs3r24GR8eSjc_4raft7trackerNtB7_15ProgressTracker10has_quorum0Csl8OoimOLbh_6qdrant.exit.us, %bb.b
  %.sroa.04.0.lcssa.ph = phi i64 [ 0, %bb.b ], [ %.sroa.04.1.us, %_RNCNvMs0_NtCs3r24GR8eSjc_4raft7trackerNtB7_15ProgressTracker10has_quorum0Csl8OoimOLbh_6qdrant.exit.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.at = lshr i64 %i.d, 1
  %2 = add nuw i64 %i.at, 1
  br label %bb.f

._crit_edge:                                      ; preds = %_RNCNvMs0_NtCs3r24GR8eSjc_4raft7trackerNtB7_15ProgressTracker10has_quorum0Csl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.au = lshr i64 %i.d, 1
  %3 = add nuw i64 %i.au, 1                       ; 2 uses
  %.not11 = icmp ult i64 %.sroa.01.1, %3
  br i1 %.not11, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.av = phi i64 [ %2, %._crit_edge.thread ], [ %3, %._crit_edge ]
  %.sroa.01.0.lcssa31 = phi i64 [ 0, %._crit_edge.thread ], [ %.sroa.01.1, %._crit_edge ]
  %.sroa.04.0.lcssa30 = phi i64 [ %.sroa.04.0.lcssa.ph, %._crit_edge.thread ], [ %.sroa.04.1, %._crit_edge ]
  %i.aw = add i64 %.sroa.01.0.lcssa31, %.sroa.04.0.lcssa30
  %.not12 = icmp ult i64 %i.aw, %i.av
  %. = zext i1 %.not12 to i8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f, %bb.a
  %.sroa.0.0 = phi i8 [ 2, %._crit_edge ], [ %., %bb.f ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvMs_NtNtCs3r24GR8eSjc_4raft6quorum8majorityNtB5_13Configuration11vote_resultRNCNvMs0_NtB9_7trackerNtB1o_15ProgressTracker10has_quorum0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs8KboJy7ZneP_6fxhash8FxHasherEE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.f = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = lshr i64 %i.d, 1
  %2 = add nuw i64 %i.h, 1
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %i.i = phi ptr [ %i.q, %bb.f ], [ %i.g, %bb.b ]
  %.sroa.01.016 = phi i64 [ %.sroa.01.1, %bb.f ], [ 0, %bb.b ] ; 3 uses
  %.sroa.04.015 = phi i64 [ %.sroa.04.1, %bb.f ], [ 0, %bb.b ] ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !5
  %i.k = call noundef i8 @_RNvXNtNtNtCskKLDkoKarTP_4core3ops8function5implsRNCNvMs0_NtCs3r24GR8eSjc_4raft7trackerNtBT_15ProgressTracker10has_quorum0INtB4_2FnTyEE4callCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef %i.j)
  switch i8 %i.k, label %bb.g [
    i8 2, label %bb.e
    i8 0, label %bb.f
  ]

._crit_edge:                                      ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = lshr i64 %i.d, 1
  %3 = add nuw i64 %i.l, 1                        ; 2 uses
  %.not11 = icmp ult i64 %.sroa.01.1, %3
  br i1 %.not11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.m = phi i64 [ %2, %._crit_edge.thread ], [ %3, %._crit_edge ]
  %.sroa.01.0.lcssa25 = phi i64 [ 0, %._crit_edge.thread ], [ %.sroa.01.1, %._crit_edge ]
  %.sroa.04.0.lcssa24 = phi i64 [ 0, %._crit_edge.thread ], [ %.sroa.04.1, %._crit_edge ]
  %i.n = add i64 %.sroa.01.0.lcssa25, %.sroa.04.0.lcssa24
  %.not12 = icmp ult i64 %i.n, %i.m
  %. = zext i1 %.not12 to i8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c, %bb.a
  %.sroa.0.0 = phi i8 [ 2, %._crit_edge ], [ %., %bb.c ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0

bb.e:                                             ; preds = %.lr.ph
  %i.o = add i64 %.sroa.04.015, 1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.g, %bb.e
  %.sroa.04.1 = phi i64 [ %.sroa.04.015, %bb.g ], [ %.sroa.04.015, %.lr.ph ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.01.1 = phi i64 [ %i.r, %bb.g ], [ %.sroa.01.016, %.lr.ph ], [ %.sroa.01.016, %bb.e ] ; 3 uses
  %i.p = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.r = add i64 %.sroa.01.016, 1
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtB12_6format13DefaultFieldsEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsl8OoimOLbh_6qdrant.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtB12_6format4json10JsonFieldsEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtBG_6format4json10JsonFieldsEECsl8OoimOLbh_6qdrant.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtBG_6format4json10JsonFieldsEECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtBG_6format4json10JsonFieldsEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chan2TxINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2B_8response8ResponseB3a_EIB40_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6u_4SyncEL_EEB6s_EL_EEENtNtB12_7bounded9SemaphoreEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !5
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chan2TxINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2f_8response8ResponseB2O_EIB3E_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB68_4SyncEL_EEB66_EL_EEENtNtBG_7bounded9SemaphoreEECsl8OoimOLbh_6qdrant.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chan2TxINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2f_8response8ResponseB2O_EIB3E_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB68_4SyncEL_EEB66_EL_EEENtNtBG_7bounded9SemaphoreEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs9_NtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chanINtB5_2TxINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2Z_6future6future6Futurep6OutputINtNtB2Z_6result6ResultINtNtB1M_8response8ResponseB2l_EIB3r_DNtNtB2Z_5error5ErrorNtNtB2Z_6marker4SendNtB5Y_4SyncEL_EEB5W_EL_EEENtNtB7_7bounded9SemaphoreENtNtNtB2Z_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !601, !nonnull !5, !noundef !5
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !602
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chan4ChanINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2P_8response8ResponseB3o_EIB4e_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6r_4SyncEL_EEB6p_EL_EEENtNtB1e_7bounded9SemaphoreEEECsl8OoimOLbh_6qdrant.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chan4ChanINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB3z_6future6future6Futurep6OutputINtNtB3z_6result6ResultINtNtB2m_8response8ResponseB2V_EIB41_DNtNtB3z_5error5ErrorNtNtB3z_6marker4SendNtB6h_4SyncEL_EEB6f_EL_EEENtNtBL_7bounded9SemaphoreEE9drop_slowB2Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chan4ChanINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2P_8response8ResponseB3o_EIB4e_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6r_4SyncEL_EEB6p_EL_EEENtNtB1e_7bounded9SemaphoreEEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  %i.g = load ptr, ptr %0, align 8, !alias.scope !605, !nonnull !5, !noundef !5
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !606
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chan2TxINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2f_8response8ResponseB2O_EIB3E_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB68_4SyncEL_EEB66_EL_EEENtNtBG_7bounded9SemaphoreEECsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chan4ChanINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB3z_6future6future6Futurep6OutputINtNtB3z_6result6ResultINtNtB2m_8response8ResponseB2V_EIB41_DNtNtB3z_5error5ErrorNtNtB3z_6marker4SendNtB6h_4SyncEL_EEB6f_EL_EEENtNtBL_7bounded9SemaphoreEE9drop_slowB2Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chan2TxINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2f_8response8ResponseB2O_EIB3E_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB68_4SyncEL_EEB66_EL_EEENtNtBG_7bounded9SemaphoreEECsl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chan4ChanINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2P_8response8ResponseB3o_EIB4e_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6r_4SyncEL_EEB6p_EL_EEENtNtB1e_7bounded9SemaphoreEEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcINtNtBG_5boxed3BoxDINtNtCs931dBByOpY6_6issues6broker10SubscriberNtNtCsPYQCUnoTxQ_10collection6events14SlowQueryEventENtNtB4_6marker4SendNtB3k_4SyncEL_EEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcINtNtB7_5boxed3BoxDINtNtCs931dBByOpY6_6issues6broker10SubscriberNtNtCsPYQCUnoTxQ_10collection6events14SlowQueryEventENtNtCskKLDkoKarTP_4core6marker4SendNtB2R_4SyncEL_EEENtNtNtB2T_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtB7_5boxed3BoxDINtNtCs931dBByOpY6_6issues6broker10SubscriberNtNtCsPYQCUnoTxQ_10collection6events14SlowQueryEventENtNtCskKLDkoKarTP_4core6marker4SendNtB2Y_4SyncEL_EEENtNtNtB30_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcINtNtBG_5boxed3BoxDINtNtCs931dBByOpY6_6issues6broker10SubscriberNtNtCsPYQCUnoTxQ_10collection6events14SlowQueryEventENtNtB4_6marker4SendNtB3r_4SyncEL_EEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtB7_5boxed3BoxDINtNtCs931dBByOpY6_6issues6broker10SubscriberNtNtCsPYQCUnoTxQ_10collection6events14SlowQueryEventENtNtCskKLDkoKarTP_4core6marker4SendNtB2Y_4SyncEL_EEENtNtNtB30_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcINtNtBG_5boxed3BoxDINtNtCs931dBByOpY6_6issues6broker10SubscriberNtNtCsPYQCUnoTxQ_10collection6events14SlowQueryEventENtNtB4_6marker4SendNtB3r_4SyncEL_EEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
end_hunk_0
