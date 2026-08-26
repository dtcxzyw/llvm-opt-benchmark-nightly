Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/BaseVector?download=true
inline.NumInlined: 39102
inline.NumDeleted: 7519
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZN8facebook5velox16DictionaryVectorIbED2Ev:bb.a

.sink.split.i.i:                                  ; preds = %bb.h
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(64) %i.v)
          to label %.noexc.i unwind label %bb.i, !inline_history !386

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !387
  %.not.i.i1 = icmp eq ptr %i.ad, null
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !8
  %..i.i = select i1 %.not.i.i1, i64 8, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %..i.i
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(64) %i.v)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.i, !inline_history !386

bb.i:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.h, %.noexc.i
  tail call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %0) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox16DictionaryVectorIbED0Ev(ptr noundef nonnull align 8 dereferenceable(161) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox16DictionaryVectorIbED2Ev(ptr noundef nonnull align 8 dead_on_return(161) dereferenceable(161) %0) #41
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 168) #48
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox16DictionaryVectorIbE12mayHaveNullsEv(ptr noundef nonnull align 8 dereferenceable(161) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !368
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(94) %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i1 [ true, %bb.a ], [ %i.h, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox16DictionaryVectorIbE21mayHaveNullsRecursiveEv(ptr noundef nonnull align 8 dereferenceable(161) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(94) %0), !inline_history !1778
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(94) %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ true, %bb.a ], [ %i.j, %bb.b ]
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox16DictionaryVectorIbE8isNullAtEi(ptr noundef nonnull align 8 dereferenceable(161) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !374  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit:  ; preds = %bb.a
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = lshr i64 %i.c, 6
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !339
  %i.g = and i64 %i.c, 63
  %i.h = shl nuw i64 1, %i.g
  %i.i = and i64 %i.f, %i.h
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread: ; preds = %bb.a, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2966
  %i.l = sext i32 %1 to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(94) %i.p, i32 noundef %i.n)
  br label %bb.b

bb.b:                                             ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread
  %.0 = phi i1 [ %i.t, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread ], [ true, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox16DictionaryVectorIbE14containsNullAtEi(ptr noundef nonnull align 8 dereferenceable(161) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(161) %0, i32 noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK8facebook5velox12SimpleVectorIbE7compareEPKNS0_10BaseVectorEiiNS0_12CompareFlagsE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %class.anon.658, align 8            ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(94) %0) ; 0 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(94) %1) ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(94) %i.k, i32 noundef %3) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %2) ; 4 uses
  %or.cond = or i1 %i.o, %i.s
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %.sroa.37.0.extract.shift.i = lshr i64 %4, 32
  %.sroa.37.0.extract.trunc.i = trunc nuw i64 %.sroa.37.0.extract.shift.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i, label %bb.i [
    i32 1, label %bb.c
    i32 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.t = and i64 %4, 65536
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.d, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.125) #50
  unreachable

bb.e:                                             ; preds = %bb.b
  %or.cond.i = and i1 %i.o, %i.s
  br i1 %or.cond.i, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = trunc i64 %4 to i1
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = select i1 %i.s, i32 -1, i32 1
  br label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.h:                                             ; preds = %bb.f
  %i.w = select i1 %i.s, i32 1, i32 -1
  br label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.i:                                             ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.126) #50
  unreachable

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.x = load ptr, ptr %0, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 384
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(108) %0, i32 noundef %2) ; 2 uses
  %i.ab = zext i1 %i.aa to i8
  store i8 %i.ab, ptr %i.b, align 1, !tbaa !557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(108) %i.k, i32 noundef %3) ; 2 uses
  %i.ag = zext i1 %i.af to i8
  store i8 %i.ag, ptr %i.c, align 1, !tbaa !557
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !366, !range !59, !noundef !60
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.al, ptr %i.a, align 8, !tbaa !1779
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store ptr %i.a, ptr %5, align 8, !tbaa !1780
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.am, align 8, !tbaa !2295
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.c, ptr %i.an, align 8, !tbaa !2295
  %i.ao = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKbS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ap = tail call i32 @llvm.ucmp.i32.i1(i1 %i.aa, i1 %i.af)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aq = phi i32 [ %i.ao, %bb.k ], [ %i.ap, %bb.l ] ; 2 uses
  %i.ar = and i64 %4, 256
  %.not = icmp eq i64 %i.ar, 0
  %i.as = sub nsw i32 0, %i.aq
  %i.at = select i1 %.not, i32 %i.as, i32 %i.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit: ; preds = %bb.h, %bb.g, %bb.c, %bb.e, %bb.m
  %.sroa.3.0 = phi i64 [ 4294967296, %bb.m ], [ 4294967296, %bb.h ], [ 0, %bb.c ], [ 4294967296, %bb.g ], [ 4294967296, %bb.e ]
  %.sroa.0.0 = phi i32 [ %i.at, %bb.m ], [ %i.w, %bb.h ], [ 0, %bb.c ], [ %i.v, %bb.g ], [ 0, %bb.e ]
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK8facebook5velox12SimpleVectorIbE11hashValueAtEi(ptr noundef nonnull align 8 dereferenceable(108) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %class.anon.664, align 8            ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %1)
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %i.i = load i8, ptr %i.h, align 1, !tbaa !152, !range !59, !noundef !60
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load ptr, ptr %0, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 384
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(108) %0, i32 noundef %1) ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = zext i1 %i.n to i8
  store i8 %i.o, ptr %i.a, align 1, !tbaa !557
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  store ptr %i.f, ptr %2, align 8, !tbaa !731
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.p, align 8, !tbaa !2295
  %i.q = call noundef i64 @_ZZN8facebook5velox12SimpleVectorIbE25hashValueAtWithCustomTypeERKSt10shared_ptrIKNS0_4TypeEEbENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = sext i1 %i.n to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i64 [ %i.r, %bb.d ], [ %i.q, %bb.c ], [ 1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox16DictionaryVectorIbE7hashAllEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.467") align 8 %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %3 = alloca %"class.std::optional.480", align 8 ; 4 uses
  %4 = alloca %"class.std::unique_ptr.488", align 8 ; 6 uses
  %5 = alloca %"class.std::shared_ptr.496", align 8 ; 7 uses
  %6 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %7 = alloca %"class.std::vector.110", align 8   ; 10 uses
  %8 = alloca %"struct.facebook::velox::SimpleVectorStats.499", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !353  ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1783
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.h = sext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !368
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !387
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.m, align 8, !tbaa !1786
  call void @_ZN8facebook5velox13AlignedBuffer8allocateImEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %2, i64 noundef %i.h, ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.n = load ptr, ptr %2, align 8, !tbaa !368    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.p = load i8, ptr %i.o, align 4, !tbaa !389
  %i.q = and i8 %i.p, 2
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit, label %bb.d, !prof !396

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #50
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !369  ; 2 uses
  %i.t = load i32, ptr %i.e, align 8, !tbaa !353  ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120
  br label %bb.f

._crit_edge:                                      ; preds = %bb.j, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  invoke void @_ZN8facebook5velox6BIGINTEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.496") align 8 %5)
          to label %bb.k unwind label %bb.z

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.f:                                             ; preds = %.lr.ph, %bb.j
  %i.aa = phi i32 [ %i.t, %.lr.ph ], [ %i.at, %bb.j ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 6 uses
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !374 ; 2 uses
  %.not.i20 = icmp eq ptr %i.ab, null
  br i1 %.not.i20, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit:  ; preds = %bb.f
  %i.ac = lshr i64 %indvars.iv, 6
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !339
  %i.af = and i64 %indvars.iv, 63
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = and i64 %i.ae, %i.ag
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %bb.g, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread

bb.g:                                             ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  store i64 1, ptr %i.ai, align 8, !tbaa !339
  br label %bb.j

bb.h:                                             ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread: ; preds = %bb.f, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !52  ; 2 uses
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !2966
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !76
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(94) %i.ak, i32 noundef %i.an)
          to label %bb.i unwind label %bb.h

bb.i:                                             ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !339
  %.pre = load i32, ptr %i.e, align 8, !tbaa !353
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %i.at = phi i32 [ %i.aa, %bb.g ], [ %.pre, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next, %i.au
  br i1 %i.av, label %bb.f, label %._crit_edge, !llvm.loop !2971

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr null, ptr %6, align 8, !tbaa !368
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.ay, align 8, !tbaa !1786
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox10FlatVectorIbE8validateERKNS0_21VectorValidateOptionsE:bb.a
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !368 ; 2 uses
  %.not7 = icmp eq ptr %i.ab, null
  br i1 %.not7, label %bb.h, label %bb.i, !prof !138

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox10FlatVectorIbE8validateERKNS0_21VectorValidateOptionsEE18veloxCheckFailArgs) #50
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !385 ; 2 uses
  %.not3 = icmp ult i64 %i.ad, %i.z
  br i1 %.not3, label %bb.j, label %bb.m, !prof !138

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41, !noalias !8384
  store i64 %i.ad, ptr %2, align 16, !tbaa !132, !alias.scope !8387, !noalias !8384
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.z, ptr %i.ae, align 16, !tbaa !132, !alias.scope !8387, !noalias !8384
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.7, i64 11, i64 68, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41, !noalias !8384
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox10FlatVectorIbE8validateERKNS0_21VectorValidateOptionsEE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.7) #50
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %5, align 8, !tbaa !327   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !132
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %common.resume

bb.m:                                             ; preds = %bb.i, %_ZNK8facebook5velox12SimpleVectorIbE8validateERKNS0_21VectorValidateOptionsE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK8facebook5velox10FlatVectorIbE16retainedSizeImplERm(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !368  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !378
  br label %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit

_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit: ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !368  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !378
  br label %bb.d

bb.d:                                             ; preds = %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit, %bb.c
  %i.j = phi i64 [ %i.i, %bb.c ], [ 0, %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit ]
  %i.k = add i64 %i.j, %i.e                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2068 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2068 ; 2 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %.promoted = load i64, ptr %1, align 8, !tbaa !339
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.0.lcssa = phi i64 [ %i.k, %bb.d ], [ %i.u, %bb.e ]
  ret i64 %.0.lcssa

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %i.q = phi i64 [ %.promoted, %.lr.ph ], [ %i.v, %bb.e ]
  %.011 = phi i64 [ %i.k, %.lr.ph ], [ %i.u, %bb.e ]
  %.sroa.07.010 = phi ptr [ %i.m, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.07.010, align 8, !tbaa !368
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !378  ; 2 uses
  %i.u = add i64 %i.t, %.011                      ; 2 uses
  %i.v = add i64 %i.q, %i.t                       ; 2 uses
  store i64 %i.v, ptr %1, align 8, !tbaa !339
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.07.010, i64 8 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.o
  br i1 %i.x, label %._crit_edge, label %bb.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE7valueAtEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK8facebook5velox10FlatVectorIbE11compareFlatILb1EEESt8optionalIiEPKS2_iiNS0_12CompareFlagsE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %class.anon.658, align 8            ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !374  ; 2 uses
  %.not.i15 = icmp eq ptr %i.e, null
  br i1 %.not.i15, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %3 to i64                       ; 2 uses
  %i.g = lshr i64 %i.f, 6
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !339
  %i.j = and i64 %i.f, 63
  %i.k = shl nuw i64 1, %i.j
  %i.l = and i64 %i.i, %i.k
  %.not.i.i = icmp eq i64 %i.l, 0
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit:  ; preds = %bb.a, %bb.b
  %i.m = phi i1 [ %.not.i.i, %bb.b ], [ false, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !374  ; 2 uses
  %.not.i16 = icmp eq ptr %i.o, null
  br i1 %.not.i16, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit18, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit
  %i.p = zext i32 %2 to i64                       ; 2 uses
  %i.q = lshr i64 %i.p, 6
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !339
  %i.t = and i64 %i.p, 63
  %i.u = shl nuw i64 1, %i.t
  %i.v = and i64 %i.s, %i.u
  %.not.i.i17 = icmp eq i64 %i.v, 0
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit18

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit18: ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit, %bb.c
  %i.w = phi i1 [ %.not.i.i17, %bb.c ], [ false, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit ] ; 4 uses
  %or.cond = or i1 %i.m, %i.w
  br i1 %or.cond, label %bb.d, label %bb.l

bb.d:                                             ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit18
  %.sroa.37.0.extract.shift.i = lshr i64 %4, 32
  %.sroa.37.0.extract.trunc.i = trunc nuw i64 %.sroa.37.0.extract.shift.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i, label %bb.k [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.x = and i64 %4, 65536
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.125) #50
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i = and i1 %i.m, %i.w
  br i1 %or.cond.i, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = trunc i64 %4 to i1
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = select i1 %i.w, i32 -1, i32 1
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.aa = select i1 %i.w, i32 1, i32 -1
  br label %bb.p

bb.k:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.126) #50
  unreachable

bb.l:                                             ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.ab = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %2) ; 2 uses
  %i.ac = zext i1 %i.ab to i8
  store i8 %i.ac, ptr %i.b, align 1, !tbaa !557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.ad = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef %3) ; 2 uses
  %i.ae = zext i1 %i.ad to i8
  store i8 %i.ae, ptr %i.c, align 1, !tbaa !557
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !366, !range !59, !noundef !60
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !1779
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store ptr %i.a, ptr %5, align 8, !tbaa !1780
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.ak, align 8, !tbaa !2295
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.c, ptr %i.al, align 8, !tbaa !2295
  %i.am = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKbS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.an = tail call i32 @llvm.ucmp.i32.i1(i1 %i.ab, i1 %i.ad)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ao = phi i32 [ %i.am, %bb.m ], [ %i.an, %bb.n ] ; 2 uses
  %i.ap = and i64 %4, 256
  %.not = icmp eq i64 %i.ap, 0
  %i.aq = sub nsw i32 0, %i.ao
  %i.ar = select i1 %.not, i32 %i.aq, i32 %i.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %bb.e, %bb.i, %bb.j, %bb.o
  %.sroa.3.1 = phi i64 [ 4294967296, %bb.o ], [ 4294967296, %bb.j ], [ 0, %bb.e ], [ 4294967296, %bb.i ], [ 4294967296, %bb.g ]
  %.sroa.0.1 = phi i32 [ %i.ar, %bb.o ], [ %i.aa, %bb.j ], [ 0, %bb.e ], [ %i.z, %bb.i ], [ 0, %bb.g ]
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.1 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.1, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

declare noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %class.anon.1237, align 8           ; 9 uses
  %6 = alloca %class.anon.1232, align 8           ; 2 uses
  %7 = alloca %class.anon.1233, align 8           ; 2 uses
  %8 = alloca %"struct.facebook::velox::CompareFlags", align 8 ; 3 uses
  %9 = alloca %class.anon.1236, align 8           ; 8 uses
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %4, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  store ptr %6, ptr %9, align 8, !tbaa !139
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !8390
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %8, ptr %i.b, align 8, !tbaa !2332
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !374
  %.not = icmp eq ptr %i.d, null
  %i.e = load ptr, ptr %3, align 8, !tbaa !618    ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !618  ; 9 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %7, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %8, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %9, ptr %.sroa.3.0..sroa_idx, align 8
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 2
  %i.m = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = shl nuw nsw i64 %i.m, 1
  %i.o = xor i64 %i.n, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.e, ptr %i.g, i64 noundef %i.o, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1238") align 8 %5)
  %i.p = icmp sgt i64 %i.k, 64
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %i.e, ptr nonnull %i.q, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1238") align 8 %5)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr nonnull %i.q, ptr %i.g, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1238") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %i.e, ptr %i.g, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1238") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit

bb.f:                                             ; preds = %bb.a
  %i.r = icmp eq ptr %i.e, %i.g
  br i1 %i.r, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = ptrtoint ptr %i.g to i64
  %i.t = ptrtoint ptr %i.e to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  %i.w = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = shl nuw nsw i64 %i.w, 1
  %i.y = xor i64 %i.x, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_SJ_(ptr %i.e, ptr %i.g, i64 noundef %i.y, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1241") align 8 %9)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_(ptr %i.e, ptr %i.g, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1241") align 8 %9)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %class.anon.1245, align 8           ; 9 uses
  %6 = alloca %class.anon.1234, align 8           ; 3 uses
  %7 = alloca %class.anon.1235, align 8           ; 2 uses
  %8 = alloca %"struct.facebook::velox::CompareFlags", align 8 ; 4 uses
  %9 = alloca %class.anon.1244, align 8           ; 5 uses
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %4, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  store ptr %6, ptr %9, align 8, !tbaa !139
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %8, ptr %i.a, align 8, !tbaa !2332
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !374
  %.not = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr %3, align 8, !tbaa !618    ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !618  ; 6 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %7, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %8, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %9, ptr %.sroa.3.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 2
  %i.l = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.d, ptr %i.f, i64 noundef %i.n, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1246") align 8 %5)
  %i.o = icmp sgt i64 %i.j, 64
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %i.d, ptr nonnull %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1246") align 8 %5)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr nonnull %i.p, ptr %i.f, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1246") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %i.d, ptr %i.f, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1246") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_(ptr %i.d, ptr %i.f, ptr nonnull %6, ptr nonnull %8)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1238") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1238", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1238", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph22

bb.b:                                             ; preds = %.lr.ph22
  %i.h = icmp eq i64 %i.j, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !8393

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIiLb0EEEm:bb.a
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !12549 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1389
  store ptr %i.w, ptr %3, align 8, !tbaa !1389
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !12549
  store ptr %3, ptr %i.x, align 8, !tbaa !1389
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIiLb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1388
  store ptr %i.z, ptr %3, align 8, !tbaa !1389
  store ptr %3, ptr %i.y, align 8, !tbaa !1388
  %i.aa = load ptr, ptr %3, align 8, !tbaa !1389  ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !1374
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !76
  %i.ae = sext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !12549
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !12549
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIiLb0EEE.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIiLb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !1379
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !1379
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !138

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !12571
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !138

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #50
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #50
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #47 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1388 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !1388
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !1389 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !76
  %i.l = sext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12549 ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !1388
  store ptr %i.p, ptr %.031, align 8, !tbaa !1389
  store ptr %.031, ptr %i.g, align 8, !tbaa !1388
  store ptr %i.g, ptr %i.n, align 8, !tbaa !12549
  %i.q = load ptr, ptr %.031, align 8, !tbaa !1389
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.r, align 8, !tbaa !12549
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !1389
  store ptr %i.s, ptr %.031, align 8, !tbaa !1389
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !12549
  store ptr %.031, ptr %i.t, align 8, !tbaa !1389
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12572

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !1368   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1374
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #48
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !1374
  store ptr %.0.i, ptr %0, align 8, !tbaa !1368
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32>, ptr, <8 x i32>, <8 x i32>, i8 immarg) #44

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.permd(<8 x i32>, <8 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #45

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshr.i16(i16, i16, i16) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshr.i8(i8, i8, i8) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i8(i8, i8) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i1(i1, i1) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i8(i8, i8) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i16(i16, i16) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i128(i128, i128) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #25

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { cold nofree noreturn }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #23 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #31 = { cold noreturn }
attributes #32 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #34 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #36 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #37 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #38 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #39 = { nofree nounwind }
attributes #40 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #41 = { nounwind }
attributes #42 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #43 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #46 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #47 = { builtin allocsize(0) }
attributes #48 = { builtin nounwind }
attributes #49 = { noreturn nounwind }
attributes #50 = { noreturn }
attributes #51 = { nounwind willreturn memory(read) }
attributes #52 = { allocsize(0) }
attributes #53 = { cold noreturn nounwind }
attributes #54 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0, !14, i64 8}
!12 = !{!"p1 _ZTSN8facebook5velox4TypeE", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!15 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!16 = !{!17, !20, i64 16}
!17 = !{!"_ZTSN8facebook5velox4TypeE", !18, i64 0, !19, i64 8, !20, i64 16, !21, i64 17}
!18 = !{!"_ZTSN8facebook5velox4TreeIKSt10shared_ptrIKNS0_4TypeEEEE"}
!19 = !{!"_ZTSN8facebook5velox13ISerializableE"}
!20 = !{!"_ZTSN8facebook5velox8TypeKindE", !6, i64 0}
!21 = !{!"bool", !6, i64 0}
!22 = !{!23, !13, i64 0}
!23 = !{!"_ZTSN8facebook5velox7VariantE", !13, i64 0, !20, i64 8, !21, i64 9}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN8facebook5velox12_GLOBAL__N_111nullVariantERKSt10shared_ptrIKNS0_4TypeEE: argument 0"}
!26 = distinct !{!26, !"_ZN8facebook5velox12_GLOBAL__N_111nullVariantERKSt10shared_ptrIKNS0_4TypeEE"}
!27 = !{!23, !20, i64 8}
!28 = !{!23, !21, i64 9}
!29 = !{!30, !20, i64 24}
!30 = !{!"_ZTSN8facebook5velox10BaseVectorE", !31, i64 8, !20, i64 24, !21, i64 25, !32, i64 28, !33, i64 32, !35, i64 40, !36, i64 48, !5, i64 56, !37, i64 60, !37, i64 68, !37, i64 76, !37, i64 84, !41, i64 92, !21, i64 93}
!31 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !11, i64 0}
!32 = !{!"_ZTSN8facebook5velox14VectorEncoding6SimpleE", !6, i64 0}
!33 = !{!"_ZTSN5boost13intrusive_ptrIN8facebook5velox6BufferEEE", !34, i64 0}
!34 = !{!"p1 _ZTSN8facebook5velox6BufferE", !13, i64 0}
!35 = !{!"p1 long", !13, i64 0}
!36 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !13, i64 0}
!37 = !{!"_ZTSSt8optionalIiE", !38, i64 0}
!38 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !39, i64 0}
!39 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !40, i64 0}
!40 = !{!"_ZTSSt22_Optional_payload_baseIiE", !6, i64 0, !21, i64 4}
!41 = !{!"_ZTSSt6atomicIbE", !42, i64 0}
!42 = !{!"_ZTSSt13__atomic_baseIbE", !21, i64 0}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN8facebook5velox12_GLOBAL__N_112rowVariantAtEPKNS0_10BaseVectorEi: argument 0"}
!45 = distinct !{!45, !"_ZN8facebook5velox12_GLOBAL__N_112rowVariantAtEPKNS0_10BaseVectorEi"}
!46 = distinct !{null}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox10BaseVectorEE", !13, i64 0}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN8facebook5velox7Variant3rowEOSt6vectorIS1_SaIS1_EE: argument 0"}
!51 = distinct !{!51, !"_ZN8facebook5velox7Variant3rowEOSt6vectorIS1_SaIS1_EE"}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE", !54, i64 0, !14, i64 8}
!54 = !{!"p1 _ZTSN8facebook5velox10BaseVectorE", !13, i64 0}
!55 = !{!56, !57, i64 8}
!56 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox7VariantESaIS2_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!57 = !{!"p1 _ZTSN8facebook5velox7VariantE", !13, i64 0}
!58 = !{!56, !57, i64 16}
!59 = !{i8 0, i8 2}
!60 = !{}
!61 = !{!62, !57, i64 0}
!62 = !{!"_ZTSZN8facebook5velox7Variant11dynamicFreeEvEUlvE_", !57, i64 0}
!63 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null, ptr @_ZN8facebook5velox7Variant11dynamicFreeEv}
!64 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null, null, ptr @_ZN8facebook5velox7Variant11dynamicFreeEv}
!65 = !{!66, !57, i64 0}
!66 = !{!"_ZTSZZN8facebook5velox7Variant11dynamicFreeEvENKUlvE0_clEvEUlvE_", !57, i64 0}
!67 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null}
!68 = !{!57, !57, i64 0}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN8facebook5velox12_GLOBAL__N_114arrayVariantAtEPKNS0_10BaseVectorEi: argument 0"}
!71 = distinct !{!71, !"_ZN8facebook5velox12_GLOBAL__N_114arrayVariantAtEPKNS0_10BaseVectorEi"}
!72 = distinct !{null}
!73 = !{!74, !75, i64 104}
!74 = !{!"_ZTSN8facebook5velox15ArrayVectorBaseE", !30, i64 0, !33, i64 96, !75, i64 104, !33, i64 112, !75, i64 120}
!75 = !{!"p1 int", !13, i64 0}
!76 = !{!5, !5, i64 0}
!77 = !{!74, !75, i64 120}
!78 = !{!56, !57, i64 0}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZSt19__relocate_object_aIN8facebook5velox7VariantES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!81 = distinct !{!81, !"_ZSt19__relocate_object_aIN8facebook5velox7VariantES2_SaIS2_EEvPT_PT0_RT1_"}
!82 = !{!83}
!83 = distinct !{!83, !81, !"_ZSt19__relocate_object_aIN8facebook5velox7VariantES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!84 = !{!80, !70}
!85 = !{!83, !70}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.mustprogress"}
!88 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null, ptr @_ZN8facebook5velox7Variant11dynamicFreeEv}
!89 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null, null, ptr @_ZN8facebook5velox7Variant11dynamicFreeEv}
!90 = distinct !{ptr @_ZN8facebook5velox7VariantD2Ev, null}
!91 = distinct !{!91, !87}
!92 = distinct !{ptr @_ZNSt6vectorIN8facebook5velox7VariantESaIS2_EED2Ev, null, ptr @_ZSt8_DestroyIPN8facebook5velox7VariantEEvT_S4_, null, null, null, ptr @_ZN8facebook5velox7VariantD2Ev}
!93 = distinct !{!93, !87}
!94 = distinct !{ptr @_ZNSt6vectorIN8facebook5velox7VariantESaIS2_EED2Ev, null}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN8facebook5velox12_GLOBAL__N_112mapVariantAtEPKNS0_10BaseVectorEi: argument 0"}
!97 = distinct !{!97, !"_ZN8facebook5velox12_GLOBAL__N_112mapVariantAtEPKNS0_10BaseVectorEi"}
!98 = distinct !{null}
!99 = !{!100, !102, i64 0}
!100 = !{!"_ZTSSt15_Rb_tree_header", !101, i64 0, !104, i64 32}
!101 = !{!"_ZTSSt18_Rb_tree_node_base", !102, i64 0, !103, i64 8, !103, i64 16, !103, i64 24}
!102 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!103 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!104 = !{!"long", !6, i64 0}
!105 = !{!100, !103, i64 8}
!106 = !{!100, !103, i64 16}
!107 = !{!100, !103, i64 24}
end_hunk_2
