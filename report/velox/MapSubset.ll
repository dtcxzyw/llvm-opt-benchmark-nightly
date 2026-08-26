Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/MapSubset?download=true
inline.NumInlined: 38212
inline.NumDeleted: 10271
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 149
begin_hunk_0_@_ZNK8facebook5velox10FlatVectorIbE8validateERKNS0_21VectorValidateOptionsE:bb.a

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !12     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.m = load i64, ptr %i.k, align 8, !tbaa !17
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIbE23resetDataDependentFlagsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.a, align 8, !tbaa !1268
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.b, align 8, !tbaa !1268
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.c, align 8, !tbaa !1268
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.d, align 8, !tbaa !1268
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 95
  store i8 0, ptr %i.e, align 1, !tbaa !422
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK8facebook5velox10FlatVectorIbE16retainedSizeImplERm(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !879  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !929
  br label %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit

_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit: ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !879  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !929
  br label %bb.d

bb.d:                                             ; preds = %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit, %bb.c
  %i.j = phi i64 [ %i.i, %bb.c ], [ 0, %_ZNK8facebook5velox10BaseVector16retainedSizeImplEv.exit ]
  %i.k = add i64 %i.j, %i.e                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1230 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1230 ; 2 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %.promoted = load i64, ptr %1, align 8, !tbaa !119
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.0.lcssa = phi i64 [ %i.k, %bb.d ], [ %i.u, %bb.e ]
  ret i64 %.0.lcssa

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %i.q = phi i64 [ %.promoted, %.lr.ph ], [ %i.v, %bb.e ]
  %.011 = phi i64 [ %i.k, %.lr.ph ], [ %i.u, %bb.e ]
  %.sroa.07.010 = phi ptr [ %i.m, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.07.010, align 8, !tbaa !879
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !929  ; 2 uses
  %i.u = add i64 %i.t, %.011                      ; 2 uses
  %i.v = add i64 %i.q, %i.t                       ; 2 uses
  store i64 %i.v, ptr %1, align 8, !tbaa !119
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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN8facebook5velox12SimpleVectorIbE11elementSizeEv(ptr noundef nonnull align 8 dereferenceable(108) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !tbaa !2377
  %i.c = zext i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK8facebook5velox10FlatVectorIbE11compareFlatILb1EEESt8optionalIiEPKS2_iiNS0_12CompareFlagsE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %class.anon.1005, align 8           ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1193 ; 2 uses
  %.not.i15 = icmp eq ptr %i.e, null
  br i1 %.not.i15, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %3 to i64                       ; 2 uses
  %i.g = lshr i64 %i.f, 6
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !119
  %i.j = and i64 %i.f, 63
  %i.k = shl nuw i64 1, %i.j
  %i.l = and i64 %i.i, %i.k
  %.not.i.i = icmp eq i64 %i.l, 0
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit:  ; preds = %bb.a, %bb.b
  %i.m = phi i1 [ %.not.i.i, %bb.b ], [ false, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1193 ; 2 uses
  %.not.i16 = icmp eq ptr %i.o, null
  br i1 %.not.i16, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit18, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit
  %i.p = zext i32 %2 to i64                       ; 2 uses
  %i.q = lshr i64 %i.p, 6
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !119
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
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.130) #40
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
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.131) #40
  unreachable

bb.l:                                             ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  %i.ab = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %2) ; 2 uses
  %i.ac = zext i1 %i.ab to i8
  store i8 %i.ac, ptr %i.b, align 1, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  %i.ad = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef %3) ; 2 uses
  %i.ae = zext i1 %i.ad to i8
  store i8 %i.ae, ptr %i.c, align 1, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !1198, !range !58, !noundef !59
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !1123
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %i.a, ptr %5, align 8, !tbaa !1270
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.ak, align 8, !tbaa !755
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.c, ptr %i.al, align 8, !tbaa !755
  %i.am = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKbS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %bb.e, %bb.i, %bb.j, %bb.o
  %.sroa.3.1 = phi i64 [ 4294967296, %bb.o ], [ 4294967296, %bb.j ], [ 0, %bb.e ], [ 4294967296, %bb.i ], [ 4294967296, %bb.g ]
  %.sroa.0.1 = phi i32 [ %i.ar, %bb.o ], [ %i.aa, %bb.j ], [ 0, %bb.e ], [ %i.z, %bb.i ], [ 0, %bb.g ]
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.1 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.1, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK8facebook5velox12SimpleVectorIbE7compareEPKNS0_10BaseVectorEiiNS0_12CompareFlagsE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %class.anon.1005, align 8           ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(94) %0) ; 0 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(94) %1) ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(94) %i.k, i32 noundef %3) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !48
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
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.130) #40
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
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.131) #40
  unreachable

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  %i.x = load ptr, ptr %0, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 384
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(108) %0, i32 noundef %2) ; 2 uses
  %i.ab = zext i1 %i.aa to i8
  store i8 %i.ab, ptr %i.b, align 1, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(108) %i.k, i32 noundef %3) ; 2 uses
  %i.ag = zext i1 %i.af to i8
  store i8 %i.ag, ptr %i.c, align 1, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !1198, !range !58, !noundef !59
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.al, ptr %i.a, align 8, !tbaa !1123
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %i.a, ptr %5, align 8, !tbaa !1270
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.am, align 8, !tbaa !755
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.c, ptr %i.an, align 8, !tbaa !755
  %i.ao = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKbS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  br label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit: ; preds = %bb.h, %bb.g, %bb.c, %bb.e, %bb.m
  %.sroa.3.0 = phi i64 [ 4294967296, %bb.m ], [ 4294967296, %bb.h ], [ 0, %bb.c ], [ 4294967296, %bb.g ], [ 4294967296, %bb.e ]
  %.sroa.0.0 = phi i32 [ %i.at, %bb.m ], [ %i.w, %bb.h ], [ 0, %bb.c ], [ %i.v, %bb.g ], [ 0, %bb.e ]
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

declare noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176), i32 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKbS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.124", align 16 ; 5 uses
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.746", align 16 ; 5 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.746", align 16 ; 5 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.746", align 16 ; 5 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.746", align 16 ; 5 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.746", align 16 ; 5 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.746", align 16 ; 5 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.746", align 16 ; 5 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store.746", align 16 ; 5 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.746", align 16 ; 5 uses
  %11 = alloca %"struct.fmt::v11::detail::format_arg_store.746", align 16 ; 5 uses
  %12 = alloca %"struct.fmt::v11::detail::format_arg_store.746", align 16 ; 5 uses
  %13 = alloca %"struct.fmt::v11::detail::format_arg_store.746", align 16 ; 5 uses
  %14 = alloca %"struct.fmt::v11::detail::format_arg_store.746", align 16 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2378, !nonnull !59, !align !181
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1123 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !1274  ; 2 uses
  switch i8 %i.d, label %bb.ap [
    i8 0, label %bb.b
    i8 3, label %bb.c
    i8 1, label %bb.f
    i8 2, label %bb.i
    i8 4, label %bb.l
    i8 10, label %bb.o
    i8 5, label %bb.r
    i8 6, label %bb.u
    i8 7, label %bb.x
    i8 8, label %bb.aa
    i8 9, label %bb.ad
    i8 30, label %bb.ag
    i8 31, label %bb.aj
    i8 32, label %bb.am
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2380, !nonnull !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2381, !nonnull !59
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(18) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.h), !inline_history !2382
  ret i32 %i.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #35
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIi, i64 8), align 8, !tbaa !62 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !17
  %i.o = icmp eq i8 %i.n, 42
  %.idx.i = zext i1 %i.o to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIb, i64 8), align 8, !tbaa !62 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !17
  %i.s = icmp eq i8 %i.r, 42
  %.idx.i3 = zext i1 %i.s to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i3
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35, !noalias !2383
  store ptr %i.p, ptr %14, align 16, !tbaa !17, !alias.scope !2386, !noalias !2383
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.t, ptr %i.u, align 16, !tbaa !17, !alias.scope !2386, !noalias !2383
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr nonnull @.str.134, i64 140, i64 204, ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35, !noalias !2383
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonILNS0_8TypeKindE3EEEiPKNS0_4TypeERKbS9_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr nonnull @.str.134) #40
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %27, align 8, !tbaa !12    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.z = load i64, ptr %i.x, align 8, !tbaa !17
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ], [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %i.gr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #35
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIa, i64 8), align 8, !tbaa !62 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17
  %i.ad = icmp eq i8 %i.ac, 42
  %.idx.i4 = zext i1 %i.ad to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i4
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIb, i64 8), align 8, !tbaa !62 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17
  %i.ah = icmp eq i8 %i.ag, 42
  %.idx.i5 = zext i1 %i.ah to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i5
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35, !noalias !2389
  store ptr %i.ae, ptr %13, align 16, !tbaa !17, !alias.scope !2392, !noalias !2389
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.ai, ptr %i.aj, align 16, !tbaa !17, !alias.scope !2392, !noalias !2389
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr nonnull @.str.134, i64 140, i64 204, ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35, !noalias !2389
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonILNS0_8TypeKindE1EEEiPKNS0_4TypeERKbS9_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr nonnull @.str.134) #40
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %26, align 8, !tbaa !12   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.h
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !17
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  br label %common.resume

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #35
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIs, i64 8), align 8, !tbaa !62 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !17
  %i.as = icmp eq i8 %i.ar, 42
  %.idx.i9 = zext i1 %i.as to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i9
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIb, i64 8), align 8, !tbaa !62 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17
  %i.aw = icmp eq i8 %i.av, 42
  %.idx.i10 = zext i1 %i.aw to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i10
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35, !noalias !2395
  store ptr %i.at, ptr %12, align 16, !tbaa !17, !alias.scope !2398, !noalias !2395
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.ax, ptr %i.ay, align 16, !tbaa !17, !alias.scope !2398, !noalias !2395
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr nonnull @.str.134, i64 140, i64 204, ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35, !noalias !2395
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonILNS0_8TypeKindE2EEEiPKNS0_4TypeERKbS9_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr nonnull @.str.134) #40
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapSubsetFunctionINS3_10VectorExecEEESB_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSE_INSF_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISH_EEEEEJSK_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS3_12VectorReaderISK_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSR_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_EUlS11_E_EEvPKmiibS11_ENKUliE_clEi:bb.a
.loopexit121:                                     ; preds = %bb.aq, %.lr.ph.i.i.i.i98.preheader, %tailrecurse.i.i.i.i101, %tailrecurse.i.i.i.i101.1, %tailrecurse.i.i.i.i101.2
  invoke void @__cxa_rethrow() #40
          to label %bb.bf unwind label %.loopexit.split-lp126

bb.ar:                                            ; preds = %.body
  %i.ja = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.jb = icmp eq i32 %i.ic, %i.ja
  br i1 %i.jb, label %bb.as, label %common.resume

bb.as:                                            ; preds = %bb.ar
  %i.jc = call ptr @__cxa_begin_catch(ptr %i.ib) #35 ; 0 uses
  %i.jd = load ptr, ptr %i.r, align 8, !tbaa !11739, !nonnull !59, !align !181
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !11580, !nonnull !59, !align !181 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !48
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  %i.ji = load ptr, ptr %i.jh, align 8
  invoke void %i.ji(ptr noundef nonnull align 8 dereferenceable(264) %i.jf)
          to label %.noexc103 unwind label %bb.av, !inline_history !11393

.noexc103:                                        ; preds = %bb.as
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 80
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !11384 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !793
  %i.jn = load ptr, ptr %i.jk, align 8, !tbaa !48
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 144
  %i.jp = load ptr, ptr %i.jo, align 8
  invoke void %i.jp(ptr noundef nonnull align 8 dereferenceable(94) %i.jk, i32 noundef %i.jm, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapSubsetFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_ENKUlSX_E0_clIiEEDaSX_.exit20 unwind label %bb.av, !inline_history !11393

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapSubsetFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_ENKUlSX_E0_clIiEEDaSX_.exit20: ; preds = %.noexc103
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %10) #35
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.fh, i32 noundef %i.fg, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapSubsetFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_ENKUlSX_E0_clIiEEDaSX_.exit20
  %i.jq = load ptr, ptr %10, align 8, !tbaa !413
  %.not.i106 = icmp eq ptr %i.jq, null
  br i1 %.not.i106, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapSubsetFunctionINS1_10VectorExecEEES9_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSC_INSD_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayISF_EEEEEJSI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS1_12VectorReaderISI_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKNS0_17SelectivityVectorESZ_S11_ENKUlSZ_E_clIiEEDaSZ_.exit

bb.av:                                            ; preds = %.noexc103, %bb.as
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aw:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapSubsetFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_ENKUlSX_E0_clIiEEDaSX_.exit20
  %i.js = landingpad { ptr, i32 }
          cleanup
  %i.jt = load ptr, ptr %10, align 8, !tbaa !413
  %.not.i108 = icmp eq ptr %i.jt, null
  br i1 %.not.i108, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109, %bb.av
  %.pn.i = phi { ptr, i32 } [ %i.js, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109 ], [ %i.jr, %bb.av ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.be

.loopexit125:                                     ; preds = %tailrecurse.i.i.i.i101.3, %.noexc110
  %lpad.loopexit127 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp126:                            ; preds = %.loopexit121
  %lpad.loopexit.split-lp128 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.noexc110:                                        ; preds = %tailrecurse.i.i.i.i101.3
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iv, i64 80
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !11384 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !793
  %i.jy = load ptr, ptr %i.jv, align 8, !tbaa !48
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 144
  %i.ka = load ptr, ptr %i.jz, align 8
  invoke void %i.ka(ptr noundef nonnull align 8 dereferenceable(94) %i.jv, i32 noundef %i.jx, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapSubsetFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_ENKUlSX_E0_clIiEEDaSX_.exit unwind label %.loopexit125, !inline_history !11393

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapSubsetFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_ENKUlSX_E0_clIiEEDaSX_.exit: ; preds = %.noexc110
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #35
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.fh, i32 noundef %i.fg, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapSubsetFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_ENKUlSX_E0_clIiEEDaSX_.exit
  %i.kb = load ptr, ptr %11, align 8, !tbaa !413
  %.not.i113 = icmp eq ptr %i.kb, null
  br i1 %.not.i113, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit114, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit114

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit114: ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapSubsetFunctionINS1_10VectorExecEEES9_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSC_INSD_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayISF_EEEEEJSI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS1_12VectorReaderISI_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKNS0_17SelectivityVectorESZ_S11_ENKUlSZ_E_clIiEEDaSZ_.exit

bb.bb:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapSubsetFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_ENKUlSX_E0_clIiEEDaSX_.exit
  %i.kc = landingpad { ptr, i32 }
          cleanup
  %i.kd = load ptr, ptr %11, align 8, !tbaa !413
  %.not.i115 = icmp eq ptr %i.kd, null
  br i1 %.not.i115, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit116, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit116

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit116: ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit125, %.loopexit.split-lp126, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit116
  %.pn16.i = phi { ptr, i32 } [ %i.kc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit116 ], [ %lpad.loopexit127, %.loopexit125 ], [ %lpad.loopexit.split-lp128, %.loopexit.split-lp126 ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ay
  %i.ke = landingpad { ptr, i32 }
          catch ptr null
  %i.kf = extractvalue { ptr, i32 } %i.ke, 0
  call void @__clang_call_terminate(ptr %i.kf) #43
  unreachable

bb.bf:                                            ; preds = %.loopexit121
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapSubsetFunctionINS1_10VectorExecEEES9_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSC_INSD_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayISF_EEEEEJSI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS1_12VectorReaderISI_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKNS0_17SelectivityVectorESZ_S11_ENKUlSZ_E_clIiEEDaSZ_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit114
  %i.kg = add i64 %.015143, -1
  %i.kh = and i64 %i.kg, %.015143                 ; 2 uses
  %.not = icmp eq i64 %i.kh, 0
  br i1 %.not, label %.loopexit118, label %bb.ae, !llvm.loop !11781

.loopexit118:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapSubsetFunctionINS1_10VectorExecEEES9_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSC_INSD_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayISF_EEEEEJSI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS1_12VectorReaderISI_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKNS0_17SelectivityVectorESZ_S11_ENKUlSZ_E_clImEEDaSZ_.exit, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapSubsetFunctionINS1_10VectorExecEEES9_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSC_INSD_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayISF_EEEEEJSI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS1_12VectorReaderISI_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKNS0_17SelectivityVectorESZ_S11_ENKUlSZ_E_clIiEEDaSZ_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i1(i1, i1) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshr.i16(i16, i16, i16) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshr.i8(i8, i8, i8) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i8(i8, i8) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i16(i16, i16) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i128(i128, i128) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #31

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #31

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { cold noreturn }
attributes #20 = { nounwind memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #23 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #28 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #29 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #30 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #31 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #33 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #34 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #35 = { nounwind }
attributes #36 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #37 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #40 = { noreturn }
attributes #41 = { builtin allocsize(0) }
attributes #42 = { builtin nounwind }
attributes #43 = { noreturn nounwind }
attributes #44 = { nounwind willreturn memory(read) }
attributes #45 = { cold }
attributes #46 = { cold noreturn nounwind }
attributes #47 = { allocsize(0) }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !10, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !14, i64 8, !6, i64 16}
!14 = !{!"long", !6, i64 0}
!15 = !{!13, !14, i64 8}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{!6, !6, i64 0}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!20 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!21 = !{!19, !20, i64 16}
!22 = !{!19, !20, i64 8}
!23 = !{!24, !25, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec17SignatureVariableESaIS3_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!25 = !{!"p1 _ZTSN8facebook5velox4exec17SignatureVariableE", !11, i64 0}
!26 = !{!24, !25, i64 8}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!24, !25, i64 16}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !28}
!32 = !{!33, !33, i64 0}
!33 = !{!"bool", !6, i64 0}
!34 = !{!"branch_weights", i32 1, i32 1048575}
!35 = !{!20, !20, i64 0}
!36 = !{!37, !38, i64 0}
!37 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !38, i64 0}
!38 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!39 = !{!11, !11, i64 0}
!40 = !{!5, !5, i64 0}
!41 = !{!42, !11, i64 24}
!42 = !{!"_ZTSSt8functionIFSt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EEvEE", !43, i64 0, !11, i64 24}
!43 = !{!"_ZTSSt14_Function_base", !6, i64 0, !11, i64 16}
!44 = !{!43, !11, i64 16}
!45 = !{!46, !5, i64 8}
!46 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!47 = !{!46, !5, i64 12}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !7, i64 0}
!50 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!51 = distinct !{null, null}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions26MapSubsetPrimitiveFunctionINS1_4exec10VectorExecEbEENS1_3MapIbNS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEENS1_15ConstantCheckerIJSE_NS1_5ArrayIbEEEEEJSE_SH_EEELN9__gnu_cxx12_Lock_policyE2EE", !54, i64 0, !37, i64 8}
!54 = !{!"p1 _ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecEbEENS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSD_NS0_5ArrayIbEEEEEJSD_SG_EEE", !11, i64 0}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions26MapSubsetPrimitiveFunctionINS2_4exec10VectorExecEbEENS2_3MapIbNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEENS2_15ConstantCheckerIJSF_NS2_5ArrayIbEEEEEJSF_SI_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSS_: argument 0"}
!57 = distinct !{!57, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions26MapSubsetPrimitiveFunctionINS2_4exec10VectorExecEbEENS2_3MapIbNS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEENS2_15ConstantCheckerIJSF_NS2_5ArrayIbEEEEEJSF_SI_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSS_"}
!58 = !{i8 0, i8 2}
!59 = !{}
!60 = !{!54, !54, i64 0}
!61 = distinct !{null, null}
!62 = !{!63, !10, i64 8}
!63 = !{!"_ZTSSt9type_info", !10, i64 8}
!64 = !{!65, !33, i64 8}
!65 = !{!"_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecEbEENS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSD_NS0_5ArrayIbEEEEEJSD_SG_EEE", !66, i64 0, !33, i64 8, !67, i64 16, !5, i64 32, !70, i64 40, !73, i64 56}
!66 = !{!"_ZTSN8facebook5velox4core23ISimpleFunctionMetadataE"}
!67 = !{!"_ZTSSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEE", !68, i64 0}
!68 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EE", !69, i64 0, !37, i64 8}
!69 = !{!"p1 _ZTSN8facebook5velox4exec17FunctionSignatureE", !11, i64 0}
!70 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !71, i64 0}
!71 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !72, i64 0, !37, i64 8}
!72 = !{!"p1 _ZTSN8facebook5velox4TypeE", !11, i64 0}
!73 = !{!"_ZTSSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE", !74, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE", !75, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_Vector_implE", !76, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!77 = !{!"p1 _ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !11, i64 0}
!78 = !{!79, !33, i64 1}
!79 = !{!"_ZTSN8facebook5velox4core19TypeAnalysisResults5StatsE", !33, i64 0, !33, i64 1, !33, i64 2, !14, i64 8}
!80 = !{!79, !14, i64 8}
!81 = !{!65, !5, i64 32}
!82 = !{!71, !72, i64 0}
!83 = distinct !{null, null, null, null}
!84 = !{!79, !33, i64 0}
!85 = !{!79, !33, i64 2}
!86 = !{!87, !89, i64 0}
!87 = !{!"_ZTSSt15_Rb_tree_header", !88, i64 0, !14, i64 32}
!88 = !{!"_ZTSSt18_Rb_tree_node_base", !89, i64 0, !90, i64 8, !90, i64 16, !90, i64 24}
!89 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!90 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!91 = !{!87, !90, i64 8}
!92 = !{!87, !90, i64 16}
!93 = !{!87, !90, i64 24}
!94 = !{!87, !14, i64 32}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!97 = distinct !{!97, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!100 = distinct !{!100, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!103 = distinct !{!103, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!104 = !{!102, !99, !96}
end_hunk_1
