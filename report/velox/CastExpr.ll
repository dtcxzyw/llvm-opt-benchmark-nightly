Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/CastExpr?download=true
inline.NumInlined: 87487
inline.NumDeleted: 10544
loop-unroll.NumCompletelyUnrolled: 4850
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 4940
begin_hunk_0_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_:bb.a
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !1372 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !731  ; 2 uses
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !520
  %i.n = sext i32 %i.h to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !520
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !1373 ; 3 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.q, align 4
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !334
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i64 %i.t(ptr noundef nonnull align 8 dereferenceable(94) %i.c, ptr noundef nonnull %i.c, i32 noundef %i.m, i32 noundef %i.p, i64 %.sroa.01.0.copyload.i.i), !inline_history !79
  %i.v = and i64 %i.u, 6442450944
  %.not = icmp eq i64 %i.v, 4294967296
  %i.w = load i32, ptr %.sroa.08.021, align 4, !tbaa !520 ; 2 uses
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = ptrtoint ptr %.sroa.08.021 to i64
  %i.y = sub i64 %i.x, %i.f                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 2                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.d, label %bb.e, !prof !511

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.ac = sub nsw i64 0, %i.z
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ad, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.y, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = icmp eq i64 %i.y, 4
  br i1 %i.ae, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  %i.ag = load i32, ptr %0, align 4, !tbaa !520
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !520
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.ah = sext i32 %i.w to i64                    ; 2 uses
  %i.ai = load i32, ptr %.pn20, align 4, !tbaa !520
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !731 ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ah
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !520
  %i.am = sext i32 %i.ai to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !520
  %.sroa.01.0.copyload.i.i8.i = load i64, ptr %i.q, align 4
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !334
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call i64 %i.ar(ptr noundef nonnull align 8 dereferenceable(94) %i.c, ptr noundef nonnull %i.c, i32 noundef %i.al, i32 noundef %i.ao, i64 %.sroa.01.0.copyload.i.i8.i), !inline_history !10162
  %i.at = and i64 %i.as, 6442450944
  %.not9.i = icmp eq i64 %i.at, 4294967296
  br i1 %.not9.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.011.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i ], [ %.pn20, %bb.g ] ; 4 uses
  %.sroa.04.010.i = phi ptr [ %.sroa.0.011.i, %.lr.ph.i ], [ %.sroa.08.021, %bb.g ]
  %i.au = load i32, ptr %.sroa.0.011.i, align 4, !tbaa !520
  store i32 %i.au, ptr %.sroa.04.010.i, align 4, !tbaa !520
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.011.i, i64 -4 ; 2 uses
  %i.av = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !520
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !731 ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ah
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !520
  %i.az = sext i32 %i.av to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !520
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.q, align 4
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !334
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call i64 %i.be(ptr noundef nonnull align 8 dereferenceable(94) %i.c, ptr noundef nonnull %i.c, i32 noundef %i.ay, i32 noundef %i.bb, i64 %.sroa.01.0.copyload.i.i.i), !inline_history !10162
  %i.bg = and i64 %i.bf, 6442450944
  %.not.i = icmp eq i64 %i.bg, 4294967296
  br i1 %.not.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !76

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.08.021, %bb.g ], [ %.sroa.0.011.i, %.lr.ph.i ]
  store i32 %i.w, ptr %.sink, align 4, !tbaa !520
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 4 ; 2 uses
  %i.bh = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.bh, label %.loopexit, label %bb.b, !llvm.loop !10163

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

declare void @_ZNK8facebook5velox10BaseVector8validateERKNS0_21VectorValidateOptionsE(ptr noundef nonnull align 8 dereferenceable(94), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE11reserveImplEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !666  ; 5 uses
  %i.c = lshr i64 %i.b, 8                         ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.c) ; 11 uses
  %i.d = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !1260   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1263
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  %i.j = icmp ult i64 %i.b, 256
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i64 %i.b, 255                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8, !tbaa !450
  store i64 %i.k, ptr %i.a, align 8, !tbaa !666
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = phi i64 [ %i.b, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.n = load i8, ptr %i.i, align 1, !tbaa !456
  %i.o = icmp eq i64 %i.m, 0
  %i.p = shl i8 %i.n, 3
  %i.q = and i8 %i.p, 120
  %narrow.i.i = add nuw i8 %i.q, 16
  %i.r = zext i8 %narrow.i.i to i64
  %i.s = shl i64 128, %i.m
  %.0.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.s
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %0, align 8, !tbaa !1260
  store i64 0, ptr %i.a, align 8, !tbaa !666
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %.0.i.i.i) #39
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit

bb.f:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %1, %i.c
  %i.t = and i64 %i.b, 255                        ; 4 uses
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = shl nuw i64 1, %i.t
  %i.v = load ptr, ptr %0, align 8, !tbaa !1260
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.x = load i8, ptr %i.w, align 1, !tbaa !456
  %i.y = and i8 %i.x, 15
  %i.z = zext nneg i8 %i.y to i64                 ; 2 uses
  %i.aa = shl i64 %i.z, %i.t
  %i.ab = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.ab, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = add i64 %.sroa.speculated, -1
  %i.ad = udiv i64 %i.ac, 12
  %i.ae = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.af = sub nuw nsw i64 64, %i.ae               ; 2 uses
  %i.ag = shl i64 12, %i.af
  %i.ah = icmp ugt i64 %i.ag, 72057594037927935
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #16
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ai = shl nuw nsw i64 1, %i.af
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i: ; preds = %bb.g, %bb.j
  %.pn21.i.i = phi i64 [ %i.ai, %bb.j ], [ 1, %bb.g ] ; 2 uses
  %.0.pn.i.i = phi i64 [ 12, %bb.j ], [ %.sroa.speculated, %bb.g ] ; 2 uses
  %i.aj = mul i64 %.0.pn.i.i, %.pn21.i.i
  %.not.i = icmp eq i64 %i.aa, %i.aj
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %i.u, i64 noundef %i.z, i64 noundef %.pn21.i.i, i64 noundef %.0.pn.i.i)
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit

bb.l:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %0, align 8, !tbaa !1260
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.am = load i8, ptr %i.al, align 1, !tbaa !456
  %i.an = and i8 %i.am, 15
  %i.ao = zext nneg i8 %i.an to i64               ; 2 uses
  %i.ap = shl i64 %i.ao, %i.t                     ; 4 uses
  %.not10 = icmp ugt i64 %.sroa.speculated, %i.ap
  br i1 %.not10, label %bb.m, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit

bb.m:                                             ; preds = %bb.l
  %i.aq = shl nuw i64 1, %i.t
  %i.ar = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.ar, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.as = add nuw i64 %i.ap, 7
  %i.at = lshr i64 %i.as, 3
  %i.au = add i64 %i.at, %i.ap
  %i.av = icmp ugt i64 %.sroa.speculated, %i.au
  br i1 %i.av, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.aw, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.inv.i.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i.i = select i1 %.inv.i.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11

bb.q:                                             ; preds = %bb.m
  %i.ax = add i64 %.sroa.speculated, -1
  %i.ay = udiv i64 %i.ax, 12
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 true)
  %i.ba = sub nuw nsw i64 64, %i.az               ; 2 uses
  %i.bb = shl i64 12, %i.ba
  %i.bc = icmp ugt i64 %i.bb, 72057594037927935
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #16
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bd = shl nuw nsw i64 1, %i.ba
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11: ; preds = %bb.s, %bb.p, %bb.o, %bb.n
  %.pn21.i.i12 = phi i64 [ %i.bd, %bb.s ], [ 1, %bb.p ], [ 1, %bb.o ], [ 1, %bb.n ] ; 2 uses
  %.0.pn.i.i13 = phi i64 [ 12, %bb.s ], [ %spec.select.i.i, %bb.p ], [ 2, %bb.o ], [ %.sroa.speculated, %bb.n ] ; 2 uses
  %i.be = mul i64 %.0.pn.i.i13, %.pn21.i.i12
  %.not.i14 = icmp eq i64 %i.ap, %i.be
  br i1 %.not.i14, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %i.aq, i64 noundef %i.ao, i64 noundef %.pn21.i.i12, i64 noundef %.0.pn.i.i13)
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit: ; preds = %bb.t, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11, %bb.k, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i, %bb.e, %bb.b, %bb.l
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #39
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !334
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #39
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #39 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !334
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #47
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.892", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !450
  store i64 %2, ptr %i.b, align 8, !tbaa !450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  %i.k = load ptr, ptr %0, align 8, !tbaa !1260   ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !1374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #39
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #39
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #39
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #52 ; 15 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !557
  store i8 0, ptr %i.i, align 1, !tbaa !436
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !70

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod168 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod168)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !10164

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !1358
  store ptr %i.v, ptr %0, align 8, !tbaa !1260
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !666
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #39
  store i8 0, ptr %i.j, align 1, !tbaa !436
end_hunk_0
