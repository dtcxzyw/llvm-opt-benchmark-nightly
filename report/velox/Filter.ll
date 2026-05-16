inline.NumInlined: 10428
inline.NumDeleted: 4080
begin_hunk_0_@_ZN8facebook5velox6common26BigintValuesUsingHashTableC2EllRKSt6vectorIlSaIlEEb:bb.a
  %.not.i.i.i55 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIlSaIlEED2Ev.exit56, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !168
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.eb) #47
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit56

_ZNSt6vectorIlSaIlEED2Ev.exit56:                  ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.ab
  resume { ptr, i32 } %.pn41.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK8facebook5velox6common26BigintValuesUsingHashTable14testInt64RangeEllb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !53
  %i.c = trunc nuw i8 %i.b to i1
  %or.cond = select i1 %3, i1 %i.c, i1 false
  br i1 %or.cond, label %_ZNK8facebook5velox6common26BigintValuesUsingHashTable9testInt64El.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %1, %2
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8, !tbaa !530, !range !53, !noundef !57
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = icmp eq i64 %1, -2401053089476968723
  %or.cond.i = and i1 %i.h, %i.g
  br i1 %or.cond.i, label %_ZNK8facebook5velox6common26BigintValuesUsingHashTable9testInt64El.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !196
  %i.k = icmp slt i64 %1, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp sgt i64 %1, %i.m
  %or.cond25.i = select i1 %i.k, i1 true, i1 %i.n
  br i1 %or.cond25.i, label %_ZNK8facebook5velox6common26BigintValuesUsingHashTable9testInt64El.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load i32, ptr %i.o, align 8, !tbaa !526  ; 3 uses
  %i.q = trunc i64 %1 to i32
  %i.r = mul i32 %i.q, 1540483477
  %i.s = and i32 %i.p, %i.r                       ; 3 uses
  %i.t = add i32 %i.s, %i.p                       ; 2 uses
  %.not.not27.i = icmp ugt i32 %i.s, %i.t
  br i1 %.not.not27.i, label %_ZNK8facebook5velox6common26BigintValuesUsingHashTable9testInt64El.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !165
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.w = add i32 %.01828.i, 1                     ; 2 uses
  %.not.not.i = icmp ugt i32 %i.w, %i.t
  br i1 %.not.not.i, label %_ZNK8facebook5velox6common26BigintValuesUsingHashTable9testInt64El.exit, label %bb.g, !llvm.loop !532

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %.029.i = phi i1 [ undef, %.lr.ph.i ], [ %.1.i, %bb.f ]
  %.01828.i = phi i32 [ %i.s, %.lr.ph.i ], [ %i.w, %bb.f ] ; 2 uses
  %i.x = and i32 %.01828.i, %i.p
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !33  ; 2 uses
  %i.ab = icmp ne i64 %i.aa, -2401053089476968723 ; 2 uses
  %i.ac = icmp eq i64 %i.aa, %1                   ; 2 uses
  %not..i = xor i1 %i.ac, true
  %..0.i = select i1 %i.ac, i1 true, i1 %.029.i
  %cond1.i = and i1 %i.ab, %not..i
  %.1.i = select i1 %i.ab, i1 %..0.i, i1 false    ; 2 uses
  br i1 %cond1.i, label %bb.f, label %_ZNK8facebook5velox6common26BigintValuesUsingHashTable9testInt64El.exit

bb.h:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !201
  %i.af = icmp sgt i64 %1, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp slt i64 %2, %i.ah
  %or.cond13 = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %or.cond13, label %_ZNK8facebook5velox6common26BigintValuesUsingHashTable9testInt64El.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !369 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !369
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3                 ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEElET_S8_S8_RKT0_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.aq, %bb.i ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.ak, %bb.i ] ; 2 uses
  %i.as = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i, i64 %i.as ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !33
  %i.av = icmp slt i64 %i.au, %1                  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = xor i64 %i.as, -1
  %i.ay = add nsw i64 %.016.i.i, %i.ax
  %.sroa.011.1.i.i = select i1 %i.av, ptr %i.aw, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.av, i64 %i.ay, i64 %i.as ; 2 uses
  %i.az = icmp sgt i64 %.1.i.i, 0
  br i1 %i.az, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEElET_S8_S8_RKT0_.exit, !llvm.loop !533

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEElET_S8_S8_RKT0_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.i
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.ak, %bb.i ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ]
  %i.ba = load i64, ptr %.sroa.011.0.lcssa.i.i, align 8, !tbaa !33 ; 2 uses
  %i.bb = icmp eq i64 %1, %i.ba
  %i.bc = icmp sge i64 %2, %i.ba
  %spec.select = or i1 %i.bb, %i.bc
  br label %_ZNK8facebook5velox6common26BigintValuesUsingHashTable9testInt64El.exit

_ZNK8facebook5velox6common26BigintValuesUsingHashTable9testInt64El.exit: ; preds = %bb.g, %bb.f, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEElET_S8_S8_RKT0_.exit, %bb.e, %bb.d, %bb.c, %bb.h, %bb.a
  %.1 = phi i1 [ %spec.select, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEElET_S8_S8_RKT0_.exit ], [ false, %bb.h ], [ true, %bb.a ], [ false, %bb.d ], [ true, %bb.c ], [ false, %bb.e ], [ false, %bb.f ], [ %.1.i, %bb.g ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox6common26BigintValuesUsingHashTable9testInt64El(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !530, !range !53, !noundef !57
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp eq i64 %1, -2401053089476968723
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !196
  %i.g = icmp slt i64 %1, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp sgt i64 %1, %i.i
  %or.cond25 = select i1 %i.g, i1 true, i1 %i.j
  br i1 %or.cond25, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load i32, ptr %i.k, align 8, !tbaa !526  ; 3 uses
  %i.m = trunc i64 %1 to i32
  %i.n = mul i32 %i.m, 1540483477
  %i.o = and i32 %i.l, %i.n                       ; 3 uses
  %i.p = add i32 %i.o, %i.l                       ; 2 uses
  %.not.not27 = icmp ugt i32 %i.o, %i.p
  br i1 %.not.not27, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !165
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.s = add i32 %.01828, 1                       ; 2 uses
  %.not.not = icmp ugt i32 %i.s, %i.p
  br i1 %.not.not, label %.loopexit, label %bb.e, !llvm.loop !532

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.029 = phi i1 [ undef, %.lr.ph ], [ %.1, %bb.d ]
  %.01828 = phi i32 [ %i.o, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  %i.t = and i32 %.01828, %i.l
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !33   ; 2 uses
  %i.x = icmp ne i64 %i.w, -2401053089476968723   ; 2 uses
  %i.y = icmp eq i64 %i.w, %1                     ; 2 uses
  %not. = xor i1 %i.y, true
  %..0 = select i1 %i.y, i1 true, i1 %.029
  %cond1 = and i1 %i.x, %not.
  %.1 = select i1 %i.x, i1 %..0, i1 false         ; 2 uses
  br i1 %cond1, label %bb.d, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.c, %bb.b, %bb.a
  %.4 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ false, %bb.c ], [ false, %bb.d ], [ %.1, %bb.e ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox6common27HugeintValuesUsingHashTable9serializeEv(ptr dead_on_unwind noalias writable sret(%"struct.folly::dynamic") align 8 initializes((0, 4), (8, 32)) %0, ptr noundef nonnull readonly align 16 captures(none) dereferenceable(80) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::dynamic", align 8   ; 12 uses
  %3 = alloca %"struct.folly::dynamic", align 8   ; 11 uses
  %4 = alloca %"struct.folly::dynamic", align 8   ; 11 uses
  %5 = alloca %"struct.folly::dynamic", align 8   ; 9 uses
  tail call void @_ZNK8facebook5velox6common6Filter13serializeBaseEv(ptr dead_on_unwind writable sret(%"struct.folly::dynamic") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i128, ptr %i.a, align 16, !tbaa !534
  %i.c = trunc i128 %i.b to i64
  %i.d = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull @.str.61, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.61, i64 9))
          to label %bb.b unwind label %bb.k       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.d, align 8, !tbaa !119
  %i.f = icmp eq i32 %i.e, 4
  br i1 %i.f, label %_ZN5folly7dynamicaSImlEERS0_T_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #45
  store i32 4, ptr %i.d, align 8, !tbaa !119
  br label %_ZN5folly7dynamicaSImlEERS0_T_.exit

_ZN5folly7dynamicaSImlEERS0_T_.exit:              ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.c, ptr %i.g, align 8, !tbaa !33
  %6 = load i128, ptr %i.a, align 16, !tbaa !534
  %7 = lshr i128 %6, 64
  %8 = trunc nuw i128 %7 to i64
  %i.h = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull @.str.62, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.62, i64 9))
          to label %bb.d unwind label %bb.k       ; 4 uses

bb.d:                                             ; preds = %_ZN5folly7dynamicaSImlEERS0_T_.exit
  %i.i = load i32, ptr %i.h, align 8, !tbaa !119
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %_ZN5folly7dynamicaSImlEERS0_T_.exit25, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #45
  store i32 4, ptr %i.h, align 8, !tbaa !119
  br label %_ZN5folly7dynamicaSImlEERS0_T_.exit25

_ZN5folly7dynamicaSImlEERS0_T_.exit25:            ; preds = %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %8, ptr %i.k, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load i128, ptr %i.l, align 16, !tbaa !543
  %i.n = trunc i128 %i.m to i64
  %i.o = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull @.str.63, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.63, i64 9))
          to label %bb.f unwind label %bb.k       ; 4 uses

bb.f:                                             ; preds = %_ZN5folly7dynamicaSImlEERS0_T_.exit25
  %i.p = load i32, ptr %i.o, align 8, !tbaa !119
  %i.q = icmp eq i32 %i.p, 4
  br i1 %i.q, label %_ZN5folly7dynamicaSImlEERS0_T_.exit26, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #45
  store i32 4, ptr %i.o, align 8, !tbaa !119
  br label %_ZN5folly7dynamicaSImlEERS0_T_.exit26

_ZN5folly7dynamicaSImlEERS0_T_.exit26:            ; preds = %bb.f, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.n, ptr %i.r, align 8, !tbaa !33
  %9 = load i128, ptr %i.l, align 16, !tbaa !543
  %10 = lshr i128 %9, 64
  %11 = trunc nuw i128 %10 to i64
  %i.s = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull @.str.64, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.64, i64 9))
          to label %bb.h unwind label %bb.k       ; 4 uses

bb.h:                                             ; preds = %_ZN5folly7dynamicaSImlEERS0_T_.exit26
  %i.t = load i32, ptr %i.s, align 8, !tbaa !119
  %i.u = icmp eq i32 %i.t, 4
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #45
  store i32 4, ptr %i.s, align 8, !tbaa !119
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %11, ptr %i.v, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  store i32 1, ptr %2, align 8, !tbaa !119
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  store i32 1, ptr %3, align 8, !tbaa !119
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load i64, ptr %i.y, align 16, !tbaa !544 ; 2 uses
  %i.aa = and i64 %i.z, -16                       ; 2 uses
  %.not67 = icmp eq i64 %i.aa, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = load i128, ptr %i.ab, align 16, !tbaa !219 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #45
  %i.aj = trunc i128 %i.ai to i64
  store i32 4, ptr %4, align 8, !tbaa !119
  store i64 %i.aj, ptr %i.ac, align 8, !tbaa !33
  %i.ak = load i32, ptr %2, align 8, !tbaa !119   ; 2 uses
  %.not.i.not.i.i123 = icmp eq i32 %i.ak, 1
  br i1 %.not.i.not.i.i123, label %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i.lr.ph, label %._crit_edge126

_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i.lr.ph: ; preds = %.lr.ph
  %i.al = and i64 %i.z, 15
  %extract = lshr i128 %i.ai, 64
  %extract.t = trunc nuw i128 %extract to i64
  br label %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i

._crit_edge:                                      ; preds = %.critedge.i.i, %bb.j
  %i.am = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull @.str.65, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.65, i64 12))
          to label %bb.w unwind label %bb.aa

bb.k:                                             ; preds = %_ZN5folly7dynamicaSImlEERS0_T_.exit26, %_ZN5folly7dynamicaSImlEERS0_T_.exit25, %_ZN5folly7dynamicaSImlEERS0_T_.exit, %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

._crit_edge126:                                   ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPKnEppEv.exit, %.lr.ph
  %.lcssa115 = phi i32 [ %i.ak, %.lr.ph ], [ %i.bz, %_ZN5folly3f146detail22ValueContainerIteratorIPKnEppEv.exit ]
  %i.ao = load ptr, ptr @_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE, align 8, !tbaa !34
  invoke void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.ao, i32 noundef %.lcssa115) #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %._crit_edge126
  unreachable

_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i: ; preds = %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i.lr.ph, %_ZN5folly3f146detail22ValueContainerIteratorIPKnEppEv.exit
  %.off64 = phi i64 [ %extract.t, %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i.lr.ph ], [ %extract.t128, %_ZN5folly3f146detail22ValueContainerIteratorIPKnEppEv.exit ]
  %.sroa.038.068125 = phi ptr [ %i.ab, %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i.lr.ph ], [ %.sroa.038.1, %_ZN5folly3f146detail22ValueContainerIteratorIPKnEppEv.exit ] ; 2 uses
  %.sroa.9.069124 = phi i64 [ %i.al, %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i.lr.ph ], [ %.sroa.9.3, %_ZN5folly3f146detail22ValueContainerIteratorIPKnEppEv.exit ] ; 3 uses
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !370 ; 3 uses
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !372
  %.not.i.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %4) #45
  %i.ar = load ptr, ptr %i.ad, align 8, !tbaa !370
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr %i.as, ptr %i.ad, align 8, !tbaa !370
  br label %bb.n

bb.m:                                             ; preds = %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i
  invoke void @_ZNSt6vectorIN5folly7dynamicESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.n unwind label %.loopexit

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #45
  store i32 4, ptr %5, align 8, !tbaa !119
  store i64 %.off64, ptr %i.af, align 8, !tbaa !33
  %i.at = load i32, ptr %3, align 8, !tbaa !119   ; 2 uses
  %.not.i.not.i.i29 = icmp eq i32 %i.at, 1
  br i1 %.not.i.not.i.i29, label %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i30, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr @_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE, align 8, !tbaa !34
  invoke void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.au, i32 noundef %i.at) #23
          to label %.noexc32 unwind label %.loopexit.split-lp51

.noexc32:                                         ; preds = %bb.o
  unreachable

_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i30: ; preds = %bb.n
  %i.av = load ptr, ptr %i.ag, align 8, !tbaa !370 ; 3 uses
  %i.aw = load ptr, ptr %i.ah, align 8, !tbaa !372
  %.not.i.i.i31 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i31, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i30
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %5) #45
  %i.ax = load ptr, ptr %i.ag, align 8, !tbaa !370
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store ptr %i.ay, ptr %i.ag, align 8, !tbaa !370
  br label %_ZN5folly7dynamic9push_backEOS0_.exit34

bb.q:                                             ; preds = %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i30
  invoke void @_ZNSt6vectorIN5folly7dynamicESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr %i.av, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %_ZN5folly7dynamic9push_backEOS0_.exit34 unwind label %.loopexit50

_ZN5folly7dynamic9push_backEOS0_.exit34:          ; preds = %bb.p, %bb.q
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #45
  %i.az = getelementptr inbounds i8, ptr %.sroa.038.068125, i64 -16
  %.neg.i.i.i = mul nsw i64 %.sroa.9.069124, -16
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %.neg.i.i.i ; 2 uses
  %.not19.i6.i = icmp eq i64 %.sroa.9.069124, 0
  br i1 %.not19.i6.i, label %.critedge.i.i.preheader, label %thread-pre-split.i

.critedge.i.i.preheader:                          ; preds = %bb.r, %_ZN5folly7dynamic9push_backEOS0_.exit34
  br label %.critedge.i.i

bb.r:                                             ; preds = %thread-pre-split.i
  %.not19.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not19.i.i, label %.critedge.i.i.preheader, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %_ZN5folly7dynamic9push_backEOS0_.exit34, %bb.r
  %i.bb = phi i64 [ %i.bd, %bb.r ], [ %.sroa.9.069124, %_ZN5folly7dynamic9push_backEOS0_.exit34 ]
  %i.bc = phi ptr [ %i.be, %bb.r ], [ %.sroa.038.068125, %_ZN5folly7dynamic9push_backEOS0_.exit34 ]
  %i.bd = add nsw i64 %i.bb, -1                   ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9
  %.not.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i, label %bb.r, label %_ZN5folly3f146detail22ValueContainerIteratorIPKnEppEv.exit, !prof !61, !llvm.loop !545

.critedge.i.i:                                    ; preds = %.critedge.i.i.preheader, %bb.s
  %.017.i.i = phi ptr [ %i.bk, %bb.s ], [ %i.ba, %.critedge.i.i.preheader ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 14
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !9
  %i.bj = and i8 %i.bi, 15
  %.not2.i = icmp eq i8 %i.bj, 0
  br i1 %.not2.i, label %bb.s, label %._crit_edge, !prof !22

bb.s:                                             ; preds = %.critedge.i.i
  %i.bk = getelementptr inbounds i8, ptr %.017.i.i, i64 -256 ; 3 uses
  %i.bl = load <16 x i8>, ptr %i.bk, align 16, !tbaa !9
  %i.bm = icmp slt <16 x i8> %i.bl, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16
  %i.bo = and i16 %i.bn, 16383                    ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.017.i.i, i64 -512
  call void @llvm.prefetch.p0(ptr nonnull %i.bp, i32 0, i32 3, i32 1)
  %.not3.i = icmp eq i16 %i.bo, 0
  br i1 %.not3.i, label %.critedge.i.i, label %bb.t, !prof !61, !llvm.loop !546

bb.t:                                             ; preds = %bb.s
  %i.bq = zext nneg i16 %i.bo to i32
  %i.br = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bq, i1 true)
  %i.bs = xor i32 %i.br, 31
  %i.bt = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.bu = icmp ne ptr %i.bk, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %.017.i.i, i64 -240
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.bt
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPKnEppEv.exit

_ZN5folly3f146detail22ValueContainerIteratorIPKnEppEv.exit: ; preds = %thread-pre-split.i, %bb.t
  %.sroa.038.1 = phi ptr [ %i.bw, %bb.t ], [ %i.be, %thread-pre-split.i ] ; 2 uses
  %.sroa.9.3 = phi i64 [ %i.bt, %bb.t ], [ %i.bd, %thread-pre-split.i ]
  %i.bx = load i128, ptr %.sroa.038.1, align 16, !tbaa !219 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #45
  %i.by = trunc i128 %i.bx to i64
  store i32 4, ptr %4, align 8, !tbaa !119
  store i64 %i.by, ptr %i.ac, align 8, !tbaa !33
  %i.bz = load i32, ptr %2, align 8, !tbaa !119   ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.bz, 1
  %extract127 = lshr i128 %i.bx, 64
  %extract.t128 = trunc nuw i128 %extract127 to i64
  br i1 %.not.i.not.i.i, label %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i, label %._crit_edge126

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %._crit_edge126
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  br label %bb.ab

.loopexit50:                                      ; preds = %bb.q
  %lpad.loopexit52 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v
end_hunk_0
